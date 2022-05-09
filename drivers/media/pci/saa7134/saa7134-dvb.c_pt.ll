; ModuleID = '/llk/IR_all_yes/drivers/media/pci/saa7134/saa7134-dvb.c_pt.bc'
source_filename = "../drivers/media/pci/saa7134/saa7134-dvb.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.101 }
%union.anon.101 = type { ptr }
%struct.kparam_array = type { i32, i32, ptr, ptr, ptr }
%struct.saa7134_mpeg_ops = type { i32, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.vb2_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vb2_mem_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.mt352_config = type { i8, i32, i32, i32, ptr }
%struct.tda1004x_config = type { i8, i8, i8, i32, i32, i32, i32, i32, i8, i8, i8, ptr }
%struct.tda827x_config = type { ptr, ptr, i32, i32, ptr }
%struct.tda10048_config = type { i8, i8, i8, i8, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8 }
%struct.tda829x_config = type { i32, i8, ptr }
%struct.tda18271_config = type { ptr, i32, i32, i32, i32, i8, i32 }
%struct.lgdt3305_config = type { i8, i16, i16, i16, i16, i16, i8, i32, i32, i32, i32, i32 }
%struct.tda10086_config = type { i8, i8, i8, i32 }
%struct.nxt200x_config = type { i8, ptr }
%struct.s5h1411_config = type { i8, i8, i16, i16, i16, i8, i8 }
%struct.zl10353_config = type { i8, i32, i32, i32, i32, i8, i8, i8 }
%struct.xc5000_config = type { i8, i32, i8, i16, i16, i32 }
%struct.mt312_config = type { i8, i8, [2 x i8] }
%struct.zl10036_config = type { i8, i32 }
%struct.qt1010_config = type { i8 }
%struct.mb86a20s_config = type { i32, i8, i8 }
%struct.lgs8gxx_config = type { i8, i8, i8, i8, i8, i32, i32, i8, i8, i8, i8, i8, i8 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.tda18271_std_map_item = type { i16, i16 }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.xc2028_config = type { ptr, i8, ptr }
%struct.saa7134_dev = type { %struct.list_head, %struct.mutex, %struct.spinlock, %struct.v4l2_device, %struct.work_struct, i32, i32, ptr, ptr, ptr, %struct.saa7134_dmasound, i32, ptr, [32 x i8], i32, ptr, i8, i8, ptr, ptr, i32, i32, i32, i8, i8, i32, i32, %struct.i2c_adapter, %struct.i2c_client, [256 x i8], i32, %struct.v4l2_framebuffer, ptr, i32, i32, %struct.v4l2_window, [8 x %struct.v4l2_clip], i32, ptr, %struct.saa7134_dmaqueue, %struct.vb2_queue, %struct.saa7134_dmaqueue, %struct.vb2_queue, i32, ptr, i32, i32, i32, i32, %struct.pm_qos_request, %struct.saa7134_ts, %struct.saa7134_dmaqueue, i32, i32, ptr, ptr, ptr, %struct.vb2_queue, %struct.work_struct, i32, %struct.v4l2_ctrl_handler, ptr, ptr, %struct.v4l2_ctrl_handler, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_rect, i32, %struct.saa7134_thread, ptr, ptr, i32, i32, i32, i32, %struct.v4l2_ctrl_handler, %struct.IR_i2c_init_data, ptr, [9 x %struct.media_entity], [9 x %struct.media_pad], %struct.media_entity, [2 x %struct.media_pad], %struct.media_pad, %struct.media_pad, ptr, %struct.vb2_dvb_frontends, ptr, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.saa7134_dmasound = type { %struct.mutex, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.saa7134_pgtable, ptr, ptr, i32, i32, i32, i32, i32, ptr, ptr }
%struct.saa7134_pgtable = type { i32, ptr, i32 }
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
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
%struct.v4l2_framebuffer = type { i32, i32, ptr, %struct.anon.143 }
%struct.anon.143 = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.v4l2_window = type { %struct.v4l2_rect, i32, i32, ptr, i32, ptr, i8 }
%struct.v4l2_clip = type { %struct.v4l2_rect, ptr }
%struct.pm_qos_request = type { %struct.plist_node, ptr }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.saa7134_ts = type { i32, i32 }
%struct.saa7134_dmaqueue = type { ptr, ptr, %struct.list_head, %struct.timer_list, i32, i32, %struct.saa7134_pgtable }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.saa7134_thread = type { ptr, i32, i32, i32, i32 }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.IR_i2c_init_data = type { ptr, ptr, i64, i32, ptr, i32, ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.128 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.128 = type { %struct.anon.129 }
%struct.anon.129 = type { i32, i32 }
%struct.media_pad = type { %struct.media_gobj, ptr, i16, i32, i32 }
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
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.162, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.162 = type { ptr }
%struct.dvb_frontend = type { %struct.kref, %struct.dvb_frontend_ops, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dtv_frontend_properties, ptr, i32, i32 }
%struct.dvb_frontend_ops = type { %struct.dvb_frontend_internal_info, [8 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dvb_tuner_ops, %struct.analog_demod_ops }
%struct.dvb_frontend_internal_info = type { [128 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dvb_tuner_ops = type { %struct.dvb_tuner_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_tuner_info = type { [128 x i8], i32, i32, i32, i32, i32, i32 }
%struct.analog_demod_ops = type { %struct.analog_demod_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.analog_demod_info = type { ptr }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, [3 x %struct.anon.163], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats }
%struct.anon.163 = type { i8, i32, i32, i8 }
%struct.dtv_fe_stats = type { i8, [4 x %struct.dtv_stats] }
%struct.dtv_stats = type <{ i8, %union.anon.164 }>
%union.anon.164 = type { i64 }
%struct.v4l2_priv_tun_config = type { i32, ptr }
%struct.v4l2_subdev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_tuner_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_frequency = type { i32, i32, i32, [8 x i32] }
%struct.tda1004x_state = type { ptr, ptr, %struct.dvb_frontend, i32 }

@__UNIQUE_ID_author387 = internal constant [63 x i8] c"saa7134_dvb.author=Gerd Knorr <kraxel@bytesex.org> [SuSE Labs]\00", section ".modinfo", align 1
@__UNIQUE_ID_file388 = internal constant [55 x i8] c"saa7134_dvb.file=drivers/media/pci/saa7134/saa7134-dvb\00", section ".modinfo", align 1
@__UNIQUE_ID_license389 = internal constant [24 x i8] c"saa7134_dvb.license=GPL\00", section ".modinfo", align 1
@__param_str_antenna_pwr = internal constant [24 x i8] c"saa7134_dvb.antenna_pwr\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@antenna_pwr = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_antenna_pwr = internal constant %struct.kernel_param { ptr @__param_str_antenna_pwr, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.101 { ptr @antenna_pwr } }, section "__param", align 4
@__UNIQUE_ID_antenna_pwrtype390 = internal constant [37 x i8] c"saa7134_dvb.parmtype=antenna_pwr:int\00", section ".modinfo", align 1
@__UNIQUE_ID_antenna_pwr391 = internal constant [66 x i8] c"saa7134_dvb.parm=antenna_pwr:enable antenna power (Pinnacle 300i)\00", section ".modinfo", align 1
@__param_str_use_frontend = internal constant [25 x i8] c"saa7134_dvb.use_frontend\00", align 1
@use_frontend = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_use_frontend = internal constant %struct.kernel_param { ptr @__param_str_use_frontend, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.101 { ptr @use_frontend } }, section "__param", align 4
@__UNIQUE_ID_use_frontendtype392 = internal constant [38 x i8] c"saa7134_dvb.parmtype=use_frontend:int\00", section ".modinfo", align 1
@__UNIQUE_ID_use_frontend393 = internal constant [95 x i8] c"saa7134_dvb.parm=use_frontend:for cards with multiple frontends (0: terrestrial, 1: satellite)\00", section ".modinfo", align 1
@__param_str_adapter_nr = internal constant [23 x i8] c"saa7134_dvb.adapter_nr\00", align 1
@param_array_ops = external dso_local constant %struct.kernel_param_ops, align 4
@__param_arr_adapter_nr = internal constant %struct.kparam_array { i32 16, i32 2, ptr null, ptr @param_ops_short, ptr @adapter_nr }, align 4
@__param_adapter_nr = internal constant %struct.kernel_param { ptr @__param_str_adapter_nr, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.101 { ptr @__param_arr_adapter_nr } }, section "__param", align 4
@__UNIQUE_ID_adapter_nrtype394 = internal constant [47 x i8] c"saa7134_dvb.parmtype=adapter_nr:array of short\00", section ".modinfo", align 1
@__UNIQUE_ID_adapter_nr395 = internal constant [48 x i8] c"saa7134_dvb.parm=adapter_nr:DVB adapter numbers\00", section ".modinfo", align 1
@dvb_ops = internal global { %struct.saa7134_mpeg_ops, [36 x i8] } { %struct.saa7134_mpeg_ops { i32 2, %struct.list_head zeroinitializer, ptr @dvb_init, ptr @dvb_fini, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@__initcall__kmod_saa7134_dvb__406_2003_dvb_register6 = internal global ptr @dvb_register, section ".initcall6.init", align 4
@__exitcall_dvb_unregister = internal global ptr @dvb_unregister, section ".exitcall.exit", align 4
@param_ops_short = external dso_local constant %struct.kernel_param_ops, align 4
@adapter_nr = internal global { [16 x i16], [32 x i8] } { [16 x i16] [i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1], [32 x i8] zeroinitializer }, align 32
@dvb_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&dev->frontends.lock\00", [43 x i8] zeroinitializer }, align 32
@dvb_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 1224, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\016saa7134_dvb: %s() allocating 1 frontend\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"dvb_init\00", [23 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/media/pci/saa7134/saa7134-dvb.c\00", [56 x i8] zeroinitializer }, align 32
@dvb_init._entry_ptr = internal global ptr @dvb_init._entry, section ".printk_index", align 4
@dvb_init._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.2, ptr @.str.3, i32 1227, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013saa7134_dvb: %s() failed to alloc\0A\00", [59 x i8] zeroinitializer }, align 32
@dvb_init._entry_ptr.6 = internal global ptr @dvb_init._entry.4, section ".printk_index", align 4
@saa7134_ts_qops = external dso_local global %struct.vb2_ops, align 4
@vb2_dma_sg_memops = external dso_local constant %struct.vb2_mem_ops, align 4
@dvb_init.__UNIQUE_ID_ddebug402 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.2, ptr @.str.3, ptr @.str.8, i8 1, i8 57, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"saa7134_dvb\00", [20 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"pinnacle 300i dvb setup\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"saa7134_dvb: pinnacle 300i dvb setup\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mt352_attach\00", [19 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"symbol:mt352_attach\00", [44 x i8] zeroinitializer }, align 32
@pinnacle_300i = internal global { %struct.mt352_config, [44 x i8] } { %struct.mt352_config { i8 30, i32 20333, i32 36150, i32 1, ptr @mt352_pinnacle_init }, [44 x i8] zeroinitializer }, align 32
@dvb_init._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.2, ptr @.str.3, i32 1255, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013DVB: Unable to find symbol mt352_attach()\0A\00", [51 x i8] zeroinitializer }, align 32
@dvb_init._entry_ptr.14 = internal global ptr @dvb_init._entry.12, section ".printk_index", align 4
@dvb_init.__UNIQUE_ID_ddebug403 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.2, ptr @.str.3, ptr @.str.15, i8 1, i8 59, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"avertv 777 dvb setup\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"saa7134_dvb: avertv 777 dvb setup\0A\00", [61 x i8] zeroinitializer }, align 32
@avermedia_777 = internal global { %struct.mt352_config, [44 x i8] } { %struct.mt352_config { i8 15, i32 0, i32 0, i32 0, ptr @mt352_aver777_init }, [44 x i8] zeroinitializer }, align 32
@dvb_init._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.2, ptr @.str.3, i32 1264, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dvb_init._entry_ptr.18 = internal global ptr @dvb_init._entry.17, section ".printk_index", align 4
@.str.19 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"simple_tuner_attach\00", [44 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"symbol:simple_tuner_attach\00", [37 x i8] zeroinitializer }, align 32
@dvb_init._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.2, ptr @.str.3, i32 1268, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\013DVB: Unable to find symbol simple_tuner_attach()\0A\00", [44 x i8] zeroinitializer }, align 32
@dvb_init._entry_ptr.23 = internal global ptr @dvb_init._entry.21, section ".printk_index", align 4
@dvb_init.__UNIQUE_ID_ddebug404 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.2, ptr @.str.3, ptr @.str.24, i8 1, i8 62, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"AverMedia A16D dvb setup\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"saa7134_dvb: AverMedia A16D dvb setup\0A\00", [57 x i8] zeroinitializer }, align 32
@avermedia_xc3028_mt352_dev = internal global { %struct.mt352_config, [44 x i8] } { %struct.mt352_config { i8 15, i32 0, i32 0, i32 1, ptr @mt352_avermedia_xc3028_init }, [44 x i8] zeroinitializer }, align 32
@dvb_init._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.2, ptr @.str.3, i32 1275, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dvb_init._entry_ptr.27 = internal global ptr @dvb_init._entry.26, section ".printk_index", align 4
@.str.28 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"tda10046_attach\00", [16 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"symbol:tda10046_attach\00", [41 x i8] zeroinitializer }, align 32
@medion_cardbus = internal global { %struct.tda1004x_config, [32 x i8] } { %struct.tda1004x_config { i8 8, i8 1, i8 0, i32 0, i32 1, i32 1, i32 1, i32 0, i8 97, i8 0, i8 0, ptr @philips_tda1004x_request_firmware }, [32 x i8] zeroinitializer }, align 32
@dvb_init._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.2, ptr @.str.3, i32 1281, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013DVB: Unable to find symbol tda10046_attach()\0A\00", [48 x i8] zeroinitializer }, align 32
@dvb_init._entry_ptr.32 = internal global ptr @dvb_init._entry.30, section ".printk_index", align 4
@dvb_init._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.2, ptr @.str.3, i32 1299, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dvb_init._entry_ptr.34 = internal global ptr @dvb_init._entry.33, section ".printk_index", align 4
@philips_tu1216_60_config = internal global { %struct.tda1004x_config, [32 x i8] } { %struct.tda1004x_config { i8 8, i8 1, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 96, i8 0, i8 0, ptr @philips_tda1004x_request_firmware }, [32 x i8] zeroinitializer }, align 32
@dvb_init._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.2, ptr @.str.3, i32 1305, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dvb_init._entry_ptr.36 = internal global ptr @dvb_init._entry.35, section ".printk_index", align 4
@tda827x_lifeview_config = internal global { %struct.tda1004x_config, [32 x i8] } { %struct.tda1004x_config { i8 8, i8 1, i8 0, i32 0, i32 1, i32 2, i32 3, i32 138, i8 96, i8 0, i8 0, ptr @philips_tda1004x_request_firmware }, [32 x i8] zeroinitializer }, align 32
@tda827x_cfg_0 = internal global { %struct.tda827x_config, [44 x i8] } { %struct.tda827x_config { ptr @philips_tda827x_tuner_init, ptr @philips_tda827x_tuner_sleep, i32 0, i32 0, ptr null }, [44 x i8] zeroinitializer }, align 32
@philips_europa_config = internal global { %struct.tda1004x_config, [32 x i8] } { %struct.tda1004x_config { i8 8, i8 0, i8 0, i32 0, i32 0, i32 3, i32 2, i32 0, i8 97, i8 0, i8 0, ptr @philips_tda1004x_request_firmware }, [32 x i8] zeroinitializer }, align 32
@dvb_init._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.2, ptr @.str.3, i32 1322, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dvb_init._entry_ptr.38 = internal global ptr @dvb_init._entry.37, section ".printk_index", align 4
@technotrend_budget_t3000_config = internal global { %struct.tda1004x_config, [32 x i8] } { %struct.tda1004x_config { i8 8, i8 1, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 99, i8 0, i8 0, ptr @philips_tda1004x_request_firmware }, [32 x i8] zeroinitializer }, align 32
@dvb_init._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.2, ptr @.str.3, i32 1334, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dvb_init._entry_ptr.40 = internal global ptr @dvb_init._entry.39, section ".printk_index", align 4
@philips_tu1216_61_config = internal global { %struct.tda1004x_config, [32 x i8] } { %struct.tda1004x_config { i8 8, i8 1, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 97, i8 0, i8 0, ptr @philips_tda1004x_request_firmware }, [32 x i8] zeroinitializer }, align 32
@dvb_init._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.2, ptr @.str.3, i32 1346, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dvb_init._entry_ptr.42 = internal global ptr @dvb_init._entry.41, section ".printk_index", align 4
@kworld_dvb_t_210_config = internal global { %struct.tda1004x_config, [32 x i8] } { %struct.tda1004x_config { i8 8, i8 1, i8 0, i32 0, i32 1, i32 2, i32 3, i32 138, i8 97, i8 1, i8 75, ptr @philips_tda1004x_request_firmware }, [32 x i8] zeroinitializer }, align 32
@tda827x_cfg_2 = internal global { %struct.tda827x_config, [44 x i8] } { %struct.tda827x_config { ptr @philips_tda827x_tuner_init, ptr @philips_tda827x_tuner_sleep, i32 2, i32 75, ptr null }, [44 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"tda10048_attach\00", [16 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"symbol:tda10048_attach\00", [41 x i8] zeroinitializer }, align 32
@hcw_tda10048_config = internal global { %struct.tda10048_config, [46 x i8] } { %struct.tda10048_config { i8 8, i8 1, i8 -56, i8 1, i16 3300, i16 3500, i16 4000, i16 16000, i8 1, i8 0, i8 0, i8 0, i8 0, i8 0 }, [46 x i8] zeroinitializer }, align 32
@dvb_init._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.2, ptr @.str.3, i32 1360, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013DVB: Unable to find symbol tda10048_attach()\0A\00", [48 x i8] zeroinitializer }, align 32
@dvb_init._entry_ptr.47 = internal global ptr @dvb_init._entry.45, section ".printk_index", align 4
@.str.48 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"tda829x_attach\00", [17 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"symbol:tda829x_attach\00", [42 x i8] zeroinitializer }, align 32
@tda829x_no_probe = internal global { %struct.tda829x_config, [20 x i8] } { %struct.tda829x_config { i32 0, i8 -128, ptr null }, [20 x i8] zeroinitializer }, align 32
@dvb_init._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.2, ptr @.str.3, i32 1364, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013DVB: Unable to find symbol tda829x_attach()\0A\00", [49 x i8] zeroinitializer }, align 32
@dvb_init._entry_ptr.52 = internal global ptr @dvb_init._entry.50, section ".printk_index", align 4
@.str.53 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"tda18271_attach\00", [16 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"symbol:tda18271_attach\00", [41 x i8] zeroinitializer }, align 32
@hcw_tda18271_config = internal global { %struct.tda18271_config, [36 x i8] } { %struct.tda18271_config { ptr @hauppauge_tda18271_std_map, i32 0, i32 1, i32 1, i32 0, i8 0, i32 3 }, [36 x i8] zeroinitializer }, align 32
@dvb_init._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.2, ptr @.str.3, i32 1367, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013DVB: Unable to find symbol tda18271_attach()\0A\00", [48 x i8] zeroinitializer }, align 32
@dvb_init._entry_ptr.57 = internal global ptr @dvb_init._entry.55, section ".printk_index", align 4
@philips_tiger_config = internal global { %struct.tda1004x_config, [32 x i8] } { %struct.tda1004x_config { i8 8, i8 1, i8 0, i32 0, i32 1, i32 2, i32 3, i32 138, i8 97, i8 1, i8 75, ptr @philips_tda1004x_request_firmware }, [32 x i8] zeroinitializer }, align 32
@pinnacle_pctv_310i_config = internal global { %struct.tda1004x_config, [32 x i8] } { %struct.tda1004x_config { i8 8, i8 1, i8 0, i32 0, i32 1, i32 2, i32 3, i32 138, i8 97, i8 0, i8 75, ptr @philips_tda1004x_request_firmware }, [32 x i8] zeroinitializer }, align 32
@tda827x_cfg_1 = internal global { %struct.tda827x_config, [44 x i8] } { %struct.tda827x_config { ptr @philips_tda827x_tuner_init, ptr @philips_tda827x_tuner_sleep, i32 1, i32 75, ptr null }, [44 x i8] zeroinitializer }, align 32
@hauppauge_hvr_1110_config = internal global { %struct.tda1004x_config, [32 x i8] } { %struct.tda1004x_config { i8 8, i8 1, i8 0, i32 0, i32 1, i32 2, i32 3, i32 138, i8 97, i8 0, i8 75, ptr @philips_tda1004x_request_firmware }, [32 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"lgdt3305_attach\00", [16 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"symbol:lgdt3305_attach\00", [41 x i8] zeroinitializer }, align 32
@hcw_lgdt3305_config = internal global { %struct.lgdt3305_config, [60 x i8] } { %struct.lgdt3305_config { i8 14, i16 4000, i16 3250, i16 0, i16 0, i16 0, i8 -64, i32 1, i32 0, i32 0, i32 1, i32 0 }, [60 x i8] zeroinitializer }, align 32
@dvb_init._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.2, ptr @.str.3, i32 1388, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013DVB: Unable to find symbol lgdt3305_attach()\0A\00", [48 x i8] zeroinitializer }, align 32
@dvb_init._entry_ptr.62 = internal global ptr @dvb_init._entry.60, section ".printk_index", align 4
@dvb_init._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.2, ptr @.str.3, i32 1392, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dvb_init._entry_ptr.64 = internal global ptr @dvb_init._entry.63, section ".printk_index", align 4
@dvb_init._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.2, ptr @.str.3, i32 1395, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dvb_init._entry_ptr.66 = internal global ptr @dvb_init._entry.65, section ".printk_index", align 4
@asus_p7131_dual_config = internal global { %struct.tda1004x_config, [32 x i8] } { %struct.tda1004x_config { i8 8, i8 1, i8 0, i32 0, i32 1, i32 2, i32 3, i32 138, i8 97, i8 2, i8 75, ptr @philips_tda1004x_request_firmware }, [32 x i8] zeroinitializer }, align 32
@lifeview_trio_config = internal global { %struct.tda1004x_config, [32 x i8] } { %struct.tda1004x_config { i8 9, i8 1, i8 0, i32 0, i32 1, i32 2, i32 3, i32 128, i8 96, i8 0, i8 0, ptr @philips_tda1004x_request_firmware }, [32 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"tda10086_attach\00", [16 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"symbol:tda10086_attach\00", [41 x i8] zeroinitializer }, align 32
@flydvbs = internal global { %struct.tda10086_config, [24 x i8] } { %struct.tda10086_config { i8 14, i8 0, i8 0, i32 0 }, [24 x i8] zeroinitializer }, align 32
@dvb_init._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.2, ptr @.str.3, i32 1414, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013DVB: Unable to find symbol tda10086_attach()\0A\00", [48 x i8] zeroinitializer }, align 32
@dvb_init._entry_ptr.71 = internal global ptr @dvb_init._entry.69, section ".printk_index", align 4
@.str.72 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"tda826x_attach\00", [17 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"symbol:tda826x_attach\00", [42 x i8] zeroinitializer }, align 32
@dvb_init._entry.74 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.2, ptr @.str.3, i32 1417, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013DVB: Unable to find symbol tda826x_attach()\0A\00", [49 x i8] zeroinitializer }, align 32
@dvb_init._entry_ptr.76 = internal global ptr @dvb_init._entry.74, section ".printk_index", align 4
@dvb_init._entry.77 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.2, ptr @.str.3, i32 1419, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\014saa7134_dvb: %s: Lifeview Trio, No tda826x found!\0A\00", [43 x i8] zeroinitializer }, align 32
@dvb_init._entry_ptr.79 = internal global ptr @dvb_init._entry.77, section ".printk_index", align 4
@.str.80 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"isl6421_attach\00", [17 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"symbol:isl6421_attach\00", [42 x i8] zeroinitializer }, align 32
@dvb_init._entry.82 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.2, ptr @.str.3, i32 1424, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013DVB: Unable to find symbol isl6421_attach()\0A\00", [49 x i8] zeroinitializer }, align 32
@dvb_init._entry_ptr.84 = internal global ptr @dvb_init._entry.82, section ".printk_index", align 4
@dvb_init._entry.85 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.2, ptr @.str.3, i32 1426, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\014saa7134_dvb: %s: Lifeview Trio, No ISL6421 found!\0A\00", [43 x i8] zeroinitializer }, align 32
@dvb_init._entry_ptr.87 = internal global ptr @dvb_init._entry.85, section ".printk_index", align 4
@ads_tech_duo_config = internal global { %struct.tda1004x_config, [32 x i8] } { %struct.tda1004x_config { i8 8, i8 1, i8 0, i32 0, i32 1, i32 2, i32 3, i32 128, i8 97, i8 0, i8 0, ptr @philips_tda1004x_request_firmware }, [32 x i8] zeroinitializer }, align 32
@dvb_init._entry.88 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.2, ptr @.str.3, i32 1436, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dvb_init._entry_ptr.89 = internal global ptr @dvb_init._entry.88, section ".printk_index", align 4
@.str.90 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"tda827x_attach\00", [17 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"symbol:tda827x_attach\00", [42 x i8] zeroinitializer }, align 32
@ads_duo_cfg = internal global { %struct.tda827x_config, [44 x i8] } { %struct.tda827x_config { ptr @ads_duo_tuner_init, ptr @ads_duo_tuner_sleep, i32 0, i32 0, ptr null }, [44 x i8] zeroinitializer }, align 32
@dvb_init._entry.92 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.93, ptr @.str.2, ptr @.str.3, i32 1440, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013DVB: Unable to find symbol tda827x_attach()\0A\00", [49 x i8] zeroinitializer }, align 32
@dvb_init._entry_ptr.94 = internal global ptr @dvb_init._entry.92, section ".printk_index", align 4
@dvb_init._entry.95 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.96, ptr @.str.2, ptr @.str.3, i32 1442, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\014saa7134_dvb: no tda827x tuner found at addr: %02x\0A\00", [43 x i8] zeroinitializer }, align 32
@dvb_init._entry_ptr.97 = internal global ptr @dvb_init._entry.95, section ".printk_index", align 4
@dvb_init._entry.98 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.99, ptr @.str.2, ptr @.str.3, i32 1446, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\014saa7134_dvb: failed to attach tda10046\0A\00", [54 x i8] zeroinitializer }, align 32
@dvb_init._entry_ptr.100 = internal global ptr @dvb_init._entry.98, section ".printk_index", align 4
@tevion_dvbt220rf_config = internal global { %struct.tda1004x_config, [32 x i8] } { %struct.tda1004x_config { i8 8, i8 1, i8 0, i32 0, i32 1, i32 2, i32 3, i32 138, i8 96, i8 0, i8 0, ptr @philips_tda1004x_request_firmware }, [32 x i8] zeroinitializer }, align 32
@md8800_dvbt_config = internal global { %struct.tda1004x_config, [32 x i8] } { %struct.tda1004x_config { i8 8, i8 1, i8 0, i32 0, i32 1, i32 2, i32 3, i32 130, i8 96, i8 0, i8 75, ptr @philips_tda1004x_request_firmware }, [32 x i8] zeroinitializer }, align 32
@dvb_init._entry.101 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.2, ptr @.str.3, i32 1460, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dvb_init._entry_ptr.102 = internal global ptr @dvb_init._entry.101, section ".printk_index", align 4
@__const.dvb_init.msg = private unnamed_addr constant { i16, i16, i16, [2 x i8], ptr } { i16 8, i16 0, i16 1, [2 x i8] zeroinitializer, ptr null }, align 4
@dvb_init._entry.103 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.2, ptr @.str.3, i32 1468, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dvb_init._entry_ptr.104 = internal global ptr @dvb_init._entry.103, section ".printk_index", align 4
@dvb_init._entry.105 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.106, ptr @.str.2, ptr @.str.3, i32 1470, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\014saa7134_dvb: %s: Medion Quadro, no tda826x found !\0A\00", [42 x i8] zeroinitializer }, align 32
@dvb_init._entry_ptr.107 = internal global ptr @dvb_init._entry.105, section ".printk_index", align 4
@.str.108 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"isl6405_attach\00", [17 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"symbol:isl6405_attach\00", [42 x i8] zeroinitializer }, align 32
@dvb_init._entry.110 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.111, ptr @.str.2, ptr @.str.3, i32 1477, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013DVB: Unable to find symbol isl6405_attach()\0A\00", [49 x i8] zeroinitializer }, align 32
@dvb_init._entry_ptr.112 = internal global ptr @dvb_init._entry.110, section ".printk_index", align 4
@dvb_init._entry.113 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.114, ptr @.str.2, ptr @.str.3, i32 1479, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\014saa7134_dvb: %s: Medion Quadro, no ISL6405 found !\0A\00", [42 x i8] zeroinitializer }, align 32
@dvb_init._entry_ptr.115 = internal global ptr @dvb_init._entry.113, section ".printk_index", align 4
@.str.116 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"nxt200x_attach\00", [17 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"symbol:nxt200x_attach\00", [42 x i8] zeroinitializer }, align 32
@avertvhda180 = internal constant { %struct.nxt200x_config, [24 x i8] } { %struct.nxt200x_config { i8 10, ptr null }, [24 x i8] zeroinitializer }, align 32
@dvb_init._entry.118 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.119, ptr @.str.2, ptr @.str.3, i32 1502, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013DVB: Unable to find symbol nxt200x_attach()\0A\00", [49 x i8] zeroinitializer }, align 32
@dvb_init._entry_ptr.120 = internal global ptr @dvb_init._entry.118, section ".printk_index", align 4
@.str.121 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"dvb_pll_attach\00", [17 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"symbol:dvb_pll_attach\00", [42 x i8] zeroinitializer }, align 32
@dvb_init._entry.123 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.124, ptr @.str.2, ptr @.str.3, i32 1505, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013DVB: Unable to find symbol dvb_pll_attach()\0A\00", [49 x i8] zeroinitializer }, align 32
@dvb_init._entry_ptr.125 = internal global ptr @dvb_init._entry.123, section ".printk_index", align 4
@kworldatsc110 = internal constant { %struct.nxt200x_config, [24 x i8] } { %struct.nxt200x_config { i8 10, ptr null }, [24 x i8] zeroinitializer }, align 32
@dvb_init._entry.126 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.119, ptr @.str.2, ptr @.str.3, i32 1510, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dvb_init._entry_ptr.127 = internal global ptr @dvb_init._entry.126, section ".printk_index", align 4
@dvb_init._entry.128 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.2, ptr @.str.3, i32 1514, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dvb_init._entry_ptr.129 = internal global ptr @dvb_init._entry.128, section ".printk_index", align 4
@.str.130 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"s5h1411_attach\00", [17 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"symbol:s5h1411_attach\00", [42 x i8] zeroinitializer }, align 32
@kworld_s5h1411_config = internal global { %struct.s5h1411_config, [22 x i8] } { %struct.s5h1411_config { i8 0, i8 0, i16 1, i16 4000, i16 3250, i8 1, i8 1 }, [22 x i8] zeroinitializer }, align 32
@dvb_init._entry.132 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.133, ptr @.str.2, ptr @.str.3, i32 1522, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013DVB: Unable to find symbol s5h1411_attach()\0A\00", [49 x i8] zeroinitializer }, align 32
@dvb_init._entry_ptr.134 = internal global ptr @dvb_init._entry.132, section ".printk_index", align 4
@dvb_init._entry.135 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.2, ptr @.str.3, i32 1526, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dvb_init._entry_ptr.136 = internal global ptr @dvb_init._entry.135, section ".printk_index", align 4
@kworld_pc150u_tda18271_config = internal global { %struct.tda18271_config, [36 x i8] } { %struct.tda18271_config { ptr @kworld_tda18271_std_map, i32 0, i32 1, i32 1, i32 0, i8 -128, i32 3 }, [36 x i8] zeroinitializer }, align 32
@dvb_init._entry.137 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.2, ptr @.str.3, i32 1529, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dvb_init._entry_ptr.138 = internal global ptr @dvb_init._entry.137, section ".printk_index", align 4
@dvb_init._entry.139 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.2, ptr @.str.3, i32 1534, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dvb_init._entry_ptr.140 = internal global ptr @dvb_init._entry.139, section ".printk_index", align 4
@dvb_init._entry.141 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.2, ptr @.str.3, i32 1537, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dvb_init._entry_ptr.142 = internal global ptr @dvb_init._entry.141, section ".printk_index", align 4
@dvb_init._entry.143 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.144, ptr @.str.2, ptr @.str.3, i32 1538, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\014saa7134_dvb: %s: No tda826x found!\0A\00", [58 x i8] zeroinitializer }, align 32
@dvb_init._entry_ptr.145 = internal global ptr @dvb_init._entry.143, section ".printk_index", align 4
@dvb_init._entry.146 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.2, ptr @.str.3, i32 1543, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dvb_init._entry_ptr.147 = internal global ptr @dvb_init._entry.146, section ".printk_index", align 4
@dvb_init._entry.148 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.149, ptr @.str.2, ptr @.str.3, i32 1544, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\014saa7134_dvb: %s: No ISL6421 found!\0A\00", [58 x i8] zeroinitializer }, align 32
@dvb_init._entry_ptr.150 = internal global ptr @dvb_init._entry.148, section ".printk_index", align 4
@dvb_init._entry.151 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.2, ptr @.str.3, i32 1552, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dvb_init._entry_ptr.152 = internal global ptr @dvb_init._entry.151, section ".printk_index", align 4
@dvb_init._entry.153 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.2, ptr @.str.3, i32 1559, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dvb_init._entry_ptr.154 = internal global ptr @dvb_init._entry.153, section ".printk_index", align 4
@dvb_init._entry.155 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.2, ptr @.str.3, i32 1565, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dvb_init._entry_ptr.156 = internal global ptr @dvb_init._entry.155, section ".printk_index", align 4
@cinergy_ht_config = internal global { %struct.tda1004x_config, [32 x i8] } { %struct.tda1004x_config { i8 8, i8 1, i8 0, i32 0, i32 1, i32 2, i32 3, i32 130, i8 97, i8 0, i8 75, ptr @philips_tda1004x_request_firmware }, [32 x i8] zeroinitializer }, align 32
@cinergy_ht_pci_config = internal global { %struct.tda1004x_config, [32 x i8] } { %struct.tda1004x_config { i8 8, i8 1, i8 0, i32 0, i32 1, i32 2, i32 3, i32 130, i8 96, i8 0, i8 75, ptr @philips_tda1004x_request_firmware }, [32 x i8] zeroinitializer }, align 32
@philips_tiger_s_config = internal global { %struct.tda1004x_config, [32 x i8] } { %struct.tda1004x_config { i8 8, i8 1, i8 0, i32 0, i32 1, i32 2, i32 3, i32 130, i8 97, i8 1, i8 75, ptr @philips_tda1004x_request_firmware }, [32 x i8] zeroinitializer }, align 32
@asus_p7131_4871_config = internal global { %struct.tda1004x_config, [32 x i8] } { %struct.tda1004x_config { i8 8, i8 1, i8 0, i32 0, i32 1, i32 2, i32 3, i32 130, i8 97, i8 2, i8 75, ptr @philips_tda1004x_request_firmware }, [32 x i8] zeroinitializer }, align 32
@asus_p7131_hybrid_lna_config = internal global { %struct.tda1004x_config, [32 x i8] } { %struct.tda1004x_config { i8 8, i8 1, i8 0, i32 0, i32 1, i32 2, i32 3, i32 138, i8 97, i8 2, i8 75, ptr @philips_tda1004x_request_firmware }, [32 x i8] zeroinitializer }, align 32
@avermedia_super_007_config = internal global { %struct.tda1004x_config, [32 x i8] } { %struct.tda1004x_config { i8 8, i8 1, i8 0, i32 0, i32 1, i32 2, i32 3, i32 130, i8 96, i8 1, i8 75, ptr @philips_tda1004x_request_firmware }, [32 x i8] zeroinitializer }, align 32
@twinhan_dtv_dvb_3056_config = internal global { %struct.tda1004x_config, [32 x i8] } { %struct.tda1004x_config { i8 8, i8 1, i8 0, i32 0, i32 1, i32 2, i32 3, i32 130, i8 97, i8 1, i8 66, ptr @philips_tda1004x_request_firmware }, [32 x i8] zeroinitializer }, align 32
@tda827x_cfg_2_sw42 = internal global { %struct.tda827x_config, [44 x i8] } { %struct.tda827x_config { ptr @philips_tda827x_tuner_init, ptr @philips_tda827x_tuner_sleep, i32 2, i32 66, ptr null }, [44 x i8] zeroinitializer }, align 32
@dvb_init._entry.157 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.2, ptr @.str.3, i32 1608, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dvb_init._entry_ptr.158 = internal global ptr @dvb_init._entry.157, section ".printk_index", align 4
@dvb_init._entry.159 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.2, ptr @.str.3, i32 1611, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dvb_init._entry_ptr.160 = internal global ptr @dvb_init._entry.159, section ".printk_index", align 4
@dvb_init._entry.161 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.144, ptr @.str.2, ptr @.str.3, i32 1612, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dvb_init._entry_ptr.162 = internal global ptr @dvb_init._entry.161, section ".printk_index", align 4
@.str.163 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"lnbp21_attach\00", [18 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"symbol:lnbp21_attach\00", [43 x i8] zeroinitializer }, align 32
@dvb_init._entry.165 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.166, ptr @.str.2, ptr @.str.3, i32 1616, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013DVB: Unable to find symbol lnbp21_attach()\0A\00", [50 x i8] zeroinitializer }, align 32
@dvb_init._entry_ptr.167 = internal global ptr @dvb_init._entry.165, section ".printk_index", align 4
@dvb_init._entry.168 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.169, ptr @.str.2, ptr @.str.3, i32 1617, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\014saa7134_dvb: %s: No lnbp21 found!\0A\00", [59 x i8] zeroinitializer }, align 32
@dvb_init._entry_ptr.170 = internal global ptr @dvb_init._entry.168, section ".printk_index", align 4
@dvb_init.__UNIQUE_ID_ddebug405 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.2, ptr @.str.3, ptr @.str.171, i8 1, i8 -104, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.171 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"AverMedia E506R dvb setup\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"saa7134_dvb: AverMedia E506R dvb setup\0A\00", [56 x i8] zeroinitializer }, align 32
@dvb_init._entry.173 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.2, ptr @.str.3, i32 1639, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dvb_init._entry_ptr.174 = internal global ptr @dvb_init._entry.173, section ".printk_index", align 4
@sd1878_4m = internal global { %struct.tda10086_config, [24 x i8] } { %struct.tda10086_config { i8 14, i8 0, i8 0, i32 1 }, [24 x i8] zeroinitializer }, align 32
@dvb_init._entry.175 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.2, ptr @.str.3, i32 1644, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dvb_init._entry_ptr.176 = internal global ptr @dvb_init._entry.175, section ".printk_index", align 4
@dvb_init._entry.177 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.124, ptr @.str.2, ptr @.str.3, i32 1648, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dvb_init._entry_ptr.178 = internal global ptr @dvb_init._entry.177, section ".printk_index", align 4
@dvb_init._entry.179 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.180, ptr @.str.2, ptr @.str.3, i32 1650, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.180 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\014saa7134_dvb: %s: MD7134 DVB-S, no SD1878 found !\0A\00", [44 x i8] zeroinitializer }, align 32
@dvb_init._entry_ptr.181 = internal global ptr @dvb_init._entry.179, section ".printk_index", align 4
@dvb_init._entry.182 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.111, ptr @.str.2, ptr @.str.3, i32 1657, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dvb_init._entry_ptr.183 = internal global ptr @dvb_init._entry.182, section ".printk_index", align 4
@dvb_init._entry.184 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.185, ptr @.str.2, ptr @.str.3, i32 1659, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.185 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\014saa7134_dvb: %s: MD7134 DVB-S, no ISL6405 found !\0A\00", [43 x i8] zeroinitializer }, align 32
@dvb_init._entry_ptr.186 = internal global ptr @dvb_init._entry.184, section ".printk_index", align 4
@dvb_init._entry.187 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.2, ptr @.str.3, i32 1675, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dvb_init._entry_ptr.188 = internal global ptr @dvb_init._entry.187, section ".printk_index", align 4
@asus_tiger_3in1_config = internal global { %struct.tda1004x_config, [32 x i8] } { %struct.tda1004x_config { i8 11, i8 1, i8 0, i32 0, i32 1, i32 2, i32 3, i32 138, i8 97, i8 1, i8 75, ptr @philips_tda1004x_request_firmware }, [32 x i8] zeroinitializer }, align 32
@dvb_init._entry.189 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.2, ptr @.str.3, i32 1685, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dvb_init._entry_ptr.190 = internal global ptr @dvb_init._entry.189, section ".printk_index", align 4
@dvb_init._entry.191 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.2, ptr @.str.3, i32 1689, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dvb_init._entry_ptr.192 = internal global ptr @dvb_init._entry.191, section ".printk_index", align 4
@dvb_init._entry.193 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.194, ptr @.str.2, ptr @.str.3, i32 1691, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.194 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\014saa7134_dvb: %s: Asus Tiger 3in1, no tda826x found!\0A\00", [41 x i8] zeroinitializer }, align 32
@dvb_init._entry_ptr.195 = internal global ptr @dvb_init._entry.193, section ".printk_index", align 4
@dvb_init._entry.196 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.166, ptr @.str.2, ptr @.str.3, i32 1695, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dvb_init._entry_ptr.197 = internal global ptr @dvb_init._entry.196, section ".printk_index", align 4
@dvb_init._entry.198 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.199, ptr @.str.2, ptr @.str.3, i32 1697, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.199 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\014saa7134_dvb: %s: Asus Tiger 3in1, no lnbp21 found!\0A\00", [42 x i8] zeroinitializer }, align 32
@dvb_init._entry_ptr.200 = internal global ptr @dvb_init._entry.198, section ".printk_index", align 4
@asus_ps3_100_config = internal global { %struct.tda1004x_config, [32 x i8] } { %struct.tda1004x_config { i8 11, i8 1, i8 0, i32 0, i32 1, i32 2, i32 3, i32 138, i8 97, i8 1, i8 75, ptr @philips_tda1004x_request_firmware }, [32 x i8] zeroinitializer }, align 32
@dvb_init._entry.201 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.2, ptr @.str.3, i32 1710, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dvb_init._entry_ptr.202 = internal global ptr @dvb_init._entry.201, section ".printk_index", align 4
@dvb_init._entry.203 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.2, ptr @.str.3, i32 1714, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dvb_init._entry_ptr.204 = internal global ptr @dvb_init._entry.203, section ".printk_index", align 4
@dvb_init._entry.205 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.206, ptr @.str.2, ptr @.str.3, i32 1716, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.206 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\014saa7134_dvb: %s: Asus My Cinema PS3-100, no tda826x found!\0A\00", [34 x i8] zeroinitializer }, align 32
@dvb_init._entry_ptr.207 = internal global ptr @dvb_init._entry.205, section ".printk_index", align 4
@dvb_init._entry.208 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.166, ptr @.str.2, ptr @.str.3, i32 1720, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dvb_init._entry_ptr.209 = internal global ptr @dvb_init._entry.208, section ".printk_index", align 4
@dvb_init._entry.210 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.211, ptr @.str.2, ptr @.str.3, i32 1722, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.211 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\014saa7134_dvb: %s: Asus My Cinema PS3-100, no lnbp21 found!\0A\00", [35 x i8] zeroinitializer }, align 32
@dvb_init._entry_ptr.212 = internal global ptr @dvb_init._entry.210, section ".printk_index", align 4
@.str.213 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"zl10353_attach\00", [17 x i8] zeroinitializer }, align 32
@.str.214 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"symbol:zl10353_attach\00", [42 x i8] zeroinitializer }, align 32
@behold_h6_config = internal global { %struct.zl10353_config, [40 x i8] } { %struct.zl10353_config { i8 15, i32 0, i32 0, i32 1, i32 1, i8 -128, i8 0, i8 0 }, [40 x i8] zeroinitializer }, align 32
@dvb_init._entry.215 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.216, ptr @.str.2, ptr @.str.3, i32 1736, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.216 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013DVB: Unable to find symbol zl10353_attach()\0A\00", [49 x i8] zeroinitializer }, align 32
@dvb_init._entry_ptr.217 = internal global ptr @dvb_init._entry.215, section ".printk_index", align 4
@dvb_init._entry.218 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.2, ptr @.str.3, i32 1740, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dvb_init._entry_ptr.219 = internal global ptr @dvb_init._entry.218, section ".printk_index", align 4
@behold_x7_config = internal global { %struct.zl10353_config, [40 x i8] } { %struct.zl10353_config { i8 15, i32 0, i32 45600, i32 1, i32 1, i8 -128, i8 0, i8 0 }, [40 x i8] zeroinitializer }, align 32
@dvb_init._entry.220 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.216, ptr @.str.2, ptr @.str.3, i32 1746, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dvb_init._entry_ptr.221 = internal global ptr @dvb_init._entry.220, section ".printk_index", align 4
@.str.222 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"xc5000_attach\00", [18 x i8] zeroinitializer }, align 32
@.str.223 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"symbol:xc5000_attach\00", [43 x i8] zeroinitializer }, align 32
@behold_x7_tunerconfig = internal global { %struct.xc5000_config, [44 x i8] } { %struct.xc5000_config { i8 97, i32 4560, i8 1, i16 0, i16 0, i32 0 }, [44 x i8] zeroinitializer }, align 32
@dvb_init._entry.224 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.225, ptr @.str.2, ptr @.str.3, i32 1749, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.225 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013DVB: Unable to find symbol xc5000_attach()\0A\00", [50 x i8] zeroinitializer }, align 32
@dvb_init._entry_ptr.226 = internal global ptr @dvb_init._entry.224, section ".printk_index", align 4
@dvb_init._entry.227 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.216, ptr @.str.2, ptr @.str.3, i32 1755, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dvb_init._entry_ptr.228 = internal global ptr @dvb_init._entry.227, section ".printk_index", align 4
@dvb_init._entry.229 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.225, ptr @.str.2, ptr @.str.3, i32 1758, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dvb_init._entry_ptr.230 = internal global ptr @dvb_init._entry.229, section ".printk_index", align 4
@.str.231 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mt312_attach\00", [19 x i8] zeroinitializer }, align 32
@.str.232 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"symbol:mt312_attach\00", [44 x i8] zeroinitializer }, align 32
@avertv_a700_mt312 = internal global { %struct.mt312_config, [28 x i8] } { %struct.mt312_config { i8 14, i8 -128, [2 x i8] undef }, [28 x i8] zeroinitializer }, align 32
@dvb_init._entry.233 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.234, ptr @.str.2, ptr @.str.3, i32 1765, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.234 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013DVB: Unable to find symbol mt312_attach()\0A\00", [51 x i8] zeroinitializer }, align 32
@dvb_init._entry_ptr.235 = internal global ptr @dvb_init._entry.233, section ".printk_index", align 4
@.str.236 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"zl10036_attach\00", [17 x i8] zeroinitializer }, align 32
@.str.237 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"symbol:zl10036_attach\00", [42 x i8] zeroinitializer }, align 32
@avertv_a700_tuner = internal global { %struct.zl10036_config, [24 x i8] } { %struct.zl10036_config { i8 96, i32 0 }, [24 x i8] zeroinitializer }, align 32
@dvb_init._entry.238 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.239, ptr @.str.2, ptr @.str.3, i32 1768, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.239 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013DVB: Unable to find symbol zl10036_attach()\0A\00", [49 x i8] zeroinitializer }, align 32
@dvb_init._entry_ptr.240 = internal global ptr @dvb_init._entry.238, section ".printk_index", align 4
@dvb_init._entry.241 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.242, ptr @.str.2, ptr @.str.3, i32 1770, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.242 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\014saa7134_dvb: %s: No zl10036 found!\0A\00", [58 x i8] zeroinitializer }, align 32
@dvb_init._entry_ptr.243 = internal global ptr @dvb_init._entry.241, section ".printk_index", align 4
@zl10313_compro_s350_config = internal global { %struct.mt312_config, [28 x i8] } { %struct.mt312_config { i8 14, i8 0, [2 x i8] undef }, [28 x i8] zeroinitializer }, align 32
@dvb_init._entry.244 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.234, ptr @.str.2, ptr @.str.3, i32 1776, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dvb_init._entry_ptr.245 = internal global ptr @dvb_init._entry.244, section ".printk_index", align 4
@.str.246 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"zl10039_attach\00", [17 x i8] zeroinitializer }, align 32
@.str.247 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"symbol:zl10039_attach\00", [42 x i8] zeroinitializer }, align 32
@dvb_init._entry.248 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.249, ptr @.str.2, ptr @.str.3, i32 1779, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.249 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013DVB: Unable to find symbol zl10039_attach()\0A\00", [49 x i8] zeroinitializer }, align 32
@dvb_init._entry_ptr.250 = internal global ptr @dvb_init._entry.248, section ".printk_index", align 4
@dvb_init._entry.251 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.252, ptr @.str.2, ptr @.str.3, i32 1781, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.252 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\014saa7134_dvb: %s: No zl10039 found!\0A\00", [58 x i8] zeroinitializer }, align 32
@dvb_init._entry_ptr.253 = internal global ptr @dvb_init._entry.251, section ".printk_index", align 4
@videomate_t750_zl10353_config = internal global { %struct.zl10353_config, [40 x i8] } { %struct.zl10353_config { i8 15, i32 0, i32 0, i32 1, i32 1, i8 -128, i8 0, i8 0 }, [40 x i8] zeroinitializer }, align 32
@dvb_init._entry.254 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.216, ptr @.str.2, ptr @.str.3, i32 1787, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dvb_init._entry_ptr.255 = internal global ptr @dvb_init._entry.254, section ".printk_index", align 4
@.str.256 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"qt1010_attach\00", [18 x i8] zeroinitializer }, align 32
@.str.257 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"symbol:qt1010_attach\00", [43 x i8] zeroinitializer }, align 32
@videomate_t750_qt1010_config = internal global { %struct.qt1010_config, [31 x i8] } { %struct.qt1010_config { i8 98 }, [31 x i8] zeroinitializer }, align 32
@dvb_init._entry.258 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.259, ptr @.str.2, ptr @.str.3, i32 1792, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.259 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013DVB: Unable to find symbol qt1010_attach()\0A\00", [50 x i8] zeroinitializer }, align 32
@dvb_init._entry_ptr.260 = internal global ptr @dvb_init._entry.258, section ".printk_index", align 4
@dvb_init._entry.261 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.262, ptr @.str.2, ptr @.str.3, i32 1793, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.262 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\014saa7134_dvb: error attaching QT1010\0A\00", [57 x i8] zeroinitializer }, align 32
@dvb_init._entry_ptr.263 = internal global ptr @dvb_init._entry.261, section ".printk_index", align 4
@zolid_tda10048_config = internal global { %struct.tda10048_config, [46 x i8] } { %struct.tda10048_config { i8 8, i8 0, i8 -56, i8 1, i16 3300, i16 3500, i16 4000, i16 16000, i8 1, i8 0, i8 0, i8 0, i8 0, i8 0 }, [46 x i8] zeroinitializer }, align 32
@dvb_init._entry.264 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.2, ptr @.str.3, i32 1799, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dvb_init._entry_ptr.265 = internal global ptr @dvb_init._entry.264, section ".printk_index", align 4
@dvb_init._entry.266 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.2, ptr @.str.3, i32 1803, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dvb_init._entry_ptr.267 = internal global ptr @dvb_init._entry.266, section ".printk_index", align 4
@zolid_tda18271_config = internal global { %struct.tda18271_config, [36 x i8] } { %struct.tda18271_config { ptr null, i32 0, i32 1, i32 0, i32 0, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@dvb_init._entry.268 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.2, ptr @.str.3, i32 1806, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dvb_init._entry_ptr.269 = internal global ptr @dvb_init._entry.268, section ".printk_index", align 4
@dtv1000s_tda10048_config = internal global { %struct.tda10048_config, [46 x i8] } { %struct.tda10048_config { i8 8, i8 0, i8 -56, i8 1, i16 3300, i16 3800, i16 4300, i16 16000, i8 1, i8 0, i8 0, i8 0, i8 0, i8 0 }, [46 x i8] zeroinitializer }, align 32
@dvb_init._entry.270 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.2, ptr @.str.3, i32 1812, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dvb_init._entry_ptr.271 = internal global ptr @dvb_init._entry.270, section ".printk_index", align 4
@dvb_init._entry.272 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.2, ptr @.str.3, i32 1816, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dvb_init._entry_ptr.273 = internal global ptr @dvb_init._entry.272, section ".printk_index", align 4
@dtv1000s_tda18271_config = internal global { %struct.tda18271_config, [36 x i8] } { %struct.tda18271_config { ptr @dtv1000s_tda18271_std_map, i32 0, i32 1, i32 0, i32 0, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@dvb_init._entry.274 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.2, ptr @.str.3, i32 1819, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dvb_init._entry_ptr.275 = internal global ptr @dvb_init._entry.274, section ".printk_index", align 4
@.str.276 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"mb86a20s_attach\00", [16 x i8] zeroinitializer }, align 32
@.str.277 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"symbol:mb86a20s_attach\00", [41 x i8] zeroinitializer }, align 32
@kworld_mb86a20s_config = internal constant { %struct.mb86a20s_config, [24 x i8] } { %struct.mb86a20s_config { i32 0, i8 16, i8 0 }, [24 x i8] zeroinitializer }, align 32
@dvb_init._entry.278 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.279, ptr @.str.2, ptr @.str.3, i32 1828, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.279 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013DVB: Unable to find symbol mb86a20s_attach()\0A\00", [48 x i8] zeroinitializer }, align 32
@dvb_init._entry_ptr.280 = internal global ptr @dvb_init._entry.278, section ".printk_index", align 4
@dvb_init._entry.281 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.2, ptr @.str.3, i32 1832, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dvb_init._entry_ptr.282 = internal global ptr @dvb_init._entry.281, section ".printk_index", align 4
@kworld_tda18271_config = internal global { %struct.tda18271_config, [36 x i8] } { %struct.tda18271_config { ptr @mb86a20s_tda18271_std_map, i32 0, i32 2, i32 0, i32 0, i8 0, i32 3 }, [36 x i8] zeroinitializer }, align 32
@dvb_init._entry.283 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.2, ptr @.str.3, i32 1836, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dvb_init._entry_ptr.284 = internal global ptr @dvb_init._entry.283, section ".printk_index", align 4
@.str.285 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"lgs8gxx_attach\00", [17 x i8] zeroinitializer }, align 32
@.str.286 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"symbol:lgs8gxx_attach\00", [42 x i8] zeroinitializer }, align 32
@prohdtv_pro2_lgs8g75_config = internal global { %struct.lgs8gxx_config, [40 x i8] } { %struct.lgs8gxx_config { i8 6, i8 29, i8 0, i8 1, i8 0, i32 30400, i32 4000, i8 0, i8 1, i8 1, i8 0, i8 3, i8 0 }, [40 x i8] zeroinitializer }, align 32
@dvb_init._entry.287 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.288, ptr @.str.2, ptr @.str.3, i32 1844, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.288 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013DVB: Unable to find symbol lgs8gxx_attach()\0A\00", [49 x i8] zeroinitializer }, align 32
@dvb_init._entry_ptr.289 = internal global ptr @dvb_init._entry.287, section ".printk_index", align 4
@dvb_init._entry.290 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.2, ptr @.str.3, i32 1848, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dvb_init._entry_ptr.291 = internal global ptr @dvb_init._entry.290, section ".printk_index", align 4
@prohdtv_pro2_tda18271_config = internal global { %struct.tda18271_config, [36 x i8] } { %struct.tda18271_config { ptr null, i32 0, i32 1, i32 1, i32 0, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@dvb_init._entry.292 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.2, ptr @.str.3, i32 1851, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dvb_init._entry_ptr.293 = internal global ptr @dvb_init._entry.292, section ".printk_index", align 4
@zl10313_avermedia_a706_config = internal global { %struct.mt312_config, [28 x i8] } { %struct.mt312_config { i8 14, i8 0, [2 x i8] undef }, [28 x i8] zeroinitializer }, align 32
@dvb_init._entry.294 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.234, ptr @.str.2, ptr @.str.3, i32 1864, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dvb_init._entry_ptr.295 = internal global ptr @dvb_init._entry.294, section ".printk_index", align 4
@dvb_init._entry.296 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.249, ptr @.str.2, ptr @.str.3, i32 1868, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dvb_init._entry_ptr.297 = internal global ptr @dvb_init._entry.296, section ".printk_index", align 4
@dvb_init._entry.298 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.252, ptr @.str.2, ptr @.str.3, i32 1870, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dvb_init._entry_ptr.299 = internal global ptr @dvb_init._entry.298, section ".printk_index", align 4
@hdtv200h_s5h1411_config = internal global { %struct.s5h1411_config, [22 x i8] } { %struct.s5h1411_config { i8 0, i8 0, i16 1, i16 4000, i16 3250, i8 1, i8 1 }, [22 x i8] zeroinitializer }, align 32
@dvb_init._entry.300 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.133, ptr @.str.2, ptr @.str.3, i32 1876, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dvb_init._entry_ptr.301 = internal global ptr @dvb_init._entry.300, section ".printk_index", align 4
@dvb_init._entry.302 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.2, ptr @.str.3, i32 1880, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dvb_init._entry_ptr.303 = internal global ptr @dvb_init._entry.302, section ".printk_index", align 4
@hdtv200h_tda18271_config = internal global { %struct.tda18271_config, [36 x i8] } { %struct.tda18271_config { ptr null, i32 0, i32 1, i32 0, i32 0, i8 0, i32 3 }, [36 x i8] zeroinitializer }, align 32
@dvb_init._entry.304 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.2, ptr @.str.3, i32 1883, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dvb_init._entry_ptr.305 = internal global ptr @dvb_init._entry.304, section ".printk_index", align 4
@dvb_init._entry.306 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.307, ptr @.str.2, ptr @.str.3, i32 1887, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.307 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\014saa7134_dvb: Huh? unknown DVB card?\0A\00", [57 x i8] zeroinitializer }, align 32
@dvb_init._entry_ptr.308 = internal global ptr @dvb_init._entry.306, section ".printk_index", align 4
@.str.309 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"xc2028_attach\00", [18 x i8] zeroinitializer }, align 32
@.str.310 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"symbol:xc2028_attach\00", [43 x i8] zeroinitializer }, align 32
@dvb_init._entry.311 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.312, ptr @.str.2, ptr @.str.3, i32 1901, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.312 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013DVB: Unable to find symbol xc2028_attach()\0A\00", [50 x i8] zeroinitializer }, align 32
@dvb_init._entry_ptr.313 = internal global ptr @dvb_init._entry.311, section ".printk_index", align 4
@dvb_init._entry.314 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.315, ptr @.str.2, ptr @.str.3, i32 1904, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.315 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013saa7134_dvb: %s/2: xc3028 attach failed\0A\00", [53 x i8] zeroinitializer }, align 32
@dvb_init._entry_ptr.316 = internal global ptr @dvb_init._entry.314, section ".printk_index", align 4
@dvb_init._entry.317 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.318, ptr @.str.2, ptr @.str.3, i32 1910, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.318 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\013saa7134_dvb: %s/dvb: frontend initialization failed\0A\00", [41 x i8] zeroinitializer }, align 32
@dvb_init._entry_ptr.319 = internal global ptr @dvb_init._entry.317, section ".printk_index", align 4
@mt352_pinnacle_init.clock_config = internal global { [3 x i8], [29 x i8] } { [3 x i8] c"\89=(", [29 x i8] zeroinitializer }, align 32
@mt352_pinnacle_init.reset = internal global { [2 x i8], [30 x i8] } { [2 x i8] c"P\80", [30 x i8] zeroinitializer }, align 32
@mt352_pinnacle_init.adc_ctl_1_cfg = internal global { [2 x i8], [30 x i8] } { [2 x i8] c"\8E@", [30 x i8] zeroinitializer }, align 32
@mt352_pinnacle_init.agc_cfg = internal global { [3 x i8], [29 x i8] } { [3 x i8] c"g(\A0", [29 x i8] zeroinitializer }, align 32
@mt352_pinnacle_init.capt_range_cfg = internal global { [2 x i8], [30 x i8] } { [2 x i8] c"u1", [30 x i8] zeroinitializer }, align 32
@mt352_pinnacle_init.fsm_ctl_cfg = internal global { [2 x i8], [30 x i8] } { [2 x i8] c"{\04", [30 x i8] zeroinitializer }, align 32
@mt352_pinnacle_init.gpp_ctl_cfg = internal global { [2 x i8], [30 x i8] } { [2 x i8] c"\8C\0F", [30 x i8] zeroinitializer }, align 32
@mt352_pinnacle_init.scan_ctl_cfg = internal global { [2 x i8], [30 x i8] } { [2 x i8] c"\88\0D", [30 x i8] zeroinitializer }, align 32
@mt352_pinnacle_init.irq_cfg = internal global { [5 x i8], [27 x i8] } { [5 x i8] c"a\00\00\00\00", [27 x i8] zeroinitializer }, align 32
@mt352_pinnacle_init.__UNIQUE_ID_ddebug397 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.320, ptr @.str.3, ptr @.str.321, i8 0, i8 27, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.320 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"mt352_pinnacle_init\00", [44 x i8] zeroinitializer }, align 32
@.str.321 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"%s called\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.322 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"saa7134_dvb: %s called\0A\00", [40 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@pinnacle_antenna_pwr.__UNIQUE_ID_ddebug396 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.323, ptr @.str.3, ptr @.str.324, i8 0, i8 23, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.323 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"pinnacle_antenna_pwr\00", [43 x i8] zeroinitializer }, align 32
@.str.324 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%s %s\0A\00", [25 x i8] zeroinitializer }, align 32
@.str.325 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"saa7134_dvb: %s %s\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.326 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"on\00", [29 x i8] zeroinitializer }, align 32
@.str.327 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"off\00", [28 x i8] zeroinitializer }, align 32
@mt352_aver777_init.clock_config = internal global { [3 x i8], [29 x i8] } { [3 x i8] c"\898-", [29 x i8] zeroinitializer }, align 32
@mt352_aver777_init.reset = internal global { [2 x i8], [30 x i8] } { [2 x i8] c"P\80", [30 x i8] zeroinitializer }, align 32
@mt352_aver777_init.adc_ctl_1_cfg = internal global { [2 x i8], [30 x i8] } { [2 x i8] c"\8E@", [30 x i8] zeroinitializer }, align 32
@mt352_aver777_init.agc_cfg = internal global { [3 x i8], [29 x i8] } { [3 x i8] c"g(\A0", [29 x i8] zeroinitializer }, align 32
@mt352_aver777_init.capt_range_cfg = internal global { [2 x i8], [30 x i8] } { [2 x i8] c"u3", [30 x i8] zeroinitializer }, align 32
@mt352_avermedia_xc3028_init.clock_config = internal global { [3 x i8], [29 x i8] } { [3 x i8] c"\898-", [29 x i8] zeroinitializer }, align 32
@mt352_avermedia_xc3028_init.reset = internal global { [2 x i8], [30 x i8] } { [2 x i8] c"P\80", [30 x i8] zeroinitializer }, align 32
@mt352_avermedia_xc3028_init.adc_ctl_1_cfg = internal global { [2 x i8], [30 x i8] } { [2 x i8] c"\8E@", [30 x i8] zeroinitializer }, align 32
@mt352_avermedia_xc3028_init.agc_cfg = internal global { [2 x i8], [30 x i8] } { [2 x i8] c"g\0E", [30 x i8] zeroinitializer }, align 32
@mt352_avermedia_xc3028_init.capt_range_cfg = internal global { [2 x i8], [30 x i8] } { [2 x i8] c"u3", [30 x i8] zeroinitializer }, align 32
@philips_tu1216_init.tu1216_init = internal global { [4 x i8], [28 x i8] } { [4 x i8] c"\0B\F5\85\AB", [28 x i8] zeroinitializer }, align 32
@philips_tda6651_pll_set._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.328, ptr @.str.329, ptr @.str.3, i32 349, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.328 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\014saa7134_dvb: could not write to tuner at addr: 0x%02x\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.329 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"philips_tda6651_pll_set\00", [40 x i8] zeroinitializer }, align 32
@philips_tda6651_pll_set._entry_ptr = internal global ptr @philips_tda6651_pll_set._entry, section ".printk_index", align 4
@configure_tda827x_fe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.330, ptr @.str.3, i32 594, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.330 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"configure_tda827x_fe\00", [43 x i8] zeroinitializer }, align 32
@configure_tda827x_fe._entry_ptr = internal global ptr @configure_tda827x_fe._entry, section ".printk_index", align 4
@configure_tda827x_fe._entry.331 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.93, ptr @.str.330, ptr @.str.3, i32 600, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@configure_tda827x_fe._entry_ptr.332 = internal global ptr @configure_tda827x_fe._entry.331, section ".printk_index", align 4
@configure_tda827x_fe._entry.333 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.96, ptr @.str.330, ptr @.str.3, i32 604, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@configure_tda827x_fe._entry_ptr.334 = internal global ptr @configure_tda827x_fe._entry.333, section ".printk_index", align 4
@tda8290_i2c_gate_ctrl.tda8290_close = internal global { [2 x i8], [30 x i8] } { [2 x i8] c"!\C0", [30 x i8] zeroinitializer }, align 32
@tda8290_i2c_gate_ctrl.tda8290_open = internal global { [2 x i8], [30 x i8] } { [2 x i8] c"!\80", [30 x i8] zeroinitializer }, align 32
@tda8290_i2c_gate_ctrl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.335, ptr @.str.336, ptr @.str.3, i32 535, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.335 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\014saa7134_dvb: could not access tda8290 I2C gate\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.336 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"tda8290_i2c_gate_ctrl\00", [42 x i8] zeroinitializer }, align 32
@tda8290_i2c_gate_ctrl._entry_ptr = internal global ptr @tda8290_i2c_gate_ctrl._entry, section ".printk_index", align 4
@philips_tda827x_tuner_init.__UNIQUE_ID_ddebug398 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.337, ptr @.str.3, ptr @.str.338, i8 0, i8 -119, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.337 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"philips_tda827x_tuner_init\00", [37 x i8] zeroinitializer }, align 32
@.str.338 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"setting GPIO21 to 0 (TV antenna?)\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.339 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"saa7134_dvb: setting GPIO21 to 0 (TV antenna?)\0A\00", [48 x i8] zeroinitializer }, align 32
@philips_tda827x_tuner_init.__UNIQUE_ID_ddebug399 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.337, ptr @.str.3, ptr @.str.340, i8 0, i8 -118, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.340 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"setting GPIO21 to 1 (Radio antenna?)\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.341 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"saa7134_dvb: setting GPIO21 to 1 (Radio antenna?)\0A\00", [45 x i8] zeroinitializer }, align 32
@philips_tda827x_tuner_sleep.__UNIQUE_ID_ddebug400 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.342, ptr @.str.3, ptr @.str.340, i8 0, i8 -114, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.342 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"philips_tda827x_tuner_sleep\00", [36 x i8] zeroinitializer }, align 32
@philips_tda827x_tuner_sleep.__UNIQUE_ID_ddebug401 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.342, ptr @.str.3, ptr @.str.338, i8 0, i8 -113, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@philips_europa_tuner_init.msg = internal global { [2 x i8], [30 x i8] } { [2 x i8] c"\00@", [30 x i8] zeroinitializer }, align 32
@__const.philips_europa_tuner_init.init_msg = private unnamed_addr constant { i16, i16, i16, [2 x i8], ptr } { i16 67, i16 0, i16 2, [2 x i8] zeroinitializer, ptr @philips_europa_tuner_init.msg }, align 4
@philips_europa_tuner_sleep.msg = internal global { [2 x i8], [30 x i8] } { [2 x i8] c"\00\14", [30 x i8] zeroinitializer }, align 32
@__const.philips_europa_tuner_sleep.analog_msg = private unnamed_addr constant { i16, i16, i16, [2 x i8], ptr } { i16 67, i16 0, i16 2, [2 x i8] zeroinitializer, ptr @philips_europa_tuner_sleep.msg }, align 4
@philips_td1316_tuner_sleep.msg = internal global { [4 x i8], [28 x i8] } { [4 x i8] c"\0B\DC\86\A4", [28 x i8] zeroinitializer }, align 32
@hauppauge_tda18271_std_map = internal global { { %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, { i16, i8, i8 }, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, { i16, i8, i8 }, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item }, [36 x i8] } { { %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, { i16, i8, i8 }, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, { i16, i8, i8 }, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item } { %struct.tda18271_std_map_item zeroinitializer, %struct.tda18271_std_map_item zeroinitializer, %struct.tda18271_std_map_item zeroinitializer, %struct.tda18271_std_map_item zeroinitializer, %struct.tda18271_std_map_item zeroinitializer, %struct.tda18271_std_map_item zeroinitializer, %struct.tda18271_std_map_item zeroinitializer, %struct.tda18271_std_map_item zeroinitializer, { i16, i8, i8 } { i16 3250, i8 -32, i8 -40 }, %struct.tda18271_std_map_item zeroinitializer, %struct.tda18271_std_map_item zeroinitializer, %struct.tda18271_std_map_item zeroinitializer, { i16, i8, i8 } { i16 4000, i8 -24, i8 -40 }, %struct.tda18271_std_map_item zeroinitializer, %struct.tda18271_std_map_item zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@md8800_set_high_voltage2._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.344, ptr @.str.345, ptr @.str.3, i32 1028, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.344 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"\014saa7134_dvb: %s: sorry can't set high LNB supply voltage from here\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.345 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"md8800_set_high_voltage2\00", [39 x i8] zeroinitializer }, align 32
@md8800_set_high_voltage2._entry_ptr = internal global ptr @md8800_set_high_voltage2._entry, section ".printk_index", align 4
@kworld_tda18271_std_map = internal global { { %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, { i16, i8, i8 }, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, { i16, i8, i8 }, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item }, [36 x i8] } { { %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, { i16, i8, i8 }, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, { i16, i8, i8 }, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item } { %struct.tda18271_std_map_item zeroinitializer, %struct.tda18271_std_map_item zeroinitializer, %struct.tda18271_std_map_item zeroinitializer, %struct.tda18271_std_map_item zeroinitializer, %struct.tda18271_std_map_item zeroinitializer, %struct.tda18271_std_map_item zeroinitializer, %struct.tda18271_std_map_item zeroinitializer, %struct.tda18271_std_map_item zeroinitializer, { i16, i8, i8 } { i16 3250, i8 -37, i8 55 }, %struct.tda18271_std_map_item zeroinitializer, %struct.tda18271_std_map_item zeroinitializer, %struct.tda18271_std_map_item zeroinitializer, { i16, i8, i8 } { i16 4000, i8 -61, i8 55 }, %struct.tda18271_std_map_item zeroinitializer, %struct.tda18271_std_map_item zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@philips_td1316_tuner_init.msg = internal global { [4 x i8], [28 x i8] } { [4 x i8] c"\0B\F5\86\AB", [28 x i8] zeroinitializer }, align 32
@dtv1000s_tda18271_std_map = internal global { { %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, { i16, i8, i8 }, { i16, i8, i8 }, { i16, i8, i8 }, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item }, [36 x i8] } { { %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, { i16, i8, i8 }, { i16, i8, i8 }, { i16, i8, i8 }, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item } { %struct.tda18271_std_map_item zeroinitializer, %struct.tda18271_std_map_item zeroinitializer, %struct.tda18271_std_map_item zeroinitializer, %struct.tda18271_std_map_item zeroinitializer, %struct.tda18271_std_map_item zeroinitializer, %struct.tda18271_std_map_item zeroinitializer, %struct.tda18271_std_map_item zeroinitializer, %struct.tda18271_std_map_item zeroinitializer, %struct.tda18271_std_map_item zeroinitializer, { i16, i8, i8 } { i16 3300, i8 -32, i8 -73 }, { i16, i8, i8 } { i16 3800, i8 -24, i8 -73 }, { i16, i8, i8 } { i16 4300, i8 -16, i8 -73 }, %struct.tda18271_std_map_item zeroinitializer, %struct.tda18271_std_map_item zeroinitializer, %struct.tda18271_std_map_item zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@kworld_sbtvd_gate_ctrl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.348, ptr @.str.349, ptr @.str.3, i32 237, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.348 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\014saa7134_dvb: could not access the I2C gate\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.349 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"kworld_sbtvd_gate_ctrl\00", [41 x i8] zeroinitializer }, align 32
@kworld_sbtvd_gate_ctrl._entry_ptr = internal global ptr @kworld_sbtvd_gate_ctrl._entry, section ".printk_index", align 4
@kworld_sbtvd_gate_ctrl._entry.350 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.348, ptr @.str.349, ptr @.str.3, i32 245, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@kworld_sbtvd_gate_ctrl._entry_ptr.351 = internal global ptr @kworld_sbtvd_gate_ctrl._entry.350, section ".printk_index", align 4
@mb86a20s_tda18271_std_map = internal global { { %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, { i16, i8, i8 }, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item }, [36 x i8] } { { %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, { i16, i8, i8 }, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item } { %struct.tda18271_std_map_item zeroinitializer, %struct.tda18271_std_map_item zeroinitializer, %struct.tda18271_std_map_item zeroinitializer, %struct.tda18271_std_map_item zeroinitializer, %struct.tda18271_std_map_item zeroinitializer, %struct.tda18271_std_map_item zeroinitializer, %struct.tda18271_std_map_item zeroinitializer, %struct.tda18271_std_map_item zeroinitializer, %struct.tda18271_std_map_item zeroinitializer, { i16, i8, i8 } { i16 3300, i8 -29, i8 -73 }, %struct.tda18271_std_map_item zeroinitializer, %struct.tda18271_std_map_item zeroinitializer, %struct.tda18271_std_map_item zeroinitializer, %struct.tda18271_std_map_item zeroinitializer, %struct.tda18271_std_map_item zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@dvb_fini.on = internal global { i32, [28 x i8] } { i32 5, [28 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [64 x i64] [i64 62, i64 32, i64 12, i64 50, i64 55, i64 60, i64 61, i64 69, i64 70, i64 71, i64 75, i64 78, i64 81, i64 84, i64 85, i64 86, i64 87, i64 88, i64 90, i64 93, i64 94, i64 96, i64 97, i64 99, i64 100, i64 101, i64 103, i64 104, i64 105, i64 108, i64 109, i64 111, i64 112, i64 114, i64 117, i64 131, i64 133, i64 134, i64 135, i64 136, i64 137, i64 139, i64 140, i64 141, i64 142, i64 145, i64 147, i64 151, i64 152, i64 155, i64 156, i64 169, i64 171, i64 173, i64 174, i64 175, i64 178, i64 181, i64 182, i64 185, i64 189, i64 190, i64 192, i64 197]
@__sancov_gen_cov_switch_values.353 = internal global [4 x i64] [i64 2, i64 32, i64 50, i64 96]
@__sancov_gen_cov_switch_values.354 = internal global [5 x i64] [i64 3, i64 32, i64 6000000, i64 7000000, i64 8000000]
@__sancov_gen_cov_switch_values.355 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.356 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.357 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.358 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@___asan_gen_.359 = private unnamed_addr constant [12 x i8] c"antenna_pwr\00", align 1
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1389, i32 57, i32 21 }
@___asan_gen_.362 = private unnamed_addr constant [13 x i8] c"use_frontend\00", align 1
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1389, i32 62, i32 12 }
@___asan_gen_.365 = private unnamed_addr constant [8 x i8] c"dvb_ops\00", align 1
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1389, i32 1987, i32 32 }
@___asan_gen_.368 = private unnamed_addr constant [11 x i8] c"adapter_nr\00", align 1
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1389, i32 66, i32 1 }
@___asan_gen_.371 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1389, i32 1221, i32 2 }
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1389, i32 1224, i32 2 }
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1389, i32 1227, i32 3 }
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1389, i32 1253, i32 3 }
@___asan_gen_.410 = private unnamed_addr constant [14 x i8] c"pinnacle_300i\00", align 1
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1389, i32 192, i32 28 }
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1389, i32 1254, i32 23 }
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1389, i32 1262, i32 3 }
@___asan_gen_.425 = private unnamed_addr constant [14 x i8] c"avermedia_777\00", align 1
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1389, i32 200, i32 28 }
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1389, i32 1263, i32 23 }
@___asan_gen_.442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1389, i32 1266, i32 4 }
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1389, i32 1272, i32 3 }
@___asan_gen_.449 = private unnamed_addr constant [27 x i8] c"avermedia_xc3028_mt352_dev\00", align 1
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1389, i32 205, i32 28 }
@___asan_gen_.454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1389, i32 1273, i32 23 }
@___asan_gen_.461 = private unnamed_addr constant [15 x i8] c"medion_cardbus\00", align 1
@___asan_gen_.463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1389, i32 495, i32 31 }
@___asan_gen_.469 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1389, i32 1279, i32 23 }
@___asan_gen_.472 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1389, i32 1297, i32 4 }
@___asan_gen_.473 = private unnamed_addr constant [25 x i8] c"philips_tu1216_60_config\00", align 1
@___asan_gen_.475 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1389, i32 376, i32 31 }
@___asan_gen_.478 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1389, i32 1303, i32 23 }
@___asan_gen_.479 = private unnamed_addr constant [24 x i8] c"tda827x_lifeview_config\00", align 1
@___asan_gen_.481 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1389, i32 641, i32 31 }
@___asan_gen_.482 = private unnamed_addr constant [14 x i8] c"tda827x_cfg_0\00", align 1
@___asan_gen_.484 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1389, i32 611, i32 30 }
@___asan_gen_.485 = private unnamed_addr constant [22 x i8] c"philips_europa_config\00", align 1
@___asan_gen_.487 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1389, i32 483, i32 31 }
@___asan_gen_.490 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1389, i32 1320, i32 23 }
@___asan_gen_.491 = private unnamed_addr constant [32 x i8] c"technotrend_budget_t3000_config\00", align 1
@___asan_gen_.493 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1389, i32 506, i32 31 }
@___asan_gen_.496 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1389, i32 1332, i32 23 }
@___asan_gen_.497 = private unnamed_addr constant [25 x i8] c"philips_tu1216_61_config\00", align 1
@___asan_gen_.499 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1389, i32 387, i32 31 }
@___asan_gen_.502 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1389, i32 1344, i32 23 }
@___asan_gen_.503 = private unnamed_addr constant [24 x i8] c"kworld_dvb_t_210_config\00", align 1
@___asan_gen_.505 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1389, i32 812, i32 31 }
@___asan_gen_.506 = private unnamed_addr constant [14 x i8] c"tda827x_cfg_2\00", align 1
@___asan_gen_.508 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1389, i32 625, i32 30 }
@___asan_gen_.515 = private unnamed_addr constant [20 x i8] c"hcw_tda10048_config\00", align 1
@___asan_gen_.517 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1389, i32 1074, i32 31 }
@___asan_gen_.523 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1389, i32 1358, i32 23 }
@___asan_gen_.530 = private unnamed_addr constant [17 x i8] c"tda829x_no_probe\00", align 1
@___asan_gen_.532 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1389, i32 1100, i32 30 }
@___asan_gen_.538 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1389, i32 1362, i32 4 }
@___asan_gen_.545 = private unnamed_addr constant [20 x i8] c"hcw_tda18271_config\00", align 1
@___asan_gen_.547 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1389, i32 1093, i32 31 }
@___asan_gen_.553 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1389, i32 1365, i32 4 }
@___asan_gen_.554 = private unnamed_addr constant [21 x i8] c"philips_tiger_config\00", align 1
@___asan_gen_.556 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1389, i32 653, i32 31 }
@___asan_gen_.557 = private unnamed_addr constant [26 x i8] c"pinnacle_pctv_310i_config\00", align 1
@___asan_gen_.559 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1389, i32 707, i32 31 }
@___asan_gen_.560 = private unnamed_addr constant [14 x i8] c"tda827x_cfg_1\00", align 1
@___asan_gen_.562 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1389, i32 618, i32 30 }
@___asan_gen_.563 = private unnamed_addr constant [26 x i8] c"hauppauge_hvr_1110_config\00", align 1
@___asan_gen_.565 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1389, i32 720, i32 31 }
@___asan_gen_.572 = private unnamed_addr constant [20 x i8] c"hcw_lgdt3305_config\00", align 1
@___asan_gen_.574 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1389, i32 1063, i32 31 }
@___asan_gen_.580 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1389, i32 1386, i32 23 }
@___asan_gen_.583 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1389, i32 1390, i32 4 }
@___asan_gen_.586 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1389, i32 1393, i32 4 }
@___asan_gen_.587 = private unnamed_addr constant [23 x i8] c"asus_p7131_dual_config\00", align 1
@___asan_gen_.589 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1389, i32 733, i32 31 }
@___asan_gen_.590 = private unnamed_addr constant [21 x i8] c"lifeview_trio_config\00", align 1
@___asan_gen_.592 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1389, i32 747, i32 31 }
@___asan_gen_.599 = private unnamed_addr constant [8 x i8] c"flydvbs\00", align 1
@___asan_gen_.601 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1389, i32 959, i32 31 }
@___asan_gen_.607 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1389, i32 1414, i32 24 }
@___asan_gen_.619 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1389, i32 1416, i32 9 }
@___asan_gen_.625 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1389, i32 1418, i32 6 }
@___asan_gen_.637 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1389, i32 1422, i32 9 }
@___asan_gen_.643 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1389, i32 1425, i32 6 }
@___asan_gen_.644 = private unnamed_addr constant [20 x i8] c"ads_tech_duo_config\00", align 1
@___asan_gen_.646 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1389, i32 910, i32 31 }
@___asan_gen_.649 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1389, i32 1434, i32 23 }
@___asan_gen_.656 = private unnamed_addr constant [12 x i8] c"ads_duo_cfg\00", align 1
@___asan_gen_.658 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1389, i32 904, i32 30 }
@___asan_gen_.664 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1389, i32 1438, i32 8 }
@___asan_gen_.670 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1389, i32 1441, i32 5 }
@___asan_gen_.676 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1389, i32 1446, i32 4 }
@___asan_gen_.677 = private unnamed_addr constant [24 x i8] c"tevion_dvbt220rf_config\00", align 1
@___asan_gen_.679 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1389, i32 759, i32 31 }
@___asan_gen_.680 = private unnamed_addr constant [19 x i8] c"md8800_dvbt_config\00", align 1
@___asan_gen_.682 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1389, i32 771, i32 31 }
@___asan_gen_.685 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1389, i32 1459, i32 24 }
@___asan_gen_.688 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1389, i32 1467, i32 9 }
@___asan_gen_.694 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1389, i32 1469, i32 6 }
@___asan_gen_.706 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1389, i32 1476, i32 10 }
@___asan_gen_.712 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1389, i32 1478, i32 7 }
@___asan_gen_.719 = private unnamed_addr constant [13 x i8] c"avertvhda180\00", align 1
@___asan_gen_.721 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1389, i32 1036, i32 36 }
@___asan_gen_.727 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1389, i32 1501, i32 23 }
@___asan_gen_.739 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1389, i32 1504, i32 4 }
@___asan_gen_.740 = private unnamed_addr constant [14 x i8] c"kworldatsc110\00", align 1
@___asan_gen_.742 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1389, i32 1040, i32 36 }
@___asan_gen_.745 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1389, i32 1509, i32 23 }
@___asan_gen_.748 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1389, i32 1512, i32 4 }
@___asan_gen_.755 = private unnamed_addr constant [22 x i8] c"kworld_s5h1411_config\00", align 1
@___asan_gen_.757 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1389, i32 1181, i32 30 }
@___asan_gen_.763 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1389, i32 1520, i32 23 }
@___asan_gen_.766 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1389, i32 1524, i32 4 }
@___asan_gen_.767 = private unnamed_addr constant [30 x i8] c"kworld_pc150u_tda18271_config\00", align 1
@___asan_gen_.769 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1389, i32 1173, i32 31 }
@___asan_gen_.772 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1389, i32 1527, i32 4 }
@___asan_gen_.775 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1389, i32 1533, i32 23 }
@___asan_gen_.778 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1389, i32 1536, i32 8 }
@___asan_gen_.784 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1389, i32 1538, i32 5 }
@___asan_gen_.787 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1389, i32 1541, i32 8 }
@___asan_gen_.793 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1389, i32 1544, i32 5 }
@___asan_gen_.796 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1389, i32 1550, i32 23 }
@___asan_gen_.799 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1389, i32 1557, i32 4 }
@___asan_gen_.802 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1389, i32 1563, i32 23 }
@___asan_gen_.803 = private unnamed_addr constant [18 x i8] c"cinergy_ht_config\00", align 1
@___asan_gen_.805 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1389, i32 667, i32 31 }
@___asan_gen_.806 = private unnamed_addr constant [22 x i8] c"cinergy_ht_pci_config\00", align 1
@___asan_gen_.808 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1389, i32 680, i32 31 }
@___asan_gen_.809 = private unnamed_addr constant [23 x i8] c"philips_tiger_s_config\00", align 1
@___asan_gen_.811 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1389, i32 693, i32 31 }
@___asan_gen_.812 = private unnamed_addr constant [23 x i8] c"asus_p7131_4871_config\00", align 1
@___asan_gen_.814 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1389, i32 784, i32 31 }
@___asan_gen_.815 = private unnamed_addr constant [29 x i8] c"asus_p7131_hybrid_lna_config\00", align 1
@___asan_gen_.817 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1389, i32 798, i32 31 }
@___asan_gen_.818 = private unnamed_addr constant [27 x i8] c"avermedia_super_007_config\00", align 1
@___asan_gen_.820 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1389, i32 826, i32 31 }
@___asan_gen_.821 = private unnamed_addr constant [28 x i8] c"twinhan_dtv_dvb_3056_config\00", align 1
@___asan_gen_.823 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1389, i32 840, i32 31 }
@___asan_gen_.824 = private unnamed_addr constant [19 x i8] c"tda827x_cfg_2_sw42\00", align 1
@___asan_gen_.826 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1389, i32 632, i32 30 }
@___asan_gen_.829 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1389, i32 1607, i32 23 }
@___asan_gen_.832 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1389, i32 1610, i32 8 }
@___asan_gen_.835 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1389, i32 1612, i32 5 }
@___asan_gen_.847 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1389, i32 1615, i32 8 }
@___asan_gen_.853 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1389, i32 1617, i32 5 }
@___asan_gen_.859 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1389, i32 1633, i32 3 }
@___asan_gen_.862 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1389, i32 1637, i32 23 }
@___asan_gen_.863 = private unnamed_addr constant [10 x i8] c"sd1878_4m\00", align 1
@___asan_gen_.865 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1389, i32 966, i32 31 }
@___asan_gen_.868 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1389, i32 1643, i32 23 }
@___asan_gen_.871 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1389, i32 1647, i32 8 }
@___asan_gen_.877 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1389, i32 1649, i32 5 }
@___asan_gen_.880 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1389, i32 1656, i32 8 }
@___asan_gen_.886 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1389, i32 1658, i32 5 }
@___asan_gen_.889 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1389, i32 1673, i32 23 }
@___asan_gen_.890 = private unnamed_addr constant [23 x i8] c"asus_tiger_3in1_config\00", align 1
@___asan_gen_.892 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1389, i32 854, i32 31 }
@___asan_gen_.895 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1389, i32 1684, i32 24 }
@___asan_gen_.898 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1389, i32 1687, i32 9 }
@___asan_gen_.904 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1389, i32 1690, i32 6 }
@___asan_gen_.907 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1389, i32 1694, i32 9 }
@___asan_gen_.913 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1389, i32 1696, i32 6 }
@___asan_gen_.914 = private unnamed_addr constant [20 x i8] c"asus_ps3_100_config\00", align 1
@___asan_gen_.916 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1389, i32 868, i32 31 }
@___asan_gen_.919 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1389, i32 1709, i32 24 }
@___asan_gen_.922 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1389, i32 1712, i32 9 }
@___asan_gen_.928 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1389, i32 1715, i32 6 }
@___asan_gen_.931 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1389, i32 1719, i32 9 }
@___asan_gen_.937 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1389, i32 1721, i32 6 }
@___asan_gen_.944 = private unnamed_addr constant [17 x i8] c"behold_h6_config\00", align 1
@___asan_gen_.946 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1389, i32 922, i32 30 }
@___asan_gen_.952 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1389, i32 1734, i32 23 }
@___asan_gen_.955 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1389, i32 1738, i32 4 }
@___asan_gen_.956 = private unnamed_addr constant [17 x i8] c"behold_x7_config\00", align 1
@___asan_gen_.958 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1389, i32 935, i32 30 }
@___asan_gen_.961 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1389, i32 1744, i32 23 }
@___asan_gen_.968 = private unnamed_addr constant [22 x i8] c"behold_x7_tunerconfig\00", align 1
@___asan_gen_.970 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1389, i32 929, i32 29 }
@___asan_gen_.976 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1389, i32 1748, i32 4 }
@___asan_gen_.979 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1389, i32 1753, i32 23 }
@___asan_gen_.982 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1389, i32 1757, i32 4 }
@___asan_gen_.989 = private unnamed_addr constant [18 x i8] c"avertv_a700_mt312\00", align 1
@___asan_gen_.991 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1389, i32 1046, i32 28 }
@___asan_gen_.997 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1389, i32 1764, i32 23 }
@___asan_gen_.1004 = private unnamed_addr constant [18 x i8] c"avertv_a700_tuner\00", align 1
@___asan_gen_.1006 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1389, i32 1051, i32 30 }
@___asan_gen_.1012 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1389, i32 1767, i32 8 }
@___asan_gen_.1018 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1389, i32 1769, i32 5 }
@___asan_gen_.1019 = private unnamed_addr constant [27 x i8] c"zl10313_compro_s350_config\00", align 1
@___asan_gen_.1021 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1389, i32 1055, i32 28 }
@___asan_gen_.1024 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1389, i32 1775, i32 23 }
@___asan_gen_.1036 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1389, i32 1778, i32 8 }
@___asan_gen_.1042 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1389, i32 1780, i32 5 }
@___asan_gen_.1043 = private unnamed_addr constant [30 x i8] c"videomate_t750_zl10353_config\00", align 1
@___asan_gen_.1045 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1389, i32 943, i32 30 }
@___asan_gen_.1048 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1389, i32 1785, i32 23 }
@___asan_gen_.1055 = private unnamed_addr constant [29 x i8] c"videomate_t750_qt1010_config\00", align 1
@___asan_gen_.1057 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1389, i32 950, i32 29 }
@___asan_gen_.1063 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1389, i32 1789, i32 8 }
@___asan_gen_.1069 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1389, i32 1793, i32 5 }
@___asan_gen_.1070 = private unnamed_addr constant [22 x i8] c"zolid_tda10048_config\00", align 1
@___asan_gen_.1072 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1389, i32 1104, i32 31 }
@___asan_gen_.1075 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1389, i32 1797, i32 23 }
@___asan_gen_.1078 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1389, i32 1801, i32 4 }
@___asan_gen_.1079 = private unnamed_addr constant [22 x i8] c"zolid_tda18271_config\00", align 1
@___asan_gen_.1081 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1389, i32 1116, i32 31 }
@___asan_gen_.1084 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1389, i32 1804, i32 4 }
@___asan_gen_.1085 = private unnamed_addr constant [25 x i8] c"dtv1000s_tda10048_config\00", align 1
@___asan_gen_.1087 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1389, i32 1120, i32 31 }
@___asan_gen_.1090 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1389, i32 1810, i32 23 }
@___asan_gen_.1093 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1389, i32 1814, i32 4 }
@___asan_gen_.1094 = private unnamed_addr constant [25 x i8] c"dtv1000s_tda18271_config\00", align 1
@___asan_gen_.1096 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1389, i32 1141, i32 31 }
@___asan_gen_.1099 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1389, i32 1817, i32 4 }
@___asan_gen_.1106 = private unnamed_addr constant [23 x i8] c"kworld_mb86a20s_config\00", align 1
@___asan_gen_.1108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1389, i32 223, i32 37 }
@___asan_gen_.1114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1389, i32 1826, i32 23 }
@___asan_gen_.1117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1389, i32 1830, i32 4 }
@___asan_gen_.1118 = private unnamed_addr constant [23 x i8] c"kworld_tda18271_config\00", align 1
@___asan_gen_.1120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1389, i32 216, i32 31 }
@___asan_gen_.1123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1389, i32 1834, i32 4 }
@___asan_gen_.1130 = private unnamed_addr constant [28 x i8] c"prohdtv_pro2_lgs8g75_config\00", align 1
@___asan_gen_.1132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1389, i32 1146, i32 30 }
@___asan_gen_.1138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1389, i32 1842, i32 23 }
@___asan_gen_.1141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1389, i32 1846, i32 4 }
@___asan_gen_.1142 = private unnamed_addr constant [29 x i8] c"prohdtv_pro2_tda18271_config\00", align 1
@___asan_gen_.1144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1389, i32 1161, i32 31 }
@___asan_gen_.1147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1389, i32 1849, i32 4 }
@___asan_gen_.1148 = private unnamed_addr constant [30 x i8] c"zl10313_avermedia_a706_config\00", align 1
@___asan_gen_.1150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1389, i32 1059, i32 28 }
@___asan_gen_.1153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1389, i32 1863, i32 23 }
@___asan_gen_.1156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1389, i32 1867, i32 8 }
@___asan_gen_.1159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1389, i32 1869, i32 5 }
@___asan_gen_.1160 = private unnamed_addr constant [24 x i8] c"hdtv200h_s5h1411_config\00", align 1
@___asan_gen_.1162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1389, i32 1197, i32 30 }
@___asan_gen_.1165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1389, i32 1874, i32 23 }
@___asan_gen_.1168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1389, i32 1878, i32 4 }
@___asan_gen_.1169 = private unnamed_addr constant [25 x i8] c"hdtv200h_tda18271_config\00", align 1
@___asan_gen_.1171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1389, i32 1192, i32 31 }
@___asan_gen_.1174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1389, i32 1881, i32 4 }
@___asan_gen_.1180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1389, i32 1887, i32 3 }
@___asan_gen_.1192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1389, i32 1901, i32 8 }
@___asan_gen_.1198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1389, i32 1903, i32 4 }
@___asan_gen_.1204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1389, i32 1910, i32 3 }
@___asan_gen_.1207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1389, i32 101, i32 12 }
@___asan_gen_.1210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1389, i32 102, i32 12 }
@___asan_gen_.1213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1389, i32 103, i32 12 }
@___asan_gen_.1216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1389, i32 104, i32 12 }
@___asan_gen_.1219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1389, i32 105, i32 12 }
@___asan_gen_.1220 = private unnamed_addr constant [12 x i8] c"fsm_ctl_cfg\00", align 1
@___asan_gen_.1222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1389, i32 106, i32 12 }
@___asan_gen_.1223 = private unnamed_addr constant [12 x i8] c"gpp_ctl_cfg\00", align 1
@___asan_gen_.1225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1389, i32 107, i32 12 }
@___asan_gen_.1226 = private unnamed_addr constant [13 x i8] c"scan_ctl_cfg\00", align 1
@___asan_gen_.1228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1389, i32 108, i32 12 }
@___asan_gen_.1229 = private unnamed_addr constant [8 x i8] c"irq_cfg\00", align 1
@___asan_gen_.1231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1389, i32 109, i32 12 }
@___asan_gen_.1240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1389, i32 111, i32 2 }
@___asan_gen_.1255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1389, i32 92, i32 2 }
@___asan_gen_.1258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1389, i32 130, i32 12 }
@___asan_gen_.1261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1389, i32 131, i32 12 }
@___asan_gen_.1264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1389, i32 132, i32 12 }
@___asan_gen_.1267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1389, i32 133, i32 12 }
@___asan_gen_.1270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1389, i32 134, i32 12 }
@___asan_gen_.1271 = private unnamed_addr constant [13 x i8] c"clock_config\00", align 1
@___asan_gen_.1273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1389, i32 148, i32 12 }
@___asan_gen_.1274 = private unnamed_addr constant [6 x i8] c"reset\00", align 1
@___asan_gen_.1276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1389, i32 149, i32 12 }
@___asan_gen_.1277 = private unnamed_addr constant [14 x i8] c"adc_ctl_1_cfg\00", align 1
@___asan_gen_.1279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1389, i32 150, i32 12 }
@___asan_gen_.1280 = private unnamed_addr constant [8 x i8] c"agc_cfg\00", align 1
@___asan_gen_.1282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1389, i32 151, i32 12 }
@___asan_gen_.1283 = private unnamed_addr constant [15 x i8] c"capt_range_cfg\00", align 1
@___asan_gen_.1285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1389, i32 152, i32 12 }
@___asan_gen_.1286 = private unnamed_addr constant [12 x i8] c"tu1216_init\00", align 1
@___asan_gen_.1288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1389, i32 361, i32 12 }
@___asan_gen_.1297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1389, i32 348, i32 3 }
@___asan_gen_.1303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1389, i32 594, i32 22 }
@___asan_gen_.1306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1389, i32 598, i32 7 }
@___asan_gen_.1309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1389, i32 603, i32 3 }
@___asan_gen_.1310 = private unnamed_addr constant [14 x i8] c"tda8290_close\00", align 1
@___asan_gen_.1312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1389, i32 526, i32 12 }
@___asan_gen_.1313 = private unnamed_addr constant [13 x i8] c"tda8290_open\00", align 1
@___asan_gen_.1315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1389, i32 527, i32 12 }
@___asan_gen_.1324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1389, i32 535, i32 3 }
@___asan_gen_.1333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1389, i32 551, i32 3 }
@___asan_gen_.1339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1389, i32 555, i32 3 }
@___asan_gen_.1342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1389, i32 571, i32 3 }
@___asan_gen_.1345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1389, i32 443, i32 12 }
@___asan_gen_.1348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1389, i32 460, i32 12 }
@___asan_gen_.1351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1389, i32 427, i32 12 }
@___asan_gen_.1352 = private unnamed_addr constant [27 x i8] c"hauppauge_tda18271_std_map\00", align 1
@___asan_gen_.1354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1389, i32 1086, i32 32 }
@___asan_gen_.1363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1389, i32 1027, i32 2 }
@___asan_gen_.1364 = private unnamed_addr constant [24 x i8] c"kworld_tda18271_std_map\00", align 1
@___asan_gen_.1366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1389, i32 1166, i32 32 }
@___asan_gen_.1367 = private unnamed_addr constant [4 x i8] c"msg\00", align 1
@___asan_gen_.1369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1389, i32 406, i32 12 }
@___asan_gen_.1370 = private unnamed_addr constant [26 x i8] c"dtv1000s_tda18271_std_map\00", align 1
@___asan_gen_.1372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1389, i32 1132, i32 32 }
@___asan_gen_.1379 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.1381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1389, i32 237, i32 3 }
@___asan_gen_.1382 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.1384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1389, i32 245, i32 3 }
@___asan_gen_.1385 = private unnamed_addr constant [26 x i8] c"mb86a20s_tda18271_std_map\00", align 1
@___asan_gen_.1387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1389, i32 211, i32 32 }
@___asan_gen_.1388 = private unnamed_addr constant [3 x i8] c"on\00", align 1
@___asan_gen_.1389 = private constant [43 x i8] c"../drivers/media/pci/saa7134/saa7134-dvb.c\00", align 1
@___asan_gen_.1390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1389, i32 1961, i32 14 }
@llvm.compiler.used = appending global [473 x ptr] [ptr @__UNIQUE_ID_adapter_nr395, ptr @__UNIQUE_ID_adapter_nrtype394, ptr @__UNIQUE_ID_antenna_pwr391, ptr @__UNIQUE_ID_antenna_pwrtype390, ptr @__UNIQUE_ID_author387, ptr @__UNIQUE_ID_file388, ptr @__UNIQUE_ID_license389, ptr @__UNIQUE_ID_use_frontend393, ptr @__UNIQUE_ID_use_frontendtype392, ptr @__exitcall_dvb_unregister, ptr @__initcall__kmod_saa7134_dvb__406_2003_dvb_register6, ptr @__param_adapter_nr, ptr @__param_antenna_pwr, ptr @__param_use_frontend, ptr @configure_tda827x_fe._entry, ptr @configure_tda827x_fe._entry.331, ptr @configure_tda827x_fe._entry.333, ptr @configure_tda827x_fe._entry_ptr, ptr @configure_tda827x_fe._entry_ptr.332, ptr @configure_tda827x_fe._entry_ptr.334, ptr @dvb_init._entry, ptr @dvb_init._entry.101, ptr @dvb_init._entry.103, ptr @dvb_init._entry.105, ptr @dvb_init._entry.110, ptr @dvb_init._entry.113, ptr @dvb_init._entry.118, ptr @dvb_init._entry.12, ptr @dvb_init._entry.123, ptr @dvb_init._entry.126, ptr @dvb_init._entry.128, ptr @dvb_init._entry.132, ptr @dvb_init._entry.135, ptr @dvb_init._entry.137, ptr @dvb_init._entry.139, ptr @dvb_init._entry.141, ptr @dvb_init._entry.143, ptr @dvb_init._entry.146, ptr @dvb_init._entry.148, ptr @dvb_init._entry.151, ptr @dvb_init._entry.153, ptr @dvb_init._entry.155, ptr @dvb_init._entry.157, ptr @dvb_init._entry.159, ptr @dvb_init._entry.161, ptr @dvb_init._entry.165, ptr @dvb_init._entry.168, ptr @dvb_init._entry.17, ptr @dvb_init._entry.173, ptr @dvb_init._entry.175, ptr @dvb_init._entry.177, ptr @dvb_init._entry.179, ptr @dvb_init._entry.182, ptr @dvb_init._entry.184, ptr @dvb_init._entry.187, ptr @dvb_init._entry.189, ptr @dvb_init._entry.191, ptr @dvb_init._entry.193, ptr @dvb_init._entry.196, ptr @dvb_init._entry.198, ptr @dvb_init._entry.201, ptr @dvb_init._entry.203, ptr @dvb_init._entry.205, ptr @dvb_init._entry.208, ptr @dvb_init._entry.21, ptr @dvb_init._entry.210, ptr @dvb_init._entry.215, ptr @dvb_init._entry.218, ptr @dvb_init._entry.220, ptr @dvb_init._entry.224, ptr @dvb_init._entry.227, ptr @dvb_init._entry.229, ptr @dvb_init._entry.233, ptr @dvb_init._entry.238, ptr @dvb_init._entry.241, ptr @dvb_init._entry.244, ptr @dvb_init._entry.248, ptr @dvb_init._entry.251, ptr @dvb_init._entry.254, ptr @dvb_init._entry.258, ptr @dvb_init._entry.26, ptr @dvb_init._entry.261, ptr @dvb_init._entry.264, ptr @dvb_init._entry.266, ptr @dvb_init._entry.268, ptr @dvb_init._entry.270, ptr @dvb_init._entry.272, ptr @dvb_init._entry.274, ptr @dvb_init._entry.278, ptr @dvb_init._entry.281, ptr @dvb_init._entry.283, ptr @dvb_init._entry.287, ptr @dvb_init._entry.290, ptr @dvb_init._entry.292, ptr @dvb_init._entry.294, ptr @dvb_init._entry.296, ptr @dvb_init._entry.298, ptr @dvb_init._entry.30, ptr @dvb_init._entry.300, ptr @dvb_init._entry.302, ptr @dvb_init._entry.304, ptr @dvb_init._entry.306, ptr @dvb_init._entry.311, ptr @dvb_init._entry.314, ptr @dvb_init._entry.317, ptr @dvb_init._entry.33, ptr @dvb_init._entry.35, ptr @dvb_init._entry.37, ptr @dvb_init._entry.39, ptr @dvb_init._entry.4, ptr @dvb_init._entry.41, ptr @dvb_init._entry.45, ptr @dvb_init._entry.50, ptr @dvb_init._entry.55, ptr @dvb_init._entry.60, ptr @dvb_init._entry.63, ptr @dvb_init._entry.65, ptr @dvb_init._entry.69, ptr @dvb_init._entry.74, ptr @dvb_init._entry.77, ptr @dvb_init._entry.82, ptr @dvb_init._entry.85, ptr @dvb_init._entry.88, ptr @dvb_init._entry.92, ptr @dvb_init._entry.95, ptr @dvb_init._entry.98, ptr @dvb_init._entry_ptr, ptr @dvb_init._entry_ptr.100, ptr @dvb_init._entry_ptr.102, ptr @dvb_init._entry_ptr.104, ptr @dvb_init._entry_ptr.107, ptr @dvb_init._entry_ptr.112, ptr @dvb_init._entry_ptr.115, ptr @dvb_init._entry_ptr.120, ptr @dvb_init._entry_ptr.125, ptr @dvb_init._entry_ptr.127, ptr @dvb_init._entry_ptr.129, ptr @dvb_init._entry_ptr.134, ptr @dvb_init._entry_ptr.136, ptr @dvb_init._entry_ptr.138, ptr @dvb_init._entry_ptr.14, ptr @dvb_init._entry_ptr.140, ptr @dvb_init._entry_ptr.142, ptr @dvb_init._entry_ptr.145, ptr @dvb_init._entry_ptr.147, ptr @dvb_init._entry_ptr.150, ptr @dvb_init._entry_ptr.152, ptr @dvb_init._entry_ptr.154, ptr @dvb_init._entry_ptr.156, ptr @dvb_init._entry_ptr.158, ptr @dvb_init._entry_ptr.160, ptr @dvb_init._entry_ptr.162, ptr @dvb_init._entry_ptr.167, ptr @dvb_init._entry_ptr.170, ptr @dvb_init._entry_ptr.174, ptr @dvb_init._entry_ptr.176, ptr @dvb_init._entry_ptr.178, ptr @dvb_init._entry_ptr.18, ptr @dvb_init._entry_ptr.181, ptr @dvb_init._entry_ptr.183, ptr @dvb_init._entry_ptr.186, ptr @dvb_init._entry_ptr.188, ptr @dvb_init._entry_ptr.190, ptr @dvb_init._entry_ptr.192, ptr @dvb_init._entry_ptr.195, ptr @dvb_init._entry_ptr.197, ptr @dvb_init._entry_ptr.200, ptr @dvb_init._entry_ptr.202, ptr @dvb_init._entry_ptr.204, ptr @dvb_init._entry_ptr.207, ptr @dvb_init._entry_ptr.209, ptr @dvb_init._entry_ptr.212, ptr @dvb_init._entry_ptr.217, ptr @dvb_init._entry_ptr.219, ptr @dvb_init._entry_ptr.221, ptr @dvb_init._entry_ptr.226, ptr @dvb_init._entry_ptr.228, ptr @dvb_init._entry_ptr.23, ptr @dvb_init._entry_ptr.230, ptr @dvb_init._entry_ptr.235, ptr @dvb_init._entry_ptr.240, ptr @dvb_init._entry_ptr.243, ptr @dvb_init._entry_ptr.245, ptr @dvb_init._entry_ptr.250, ptr @dvb_init._entry_ptr.253, ptr @dvb_init._entry_ptr.255, ptr @dvb_init._entry_ptr.260, ptr @dvb_init._entry_ptr.263, ptr @dvb_init._entry_ptr.265, ptr @dvb_init._entry_ptr.267, ptr @dvb_init._entry_ptr.269, ptr @dvb_init._entry_ptr.27, ptr @dvb_init._entry_ptr.271, ptr @dvb_init._entry_ptr.273, ptr @dvb_init._entry_ptr.275, ptr @dvb_init._entry_ptr.280, ptr @dvb_init._entry_ptr.282, ptr @dvb_init._entry_ptr.284, ptr @dvb_init._entry_ptr.289, ptr @dvb_init._entry_ptr.291, ptr @dvb_init._entry_ptr.293, ptr @dvb_init._entry_ptr.295, ptr @dvb_init._entry_ptr.297, ptr @dvb_init._entry_ptr.299, ptr @dvb_init._entry_ptr.301, ptr @dvb_init._entry_ptr.303, ptr @dvb_init._entry_ptr.305, ptr @dvb_init._entry_ptr.308, ptr @dvb_init._entry_ptr.313, ptr @dvb_init._entry_ptr.316, ptr @dvb_init._entry_ptr.319, ptr @dvb_init._entry_ptr.32, ptr @dvb_init._entry_ptr.34, ptr @dvb_init._entry_ptr.36, ptr @dvb_init._entry_ptr.38, ptr @dvb_init._entry_ptr.40, ptr @dvb_init._entry_ptr.42, ptr @dvb_init._entry_ptr.47, ptr @dvb_init._entry_ptr.52, ptr @dvb_init._entry_ptr.57, ptr @dvb_init._entry_ptr.6, ptr @dvb_init._entry_ptr.62, ptr @dvb_init._entry_ptr.64, ptr @dvb_init._entry_ptr.66, ptr @dvb_init._entry_ptr.71, ptr @dvb_init._entry_ptr.76, ptr @dvb_init._entry_ptr.79, ptr @dvb_init._entry_ptr.84, ptr @dvb_init._entry_ptr.87, ptr @dvb_init._entry_ptr.89, ptr @dvb_init._entry_ptr.94, ptr @dvb_init._entry_ptr.97, ptr @dvb_unregister, ptr @kworld_sbtvd_gate_ctrl._entry, ptr @kworld_sbtvd_gate_ctrl._entry.350, ptr @kworld_sbtvd_gate_ctrl._entry_ptr, ptr @kworld_sbtvd_gate_ctrl._entry_ptr.351, ptr @md8800_set_high_voltage2._entry, ptr @md8800_set_high_voltage2._entry_ptr, ptr @philips_tda6651_pll_set._entry, ptr @philips_tda6651_pll_set._entry_ptr, ptr @tda8290_i2c_gate_ctrl._entry, ptr @tda8290_i2c_gate_ctrl._entry_ptr, ptr @antenna_pwr, ptr @use_frontend, ptr @dvb_ops, ptr @adapter_nr, ptr @dvb_init.__key, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.5, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @pinnacle_300i, ptr @.str.13, ptr @.str.15, ptr @.str.16, ptr @avermedia_777, ptr @.str.19, ptr @.str.20, ptr @.str.22, ptr @.str.24, ptr @.str.25, ptr @avermedia_xc3028_mt352_dev, ptr @.str.28, ptr @.str.29, ptr @medion_cardbus, ptr @.str.31, ptr @philips_tu1216_60_config, ptr @tda827x_lifeview_config, ptr @tda827x_cfg_0, ptr @philips_europa_config, ptr @technotrend_budget_t3000_config, ptr @philips_tu1216_61_config, ptr @kworld_dvb_t_210_config, ptr @tda827x_cfg_2, ptr @.str.43, ptr @.str.44, ptr @hcw_tda10048_config, ptr @.str.46, ptr @.str.48, ptr @.str.49, ptr @tda829x_no_probe, ptr @.str.51, ptr @.str.53, ptr @.str.54, ptr @hcw_tda18271_config, ptr @.str.56, ptr @philips_tiger_config, ptr @pinnacle_pctv_310i_config, ptr @tda827x_cfg_1, ptr @hauppauge_hvr_1110_config, ptr @.str.58, ptr @.str.59, ptr @hcw_lgdt3305_config, ptr @.str.61, ptr @asus_p7131_dual_config, ptr @lifeview_trio_config, ptr @.str.67, ptr @.str.68, ptr @flydvbs, ptr @.str.70, ptr @.str.72, ptr @.str.73, ptr @.str.75, ptr @.str.78, ptr @.str.80, ptr @.str.81, ptr @.str.83, ptr @.str.86, ptr @ads_tech_duo_config, ptr @.str.90, ptr @.str.91, ptr @ads_duo_cfg, ptr @.str.93, ptr @.str.96, ptr @.str.99, ptr @tevion_dvbt220rf_config, ptr @md8800_dvbt_config, ptr @.str.106, ptr @.str.108, ptr @.str.109, ptr @.str.111, ptr @.str.114, ptr @.str.116, ptr @.str.117, ptr @avertvhda180, ptr @.str.119, ptr @.str.121, ptr @.str.122, ptr @.str.124, ptr @kworldatsc110, ptr @.str.130, ptr @.str.131, ptr @kworld_s5h1411_config, ptr @.str.133, ptr @kworld_pc150u_tda18271_config, ptr @.str.144, ptr @.str.149, ptr @cinergy_ht_config, ptr @cinergy_ht_pci_config, ptr @philips_tiger_s_config, ptr @asus_p7131_4871_config, ptr @asus_p7131_hybrid_lna_config, ptr @avermedia_super_007_config, ptr @twinhan_dtv_dvb_3056_config, ptr @tda827x_cfg_2_sw42, ptr @.str.163, ptr @.str.164, ptr @.str.166, ptr @.str.169, ptr @.str.171, ptr @.str.172, ptr @sd1878_4m, ptr @.str.180, ptr @.str.185, ptr @asus_tiger_3in1_config, ptr @.str.194, ptr @.str.199, ptr @asus_ps3_100_config, ptr @.str.206, ptr @.str.211, ptr @.str.213, ptr @.str.214, ptr @behold_h6_config, ptr @.str.216, ptr @behold_x7_config, ptr @.str.222, ptr @.str.223, ptr @behold_x7_tunerconfig, ptr @.str.225, ptr @.str.231, ptr @.str.232, ptr @avertv_a700_mt312, ptr @.str.234, ptr @.str.236, ptr @.str.237, ptr @avertv_a700_tuner, ptr @.str.239, ptr @.str.242, ptr @zl10313_compro_s350_config, ptr @.str.246, ptr @.str.247, ptr @.str.249, ptr @.str.252, ptr @videomate_t750_zl10353_config, ptr @.str.256, ptr @.str.257, ptr @videomate_t750_qt1010_config, ptr @.str.259, ptr @.str.262, ptr @zolid_tda10048_config, ptr @zolid_tda18271_config, ptr @dtv1000s_tda10048_config, ptr @dtv1000s_tda18271_config, ptr @.str.276, ptr @.str.277, ptr @kworld_mb86a20s_config, ptr @.str.279, ptr @kworld_tda18271_config, ptr @.str.285, ptr @.str.286, ptr @prohdtv_pro2_lgs8g75_config, ptr @.str.288, ptr @prohdtv_pro2_tda18271_config, ptr @zl10313_avermedia_a706_config, ptr @hdtv200h_s5h1411_config, ptr @hdtv200h_tda18271_config, ptr @.str.307, ptr @.str.309, ptr @.str.310, ptr @.str.312, ptr @.str.315, ptr @.str.318, ptr @mt352_pinnacle_init.clock_config, ptr @mt352_pinnacle_init.reset, ptr @mt352_pinnacle_init.adc_ctl_1_cfg, ptr @mt352_pinnacle_init.agc_cfg, ptr @mt352_pinnacle_init.capt_range_cfg, ptr @mt352_pinnacle_init.fsm_ctl_cfg, ptr @mt352_pinnacle_init.gpp_ctl_cfg, ptr @mt352_pinnacle_init.scan_ctl_cfg, ptr @mt352_pinnacle_init.irq_cfg, ptr @.str.320, ptr @.str.321, ptr @.str.322, ptr @.str.323, ptr @.str.324, ptr @.str.325, ptr @.str.326, ptr @.str.327, ptr @mt352_aver777_init.clock_config, ptr @mt352_aver777_init.reset, ptr @mt352_aver777_init.adc_ctl_1_cfg, ptr @mt352_aver777_init.agc_cfg, ptr @mt352_aver777_init.capt_range_cfg, ptr @mt352_avermedia_xc3028_init.clock_config, ptr @mt352_avermedia_xc3028_init.reset, ptr @mt352_avermedia_xc3028_init.adc_ctl_1_cfg, ptr @mt352_avermedia_xc3028_init.agc_cfg, ptr @mt352_avermedia_xc3028_init.capt_range_cfg, ptr @philips_tu1216_init.tu1216_init, ptr @.str.328, ptr @.str.329, ptr @.str.330, ptr @tda8290_i2c_gate_ctrl.tda8290_close, ptr @tda8290_i2c_gate_ctrl.tda8290_open, ptr @.str.335, ptr @.str.336, ptr @.str.337, ptr @.str.338, ptr @.str.339, ptr @.str.340, ptr @.str.341, ptr @.str.342, ptr @philips_europa_tuner_init.msg, ptr @philips_europa_tuner_sleep.msg, ptr @philips_td1316_tuner_sleep.msg, ptr @hauppauge_tda18271_std_map, ptr @.str.344, ptr @.str.345, ptr @kworld_tda18271_std_map, ptr @philips_td1316_tuner_init.msg, ptr @dtv1000s_tda18271_std_map, ptr @.str.348, ptr @.str.349, ptr @mb86a20s_tda18271_std_map, ptr @dvb_fini.on], section "llvm.metadata"
@0 = internal global [344 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @antenna_pwr to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @use_frontend to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_ops to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adapter_nr to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1382 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_init._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1382 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pinnacle_300i to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_init._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1382 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @avermedia_777 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_init._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1382 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_init._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1382 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @avermedia_xc3028_mt352_dev to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_init._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1382 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @medion_cardbus to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_init._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1382 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_init._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1382 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @philips_tu1216_60_config to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_init._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1382 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda827x_lifeview_config to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda827x_cfg_0 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @philips_europa_config to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_init._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1382 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @technotrend_budget_t3000_config to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_init._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1382 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @philips_tu1216_61_config to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_init._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1382 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kworld_dvb_t_210_config to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda827x_cfg_2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hcw_tda10048_config to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_init._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1382 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda829x_no_probe to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_init._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1382 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hcw_tda18271_config to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_init._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1382 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @philips_tiger_config to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pinnacle_pctv_310i_config to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda827x_cfg_1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hauppauge_hvr_1110_config to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hcw_lgdt3305_config to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_init._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1382 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_init._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1382 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_init._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1382 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asus_p7131_dual_config to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lifeview_trio_config to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flydvbs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_init._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1382 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_init._entry.74 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1382 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_init._entry.77 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1382 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_init._entry.82 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1382 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_init._entry.85 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1382 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ads_tech_duo_config to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_init._entry.88 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1382 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ads_duo_cfg to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_init._entry.92 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1382 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_init._entry.95 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1382 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_init._entry.98 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1382 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tevion_dvbt220rf_config to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @md8800_dvbt_config to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_init._entry.101 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1382 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_init._entry.103 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1382 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_init._entry.105 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1382 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_init._entry.110 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1382 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_init._entry.113 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1382 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @avertvhda180 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_init._entry.118 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1382 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_init._entry.123 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1382 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kworldatsc110 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_init._entry.126 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1382 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_init._entry.128 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1382 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kworld_s5h1411_config to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_init._entry.132 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1382 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_init._entry.135 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1382 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kworld_pc150u_tda18271_config to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_init._entry.137 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1382 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_init._entry.139 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1382 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_init._entry.141 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1382 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_init._entry.143 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1382 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_init._entry.146 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1382 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_init._entry.148 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1382 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_init._entry.151 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1382 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_init._entry.153 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1382 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_init._entry.155 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1382 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cinergy_ht_config to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cinergy_ht_pci_config to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.808 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @philips_tiger_s_config to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.809 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.811 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asus_p7131_4871_config to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asus_p7131_hybrid_lna_config to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @avermedia_super_007_config to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twinhan_dtv_dvb_3056_config to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda827x_cfg_2_sw42 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_init._entry.157 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1382 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_init._entry.159 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1382 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_init._entry.161 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1382 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_init._entry.165 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1382 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_init._entry.168 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1382 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.853 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.853 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_init._entry.173 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1382 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.862 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd1878_4m to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.863 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_init._entry.175 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1382 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_init._entry.177 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1382 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.871 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_init._entry.179 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1382 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_init._entry.182 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1382 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_init._entry.184 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1382 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.185 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_init._entry.187 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1382 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asus_tiger_3in1_config to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_init._entry.189 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1382 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_init._entry.191 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1382 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_init._entry.193 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1382 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.194 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_init._entry.196 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1382 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_init._entry.198 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1382 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.199 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asus_ps3_100_config to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_init._entry.201 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1382 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_init._entry.203 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1382 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.922 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_init._entry.205 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1382 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.928 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.206 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.928 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_init._entry.208 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1382 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_init._entry.210 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1382 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.211 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.213 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.952 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.214 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.952 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @behold_h6_config to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_init._entry.215 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1382 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.952 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.216 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.952 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_init._entry.218 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1382 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @behold_x7_config to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.956 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_init._entry.220 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1382 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.222 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.223 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @behold_x7_tunerconfig to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.968 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_init._entry.224 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1382 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.225 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_init._entry.227 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1382 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.979 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_init._entry.229 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1382 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.982 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.231 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.997 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.232 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.997 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @avertv_a700_mt312 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.989 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.991 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_init._entry.233 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1382 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.997 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.234 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.997 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.236 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.237 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @avertv_a700_tuner to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_init._entry.238 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1382 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.239 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_init._entry.241 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1382 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.242 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zl10313_compro_s350_config to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1019 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_init._entry.244 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1382 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.246 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1036 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.247 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1036 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_init._entry.248 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1382 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1036 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.249 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1036 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_init._entry.251 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1382 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.252 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @videomate_t750_zl10353_config to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1043 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1045 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_init._entry.254 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1382 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.256 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.257 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @videomate_t750_qt1010_config to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_init._entry.258 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1382 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.259 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_init._entry.261 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1382 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1069 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.262 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1069 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zolid_tda10048_config to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1070 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_init._entry.264 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1382 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_init._entry.266 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1382 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zolid_tda18271_config to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1081 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_init._entry.268 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1382 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dtv1000s_tda10048_config to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1085 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1087 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_init._entry.270 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1382 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_init._entry.272 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1382 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dtv1000s_tda18271_config to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_init._entry.274 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1382 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1099 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.276 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.277 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kworld_mb86a20s_config to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1106 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_init._entry.278 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1382 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.279 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_init._entry.281 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1382 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kworld_tda18271_config to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_init._entry.283 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1382 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.285 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.286 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prohdtv_pro2_lgs8g75_config to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_init._entry.287 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1382 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.288 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_init._entry.290 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1382 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prohdtv_pro2_tda18271_config to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1142 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_init._entry.292 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1382 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zl10313_avermedia_a706_config to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_init._entry.294 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1382 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_init._entry.296 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1382 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_init._entry.298 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1382 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdtv200h_s5h1411_config to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1160 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_init._entry.300 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1382 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_init._entry.302 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1382 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdtv200h_tda18271_config to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1169 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_init._entry.304 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1382 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_init._entry.306 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1382 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.307 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.309 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.310 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_init._entry.311 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1382 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.312 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_init._entry.314 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1382 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.315 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_init._entry.317 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1382 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.318 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt352_pinnacle_init.clock_config to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1271 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt352_pinnacle_init.reset to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt352_pinnacle_init.adc_ctl_1_cfg to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.1277 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt352_pinnacle_init.agc_cfg to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt352_pinnacle_init.capt_range_cfg to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.1283 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt352_pinnacle_init.fsm_ctl_cfg to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt352_pinnacle_init.gpp_ctl_cfg to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt352_pinnacle_init.scan_ctl_cfg to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt352_pinnacle_init.irq_cfg to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1229 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.320 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.321 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.322 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.323 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.324 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.325 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.326 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.327 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt352_aver777_init.clock_config to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1271 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt352_aver777_init.reset to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt352_aver777_init.adc_ctl_1_cfg to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.1277 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt352_aver777_init.agc_cfg to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt352_aver777_init.capt_range_cfg to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.1283 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt352_avermedia_xc3028_init.clock_config to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1271 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt352_avermedia_xc3028_init.reset to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt352_avermedia_xc3028_init.adc_ctl_1_cfg to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.1277 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt352_avermedia_xc3028_init.agc_cfg to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt352_avermedia_xc3028_init.capt_range_cfg to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.1283 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @philips_tu1216_init.tu1216_init to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1286 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @philips_tda6651_pll_set._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1382 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.328 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.329 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @configure_tda827x_fe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1382 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.330 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @configure_tda827x_fe._entry.331 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1382 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @configure_tda827x_fe._entry.333 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1382 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda8290_i2c_gate_ctrl.tda8290_close to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.1310 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda8290_i2c_gate_ctrl.tda8290_open to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.1313 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda8290_i2c_gate_ctrl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1382 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.335 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.336 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.337 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.338 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.339 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.340 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.341 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.342 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @philips_europa_tuner_init.msg to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.1367 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @philips_europa_tuner_sleep.msg to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.1367 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @philips_td1316_tuner_sleep.msg to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1367 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hauppauge_tda18271_std_map to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.1352 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @md8800_set_high_voltage2._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1382 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.344 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.345 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kworld_tda18271_std_map to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @philips_td1316_tuner_init.msg to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1367 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dtv1000s_tda18271_std_map to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.1370 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kworld_sbtvd_gate_ctrl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1382 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.348 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.349 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kworld_sbtvd_gate_ctrl._entry.350 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1382 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mb86a20s_tda18271_std_map to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_fini.on to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1388 to i32), i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1390 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @dvb_unregister() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @saa7134_ts_unregister(ptr noundef nonnull @dvb_ops) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @saa7134_ts_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @dvb_register() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @saa7134_ts_register(ptr noundef nonnull @dvb_ops) #5
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dvb_init(ptr noundef %dev) #2 align 64 {
entry:
  %data = alloca i8, align 1
  %msg = alloca %struct.i2c_msg, align 4
  %cfg = alloca %struct.xc2028_config, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %frontends = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 97
  %lock = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 97, i32 1
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str, ptr noundef nonnull @dvb_init.__key) #5
  %0 = ptrtoint ptr %frontends to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile ptr %frontends, ptr %frontends, align 4
  %prev.i = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 97, i32 0, i32 1
  %1 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %frontends, ptr %prev.i, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #8
  %call6 = tail call ptr @vb2_dvb_alloc_frontend(ptr noundef %frontends, i32 noundef 1) #5
  %tobool.not = icmp eq ptr %call6, null
  br i1 %tobool.not, label %do.end9, label %if.end

do.end9:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.2) #8
  br label %cleanup3093

if.end:                                           ; preds = %entry
  %ts = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 50
  %nr_bufs = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 50, i32 1
  %2 = ptrtoint ptr %nr_bufs to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 32, ptr %nr_bufs, align 4
  %3 = ptrtoint ptr %ts to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 128, ptr %ts, align 4
  %name = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 13
  %dvb = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call6, i32 0, i32 2
  %4 = ptrtoint ptr %dvb to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %name, ptr %dvb, align 8
  %dvbq = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call6, i32 0, i32 2, i32 2
  %5 = ptrtoint ptr %dvbq to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %dvbq, align 4
  %io_modes = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call6, i32 0, i32 2, i32 2, i32 1
  %6 = ptrtoint ptr %io_modes to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 5, ptr %io_modes, align 4
  %ts_q = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 51
  %drv_priv = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call6, i32 0, i32 2, i32 2, i32 10
  %7 = ptrtoint ptr %drv_priv to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %ts_q, ptr %drv_priv, align 4
  %ops = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call6, i32 0, i32 2, i32 2, i32 7
  %8 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @saa7134_ts_qops, ptr %ops, align 4
  %mem_ops = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call6, i32 0, i32 2, i32 2, i32 8
  %9 = ptrtoint ptr %mem_ops to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @vb2_dma_sg_memops, ptr %mem_ops, align 4
  %buf_struct_size = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call6, i32 0, i32 2, i32 2, i32 12
  %10 = ptrtoint ptr %buf_struct_size to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 752, ptr %buf_struct_size, align 4
  %timestamp_flags = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call6, i32 0, i32 2, i32 2, i32 13
  %11 = ptrtoint ptr %timestamp_flags to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 8192, ptr %timestamp_flags, align 4
  %lock15 = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 1
  %lock16 = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call6, i32 0, i32 2, i32 2, i32 5
  %12 = ptrtoint ptr %lock16 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %lock15, ptr %lock16, align 4
  %pci = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 15
  %13 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pci, align 4
  %dev17 = getelementptr inbounds %struct.pci_dev, ptr %14, i32 0, i32 44
  %dev18 = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call6, i32 0, i32 2, i32 2, i32 2
  %15 = ptrtoint ptr %dev18 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %dev17, ptr %dev18, align 4
  %call19 = tail call i32 @vb2_queue_init(ptr noundef %dvbq) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end23, label %if.then21

if.then21:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @vb2_dvb_dealloc_frontends(ptr noundef %frontends) #5
  br label %cleanup3093

if.end23:                                         ; preds = %if.end
  %board = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 20
  %16 = ptrtoint ptr %board to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %board, align 4
  %18 = zext i32 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values)
  switch i32 %17, label %do.end2969 [
    i32 50, label %do.body24
    i32 85, label %if.end23.do.body60_crit_edge
    i32 99, label %if.end23.do.body60_crit_edge4066
    i32 137, label %do.body136
    i32 12, label %sw.bb179
    i32 61, label %sw.bb242
    i32 55, label %if.end23.sw.bb284_crit_edge
    i32 60, label %if.end23.sw.bb284_crit_edge4067
    i32 69, label %if.end23.sw.bb289_crit_edge
    i32 70, label %if.end23.sw.bb289_crit_edge4068
    i32 174, label %if.end23.sw.bb289_crit_edge4069
    i32 181, label %sw.bb344
    i32 71, label %sw.bb401
    i32 114, label %sw.bb444
    i32 156, label %sw.bb449
    i32 81, label %sw.bb536
    i32 101, label %sw.bb541
    i32 104, label %sw.bb546
    i32 155, label %sw.bb551
    i32 78, label %sw.bb638
    i32 86, label %sw.bb643
    i32 84, label %sw.bb648
    i32 87, label %if.end23.sw.bb759_crit_edge
    i32 94, label %if.end23.sw.bb759_crit_edge4070
    i32 88, label %sw.bb836
    i32 96, label %sw.bb842
    i32 75, label %sw.bb991
    i32 151, label %if.end23.sw.bb1052_crit_edge
    i32 90, label %if.end23.sw.bb1052_crit_edge4071
    i32 189, label %sw.bb1114
    i32 97, label %sw.bb1206
    i32 100, label %sw.bb1314
    i32 103, label %sw.bb1385
    i32 105, label %sw.bb1429
    i32 108, label %sw.bb1435
    i32 109, label %sw.bb1441
    i32 111, label %sw.bb1447
    i32 112, label %sw.bb1453
    i32 117, label %sw.bb1459
    i32 131, label %sw.bb1465
    i32 133, label %sw.bb1471
    i32 134, label %sw.bb1579
    i32 135, label %sw.bb1585
    i32 136, label %do.body1592
    i32 93, label %sw.bb1636
    i32 145, label %sw.bb1764
    i32 147, label %sw.bb1793
    i32 190, label %sw.bb1910
    i32 152, label %sw.bb2027
    i32 142, label %sw.bb2033
    i32 171, label %sw.bb2095
    i32 178, label %sw.bb2157
    i32 140, label %if.end23.sw.bb2219_crit_edge
    i32 141, label %if.end23.sw.bb2219_crit_edge4072
    i32 169, label %sw.bb2290
    i32 139, label %sw.bb2361
    i32 173, label %sw.bb2433
    i32 175, label %sw.bb2524
    i32 182, label %sw.bb2615
    i32 185, label %sw.bb2711
    i32 192, label %sw.bb2802
    i32 197, label %sw.bb2877
  ]

if.end23.sw.bb2219_crit_edge4072:                 ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb2219

if.end23.sw.bb2219_crit_edge:                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb2219

if.end23.sw.bb1052_crit_edge4071:                 ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb1052

if.end23.sw.bb1052_crit_edge:                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb1052

if.end23.sw.bb759_crit_edge4070:                  ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb759

if.end23.sw.bb759_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb759

if.end23.sw.bb289_crit_edge4069:                  ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb289

if.end23.sw.bb289_crit_edge4068:                  ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb289

if.end23.sw.bb289_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb289

if.end23.sw.bb284_crit_edge4067:                  ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb284

if.end23.sw.bb284_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb284

if.end23.do.body60_crit_edge4066:                 ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body60

if.end23.do.body60_crit_edge:                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body60

do.body24:                                        ; preds = %if.end23
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dvb_init.__UNIQUE_ID_ddebug402, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dvb_init, %if.then30)) #5
          to label %do.end33 [label %if.then30], !srcloc !724

if.then30:                                        ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dvb_init.__UNIQUE_ID_ddebug402, ptr noundef nonnull @.str.9) #5
  br label %do.end33

do.end33:                                         ; preds = %if.then30, %do.body24
  %call34 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.10) #5
  %tobool35.not = icmp eq ptr %call34, null
  br i1 %tobool35.not, label %cond.end, label %do.end33.if.then39_crit_edge

do.end33.if.then39_crit_edge:                     ; preds = %do.end33
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then39

cond.end:                                         ; preds = %do.end33
  %call36 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.11) #5
  %call37 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.10) #5
  %tobool38.not = icmp eq ptr %call37, null
  br i1 %tobool38.not, label %do.end45, label %cond.end.if.then39_crit_edge

cond.end.if.then39_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then39

if.then39:                                        ; preds = %cond.end.if.then39_crit_edge, %do.end33.if.then39_crit_edge
  %cond3677 = phi ptr [ %call37, %cond.end.if.then39_crit_edge ], [ %call34, %do.end33.if.then39_crit_edge ]
  %i2c_adap = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 27
  %call40 = tail call ptr %cond3677(ptr noundef nonnull @pinnacle_300i, ptr noundef %i2c_adap) #5
  %cmp = icmp eq ptr %call40, null
  br i1 %cmp, label %if.then41, label %if.then54

if.then41:                                        ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @__symbol_put(ptr noundef nonnull @.str.10) #5
  br label %if.end48.thread

do.end45:                                         ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #7
  %call47 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13) #8
  br label %if.end48.thread

if.end48.thread:                                  ; preds = %do.end45, %if.then41
  %frontend3679 = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call6, i32 0, i32 2, i32 1
  %19 = ptrtoint ptr %frontend3679 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %frontend3679, align 4
  br label %if.end3023

if.then54:                                        ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #7
  %frontend = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call6, i32 0, i32 2, i32 1
  %20 = ptrtoint ptr %frontend to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call40, ptr %frontend, align 4
  %set_params = getelementptr inbounds %struct.dvb_frontend, ptr %call40, i32 0, i32 1, i32 32, i32 6
  %21 = ptrtoint ptr %set_params to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @mt352_pinnacle_tuner_set_params, ptr %set_params, align 4
  br label %if.end3023

do.body60:                                        ; preds = %if.end23.do.body60_crit_edge, %if.end23.do.body60_crit_edge4066
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dvb_init.__UNIQUE_ID_ddebug403, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dvb_init, %if.then72)) #5
          to label %do.end75 [label %if.then72], !srcloc !724

if.then72:                                        ; preds = %do.body60
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dvb_init.__UNIQUE_ID_ddebug403, ptr noundef nonnull @.str.16) #5
  br label %do.end75

do.end75:                                         ; preds = %if.then72, %do.body60
  %call78 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.10) #5
  %tobool79.not = icmp eq ptr %call78, null
  br i1 %tobool79.not, label %cond.end84, label %do.end75.if.then87_crit_edge

do.end75.if.then87_crit_edge:                     ; preds = %do.end75
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then87

cond.end84:                                       ; preds = %do.end75
  %call82 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.11) #5
  %call83 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.10) #5
  %tobool86.not = icmp eq ptr %call83, null
  br i1 %tobool86.not, label %do.end96, label %cond.end84.if.then87_crit_edge

cond.end84.if.then87_crit_edge:                   ; preds = %cond.end84
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then87

if.then87:                                        ; preds = %cond.end84.if.then87_crit_edge, %do.end75.if.then87_crit_edge
  %cond853684 = phi ptr [ %call83, %cond.end84.if.then87_crit_edge ], [ %call78, %do.end75.if.then87_crit_edge ]
  %i2c_adap88 = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 27
  %call89 = tail call ptr %cond853684(ptr noundef nonnull @avermedia_777, ptr noundef %i2c_adap88) #5
  %cmp90 = icmp eq ptr %call89, null
  br i1 %cmp90, label %if.then91, label %if.then106

if.then91:                                        ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @__symbol_put(ptr noundef nonnull @.str.10) #5
  br label %if.end99.thread

do.end96:                                         ; preds = %cond.end84
  call void @__sanitizer_cov_trace_pc() #7
  %call98 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13) #8
  br label %if.end99.thread

if.end99.thread:                                  ; preds = %do.end96, %if.then91
  %frontend1023686 = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call6, i32 0, i32 2, i32 1
  %22 = ptrtoint ptr %frontend1023686 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %frontend1023686, align 4
  br label %if.end3023

if.then106:                                       ; preds = %if.then87
  %frontend102 = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call6, i32 0, i32 2, i32 1
  %23 = ptrtoint ptr %frontend102 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call89, ptr %frontend102, align 4
  %call109 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.19) #5
  %tobool110.not = icmp eq ptr %call109, null
  br i1 %tobool110.not, label %cond.end115, label %if.then106.if.then118_crit_edge

if.then106.if.then118_crit_edge:                  ; preds = %if.then106
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then118

cond.end115:                                      ; preds = %if.then106
  %call113 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.20) #5
  %call114 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.19) #5
  %tobool117.not = icmp eq ptr %call114, null
  br i1 %tobool117.not, label %do.end129, label %cond.end115.if.then118_crit_edge

cond.end115.if.then118_crit_edge:                 ; preds = %cond.end115
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then118

if.then118:                                       ; preds = %cond.end115.if.then118_crit_edge, %if.then106.if.then118_crit_edge
  %cond1163690 = phi ptr [ %call114, %cond.end115.if.then118_crit_edge ], [ %call109, %if.then106.if.then118_crit_edge ]
  %24 = ptrtoint ptr %frontend102 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %frontend102, align 4
  %call122 = tail call ptr %cond1163690(ptr noundef %25, ptr noundef %i2c_adap88, i8 noundef zeroext 97, i32 noundef 67) #5
  %cmp123 = icmp eq ptr %call122, null
  br i1 %cmp123, label %if.then124, label %if.then118.if.end3023_crit_edge

if.then118.if.end3023_crit_edge:                  ; preds = %if.then118
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end3023

if.then124:                                       ; preds = %if.then118
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @__symbol_put(ptr noundef nonnull @.str.19) #5
  br label %if.end3023

do.end129:                                        ; preds = %cond.end115
  call void @__sanitizer_cov_trace_pc() #7
  %call131 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22) #8
  br label %if.end3023

do.body136:                                       ; preds = %if.end23
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dvb_init.__UNIQUE_ID_ddebug404, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dvb_init, %if.then148)) #5
          to label %do.end151 [label %if.then148], !srcloc !724

if.then148:                                       ; preds = %do.body136
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dvb_init.__UNIQUE_ID_ddebug404, ptr noundef nonnull @.str.25) #5
  br label %do.end151

do.end151:                                        ; preds = %if.then148, %do.body136
  %call154 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.10) #5
  %tobool155.not = icmp eq ptr %call154, null
  br i1 %tobool155.not, label %cond.end160, label %do.end151.if.then163_crit_edge

do.end151.if.then163_crit_edge:                   ; preds = %do.end151
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then163

cond.end160:                                      ; preds = %do.end151
  %call158 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.11) #5
  %call159 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.10) #5
  %tobool162.not = icmp eq ptr %call159, null
  br i1 %tobool162.not, label %do.end172, label %cond.end160.if.then163_crit_edge

cond.end160.if.then163_crit_edge:                 ; preds = %cond.end160
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then163

if.then163:                                       ; preds = %cond.end160.if.then163_crit_edge, %do.end151.if.then163_crit_edge
  %cond1613694 = phi ptr [ %call159, %cond.end160.if.then163_crit_edge ], [ %call154, %do.end151.if.then163_crit_edge ]
  %i2c_adap164 = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 27
  %call165 = tail call ptr %cond1613694(ptr noundef nonnull @avermedia_xc3028_mt352_dev, ptr noundef %i2c_adap164) #5
  %cmp166 = icmp eq ptr %call165, null
  br i1 %cmp166, label %if.then167, label %if.then163.if.then2973_crit_edge

if.then163.if.then2973_crit_edge:                 ; preds = %if.then163
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then2973

if.then167:                                       ; preds = %if.then163
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @__symbol_put(ptr noundef nonnull @.str.10) #5
  br label %if.then2973

do.end172:                                        ; preds = %cond.end160
  call void @__sanitizer_cov_trace_pc() #7
  %call174 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13) #8
  br label %if.then2973

sw.bb179:                                         ; preds = %if.end23
  %call182 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.28) #5
  %tobool183.not = icmp eq ptr %call182, null
  br i1 %tobool183.not, label %cond.end188, label %sw.bb179.if.then191_crit_edge

sw.bb179.if.then191_crit_edge:                    ; preds = %sw.bb179
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then191

cond.end188:                                      ; preds = %sw.bb179
  %call186 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.29) #5
  %call187 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.28) #5
  %tobool190.not = icmp eq ptr %call187, null
  br i1 %tobool190.not, label %do.end200, label %cond.end188.if.then191_crit_edge

cond.end188.if.then191_crit_edge:                 ; preds = %cond.end188
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then191

if.then191:                                       ; preds = %cond.end188.if.then191_crit_edge, %sw.bb179.if.then191_crit_edge
  %cond1893697 = phi ptr [ %call187, %cond.end188.if.then191_crit_edge ], [ %call182, %sw.bb179.if.then191_crit_edge ]
  %i2c_adap192 = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 27
  %call193 = tail call ptr %cond1893697(ptr noundef nonnull @medion_cardbus, ptr noundef %i2c_adap192) #5
  %cmp194 = icmp eq ptr %call193, null
  br i1 %cmp194, label %if.then195, label %if.then210

if.then195:                                       ; preds = %if.then191
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @__symbol_put(ptr noundef nonnull @.str.28) #5
  br label %if.end203.thread

do.end200:                                        ; preds = %cond.end188
  call void @__sanitizer_cov_trace_pc() #7
  %call202 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31) #8
  br label %if.end203.thread

if.end203.thread:                                 ; preds = %do.end200, %if.then195
  %frontend2063699 = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call6, i32 0, i32 2, i32 1
  %26 = ptrtoint ptr %frontend2063699 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %frontend2063699, align 4
  br label %if.end3023

if.then210:                                       ; preds = %if.then191
  %frontend206 = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call6, i32 0, i32 2, i32 1
  %27 = ptrtoint ptr %frontend206 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call193, ptr %frontend206, align 4
  %i2c_gate_ctrl = getelementptr inbounds %struct.dvb_frontend, ptr %call193, i32 0, i32 1, i32 28
  %28 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr null, ptr %i2c_gate_ctrl, align 4
  %call216 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.19) #5
  %tobool217.not = icmp eq ptr %call216, null
  br i1 %tobool217.not, label %cond.end222, label %if.then210.if.then225_crit_edge

if.then210.if.then225_crit_edge:                  ; preds = %if.then210
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then225

cond.end222:                                      ; preds = %if.then210
  %call220 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.20) #5
  %call221 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.19) #5
  %tobool224.not = icmp eq ptr %call221, null
  br i1 %tobool224.not, label %do.end236, label %cond.end222.if.then225_crit_edge

cond.end222.if.then225_crit_edge:                 ; preds = %cond.end222
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then225

if.then225:                                       ; preds = %cond.end222.if.then225_crit_edge, %if.then210.if.then225_crit_edge
  %cond2233703 = phi ptr [ %call221, %cond.end222.if.then225_crit_edge ], [ %call216, %if.then210.if.then225_crit_edge ]
  %29 = ptrtoint ptr %frontend206 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %frontend206, align 4
  %31 = load i8, ptr getelementptr inbounds (%struct.tda1004x_config, ptr @medion_cardbus, i32 0, i32 8), align 4
  %call229 = tail call ptr %cond2233703(ptr noundef %30, ptr noundef %i2c_adap192, i8 noundef zeroext %31, i32 noundef 63) #5
  %cmp230 = icmp eq ptr %call229, null
  br i1 %cmp230, label %if.then231, label %if.then225.if.end3023_crit_edge

if.then225.if.end3023_crit_edge:                  ; preds = %if.then225
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end3023

if.then231:                                       ; preds = %if.then225
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @__symbol_put(ptr noundef nonnull @.str.19) #5
  br label %if.end3023

do.end236:                                        ; preds = %cond.end222
  call void @__sanitizer_cov_trace_pc() #7
  %call238 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22) #8
  br label %if.end3023

sw.bb242:                                         ; preds = %if.end23
  %call245 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.28) #5
  %tobool246.not = icmp eq ptr %call245, null
  br i1 %tobool246.not, label %cond.end251, label %sw.bb242.if.then254_crit_edge

sw.bb242.if.then254_crit_edge:                    ; preds = %sw.bb242
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then254

cond.end251:                                      ; preds = %sw.bb242
  %call249 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.29) #5
  %call250 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.28) #5
  %tobool253.not = icmp eq ptr %call250, null
  br i1 %tobool253.not, label %do.end263, label %cond.end251.if.then254_crit_edge

cond.end251.if.then254_crit_edge:                 ; preds = %cond.end251
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then254

if.then254:                                       ; preds = %cond.end251.if.then254_crit_edge, %sw.bb242.if.then254_crit_edge
  %cond2523706 = phi ptr [ %call250, %cond.end251.if.then254_crit_edge ], [ %call245, %sw.bb242.if.then254_crit_edge ]
  %i2c_adap255 = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 27
  %call256 = tail call ptr %cond2523706(ptr noundef nonnull @philips_tu1216_60_config, ptr noundef %i2c_adap255) #5
  %cmp257 = icmp eq ptr %call256, null
  br i1 %cmp257, label %if.then258, label %if.then273

if.then258:                                       ; preds = %if.then254
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @__symbol_put(ptr noundef nonnull @.str.28) #5
  br label %if.end266.thread

do.end263:                                        ; preds = %cond.end251
  call void @__sanitizer_cov_trace_pc() #7
  %call265 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31) #8
  br label %if.end266.thread

if.end266.thread:                                 ; preds = %do.end263, %if.then258
  %frontend2693708 = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call6, i32 0, i32 2, i32 1
  %32 = ptrtoint ptr %frontend2693708 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr null, ptr %frontend2693708, align 4
  br label %if.end3023

if.then273:                                       ; preds = %if.then254
  call void @__sanitizer_cov_trace_pc() #7
  %frontend269 = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call6, i32 0, i32 2, i32 1
  %33 = ptrtoint ptr %frontend269 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call256, ptr %frontend269, align 4
  %init = getelementptr inbounds %struct.dvb_frontend, ptr %call256, i32 0, i32 1, i32 32, i32 2
  %34 = ptrtoint ptr %init to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @philips_tu1216_init, ptr %init, align 4
  %35 = load ptr, ptr %frontend269, align 4
  %set_params282 = getelementptr inbounds %struct.dvb_frontend, ptr %35, i32 0, i32 1, i32 32, i32 6
  %36 = ptrtoint ptr %set_params282 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @philips_tda6651_pll_set, ptr %set_params282, align 4
  br label %if.end3023

sw.bb284:                                         ; preds = %if.end23.sw.bb284_crit_edge, %if.end23.sw.bb284_crit_edge4067
  %call285 = tail call fastcc i32 @configure_tda827x_fe(ptr noundef %dev, ptr noundef nonnull @tda827x_lifeview_config, ptr noundef nonnull @tda827x_cfg_0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call285)
  %cmp286 = icmp slt i32 %call285, 0
  br i1 %cmp286, label %sw.bb284.detach_frontend_crit_edge, label %sw.bb284.if.end3023_crit_edge

sw.bb284.if.end3023_crit_edge:                    ; preds = %sw.bb284
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end3023

sw.bb284.detach_frontend_crit_edge:               ; preds = %sw.bb284
  call void @__sanitizer_cov_trace_pc() #7
  br label %detach_frontend

sw.bb289:                                         ; preds = %if.end23.sw.bb289_crit_edge, %if.end23.sw.bb289_crit_edge4068, %if.end23.sw.bb289_crit_edge4069
  %call292 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.28) #5
  %tobool293.not = icmp eq ptr %call292, null
  br i1 %tobool293.not, label %cond.end298, label %sw.bb289.if.then301_crit_edge

sw.bb289.if.then301_crit_edge:                    ; preds = %sw.bb289
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then301

cond.end298:                                      ; preds = %sw.bb289
  %call296 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.29) #5
  %call297 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.28) #5
  %tobool300.not = icmp eq ptr %call297, null
  br i1 %tobool300.not, label %do.end310, label %cond.end298.if.then301_crit_edge

cond.end298.if.then301_crit_edge:                 ; preds = %cond.end298
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then301

if.then301:                                       ; preds = %cond.end298.if.then301_crit_edge, %sw.bb289.if.then301_crit_edge
  %cond2993712 = phi ptr [ %call297, %cond.end298.if.then301_crit_edge ], [ %call292, %sw.bb289.if.then301_crit_edge ]
  %i2c_adap302 = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 27
  %call303 = tail call ptr %cond2993712(ptr noundef nonnull @philips_europa_config, ptr noundef %i2c_adap302) #5
  %cmp304 = icmp eq ptr %call303, null
  br i1 %cmp304, label %if.then305, label %if.then320

if.then305:                                       ; preds = %if.then301
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @__symbol_put(ptr noundef nonnull @.str.28) #5
  br label %if.end313.thread

do.end310:                                        ; preds = %cond.end298
  call void @__sanitizer_cov_trace_pc() #7
  %call312 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31) #8
  br label %if.end313.thread

if.end313.thread:                                 ; preds = %do.end310, %if.then305
  %frontend3163714 = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call6, i32 0, i32 2, i32 1
  %37 = ptrtoint ptr %frontend3163714 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr null, ptr %frontend3163714, align 4
  br label %if.end3023

if.then320:                                       ; preds = %if.then301
  call void @__sanitizer_cov_trace_pc() #7
  %frontend316 = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call6, i32 0, i32 2, i32 1
  %38 = ptrtoint ptr %frontend316 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call303, ptr %frontend316, align 4
  %sleep = getelementptr inbounds %struct.dvb_frontend, ptr %call303, i32 0, i32 1, i32 6
  %39 = ptrtoint ptr %sleep to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %sleep, align 4
  %original_demod_sleep = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 98
  %41 = ptrtoint ptr %original_demod_sleep to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %40, ptr %original_demod_sleep, align 4
  %42 = load ptr, ptr %frontend316, align 4
  %sleep327 = getelementptr inbounds %struct.dvb_frontend, ptr %42, i32 0, i32 1, i32 6
  %43 = ptrtoint ptr %sleep327 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr @philips_europa_demod_sleep, ptr %sleep327, align 4
  %44 = load ptr, ptr %frontend316, align 4
  %init332 = getelementptr inbounds %struct.dvb_frontend, ptr %44, i32 0, i32 1, i32 32, i32 2
  %45 = ptrtoint ptr %init332 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr @philips_europa_tuner_init, ptr %init332, align 4
  %46 = load ptr, ptr %frontend316, align 4
  %sleep337 = getelementptr inbounds %struct.dvb_frontend, ptr %46, i32 0, i32 1, i32 32, i32 3
  %47 = ptrtoint ptr %sleep337 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr @philips_europa_tuner_sleep, ptr %sleep337, align 4
  %48 = load ptr, ptr %frontend316, align 4
  %set_params342 = getelementptr inbounds %struct.dvb_frontend, ptr %48, i32 0, i32 1, i32 32, i32 6
  %49 = ptrtoint ptr %set_params342 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr @philips_td1316_tuner_set_params, ptr %set_params342, align 4
  br label %if.end3023

sw.bb344:                                         ; preds = %if.end23
  %call347 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.28) #5
  %tobool348.not = icmp eq ptr %call347, null
  br i1 %tobool348.not, label %cond.end353, label %sw.bb344.if.then356_crit_edge

sw.bb344.if.then356_crit_edge:                    ; preds = %sw.bb344
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then356

cond.end353:                                      ; preds = %sw.bb344
  %call351 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.29) #5
  %call352 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.28) #5
  %tobool355.not = icmp eq ptr %call352, null
  br i1 %tobool355.not, label %do.end365, label %cond.end353.if.then356_crit_edge

cond.end353.if.then356_crit_edge:                 ; preds = %cond.end353
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then356

if.then356:                                       ; preds = %cond.end353.if.then356_crit_edge, %sw.bb344.if.then356_crit_edge
  %cond3543718 = phi ptr [ %call352, %cond.end353.if.then356_crit_edge ], [ %call347, %sw.bb344.if.then356_crit_edge ]
  %i2c_adap357 = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 27
  %call358 = tail call ptr %cond3543718(ptr noundef nonnull @technotrend_budget_t3000_config, ptr noundef %i2c_adap357) #5
  %cmp359 = icmp eq ptr %call358, null
  br i1 %cmp359, label %if.then360, label %if.then375

if.then360:                                       ; preds = %if.then356
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @__symbol_put(ptr noundef nonnull @.str.28) #5
  br label %if.end368.thread

do.end365:                                        ; preds = %cond.end353
  call void @__sanitizer_cov_trace_pc() #7
  %call367 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31) #8
  br label %if.end368.thread

if.end368.thread:                                 ; preds = %do.end365, %if.then360
  %frontend3713720 = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call6, i32 0, i32 2, i32 1
  %50 = ptrtoint ptr %frontend3713720 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr null, ptr %frontend3713720, align 4
  br label %if.end3023

if.then375:                                       ; preds = %if.then356
  call void @__sanitizer_cov_trace_pc() #7
  %frontend371 = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call6, i32 0, i32 2, i32 1
  %51 = ptrtoint ptr %frontend371 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %call358, ptr %frontend371, align 4
  %sleep379 = getelementptr inbounds %struct.dvb_frontend, ptr %call358, i32 0, i32 1, i32 6
  %52 = ptrtoint ptr %sleep379 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %sleep379, align 4
  %original_demod_sleep380 = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 98
  %54 = ptrtoint ptr %original_demod_sleep380 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %53, ptr %original_demod_sleep380, align 4
  %55 = load ptr, ptr %frontend371, align 4
  %sleep384 = getelementptr inbounds %struct.dvb_frontend, ptr %55, i32 0, i32 1, i32 6
  %56 = ptrtoint ptr %sleep384 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr @philips_europa_demod_sleep, ptr %sleep384, align 4
  %57 = load ptr, ptr %frontend371, align 4
  %init389 = getelementptr inbounds %struct.dvb_frontend, ptr %57, i32 0, i32 1, i32 32, i32 2
  %58 = ptrtoint ptr %init389 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr @philips_europa_tuner_init, ptr %init389, align 4
  %59 = load ptr, ptr %frontend371, align 4
  %sleep394 = getelementptr inbounds %struct.dvb_frontend, ptr %59, i32 0, i32 1, i32 32, i32 3
  %60 = ptrtoint ptr %sleep394 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr @philips_europa_tuner_sleep, ptr %sleep394, align 4
  %61 = load ptr, ptr %frontend371, align 4
  %set_params399 = getelementptr inbounds %struct.dvb_frontend, ptr %61, i32 0, i32 1, i32 32, i32 6
  %62 = ptrtoint ptr %set_params399 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr @philips_td1316_tuner_set_params, ptr %set_params399, align 4
  br label %if.end3023

sw.bb401:                                         ; preds = %if.end23
  %call404 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.28) #5
  %tobool405.not = icmp eq ptr %call404, null
  br i1 %tobool405.not, label %cond.end410, label %sw.bb401.if.then413_crit_edge

sw.bb401.if.then413_crit_edge:                    ; preds = %sw.bb401
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then413

cond.end410:                                      ; preds = %sw.bb401
  %call408 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.29) #5
  %call409 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.28) #5
  %tobool412.not = icmp eq ptr %call409, null
  br i1 %tobool412.not, label %do.end422, label %cond.end410.if.then413_crit_edge

cond.end410.if.then413_crit_edge:                 ; preds = %cond.end410
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then413

if.then413:                                       ; preds = %cond.end410.if.then413_crit_edge, %sw.bb401.if.then413_crit_edge
  %cond4113724 = phi ptr [ %call409, %cond.end410.if.then413_crit_edge ], [ %call404, %sw.bb401.if.then413_crit_edge ]
  %i2c_adap414 = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 27
  %call415 = tail call ptr %cond4113724(ptr noundef nonnull @philips_tu1216_61_config, ptr noundef %i2c_adap414) #5
  %cmp416 = icmp eq ptr %call415, null
  br i1 %cmp416, label %if.then417, label %if.then432

if.then417:                                       ; preds = %if.then413
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @__symbol_put(ptr noundef nonnull @.str.28) #5
  br label %if.end425.thread

do.end422:                                        ; preds = %cond.end410
  call void @__sanitizer_cov_trace_pc() #7
  %call424 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31) #8
  br label %if.end425.thread

if.end425.thread:                                 ; preds = %do.end422, %if.then417
  %frontend4283726 = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call6, i32 0, i32 2, i32 1
  %63 = ptrtoint ptr %frontend4283726 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr null, ptr %frontend4283726, align 4
  br label %if.end3023

if.then432:                                       ; preds = %if.then413
  call void @__sanitizer_cov_trace_pc() #7
  %frontend428 = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call6, i32 0, i32 2, i32 1
  %64 = ptrtoint ptr %frontend428 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %call415, ptr %frontend428, align 4
  %init437 = getelementptr inbounds %struct.dvb_frontend, ptr %call415, i32 0, i32 1, i32 32, i32 2
  %65 = ptrtoint ptr %init437 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr @philips_tu1216_init, ptr %init437, align 4
  %66 = load ptr, ptr %frontend428, align 4
  %set_params442 = getelementptr inbounds %struct.dvb_frontend, ptr %66, i32 0, i32 1, i32 32, i32 6
  %67 = ptrtoint ptr %set_params442 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr @philips_tda6651_pll_set, ptr %set_params442, align 4
  br label %if.end3023

sw.bb444:                                         ; preds = %if.end23
  %call445 = tail call fastcc i32 @configure_tda827x_fe(ptr noundef %dev, ptr noundef nonnull @kworld_dvb_t_210_config, ptr noundef nonnull @tda827x_cfg_2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call445)
  %cmp446 = icmp slt i32 %call445, 0
  br i1 %cmp446, label %sw.bb444.detach_frontend_crit_edge, label %sw.bb444.if.end3023_crit_edge

sw.bb444.if.end3023_crit_edge:                    ; preds = %sw.bb444
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end3023

sw.bb444.detach_frontend_crit_edge:               ; preds = %sw.bb444
  call void @__sanitizer_cov_trace_pc() #7
  br label %detach_frontend

sw.bb449:                                         ; preds = %if.end23
  %call452 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.43) #5
  %tobool453.not = icmp eq ptr %call452, null
  br i1 %tobool453.not, label %cond.end458, label %sw.bb449.if.then461_crit_edge

sw.bb449.if.then461_crit_edge:                    ; preds = %sw.bb449
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then461

cond.end458:                                      ; preds = %sw.bb449
  %call456 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.44) #5
  %call457 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.43) #5
  %tobool460.not = icmp eq ptr %call457, null
  br i1 %tobool460.not, label %do.end470, label %cond.end458.if.then461_crit_edge

cond.end458.if.then461_crit_edge:                 ; preds = %cond.end458
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then461

if.then461:                                       ; preds = %cond.end458.if.then461_crit_edge, %sw.bb449.if.then461_crit_edge
  %cond4593730 = phi ptr [ %call457, %cond.end458.if.then461_crit_edge ], [ %call452, %sw.bb449.if.then461_crit_edge ]
  %i2c_adap462 = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 27
  %call463 = tail call ptr %cond4593730(ptr noundef nonnull @hcw_tda10048_config, ptr noundef %i2c_adap462) #5
  %cmp464 = icmp eq ptr %call463, null
  br i1 %cmp464, label %if.then465, label %if.then480

if.then465:                                       ; preds = %if.then461
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @__symbol_put(ptr noundef nonnull @.str.43) #5
  br label %if.end473.thread

do.end470:                                        ; preds = %cond.end458
  call void @__sanitizer_cov_trace_pc() #7
  %call472 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46) #8
  br label %if.end473.thread

if.end473.thread:                                 ; preds = %do.end470, %if.then465
  %frontend4763732 = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call6, i32 0, i32 2, i32 1
  %68 = ptrtoint ptr %frontend4763732 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr null, ptr %frontend4763732, align 4
  br label %if.end3023

if.then480:                                       ; preds = %if.then461
  %frontend476 = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call6, i32 0, i32 2, i32 1
  %69 = ptrtoint ptr %frontend476 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %call463, ptr %frontend476, align 4
  %call483 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.48) #5
  %tobool484.not = icmp eq ptr %call483, null
  br i1 %tobool484.not, label %cond.end489, label %if.then480.if.then492_crit_edge

if.then480.if.then492_crit_edge:                  ; preds = %if.then480
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then492

cond.end489:                                      ; preds = %if.then480
  %call487 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.49) #5
  %call488 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.48) #5
  %tobool491.not = icmp eq ptr %call488, null
  br i1 %tobool491.not, label %do.end503, label %cond.end489.if.then492_crit_edge

cond.end489.if.then492_crit_edge:                 ; preds = %cond.end489
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then492

if.then492:                                       ; preds = %cond.end489.if.then492_crit_edge, %if.then480.if.then492_crit_edge
  %cond4903736 = phi ptr [ %call488, %cond.end489.if.then492_crit_edge ], [ %call483, %if.then480.if.then492_crit_edge ]
  %70 = ptrtoint ptr %frontend476 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %frontend476, align 4
  %call496 = tail call ptr %cond4903736(ptr noundef %71, ptr noundef %i2c_adap462, i8 noundef zeroext 75, ptr noundef nonnull @tda829x_no_probe) #5
  %cmp497 = icmp eq ptr %call496, null
  br i1 %cmp497, label %if.then498, label %if.then492.if.end506_crit_edge

if.then492.if.end506_crit_edge:                   ; preds = %if.then492
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end506

if.then498:                                       ; preds = %if.then492
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @__symbol_put(ptr noundef nonnull @.str.48) #5
  br label %if.end506

do.end503:                                        ; preds = %cond.end489
  call void @__sanitizer_cov_trace_pc() #7
  %call505 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51) #8
  br label %if.end506

if.end506:                                        ; preds = %do.end503, %if.then498, %if.then492.if.end506_crit_edge
  %call510 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.53) #5
  %tobool511.not = icmp eq ptr %call510, null
  br i1 %tobool511.not, label %cond.end516, label %if.end506.if.then519_crit_edge

if.end506.if.then519_crit_edge:                   ; preds = %if.end506
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then519

cond.end516:                                      ; preds = %if.end506
  %call514 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.54) #5
  %call515 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.53) #5
  %tobool518.not = icmp eq ptr %call515, null
  br i1 %tobool518.not, label %do.end530, label %cond.end516.if.then519_crit_edge

cond.end516.if.then519_crit_edge:                 ; preds = %cond.end516
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then519

if.then519:                                       ; preds = %cond.end516.if.then519_crit_edge, %if.end506.if.then519_crit_edge
  %cond5173739 = phi ptr [ %call515, %cond.end516.if.then519_crit_edge ], [ %call510, %if.end506.if.then519_crit_edge ]
  %72 = ptrtoint ptr %frontend476 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %frontend476, align 4
  %call523 = tail call ptr %cond5173739(ptr noundef %73, i8 noundef zeroext 96, ptr noundef %i2c_adap462, ptr noundef nonnull @hcw_tda18271_config) #5
  %cmp524 = icmp eq ptr %call523, null
  br i1 %cmp524, label %if.then525, label %if.then519.if.end3023_crit_edge

if.then519.if.end3023_crit_edge:                  ; preds = %if.then519
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end3023

if.then525:                                       ; preds = %if.then519
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @__symbol_put(ptr noundef nonnull @.str.53) #5
  br label %if.end3023

do.end530:                                        ; preds = %cond.end516
  call void @__sanitizer_cov_trace_pc() #7
  %call532 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56) #8
  br label %if.end3023

sw.bb536:                                         ; preds = %if.end23
  %call537 = tail call fastcc i32 @configure_tda827x_fe(ptr noundef %dev, ptr noundef nonnull @philips_tiger_config, ptr noundef nonnull @tda827x_cfg_0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call537)
  %cmp538 = icmp slt i32 %call537, 0
  br i1 %cmp538, label %sw.bb536.detach_frontend_crit_edge, label %sw.bb536.if.end3023_crit_edge

sw.bb536.if.end3023_crit_edge:                    ; preds = %sw.bb536
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end3023

sw.bb536.detach_frontend_crit_edge:               ; preds = %sw.bb536
  call void @__sanitizer_cov_trace_pc() #7
  br label %detach_frontend

sw.bb541:                                         ; preds = %if.end23
  %call542 = tail call fastcc i32 @configure_tda827x_fe(ptr noundef %dev, ptr noundef nonnull @pinnacle_pctv_310i_config, ptr noundef nonnull @tda827x_cfg_1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call542)
  %cmp543 = icmp slt i32 %call542, 0
  br i1 %cmp543, label %sw.bb541.detach_frontend_crit_edge, label %sw.bb541.if.end3023_crit_edge

sw.bb541.if.end3023_crit_edge:                    ; preds = %sw.bb541
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end3023

sw.bb541.detach_frontend_crit_edge:               ; preds = %sw.bb541
  call void @__sanitizer_cov_trace_pc() #7
  br label %detach_frontend

sw.bb546:                                         ; preds = %if.end23
  %call547 = tail call fastcc i32 @configure_tda827x_fe(ptr noundef %dev, ptr noundef nonnull @hauppauge_hvr_1110_config, ptr noundef nonnull @tda827x_cfg_1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call547)
  %cmp548 = icmp slt i32 %call547, 0
  br i1 %cmp548, label %sw.bb546.detach_frontend_crit_edge, label %sw.bb546.if.end3023_crit_edge

sw.bb546.if.end3023_crit_edge:                    ; preds = %sw.bb546
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end3023

sw.bb546.detach_frontend_crit_edge:               ; preds = %sw.bb546
  call void @__sanitizer_cov_trace_pc() #7
  br label %detach_frontend

sw.bb551:                                         ; preds = %if.end23
  %call554 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.58) #5
  %tobool555.not = icmp eq ptr %call554, null
  br i1 %tobool555.not, label %cond.end560, label %sw.bb551.if.then563_crit_edge

sw.bb551.if.then563_crit_edge:                    ; preds = %sw.bb551
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then563

cond.end560:                                      ; preds = %sw.bb551
  %call558 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.59) #5
  %call559 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.58) #5
  %tobool562.not = icmp eq ptr %call559, null
  br i1 %tobool562.not, label %do.end572, label %cond.end560.if.then563_crit_edge

cond.end560.if.then563_crit_edge:                 ; preds = %cond.end560
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then563

if.then563:                                       ; preds = %cond.end560.if.then563_crit_edge, %sw.bb551.if.then563_crit_edge
  %cond5613742 = phi ptr [ %call559, %cond.end560.if.then563_crit_edge ], [ %call554, %sw.bb551.if.then563_crit_edge ]
  %i2c_adap564 = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 27
  %call565 = tail call ptr %cond5613742(ptr noundef nonnull @hcw_lgdt3305_config, ptr noundef %i2c_adap564) #5
  %cmp566 = icmp eq ptr %call565, null
  br i1 %cmp566, label %if.then567, label %if.then582

if.then567:                                       ; preds = %if.then563
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @__symbol_put(ptr noundef nonnull @.str.58) #5
  br label %if.end575.thread

do.end572:                                        ; preds = %cond.end560
  call void @__sanitizer_cov_trace_pc() #7
  %call574 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.61) #8
  br label %if.end575.thread

if.end575.thread:                                 ; preds = %do.end572, %if.then567
  %frontend5783744 = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call6, i32 0, i32 2, i32 1
  %74 = ptrtoint ptr %frontend5783744 to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr null, ptr %frontend5783744, align 4
  br label %if.end3023

if.then582:                                       ; preds = %if.then563
  %frontend578 = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call6, i32 0, i32 2, i32 1
  %75 = ptrtoint ptr %frontend578 to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %call565, ptr %frontend578, align 4
  %call585 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.48) #5
  %tobool586.not = icmp eq ptr %call585, null
  br i1 %tobool586.not, label %cond.end591, label %if.then582.if.then594_crit_edge

if.then582.if.then594_crit_edge:                  ; preds = %if.then582
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then594

cond.end591:                                      ; preds = %if.then582
  %call589 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.49) #5
  %call590 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.48) #5
  %tobool593.not = icmp eq ptr %call590, null
  br i1 %tobool593.not, label %do.end605, label %cond.end591.if.then594_crit_edge

cond.end591.if.then594_crit_edge:                 ; preds = %cond.end591
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then594

if.then594:                                       ; preds = %cond.end591.if.then594_crit_edge, %if.then582.if.then594_crit_edge
  %cond5923748 = phi ptr [ %call590, %cond.end591.if.then594_crit_edge ], [ %call585, %if.then582.if.then594_crit_edge ]
  %76 = ptrtoint ptr %frontend578 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %frontend578, align 4
  %call598 = tail call ptr %cond5923748(ptr noundef %77, ptr noundef %i2c_adap564, i8 noundef zeroext 75, ptr noundef nonnull @tda829x_no_probe) #5
  %cmp599 = icmp eq ptr %call598, null
  br i1 %cmp599, label %if.then600, label %if.then594.if.end608_crit_edge

if.then594.if.end608_crit_edge:                   ; preds = %if.then594
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end608

if.then600:                                       ; preds = %if.then594
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @__symbol_put(ptr noundef nonnull @.str.48) #5
  br label %if.end608

do.end605:                                        ; preds = %cond.end591
  call void @__sanitizer_cov_trace_pc() #7
  %call607 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51) #8
  br label %if.end608

if.end608:                                        ; preds = %do.end605, %if.then600, %if.then594.if.end608_crit_edge
  %call612 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.53) #5
  %tobool613.not = icmp eq ptr %call612, null
  br i1 %tobool613.not, label %cond.end618, label %if.end608.if.then621_crit_edge

if.end608.if.then621_crit_edge:                   ; preds = %if.end608
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then621

cond.end618:                                      ; preds = %if.end608
  %call616 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.54) #5
  %call617 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.53) #5
  %tobool620.not = icmp eq ptr %call617, null
  br i1 %tobool620.not, label %do.end632, label %cond.end618.if.then621_crit_edge

cond.end618.if.then621_crit_edge:                 ; preds = %cond.end618
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then621

if.then621:                                       ; preds = %cond.end618.if.then621_crit_edge, %if.end608.if.then621_crit_edge
  %cond6193751 = phi ptr [ %call617, %cond.end618.if.then621_crit_edge ], [ %call612, %if.end608.if.then621_crit_edge ]
  %78 = ptrtoint ptr %frontend578 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %frontend578, align 4
  %call625 = tail call ptr %cond6193751(ptr noundef %79, i8 noundef zeroext 96, ptr noundef %i2c_adap564, ptr noundef nonnull @hcw_tda18271_config) #5
  %cmp626 = icmp eq ptr %call625, null
  br i1 %cmp626, label %if.then627, label %if.then621.if.end3023_crit_edge

if.then621.if.end3023_crit_edge:                  ; preds = %if.then621
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end3023

if.then627:                                       ; preds = %if.then621
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @__symbol_put(ptr noundef nonnull @.str.53) #5
  br label %if.end3023

do.end632:                                        ; preds = %cond.end618
  call void @__sanitizer_cov_trace_pc() #7
  %call634 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56) #8
  br label %if.end3023

sw.bb638:                                         ; preds = %if.end23
  %call639 = tail call fastcc i32 @configure_tda827x_fe(ptr noundef %dev, ptr noundef nonnull @asus_p7131_dual_config, ptr noundef nonnull @tda827x_cfg_0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call639)
  %cmp640 = icmp slt i32 %call639, 0
  br i1 %cmp640, label %sw.bb638.detach_frontend_crit_edge, label %sw.bb638.if.end3023_crit_edge

sw.bb638.if.end3023_crit_edge:                    ; preds = %sw.bb638
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end3023

sw.bb638.detach_frontend_crit_edge:               ; preds = %sw.bb638
  call void @__sanitizer_cov_trace_pc() #7
  br label %detach_frontend

sw.bb643:                                         ; preds = %if.end23
  %call644 = tail call fastcc i32 @configure_tda827x_fe(ptr noundef %dev, ptr noundef nonnull @tda827x_lifeview_config, ptr noundef nonnull @tda827x_cfg_0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call644)
  %cmp645 = icmp slt i32 %call644, 0
  br i1 %cmp645, label %sw.bb643.detach_frontend_crit_edge, label %sw.bb643.if.end3023_crit_edge

sw.bb643.if.end3023_crit_edge:                    ; preds = %sw.bb643
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end3023

sw.bb643.detach_frontend_crit_edge:               ; preds = %sw.bb643
  call void @__sanitizer_cov_trace_pc() #7
  br label %detach_frontend

sw.bb648:                                         ; preds = %if.end23
  %80 = load i32, ptr @use_frontend, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %tobool649.not = icmp eq i32 %80, 0
  br i1 %tobool649.not, label %if.then650, label %if.else655

if.then650:                                       ; preds = %sw.bb648
  %call651 = tail call fastcc i32 @configure_tda827x_fe(ptr noundef %dev, ptr noundef nonnull @lifeview_trio_config, ptr noundef nonnull @tda827x_cfg_0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call651)
  %cmp652 = icmp slt i32 %call651, 0
  br i1 %cmp652, label %if.then650.detach_frontend_crit_edge, label %if.then650.if.end3023_crit_edge

if.then650.if.end3023_crit_edge:                  ; preds = %if.then650
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end3023

if.then650.detach_frontend_crit_edge:             ; preds = %if.then650
  call void @__sanitizer_cov_trace_pc() #7
  br label %detach_frontend

if.else655:                                       ; preds = %sw.bb648
  %call658 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.67) #5
  %tobool659.not = icmp eq ptr %call658, null
  br i1 %tobool659.not, label %cond.end664, label %if.else655.if.then667_crit_edge

if.else655.if.then667_crit_edge:                  ; preds = %if.else655
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then667

cond.end664:                                      ; preds = %if.else655
  %call662 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.68) #5
  %call663 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.67) #5
  %tobool666.not = icmp eq ptr %call663, null
  br i1 %tobool666.not, label %do.end676, label %cond.end664.if.then667_crit_edge

cond.end664.if.then667_crit_edge:                 ; preds = %cond.end664
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then667

if.then667:                                       ; preds = %cond.end664.if.then667_crit_edge, %if.else655.if.then667_crit_edge
  %cond6653754 = phi ptr [ %call663, %cond.end664.if.then667_crit_edge ], [ %call658, %if.else655.if.then667_crit_edge ]
  %i2c_adap668 = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 27
  %call669 = tail call ptr %cond6653754(ptr noundef nonnull @flydvbs, ptr noundef %i2c_adap668) #5
  %cmp670 = icmp eq ptr %call669, null
  br i1 %cmp670, label %if.then671, label %if.then686

if.then671:                                       ; preds = %if.then667
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @__symbol_put(ptr noundef nonnull @.str.67) #5
  br label %if.end679.thread

do.end676:                                        ; preds = %cond.end664
  call void @__sanitizer_cov_trace_pc() #7
  %call678 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.70) #8
  br label %if.end679.thread

if.end679.thread:                                 ; preds = %do.end676, %if.then671
  %frontend6823756 = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call6, i32 0, i32 2, i32 1
  %81 = ptrtoint ptr %frontend6823756 to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr null, ptr %frontend6823756, align 4
  br label %if.end3023

if.then686:                                       ; preds = %if.then667
  %frontend682 = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call6, i32 0, i32 2, i32 1
  %82 = ptrtoint ptr %frontend682 to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %call669, ptr %frontend682, align 4
  %call689 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.72) #5
  %tobool690.not = icmp eq ptr %call689, null
  br i1 %tobool690.not, label %cond.end695, label %if.then686.if.then698_crit_edge

if.then686.if.then698_crit_edge:                  ; preds = %if.then686
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then698

cond.end695:                                      ; preds = %if.then686
  %call693 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.73) #5
  %call694 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.72) #5
  %tobool697.not = icmp eq ptr %call694, null
  br i1 %tobool697.not, label %do.end709, label %cond.end695.if.then698_crit_edge

cond.end695.if.then698_crit_edge:                 ; preds = %cond.end695
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then698

if.then698:                                       ; preds = %cond.end695.if.then698_crit_edge, %if.then686.if.then698_crit_edge
  %cond6963760 = phi ptr [ %call694, %cond.end695.if.then698_crit_edge ], [ %call689, %if.then686.if.then698_crit_edge ]
  %83 = ptrtoint ptr %frontend682 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %frontend682, align 4
  %call702 = tail call ptr %cond6963760(ptr noundef %84, i32 noundef 99, ptr noundef %i2c_adap668, i32 noundef 0) #5
  %cmp703 = icmp eq ptr %call702, null
  br i1 %cmp703, label %if.then704, label %if.end721

if.then704:                                       ; preds = %if.then698
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @__symbol_put(ptr noundef nonnull @.str.72) #5
  br label %do.end718

do.end709:                                        ; preds = %cond.end695
  call void @__sanitizer_cov_trace_pc() #7
  %call711 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.75) #8
  br label %do.end718

do.end718:                                        ; preds = %do.end709, %if.then704
  %call720 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.78, ptr noundef nonnull @.str.2) #8
  br label %detach_frontend

if.end721:                                        ; preds = %if.then698
  %call724 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.80) #5
  %tobool725.not = icmp eq ptr %call724, null
  br i1 %tobool725.not, label %cond.end730, label %if.end721.if.then733_crit_edge

if.end721.if.then733_crit_edge:                   ; preds = %if.end721
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then733

cond.end730:                                      ; preds = %if.end721
  %call728 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.81) #5
  %call729 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.80) #5
  %tobool732.not = icmp eq ptr %call729, null
  br i1 %tobool732.not, label %do.end744, label %cond.end730.if.then733_crit_edge

cond.end730.if.then733_crit_edge:                 ; preds = %cond.end730
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then733

if.then733:                                       ; preds = %cond.end730.if.then733_crit_edge, %if.end721.if.then733_crit_edge
  %cond7313765 = phi ptr [ %call729, %cond.end730.if.then733_crit_edge ], [ %call724, %if.end721.if.then733_crit_edge ]
  %85 = ptrtoint ptr %frontend682 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %frontend682, align 4
  %call737 = tail call ptr %cond7313765(ptr noundef %86, ptr noundef %i2c_adap668, i8 noundef zeroext 8, i8 noundef zeroext 0, i8 noundef zeroext 0, i1 noundef zeroext false) #5
  %cmp738 = icmp eq ptr %call737, null
  br i1 %cmp738, label %if.then739, label %if.then733.if.end3023_crit_edge

if.then733.if.end3023_crit_edge:                  ; preds = %if.then733
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end3023

if.then739:                                       ; preds = %if.then733
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @__symbol_put(ptr noundef nonnull @.str.80) #5
  br label %do.end753

do.end744:                                        ; preds = %cond.end730
  call void @__sanitizer_cov_trace_pc() #7
  %call746 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.83) #8
  br label %do.end753

do.end753:                                        ; preds = %do.end744, %if.then739
  %call755 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.86, ptr noundef nonnull @.str.2) #8
  br label %detach_frontend

sw.bb759:                                         ; preds = %if.end23.sw.bb759_crit_edge, %if.end23.sw.bb759_crit_edge4070
  %call762 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.28) #5
  %tobool763.not = icmp eq ptr %call762, null
  br i1 %tobool763.not, label %cond.end768, label %sw.bb759.if.then771_crit_edge

sw.bb759.if.then771_crit_edge:                    ; preds = %sw.bb759
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then771

cond.end768:                                      ; preds = %sw.bb759
  %call766 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.29) #5
  %call767 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.28) #5
  %tobool770.not = icmp eq ptr %call767, null
  br i1 %tobool770.not, label %do.end780, label %cond.end768.if.then771_crit_edge

cond.end768.if.then771_crit_edge:                 ; preds = %cond.end768
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then771

if.then771:                                       ; preds = %cond.end768.if.then771_crit_edge, %sw.bb759.if.then771_crit_edge
  %cond7693770 = phi ptr [ %call767, %cond.end768.if.then771_crit_edge ], [ %call762, %sw.bb759.if.then771_crit_edge ]
  %i2c_adap772 = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 27
  %call773 = tail call ptr %cond7693770(ptr noundef nonnull @ads_tech_duo_config, ptr noundef %i2c_adap772) #5
  %cmp774 = icmp eq ptr %call773, null
  br i1 %cmp774, label %if.then775, label %if.then790

if.then775:                                       ; preds = %if.then771
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @__symbol_put(ptr noundef nonnull @.str.28) #5
  br label %do.end832

do.end780:                                        ; preds = %cond.end768
  call void @__sanitizer_cov_trace_pc() #7
  %call782 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31) #8
  br label %do.end832

if.then790:                                       ; preds = %if.then771
  %frontend786 = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call6, i32 0, i32 2, i32 1
  %87 = ptrtoint ptr %frontend786 to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %call773, ptr %frontend786, align 4
  %call793 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.90) #5
  %tobool794.not = icmp eq ptr %call793, null
  br i1 %tobool794.not, label %cond.end799, label %if.then790.if.then802_crit_edge

if.then790.if.then802_crit_edge:                  ; preds = %if.then790
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then802

cond.end799:                                      ; preds = %if.then790
  %call797 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.91) #5
  %call798 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.90) #5
  %tobool801.not = icmp eq ptr %call798, null
  br i1 %tobool801.not, label %do.end814, label %cond.end799.if.then802_crit_edge

cond.end799.if.then802_crit_edge:                 ; preds = %cond.end799
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then802

if.then802:                                       ; preds = %cond.end799.if.then802_crit_edge, %if.then790.if.then802_crit_edge
  %cond8003776 = phi ptr [ %call798, %cond.end799.if.then802_crit_edge ], [ %call793, %if.then790.if.then802_crit_edge ]
  %88 = ptrtoint ptr %frontend786 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %frontend786, align 4
  %90 = load i8, ptr getelementptr inbounds (%struct.tda1004x_config, ptr @ads_tech_duo_config, i32 0, i32 8), align 4
  %conv = zext i8 %90 to i32
  %call806 = tail call ptr %cond8003776(ptr noundef %89, i32 noundef %conv, ptr noundef %i2c_adap772, ptr noundef nonnull @ads_duo_cfg) #5
  %cmp807 = icmp eq ptr %call806, null
  br i1 %cmp807, label %if.then809, label %if.then802.if.end3023_crit_edge

if.then802.if.end3023_crit_edge:                  ; preds = %if.then802
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end3023

if.then809:                                       ; preds = %if.then802
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @__symbol_put(ptr noundef nonnull @.str.90) #5
  br label %do.end824

do.end814:                                        ; preds = %cond.end799
  call void @__sanitizer_cov_trace_pc() #7
  %call816 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.93) #8
  br label %do.end824

do.end824:                                        ; preds = %do.end814, %if.then809
  %91 = load i8, ptr getelementptr inbounds (%struct.tda1004x_config, ptr @ads_tech_duo_config, i32 0, i32 8), align 4
  %conv826 = zext i8 %91 to i32
  %call827 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.96, i32 noundef %conv826) #8
  br label %detach_frontend

do.end832:                                        ; preds = %do.end780, %if.then775
  %frontend7863772 = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call6, i32 0, i32 2, i32 1
  %92 = ptrtoint ptr %frontend7863772 to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr null, ptr %frontend7863772, align 4
  %call834 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.99) #8
  br label %if.end3023

sw.bb836:                                         ; preds = %if.end23
  %call837 = tail call fastcc i32 @configure_tda827x_fe(ptr noundef %dev, ptr noundef nonnull @tevion_dvbt220rf_config, ptr noundef nonnull @tda827x_cfg_0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call837)
  %cmp838 = icmp slt i32 %call837, 0
  br i1 %cmp838, label %sw.bb836.detach_frontend_crit_edge, label %sw.bb836.if.end3023_crit_edge

sw.bb836.if.end3023_crit_edge:                    ; preds = %sw.bb836
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end3023

sw.bb836.detach_frontend_crit_edge:               ; preds = %sw.bb836
  call void @__sanitizer_cov_trace_pc() #7
  br label %detach_frontend

sw.bb842:                                         ; preds = %if.end23
  %93 = load i32, ptr @use_frontend, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %93)
  %tobool843.not = icmp eq i32 %93, 0
  br i1 %tobool843.not, label %if.then844, label %if.else850

if.then844:                                       ; preds = %sw.bb842
  %call845 = tail call fastcc i32 @configure_tda827x_fe(ptr noundef %dev, ptr noundef nonnull @md8800_dvbt_config, ptr noundef nonnull @tda827x_cfg_0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call845)
  %cmp846 = icmp slt i32 %call845, 0
  br i1 %cmp846, label %if.then844.detach_frontend_crit_edge, label %if.then844.if.end3023_crit_edge

if.then844.if.end3023_crit_edge:                  ; preds = %if.then844
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end3023

if.then844.detach_frontend_crit_edge:             ; preds = %if.then844
  call void @__sanitizer_cov_trace_pc() #7
  br label %detach_frontend

if.else850:                                       ; preds = %sw.bb842
  %call853 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.67) #5
  %tobool854.not = icmp eq ptr %call853, null
  br i1 %tobool854.not, label %cond.end859, label %if.else850.if.then862_crit_edge

if.else850.if.then862_crit_edge:                  ; preds = %if.else850
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then862

cond.end859:                                      ; preds = %if.else850
  %call857 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.68) #5
  %call858 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.67) #5
  %tobool861.not = icmp eq ptr %call858, null
  br i1 %tobool861.not, label %do.end872, label %cond.end859.if.then862_crit_edge

cond.end859.if.then862_crit_edge:                 ; preds = %cond.end859
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then862

if.then862:                                       ; preds = %cond.end859.if.then862_crit_edge, %if.else850.if.then862_crit_edge
  %cond8603781 = phi ptr [ %call858, %cond.end859.if.then862_crit_edge ], [ %call853, %if.else850.if.then862_crit_edge ]
  %i2c_adap863 = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 27
  %call864 = tail call ptr %cond8603781(ptr noundef nonnull @flydvbs, ptr noundef %i2c_adap863) #5
  %cmp865 = icmp eq ptr %call864, null
  br i1 %cmp865, label %if.then867, label %if.then882

if.then867:                                       ; preds = %if.then862
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @__symbol_put(ptr noundef nonnull @.str.67) #5
  br label %if.end875.thread

do.end872:                                        ; preds = %cond.end859
  call void @__sanitizer_cov_trace_pc() #7
  %call874 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.70) #8
  br label %if.end875.thread

if.end875.thread:                                 ; preds = %do.end872, %if.then867
  %frontend8783783 = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call6, i32 0, i32 2, i32 1
  %94 = ptrtoint ptr %frontend8783783 to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr null, ptr %frontend8783783, align 4
  br label %if.end3023

if.then882:                                       ; preds = %if.then862
  %frontend878 = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call6, i32 0, i32 2, i32 1
  %95 = ptrtoint ptr %frontend878 to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr %call864, ptr %frontend878, align 4
  %arrayidx = getelementptr %struct.saa7134_dev, ptr %dev, i32 0, i32 29, i32 2
  %96 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %arrayidx, align 2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data) #5
  %98 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 -60, ptr %data, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg) #5
  %99 = call ptr @memcpy(ptr %msg, ptr @__const.dvb_init.msg, i32 12)
  %call887 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.72) #5
  %tobool888.not = icmp eq ptr %call887, null
  br i1 %tobool888.not, label %cond.end893, label %if.then882.if.then896_crit_edge

if.then882.if.then896_crit_edge:                  ; preds = %if.then882
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then896

cond.end893:                                      ; preds = %if.then882
  %call891 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.73) #5
  %call892 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.72) #5
  %tobool895.not = icmp eq ptr %call892, null
  br i1 %tobool895.not, label %do.end908, label %cond.end893.if.then896_crit_edge

cond.end893.if.then896_crit_edge:                 ; preds = %cond.end893
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then896

if.then896:                                       ; preds = %cond.end893.if.then896_crit_edge, %if.then882.if.then896_crit_edge
  %cond8943787 = phi ptr [ %call892, %cond.end893.if.then896_crit_edge ], [ %call887, %if.then882.if.then896_crit_edge ]
  %100 = ptrtoint ptr %frontend878 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %frontend878, align 4
  %call900 = tail call ptr %cond8943787(ptr noundef %101, i32 noundef 96, ptr noundef %i2c_adap863, i32 noundef 0) #5
  %cmp901 = icmp eq ptr %call900, null
  br i1 %cmp901, label %if.then903, label %if.end921

if.then903:                                       ; preds = %if.then896
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @__symbol_put(ptr noundef nonnull @.str.72) #5
  br label %cleanup

do.end908:                                        ; preds = %cond.end893
  call void @__sanitizer_cov_trace_pc() #7
  %call910 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.75) #8
  br label %cleanup

if.end921:                                        ; preds = %if.then896
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %97)
  %cmp923.not = icmp eq i8 %97, 8
  br i1 %cmp923.not, label %if.else980, label %if.then925

if.then925:                                       ; preds = %if.end921
  %i2c_gate_ctrl927 = getelementptr inbounds %struct.dvb_frontend, ptr %call864, i32 0, i32 1, i32 28
  %102 = ptrtoint ptr %i2c_gate_ctrl927 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %i2c_gate_ctrl927, align 4
  %call928 = tail call i32 %103(ptr noundef nonnull %call864, i32 noundef 1) #5
  %call931 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.108) #5
  %tobool932.not = icmp eq ptr %call931, null
  br i1 %tobool932.not, label %cond.end937, label %if.then925.if.then940_crit_edge

if.then925.if.then940_crit_edge:                  ; preds = %if.then925
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then940

cond.end937:                                      ; preds = %if.then925
  %call935 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.109) #5
  %call936 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.108) #5
  %tobool939.not = icmp eq ptr %call936, null
  br i1 %tobool939.not, label %do.end950, label %cond.end937.if.then940_crit_edge

cond.end937.if.then940_crit_edge:                 ; preds = %cond.end937
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then940

if.then940:                                       ; preds = %cond.end937.if.then940_crit_edge, %if.then925.if.then940_crit_edge
  %cond9383792 = phi ptr [ %call936, %cond.end937.if.then940_crit_edge ], [ %call931, %if.then925.if.then940_crit_edge ]
  %call942 = tail call ptr %cond9383792(ptr noundef nonnull %call864, ptr noundef %i2c_adap863, i8 noundef zeroext 8, i8 noundef zeroext 0, i8 noundef zeroext 0) #5
  %cmp943 = icmp eq ptr %call942, null
  br i1 %cmp943, label %if.then945, label %if.end963

if.then945:                                       ; preds = %if.then940
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @__symbol_put(ptr noundef nonnull @.str.108) #5
  br label %cleanup

do.end950:                                        ; preds = %cond.end937
  call void @__sanitizer_cov_trace_pc() #7
  %call952 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.111) #8
  br label %cleanup

if.end963:                                        ; preds = %if.then940
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %97)
  %cmp965 = icmp eq i8 %97, 7
  br i1 %cmp965, label %if.then967, label %if.end963.if.end970_crit_edge

if.end963.if.end970_crit_edge:                    ; preds = %if.end963
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end970

if.then967:                                       ; preds = %if.end963
  call void @__sanitizer_cov_trace_pc() #7
  %buf = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 3
  %104 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr %data, ptr %buf, align 4
  %call969 = call i32 @i2c_transfer(ptr noundef %i2c_adap863, ptr noundef nonnull %msg, i32 noundef 1) #5
  br label %if.end970

if.end970:                                        ; preds = %if.then967, %if.end963.if.end970_crit_edge
  %105 = ptrtoint ptr %i2c_gate_ctrl927 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %i2c_gate_ctrl927, align 4
  %call973 = call i32 %106(ptr noundef nonnull %call864, i32 noundef 0) #5
  %set_voltage = getelementptr inbounds %struct.dvb_frontend, ptr %call864, i32 0, i32 1, i32 25
  %107 = ptrtoint ptr %set_voltage to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %set_voltage, align 4
  %original_set_voltage = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 99
  %109 = ptrtoint ptr %original_set_voltage to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr %108, ptr %original_set_voltage, align 8
  store ptr @md8800_set_voltage, ptr %set_voltage, align 4
  %enable_high_lnb_voltage = getelementptr inbounds %struct.dvb_frontend, ptr %call864, i32 0, i32 1, i32 26
  %110 = ptrtoint ptr %enable_high_lnb_voltage to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %enable_high_lnb_voltage, align 4
  %original_set_high_voltage = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 100
  %112 = ptrtoint ptr %original_set_high_voltage to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr %111, ptr %original_set_high_voltage, align 4
  store ptr @md8800_set_high_voltage, ptr %enable_high_lnb_voltage, align 4
  br label %cleanup.thread

if.else980:                                       ; preds = %if.end921
  call void @__sanitizer_cov_trace_pc() #7
  %set_voltage982 = getelementptr inbounds %struct.dvb_frontend, ptr %call864, i32 0, i32 1, i32 25
  %113 = ptrtoint ptr %set_voltage982 to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr @md8800_set_voltage2, ptr %set_voltage982, align 4
  %enable_high_lnb_voltage984 = getelementptr inbounds %struct.dvb_frontend, ptr %call864, i32 0, i32 1, i32 26
  %114 = ptrtoint ptr %enable_high_lnb_voltage984 to i32
  call void @__asan_store4_noabort(i32 %114)
  store ptr @md8800_set_high_voltage2, ptr %enable_high_lnb_voltage984, align 4
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.else980, %if.end970
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data) #5
  br label %if.end3023

cleanup:                                          ; preds = %do.end950, %if.then945, %do.end908, %if.then903
  %.str.114.sink = phi ptr [ @.str.106, %if.then903 ], [ @.str.106, %do.end908 ], [ @.str.114, %if.then945 ], [ @.str.114, %do.end950 ]
  %call962 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.114.sink, ptr noundef nonnull @.str.2) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data) #5
  br label %detach_frontend

sw.bb991:                                         ; preds = %if.end23
  %call994 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.116) #5
  %tobool995.not = icmp eq ptr %call994, null
  br i1 %tobool995.not, label %cond.end1000, label %sw.bb991.if.then1003_crit_edge

sw.bb991.if.then1003_crit_edge:                   ; preds = %sw.bb991
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then1003

cond.end1000:                                     ; preds = %sw.bb991
  %call998 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.117) #5
  %call999 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.116) #5
  %tobool1002.not = icmp eq ptr %call999, null
  br i1 %tobool1002.not, label %do.end1013, label %cond.end1000.if.then1003_crit_edge

cond.end1000.if.then1003_crit_edge:               ; preds = %cond.end1000
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then1003

if.then1003:                                      ; preds = %cond.end1000.if.then1003_crit_edge, %sw.bb991.if.then1003_crit_edge
  %cond10013798 = phi ptr [ %call999, %cond.end1000.if.then1003_crit_edge ], [ %call994, %sw.bb991.if.then1003_crit_edge ]
  %i2c_adap1004 = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 27
  %call1005 = tail call ptr %cond10013798(ptr noundef nonnull @avertvhda180, ptr noundef %i2c_adap1004) #5
  %cmp1006 = icmp eq ptr %call1005, null
  br i1 %cmp1006, label %if.then1008, label %if.then1023

if.then1008:                                      ; preds = %if.then1003
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @__symbol_put(ptr noundef nonnull @.str.116) #5
  br label %if.end1016.thread

do.end1013:                                       ; preds = %cond.end1000
  call void @__sanitizer_cov_trace_pc() #7
  %call1015 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.119) #8
  br label %if.end1016.thread

if.end1016.thread:                                ; preds = %do.end1013, %if.then1008
  %frontend10193800 = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call6, i32 0, i32 2, i32 1
  %115 = ptrtoint ptr %frontend10193800 to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr null, ptr %frontend10193800, align 4
  br label %if.end3023

if.then1023:                                      ; preds = %if.then1003
  %frontend1019 = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call6, i32 0, i32 2, i32 1
  %116 = ptrtoint ptr %frontend1019 to i32
  call void @__asan_store4_noabort(i32 %116)
  store ptr %call1005, ptr %frontend1019, align 4
  %call1026 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.121) #5
  %tobool1027.not = icmp eq ptr %call1026, null
  br i1 %tobool1027.not, label %cond.end1032, label %if.then1023.if.then1035_crit_edge

if.then1023.if.then1035_crit_edge:                ; preds = %if.then1023
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then1035

cond.end1032:                                     ; preds = %if.then1023
  %call1030 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.122) #5
  %call1031 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.121) #5
  %tobool1034.not = icmp eq ptr %call1031, null
  br i1 %tobool1034.not, label %do.end1046, label %cond.end1032.if.then1035_crit_edge

cond.end1032.if.then1035_crit_edge:               ; preds = %cond.end1032
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then1035

if.then1035:                                      ; preds = %cond.end1032.if.then1035_crit_edge, %if.then1023.if.then1035_crit_edge
  %cond10333804 = phi ptr [ %call1031, %cond.end1032.if.then1035_crit_edge ], [ %call1026, %if.then1023.if.then1035_crit_edge ]
  %117 = ptrtoint ptr %frontend1019 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %frontend1019, align 4
  %call1038 = tail call ptr %cond10333804(ptr noundef %118, i32 noundef 97, ptr noundef null, i32 noundef 10) #5
  %cmp1039 = icmp eq ptr %call1038, null
  br i1 %cmp1039, label %if.then1041, label %if.then1035.if.end3023_crit_edge

if.then1035.if.end3023_crit_edge:                 ; preds = %if.then1035
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end3023

if.then1041:                                      ; preds = %if.then1035
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @__symbol_put(ptr noundef nonnull @.str.121) #5
  br label %if.end3023

do.end1046:                                       ; preds = %cond.end1032
  call void @__sanitizer_cov_trace_pc() #7
  %call1048 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.124) #8
  br label %if.end3023

sw.bb1052:                                        ; preds = %if.end23.sw.bb1052_crit_edge, %if.end23.sw.bb1052_crit_edge4071
  %call1055 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.116) #5
  %tobool1056.not = icmp eq ptr %call1055, null
  br i1 %tobool1056.not, label %cond.end1061, label %sw.bb1052.if.then1064_crit_edge

sw.bb1052.if.then1064_crit_edge:                  ; preds = %sw.bb1052
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then1064

cond.end1061:                                     ; preds = %sw.bb1052
  %call1059 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.117) #5
  %call1060 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.116) #5
  %tobool1063.not = icmp eq ptr %call1060, null
  br i1 %tobool1063.not, label %do.end1074, label %cond.end1061.if.then1064_crit_edge

cond.end1061.if.then1064_crit_edge:               ; preds = %cond.end1061
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then1064

if.then1064:                                      ; preds = %cond.end1061.if.then1064_crit_edge, %sw.bb1052.if.then1064_crit_edge
  %cond10623807 = phi ptr [ %call1060, %cond.end1061.if.then1064_crit_edge ], [ %call1055, %sw.bb1052.if.then1064_crit_edge ]
  %i2c_adap1065 = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 27
  %call1066 = tail call ptr %cond10623807(ptr noundef nonnull @kworldatsc110, ptr noundef %i2c_adap1065) #5
  %cmp1067 = icmp eq ptr %call1066, null
  br i1 %cmp1067, label %if.then1069, label %if.then1084

if.then1069:                                      ; preds = %if.then1064
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @__symbol_put(ptr noundef nonnull @.str.116) #5
  br label %if.end1077.thread

do.end1074:                                       ; preds = %cond.end1061
  call void @__sanitizer_cov_trace_pc() #7
  %call1076 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.119) #8
  br label %if.end1077.thread

if.end1077.thread:                                ; preds = %do.end1074, %if.then1069
  %frontend10803809 = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call6, i32 0, i32 2, i32 1
  %119 = ptrtoint ptr %frontend10803809 to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr null, ptr %frontend10803809, align 4
  br label %if.end3023

if.then1084:                                      ; preds = %if.then1064
  %frontend1080 = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call6, i32 0, i32 2, i32 1
  %120 = ptrtoint ptr %frontend1080 to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr %call1066, ptr %frontend1080, align 4
  %call1087 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.19) #5
  %tobool1088.not = icmp eq ptr %call1087, null
  br i1 %tobool1088.not, label %cond.end1093, label %if.then1084.if.then1096_crit_edge

if.then1084.if.then1096_crit_edge:                ; preds = %if.then1084
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then1096

cond.end1093:                                     ; preds = %if.then1084
  %call1091 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.20) #5
  %call1092 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.19) #5
  %tobool1095.not = icmp eq ptr %call1092, null
  br i1 %tobool1095.not, label %do.end1108, label %cond.end1093.if.then1096_crit_edge

cond.end1093.if.then1096_crit_edge:               ; preds = %cond.end1093
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then1096

if.then1096:                                      ; preds = %cond.end1093.if.then1096_crit_edge, %if.then1084.if.then1096_crit_edge
  %cond10943813 = phi ptr [ %call1092, %cond.end1093.if.then1096_crit_edge ], [ %call1087, %if.then1084.if.then1096_crit_edge ]
  %121 = ptrtoint ptr %frontend1080 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %frontend1080, align 4
  %call1100 = tail call ptr %cond10943813(ptr noundef %122, ptr noundef %i2c_adap1065, i8 noundef zeroext 97, i32 noundef 68) #5
  %cmp1101 = icmp eq ptr %call1100, null
  br i1 %cmp1101, label %if.then1103, label %if.then1096.if.end3023_crit_edge

if.then1096.if.end3023_crit_edge:                 ; preds = %if.then1096
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end3023

if.then1103:                                      ; preds = %if.then1096
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @__symbol_put(ptr noundef nonnull @.str.19) #5
  br label %if.end3023

do.end1108:                                       ; preds = %cond.end1093
  call void @__sanitizer_cov_trace_pc() #7
  %call1110 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22) #8
  br label %if.end3023

sw.bb1114:                                        ; preds = %if.end23
  tail call void @saa7134_set_gpio(ptr noundef %dev, i32 noundef 18, i32 noundef 1) #5
  %call1115 = tail call i32 @saa7134_tuner_callback(ptr noundef %dev, i32 noundef 0, i32 noundef 0, i32 noundef 1) #5
  %call1118 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.130) #5
  %tobool1119.not = icmp eq ptr %call1118, null
  br i1 %tobool1119.not, label %cond.end1124, label %sw.bb1114.if.then1127_crit_edge

sw.bb1114.if.then1127_crit_edge:                  ; preds = %sw.bb1114
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then1127

cond.end1124:                                     ; preds = %sw.bb1114
  %call1122 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.131) #5
  %call1123 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.130) #5
  %tobool1126.not = icmp eq ptr %call1123, null
  br i1 %tobool1126.not, label %do.end1137, label %cond.end1124.if.then1127_crit_edge

cond.end1124.if.then1127_crit_edge:               ; preds = %cond.end1124
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then1127

if.then1127:                                      ; preds = %cond.end1124.if.then1127_crit_edge, %sw.bb1114.if.then1127_crit_edge
  %cond11253816 = phi ptr [ %call1123, %cond.end1124.if.then1127_crit_edge ], [ %call1118, %sw.bb1114.if.then1127_crit_edge ]
  %i2c_adap1128 = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 27
  %call1129 = tail call ptr %cond11253816(ptr noundef nonnull @kworld_s5h1411_config, ptr noundef %i2c_adap1128) #5
  %cmp1130 = icmp eq ptr %call1129, null
  br i1 %cmp1130, label %if.then1132, label %if.then1148

if.then1132:                                      ; preds = %if.then1127
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @__symbol_put(ptr noundef nonnull @.str.130) #5
  br label %if.end1140.thread

do.end1137:                                       ; preds = %cond.end1124
  call void @__sanitizer_cov_trace_pc() #7
  %call1139 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.133) #8
  br label %if.end1140.thread

if.end1140.thread:                                ; preds = %do.end1137, %if.then1132
  %frontend11433818 = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call6, i32 0, i32 2, i32 1
  %123 = ptrtoint ptr %frontend11433818 to i32
  call void @__asan_store4_noabort(i32 %123)
  store ptr null, ptr %frontend11433818, align 4
  br label %if.end3023

if.then1148:                                      ; preds = %if.then1127
  %frontend1143 = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call6, i32 0, i32 2, i32 1
  %124 = ptrtoint ptr %frontend1143 to i32
  call void @__asan_store4_noabort(i32 %124)
  store ptr %call1129, ptr %frontend1143, align 4
  %call1151 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.48) #5
  %tobool1152.not = icmp eq ptr %call1151, null
  br i1 %tobool1152.not, label %cond.end1157, label %if.then1148.if.then1160_crit_edge

if.then1148.if.then1160_crit_edge:                ; preds = %if.then1148
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then1160

cond.end1157:                                     ; preds = %if.then1148
  %call1155 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.49) #5
  %call1156 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.48) #5
  %tobool1159.not = icmp eq ptr %call1156, null
  br i1 %tobool1159.not, label %do.end1172, label %cond.end1157.if.then1160_crit_edge

cond.end1157.if.then1160_crit_edge:               ; preds = %cond.end1157
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then1160

if.then1160:                                      ; preds = %cond.end1157.if.then1160_crit_edge, %if.then1148.if.then1160_crit_edge
  %cond11583822 = phi ptr [ %call1156, %cond.end1157.if.then1160_crit_edge ], [ %call1151, %if.then1148.if.then1160_crit_edge ]
  %125 = ptrtoint ptr %frontend1143 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %frontend1143, align 4
  %call1164 = tail call ptr %cond11583822(ptr noundef %126, ptr noundef %i2c_adap1128, i8 noundef zeroext 75, ptr noundef nonnull @tda829x_no_probe) #5
  %cmp1165 = icmp eq ptr %call1164, null
  br i1 %cmp1165, label %if.then1167, label %if.then1160.if.end1175_crit_edge

if.then1160.if.end1175_crit_edge:                 ; preds = %if.then1160
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end1175

if.then1167:                                      ; preds = %if.then1160
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @__symbol_put(ptr noundef nonnull @.str.48) #5
  br label %if.end1175

do.end1172:                                       ; preds = %cond.end1157
  call void @__sanitizer_cov_trace_pc() #7
  %call1174 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51) #8
  br label %if.end1175

if.end1175:                                       ; preds = %do.end1172, %if.then1167, %if.then1160.if.end1175_crit_edge
  %call1179 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.53) #5
  %tobool1180.not = icmp eq ptr %call1179, null
  br i1 %tobool1180.not, label %cond.end1185, label %if.end1175.if.then1188_crit_edge

if.end1175.if.then1188_crit_edge:                 ; preds = %if.end1175
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then1188

cond.end1185:                                     ; preds = %if.end1175
  %call1183 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.54) #5
  %call1184 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.53) #5
  %tobool1187.not = icmp eq ptr %call1184, null
  br i1 %tobool1187.not, label %do.end1200, label %cond.end1185.if.then1188_crit_edge

cond.end1185.if.then1188_crit_edge:               ; preds = %cond.end1185
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then1188

if.then1188:                                      ; preds = %cond.end1185.if.then1188_crit_edge, %if.end1175.if.then1188_crit_edge
  %cond11863825 = phi ptr [ %call1184, %cond.end1185.if.then1188_crit_edge ], [ %call1179, %if.end1175.if.then1188_crit_edge ]
  %127 = ptrtoint ptr %frontend1143 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %frontend1143, align 4
  %call1192 = tail call ptr %cond11863825(ptr noundef %128, i8 noundef zeroext 96, ptr noundef %i2c_adap1128, ptr noundef nonnull @kworld_pc150u_tda18271_config) #5
  %cmp1193 = icmp eq ptr %call1192, null
  br i1 %cmp1193, label %if.then1195, label %if.then1188.if.end3023_crit_edge

if.then1188.if.end3023_crit_edge:                 ; preds = %if.then1188
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end3023

if.then1195:                                      ; preds = %if.then1188
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @__symbol_put(ptr noundef nonnull @.str.53) #5
  br label %if.end3023

do.end1200:                                       ; preds = %cond.end1185
  call void @__sanitizer_cov_trace_pc() #7
  %call1202 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56) #8
  br label %if.end3023

sw.bb1206:                                        ; preds = %if.end23
  %call1209 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.67) #5
  %tobool1210.not = icmp eq ptr %call1209, null
  br i1 %tobool1210.not, label %cond.end1215, label %sw.bb1206.if.then1218_crit_edge

sw.bb1206.if.then1218_crit_edge:                  ; preds = %sw.bb1206
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then1218

cond.end1215:                                     ; preds = %sw.bb1206
  %call1213 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.68) #5
  %call1214 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.67) #5
  %tobool1217.not = icmp eq ptr %call1214, null
  br i1 %tobool1217.not, label %do.end1228, label %cond.end1215.if.then1218_crit_edge

cond.end1215.if.then1218_crit_edge:               ; preds = %cond.end1215
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then1218

if.then1218:                                      ; preds = %cond.end1215.if.then1218_crit_edge, %sw.bb1206.if.then1218_crit_edge
  %cond12163828 = phi ptr [ %call1214, %cond.end1215.if.then1218_crit_edge ], [ %call1209, %sw.bb1206.if.then1218_crit_edge ]
  %i2c_adap1219 = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 27
  %call1220 = tail call ptr %cond12163828(ptr noundef nonnull @flydvbs, ptr noundef %i2c_adap1219) #5
  %cmp1221 = icmp eq ptr %call1220, null
  br i1 %cmp1221, label %if.then1223, label %if.then1238

if.then1223:                                      ; preds = %if.then1218
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @__symbol_put(ptr noundef nonnull @.str.67) #5
  br label %if.end1231.thread

do.end1228:                                       ; preds = %cond.end1215
  call void @__sanitizer_cov_trace_pc() #7
  %call1230 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.70) #8
  br label %if.end1231.thread

if.end1231.thread:                                ; preds = %do.end1228, %if.then1223
  %frontend12343830 = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call6, i32 0, i32 2, i32 1
  %129 = ptrtoint ptr %frontend12343830 to i32
  call void @__asan_store4_noabort(i32 %129)
  store ptr null, ptr %frontend12343830, align 4
  br label %if.end3023

if.then1238:                                      ; preds = %if.then1218
  %frontend1234 = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call6, i32 0, i32 2, i32 1
  %130 = ptrtoint ptr %frontend1234 to i32
  call void @__asan_store4_noabort(i32 %130)
  store ptr %call1220, ptr %frontend1234, align 4
  %call1241 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.72) #5
  %tobool1242.not = icmp eq ptr %call1241, null
  br i1 %tobool1242.not, label %cond.end1247, label %if.then1238.if.then1250_crit_edge

if.then1238.if.then1250_crit_edge:                ; preds = %if.then1238
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then1250

cond.end1247:                                     ; preds = %if.then1238
  %call1245 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.73) #5
  %call1246 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.72) #5
  %tobool1249.not = icmp eq ptr %call1246, null
  br i1 %tobool1249.not, label %do.end1262, label %cond.end1247.if.then1250_crit_edge

cond.end1247.if.then1250_crit_edge:               ; preds = %cond.end1247
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then1250

if.then1250:                                      ; preds = %cond.end1247.if.then1250_crit_edge, %if.then1238.if.then1250_crit_edge
  %cond12483834 = phi ptr [ %call1246, %cond.end1247.if.then1250_crit_edge ], [ %call1241, %if.then1238.if.then1250_crit_edge ]
  %131 = ptrtoint ptr %frontend1234 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %frontend1234, align 4
  %call1254 = tail call ptr %cond12483834(ptr noundef %132, i32 noundef 96, ptr noundef %i2c_adap1219, i32 noundef 0) #5
  %cmp1255 = icmp eq ptr %call1254, null
  br i1 %cmp1255, label %if.then1257, label %if.end1275

if.then1257:                                      ; preds = %if.then1250
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @__symbol_put(ptr noundef nonnull @.str.72) #5
  br label %do.end1272

do.end1262:                                       ; preds = %cond.end1247
  call void @__sanitizer_cov_trace_pc() #7
  %call1264 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.75) #8
  br label %do.end1272

do.end1272:                                       ; preds = %do.end1262, %if.then1257
  %call1274 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.144, ptr noundef nonnull @.str.2) #8
  br label %detach_frontend

if.end1275:                                       ; preds = %if.then1250
  %call1278 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.80) #5
  %tobool1279.not = icmp eq ptr %call1278, null
  br i1 %tobool1279.not, label %cond.end1284, label %if.end1275.if.then1287_crit_edge

if.end1275.if.then1287_crit_edge:                 ; preds = %if.end1275
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then1287

cond.end1284:                                     ; preds = %if.end1275
  %call1282 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.81) #5
  %call1283 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.80) #5
  %tobool1286.not = icmp eq ptr %call1283, null
  br i1 %tobool1286.not, label %do.end1299, label %cond.end1284.if.then1287_crit_edge

cond.end1284.if.then1287_crit_edge:               ; preds = %cond.end1284
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then1287

if.then1287:                                      ; preds = %cond.end1284.if.then1287_crit_edge, %if.end1275.if.then1287_crit_edge
  %cond12853839 = phi ptr [ %call1283, %cond.end1284.if.then1287_crit_edge ], [ %call1278, %if.end1275.if.then1287_crit_edge ]
  %133 = ptrtoint ptr %frontend1234 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %frontend1234, align 4
  %call1291 = tail call ptr %cond12853839(ptr noundef %134, ptr noundef %i2c_adap1219, i8 noundef zeroext 8, i8 noundef zeroext 0, i8 noundef zeroext 0, i1 noundef zeroext false) #5
  %cmp1292 = icmp eq ptr %call1291, null
  br i1 %cmp1292, label %if.then1294, label %if.then1287.if.end3023_crit_edge

if.then1287.if.end3023_crit_edge:                 ; preds = %if.then1287
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end3023

if.then1294:                                      ; preds = %if.then1287
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @__symbol_put(ptr noundef nonnull @.str.80) #5
  br label %do.end1309

do.end1299:                                       ; preds = %cond.end1284
  call void @__sanitizer_cov_trace_pc() #7
  %call1301 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.83) #8
  br label %do.end1309

do.end1309:                                       ; preds = %do.end1299, %if.then1294
  %call1311 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.149, ptr noundef nonnull @.str.2) #8
  br label %detach_frontend

sw.bb1314:                                        ; preds = %if.end23
  %call1317 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.28) #5
  %tobool1318.not = icmp eq ptr %call1317, null
  br i1 %tobool1318.not, label %cond.end1323, label %sw.bb1314.if.then1326_crit_edge

sw.bb1314.if.then1326_crit_edge:                  ; preds = %sw.bb1314
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then1326

cond.end1323:                                     ; preds = %sw.bb1314
  %call1321 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.29) #5
  %call1322 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.28) #5
  %tobool1325.not = icmp eq ptr %call1322, null
  br i1 %tobool1325.not, label %do.end1336, label %cond.end1323.if.then1326_crit_edge

cond.end1323.if.then1326_crit_edge:               ; preds = %cond.end1323
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then1326

if.then1326:                                      ; preds = %cond.end1323.if.then1326_crit_edge, %sw.bb1314.if.then1326_crit_edge
  %cond13243844 = phi ptr [ %call1322, %cond.end1323.if.then1326_crit_edge ], [ %call1317, %sw.bb1314.if.then1326_crit_edge ]
  %i2c_adap1327 = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 27
  %call1328 = tail call ptr %cond13243844(ptr noundef nonnull @medion_cardbus, ptr noundef %i2c_adap1327) #5
  %cmp1329 = icmp eq ptr %call1328, null
  br i1 %cmp1329, label %if.then1331, label %if.then1346

if.then1331:                                      ; preds = %if.then1326
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @__symbol_put(ptr noundef nonnull @.str.28) #5
  br label %if.end1339.thread

do.end1336:                                       ; preds = %cond.end1323
  call void @__sanitizer_cov_trace_pc() #7
  %call1338 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31) #8
  br label %if.end1339.thread

if.end1339.thread:                                ; preds = %do.end1336, %if.then1331
  %frontend13423846 = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call6, i32 0, i32 2, i32 1
  %135 = ptrtoint ptr %frontend13423846 to i32
  call void @__asan_store4_noabort(i32 %135)
  store ptr null, ptr %frontend13423846, align 4
  br label %if.end3023

if.then1346:                                      ; preds = %if.then1326
  %frontend1342 = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call6, i32 0, i32 2, i32 1
  %136 = ptrtoint ptr %frontend1342 to i32
  call void @__asan_store4_noabort(i32 %136)
  store ptr %call1328, ptr %frontend1342, align 4
  %sleep1350 = getelementptr inbounds %struct.dvb_frontend, ptr %call1328, i32 0, i32 1, i32 6
  %137 = ptrtoint ptr %sleep1350 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %sleep1350, align 4
  %original_demod_sleep1351 = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 98
  %139 = ptrtoint ptr %original_demod_sleep1351 to i32
  call void @__asan_store4_noabort(i32 %139)
  store ptr %138, ptr %original_demod_sleep1351, align 4
  %140 = load ptr, ptr %frontend1342, align 4
  %sleep1355 = getelementptr inbounds %struct.dvb_frontend, ptr %140, i32 0, i32 1, i32 6
  %141 = ptrtoint ptr %sleep1355 to i32
  call void @__asan_store4_noabort(i32 %141)
  store ptr @philips_europa_demod_sleep, ptr %sleep1355, align 4
  %call1358 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.19) #5
  %tobool1359.not = icmp eq ptr %call1358, null
  br i1 %tobool1359.not, label %cond.end1364, label %if.then1346.if.then1367_crit_edge

if.then1346.if.then1367_crit_edge:                ; preds = %if.then1346
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then1367

cond.end1364:                                     ; preds = %if.then1346
  %call1362 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.20) #5
  %call1363 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.19) #5
  %tobool1366.not = icmp eq ptr %call1363, null
  br i1 %tobool1366.not, label %do.end1379, label %cond.end1364.if.then1367_crit_edge

cond.end1364.if.then1367_crit_edge:               ; preds = %cond.end1364
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then1367

if.then1367:                                      ; preds = %cond.end1364.if.then1367_crit_edge, %if.then1346.if.then1367_crit_edge
  %cond13653850 = phi ptr [ %call1363, %cond.end1364.if.then1367_crit_edge ], [ %call1358, %if.then1346.if.then1367_crit_edge ]
  %142 = ptrtoint ptr %frontend1342 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %frontend1342, align 4
  %144 = load i8, ptr getelementptr inbounds (%struct.tda1004x_config, ptr @medion_cardbus, i32 0, i32 8), align 4
  %call1371 = tail call ptr %cond13653850(ptr noundef %143, ptr noundef %i2c_adap1327, i8 noundef zeroext %144, i32 noundef 63) #5
  %cmp1372 = icmp eq ptr %call1371, null
  br i1 %cmp1372, label %if.then1374, label %if.then1367.if.end3023_crit_edge

if.then1367.if.end3023_crit_edge:                 ; preds = %if.then1367
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end3023

if.then1374:                                      ; preds = %if.then1367
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @__symbol_put(ptr noundef nonnull @.str.19) #5
  br label %if.end3023

do.end1379:                                       ; preds = %cond.end1364
  call void @__sanitizer_cov_trace_pc() #7
  %call1381 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22) #8
  br label %if.end3023

sw.bb1385:                                        ; preds = %if.end23
  %call1388 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.28) #5
  %tobool1389.not = icmp eq ptr %call1388, null
  br i1 %tobool1389.not, label %cond.end1394, label %sw.bb1385.if.then1397_crit_edge

sw.bb1385.if.then1397_crit_edge:                  ; preds = %sw.bb1385
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then1397

cond.end1394:                                     ; preds = %sw.bb1385
  %call1392 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.29) #5
  %call1393 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.28) #5
  %tobool1396.not = icmp eq ptr %call1393, null
  br i1 %tobool1396.not, label %do.end1407, label %cond.end1394.if.then1397_crit_edge

cond.end1394.if.then1397_crit_edge:               ; preds = %cond.end1394
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then1397

if.then1397:                                      ; preds = %cond.end1394.if.then1397_crit_edge, %sw.bb1385.if.then1397_crit_edge
  %cond13953853 = phi ptr [ %call1393, %cond.end1394.if.then1397_crit_edge ], [ %call1388, %sw.bb1385.if.then1397_crit_edge ]
  %i2c_adap1398 = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 27
  %call1399 = tail call ptr %cond13953853(ptr noundef nonnull @philips_europa_config, ptr noundef %i2c_adap1398) #5
  %cmp1400 = icmp eq ptr %call1399, null
  br i1 %cmp1400, label %if.then1402, label %if.then1417

if.then1402:                                      ; preds = %if.then1397
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @__symbol_put(ptr noundef nonnull @.str.28) #5
  br label %if.end1410.thread

do.end1407:                                       ; preds = %cond.end1394
  call void @__sanitizer_cov_trace_pc() #7
  %call1409 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31) #8
  br label %if.end1410.thread

if.end1410.thread:                                ; preds = %do.end1407, %if.then1402
  %frontend14133855 = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call6, i32 0, i32 2, i32 1
  %145 = ptrtoint ptr %frontend14133855 to i32
  call void @__asan_store4_noabort(i32 %145)
  store ptr null, ptr %frontend14133855, align 4
  br label %if.end3023

if.then1417:                                      ; preds = %if.then1397
  call void @__sanitizer_cov_trace_pc() #7
  %frontend1413 = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call6, i32 0, i32 2, i32 1
  %146 = ptrtoint ptr %frontend1413 to i32
  call void @__asan_store4_noabort(i32 %146)
  store ptr %call1399, ptr %frontend1413, align 4
  %init1422 = getelementptr inbounds %struct.dvb_frontend, ptr %call1399, i32 0, i32 1, i32 32, i32 2
  %147 = ptrtoint ptr %init1422 to i32
  call void @__asan_store4_noabort(i32 %147)
  store ptr @philips_td1316_tuner_init, ptr %init1422, align 4
  %148 = load ptr, ptr %frontend1413, align 4
  %set_params1427 = getelementptr inbounds %struct.dvb_frontend, ptr %148, i32 0, i32 1, i32 32, i32 6
  %149 = ptrtoint ptr %set_params1427 to i32
  call void @__asan_store4_noabort(i32 %149)
  store ptr @philips_td1316_tuner_set_params, ptr %set_params1427, align 4
  br label %if.end3023

sw.bb1429:                                        ; preds = %if.end23
  %call1430 = tail call fastcc i32 @configure_tda827x_fe(ptr noundef %dev, ptr noundef nonnull @cinergy_ht_config, ptr noundef nonnull @tda827x_cfg_0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1430)
  %cmp1431 = icmp slt i32 %call1430, 0
  br i1 %cmp1431, label %sw.bb1429.detach_frontend_crit_edge, label %sw.bb1429.if.end3023_crit_edge

sw.bb1429.if.end3023_crit_edge:                   ; preds = %sw.bb1429
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end3023

sw.bb1429.detach_frontend_crit_edge:              ; preds = %sw.bb1429
  call void @__sanitizer_cov_trace_pc() #7
  br label %detach_frontend

sw.bb1435:                                        ; preds = %if.end23
  %call1436 = tail call fastcc i32 @configure_tda827x_fe(ptr noundef %dev, ptr noundef nonnull @cinergy_ht_pci_config, ptr noundef nonnull @tda827x_cfg_0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1436)
  %cmp1437 = icmp slt i32 %call1436, 0
  br i1 %cmp1437, label %sw.bb1435.detach_frontend_crit_edge, label %sw.bb1435.if.end3023_crit_edge

sw.bb1435.if.end3023_crit_edge:                   ; preds = %sw.bb1435
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end3023

sw.bb1435.detach_frontend_crit_edge:              ; preds = %sw.bb1435
  call void @__sanitizer_cov_trace_pc() #7
  br label %detach_frontend

sw.bb1441:                                        ; preds = %if.end23
  %call1442 = tail call fastcc i32 @configure_tda827x_fe(ptr noundef %dev, ptr noundef nonnull @philips_tiger_s_config, ptr noundef nonnull @tda827x_cfg_2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1442)
  %cmp1443 = icmp slt i32 %call1442, 0
  br i1 %cmp1443, label %sw.bb1441.detach_frontend_crit_edge, label %sw.bb1441.if.end3023_crit_edge

sw.bb1441.if.end3023_crit_edge:                   ; preds = %sw.bb1441
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end3023

sw.bb1441.detach_frontend_crit_edge:              ; preds = %sw.bb1441
  call void @__sanitizer_cov_trace_pc() #7
  br label %detach_frontend

sw.bb1447:                                        ; preds = %if.end23
  %call1448 = tail call fastcc i32 @configure_tda827x_fe(ptr noundef %dev, ptr noundef nonnull @asus_p7131_4871_config, ptr noundef nonnull @tda827x_cfg_2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1448)
  %cmp1449 = icmp slt i32 %call1448, 0
  br i1 %cmp1449, label %sw.bb1447.detach_frontend_crit_edge, label %sw.bb1447.if.end3023_crit_edge

sw.bb1447.if.end3023_crit_edge:                   ; preds = %sw.bb1447
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end3023

sw.bb1447.detach_frontend_crit_edge:              ; preds = %sw.bb1447
  call void @__sanitizer_cov_trace_pc() #7
  br label %detach_frontend

sw.bb1453:                                        ; preds = %if.end23
  %call1454 = tail call fastcc i32 @configure_tda827x_fe(ptr noundef %dev, ptr noundef nonnull @asus_p7131_hybrid_lna_config, ptr noundef nonnull @tda827x_cfg_2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1454)
  %cmp1455 = icmp slt i32 %call1454, 0
  br i1 %cmp1455, label %sw.bb1453.detach_frontend_crit_edge, label %sw.bb1453.if.end3023_crit_edge

sw.bb1453.if.end3023_crit_edge:                   ; preds = %sw.bb1453
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end3023

sw.bb1453.detach_frontend_crit_edge:              ; preds = %sw.bb1453
  call void @__sanitizer_cov_trace_pc() #7
  br label %detach_frontend

sw.bb1459:                                        ; preds = %if.end23
  %call1460 = tail call fastcc i32 @configure_tda827x_fe(ptr noundef %dev, ptr noundef nonnull @avermedia_super_007_config, ptr noundef nonnull @tda827x_cfg_0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1460)
  %cmp1461 = icmp slt i32 %call1460, 0
  br i1 %cmp1461, label %sw.bb1459.detach_frontend_crit_edge, label %sw.bb1459.if.end3023_crit_edge

sw.bb1459.if.end3023_crit_edge:                   ; preds = %sw.bb1459
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end3023

sw.bb1459.detach_frontend_crit_edge:              ; preds = %sw.bb1459
  call void @__sanitizer_cov_trace_pc() #7
  br label %detach_frontend

sw.bb1465:                                        ; preds = %if.end23
  %call1466 = tail call fastcc i32 @configure_tda827x_fe(ptr noundef %dev, ptr noundef nonnull @twinhan_dtv_dvb_3056_config, ptr noundef nonnull @tda827x_cfg_2_sw42)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1466)
  %cmp1467 = icmp slt i32 %call1466, 0
  br i1 %cmp1467, label %sw.bb1465.detach_frontend_crit_edge, label %sw.bb1465.if.end3023_crit_edge

sw.bb1465.if.end3023_crit_edge:                   ; preds = %sw.bb1465
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end3023

sw.bb1465.detach_frontend_crit_edge:              ; preds = %sw.bb1465
  call void @__sanitizer_cov_trace_pc() #7
  br label %detach_frontend

sw.bb1471:                                        ; preds = %if.end23
  %call1474 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.67) #5
  %tobool1475.not = icmp eq ptr %call1474, null
  br i1 %tobool1475.not, label %cond.end1480, label %sw.bb1471.if.then1483_crit_edge

sw.bb1471.if.then1483_crit_edge:                  ; preds = %sw.bb1471
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then1483

cond.end1480:                                     ; preds = %sw.bb1471
  %call1478 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.68) #5
  %call1479 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.67) #5
  %tobool1482.not = icmp eq ptr %call1479, null
  br i1 %tobool1482.not, label %do.end1493, label %cond.end1480.if.then1483_crit_edge

cond.end1480.if.then1483_crit_edge:               ; preds = %cond.end1480
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then1483

if.then1483:                                      ; preds = %cond.end1480.if.then1483_crit_edge, %sw.bb1471.if.then1483_crit_edge
  %cond14813859 = phi ptr [ %call1479, %cond.end1480.if.then1483_crit_edge ], [ %call1474, %sw.bb1471.if.then1483_crit_edge ]
  %i2c_adap1484 = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 27
  %call1485 = tail call ptr %cond14813859(ptr noundef nonnull @flydvbs, ptr noundef %i2c_adap1484) #5
  %cmp1486 = icmp eq ptr %call1485, null
  br i1 %cmp1486, label %if.then1488, label %if.then1503

if.then1488:                                      ; preds = %if.then1483
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @__symbol_put(ptr noundef nonnull @.str.67) #5
  br label %if.end1496.thread

do.end1493:                                       ; preds = %cond.end1480
  call void @__sanitizer_cov_trace_pc() #7
  %call1495 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.70) #8
  br label %if.end1496.thread

if.end1496.thread:                                ; preds = %do.end1493, %if.then1488
  %frontend14993861 = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call6, i32 0, i32 2, i32 1
  %150 = ptrtoint ptr %frontend14993861 to i32
  call void @__asan_store4_noabort(i32 %150)
  store ptr null, ptr %frontend14993861, align 4
  br label %if.end3023

if.then1503:                                      ; preds = %if.then1483
  %frontend1499 = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call6, i32 0, i32 2, i32 1
  %151 = ptrtoint ptr %frontend1499 to i32
  call void @__asan_store4_noabort(i32 %151)
  store ptr %call1485, ptr %frontend1499, align 4
  %call1506 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.72) #5
  %tobool1507.not = icmp eq ptr %call1506, null
  br i1 %tobool1507.not, label %cond.end1512, label %if.then1503.if.then1515_crit_edge

if.then1503.if.then1515_crit_edge:                ; preds = %if.then1503
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then1515

cond.end1512:                                     ; preds = %if.then1503
  %call1510 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.73) #5
  %call1511 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.72) #5
  %tobool1514.not = icmp eq ptr %call1511, null
  br i1 %tobool1514.not, label %do.end1527, label %cond.end1512.if.then1515_crit_edge

cond.end1512.if.then1515_crit_edge:               ; preds = %cond.end1512
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then1515

if.then1515:                                      ; preds = %cond.end1512.if.then1515_crit_edge, %if.then1503.if.then1515_crit_edge
  %cond15133865 = phi ptr [ %call1511, %cond.end1512.if.then1515_crit_edge ], [ %call1506, %if.then1503.if.then1515_crit_edge ]
  %152 = ptrtoint ptr %frontend1499 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %frontend1499, align 4
  %call1519 = tail call ptr %cond15133865(ptr noundef %153, i32 noundef 96, ptr noundef %i2c_adap1484, i32 noundef 0) #5
  %cmp1520 = icmp eq ptr %call1519, null
  br i1 %cmp1520, label %if.then1522, label %if.end1540

if.then1522:                                      ; preds = %if.then1515
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @__symbol_put(ptr noundef nonnull @.str.72) #5
  br label %do.end1537

do.end1527:                                       ; preds = %cond.end1512
  call void @__sanitizer_cov_trace_pc() #7
  %call1529 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.75) #8
  br label %do.end1537

do.end1537:                                       ; preds = %do.end1527, %if.then1522
  %call1539 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.144, ptr noundef nonnull @.str.2) #8
  br label %detach_frontend

if.end1540:                                       ; preds = %if.then1515
  %call1543 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.163) #5
  %tobool1544.not = icmp eq ptr %call1543, null
  br i1 %tobool1544.not, label %cond.end1549, label %if.end1540.if.then1552_crit_edge

if.end1540.if.then1552_crit_edge:                 ; preds = %if.end1540
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then1552

cond.end1549:                                     ; preds = %if.end1540
  %call1547 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.164) #5
  %call1548 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.163) #5
  %tobool1551.not = icmp eq ptr %call1548, null
  br i1 %tobool1551.not, label %do.end1564, label %cond.end1549.if.then1552_crit_edge

cond.end1549.if.then1552_crit_edge:               ; preds = %cond.end1549
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then1552

if.then1552:                                      ; preds = %cond.end1549.if.then1552_crit_edge, %if.end1540.if.then1552_crit_edge
  %cond15503870 = phi ptr [ %call1548, %cond.end1549.if.then1552_crit_edge ], [ %call1543, %if.end1540.if.then1552_crit_edge ]
  %154 = ptrtoint ptr %frontend1499 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %frontend1499, align 4
  %call1556 = tail call ptr %cond15503870(ptr noundef %155, ptr noundef %i2c_adap1484, i8 noundef zeroext 0, i8 noundef zeroext 0) #5
  %cmp1557 = icmp eq ptr %call1556, null
  br i1 %cmp1557, label %if.then1559, label %if.then1552.if.end3023_crit_edge

if.then1552.if.end3023_crit_edge:                 ; preds = %if.then1552
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end3023

if.then1559:                                      ; preds = %if.then1552
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @__symbol_put(ptr noundef nonnull @.str.163) #5
  br label %do.end1574

do.end1564:                                       ; preds = %cond.end1549
  call void @__sanitizer_cov_trace_pc() #7
  %call1566 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.166) #8
  br label %do.end1574

do.end1574:                                       ; preds = %do.end1564, %if.then1559
  %call1576 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.169, ptr noundef nonnull @.str.2) #8
  br label %detach_frontend

sw.bb1579:                                        ; preds = %if.end23
  %call1580 = tail call fastcc i32 @configure_tda827x_fe(ptr noundef %dev, ptr noundef nonnull @md8800_dvbt_config, ptr noundef nonnull @tda827x_cfg_0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1580)
  %cmp1581 = icmp slt i32 %call1580, 0
  br i1 %cmp1581, label %sw.bb1579.detach_frontend_crit_edge, label %sw.bb1579.if.end3023_crit_edge

sw.bb1579.if.end3023_crit_edge:                   ; preds = %sw.bb1579
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end3023

sw.bb1579.detach_frontend_crit_edge:              ; preds = %sw.bb1579
  call void @__sanitizer_cov_trace_pc() #7
  br label %detach_frontend

sw.bb1585:                                        ; preds = %if.end23
  %call1586 = tail call fastcc i32 @configure_tda827x_fe(ptr noundef %dev, ptr noundef nonnull @philips_tiger_s_config, ptr noundef nonnull @tda827x_cfg_2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1586)
  %cmp1587 = icmp slt i32 %call1586, 0
  br i1 %cmp1587, label %sw.bb1585.detach_frontend_crit_edge, label %sw.bb1585.if.end3023_crit_edge

sw.bb1585.if.end3023_crit_edge:                   ; preds = %sw.bb1585
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end3023

sw.bb1585.detach_frontend_crit_edge:              ; preds = %sw.bb1585
  call void @__sanitizer_cov_trace_pc() #7
  br label %detach_frontend

do.body1592:                                      ; preds = %if.end23
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dvb_init.__UNIQUE_ID_ddebug405, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dvb_init, %if.then1604)) #5
          to label %do.end1607 [label %if.then1604], !srcloc !724

if.then1604:                                      ; preds = %do.body1592
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dvb_init.__UNIQUE_ID_ddebug405, ptr noundef nonnull @.str.172) #5
  br label %do.end1607

do.end1607:                                       ; preds = %if.then1604, %do.body1592
  tail call void @saa7134_set_gpio(ptr noundef %dev, i32 noundef 25, i32 noundef 0) #5
  tail call void @msleep(i32 noundef 10) #5
  tail call void @saa7134_set_gpio(ptr noundef %dev, i32 noundef 25, i32 noundef 1) #5
  %call1610 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.10) #5
  %tobool1611.not = icmp eq ptr %call1610, null
  br i1 %tobool1611.not, label %cond.end1616, label %do.end1607.if.then1619_crit_edge

do.end1607.if.then1619_crit_edge:                 ; preds = %do.end1607
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then1619

cond.end1616:                                     ; preds = %do.end1607
  %call1614 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.11) #5
  %call1615 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.10) #5
  %tobool1618.not = icmp eq ptr %call1615, null
  br i1 %tobool1618.not, label %do.end1629, label %cond.end1616.if.then1619_crit_edge

cond.end1616.if.then1619_crit_edge:               ; preds = %cond.end1616
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then1619

if.then1619:                                      ; preds = %cond.end1616.if.then1619_crit_edge, %do.end1607.if.then1619_crit_edge
  %cond16173876 = phi ptr [ %call1615, %cond.end1616.if.then1619_crit_edge ], [ %call1610, %do.end1607.if.then1619_crit_edge ]
  %i2c_adap1620 = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 27
  %call1621 = tail call ptr %cond16173876(ptr noundef nonnull @avermedia_xc3028_mt352_dev, ptr noundef %i2c_adap1620) #5
  %cmp1622 = icmp eq ptr %call1621, null
  br i1 %cmp1622, label %if.then1624, label %if.then1619.if.then2973_crit_edge

if.then1619.if.then2973_crit_edge:                ; preds = %if.then1619
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then2973

if.then1624:                                      ; preds = %if.then1619
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @__symbol_put(ptr noundef nonnull @.str.10) #5
  br label %if.then2973

do.end1629:                                       ; preds = %cond.end1616
  call void @__sanitizer_cov_trace_pc() #7
  %call1631 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13) #8
  br label %if.then2973

sw.bb1636:                                        ; preds = %if.end23
  %call1639 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.67) #5
  %tobool1640.not = icmp eq ptr %call1639, null
  br i1 %tobool1640.not, label %cond.end1645, label %sw.bb1636.if.then1648_crit_edge

sw.bb1636.if.then1648_crit_edge:                  ; preds = %sw.bb1636
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then1648

cond.end1645:                                     ; preds = %sw.bb1636
  %call1643 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.68) #5
  %call1644 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.67) #5
  %tobool1647.not = icmp eq ptr %call1644, null
  br i1 %tobool1647.not, label %do.end1658, label %cond.end1645.if.then1648_crit_edge

cond.end1645.if.then1648_crit_edge:               ; preds = %cond.end1645
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then1648

if.then1648:                                      ; preds = %cond.end1645.if.then1648_crit_edge, %sw.bb1636.if.then1648_crit_edge
  %cond16463879 = phi ptr [ %call1644, %cond.end1645.if.then1648_crit_edge ], [ %call1639, %sw.bb1636.if.then1648_crit_edge ]
  %i2c_adap1649 = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 27
  %call1650 = tail call ptr %cond16463879(ptr noundef nonnull @sd1878_4m, ptr noundef %i2c_adap1649) #5
  %cmp1651 = icmp eq ptr %call1650, null
  br i1 %cmp1651, label %if.then1653, label %if.then1668

if.then1653:                                      ; preds = %if.then1648
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @__symbol_put(ptr noundef nonnull @.str.67) #5
  br label %if.end1661.thread

do.end1658:                                       ; preds = %cond.end1645
  call void @__sanitizer_cov_trace_pc() #7
  %call1660 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.70) #8
  br label %if.end1661.thread

if.end1661.thread:                                ; preds = %do.end1658, %if.then1653
  %frontend16643881 = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call6, i32 0, i32 2, i32 1
  %156 = ptrtoint ptr %frontend16643881 to i32
  call void @__asan_store4_noabort(i32 %156)
  store ptr null, ptr %frontend16643881, align 4
  br label %if.end3023

if.then1668:                                      ; preds = %if.then1648
  %frontend1664 = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call6, i32 0, i32 2, i32 1
  %157 = ptrtoint ptr %frontend1664 to i32
  call void @__asan_store4_noabort(i32 %157)
  store ptr %call1650, ptr %frontend1664, align 4
  %call1672 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.121) #5
  %tobool1673.not = icmp eq ptr %call1672, null
  br i1 %tobool1673.not, label %cond.end1678, label %if.then1668.if.then1681_crit_edge

if.then1668.if.then1681_crit_edge:                ; preds = %if.then1668
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then1681

cond.end1678:                                     ; preds = %if.then1668
  %call1676 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.122) #5
  %call1677 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.121) #5
  %tobool1680.not = icmp eq ptr %call1677, null
  br i1 %tobool1680.not, label %do.end1693, label %cond.end1678.if.then1681_crit_edge

cond.end1678.if.then1681_crit_edge:               ; preds = %cond.end1678
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then1681

if.then1681:                                      ; preds = %cond.end1678.if.then1681_crit_edge, %if.then1668.if.then1681_crit_edge
  %cond16793885 = phi ptr [ %call1677, %cond.end1678.if.then1681_crit_edge ], [ %call1672, %if.then1668.if.then1681_crit_edge ]
  %158 = ptrtoint ptr %frontend1664 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %frontend1664, align 4
  %call1685 = tail call ptr %cond16793885(ptr noundef %159, i32 noundef 96, ptr noundef %i2c_adap1649, i32 noundef 12) #5
  %cmp1686 = icmp eq ptr %call1685, null
  br i1 %cmp1686, label %if.then1688, label %if.end1706

if.then1688:                                      ; preds = %if.then1681
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @__symbol_put(ptr noundef nonnull @.str.121) #5
  br label %do.end1703

do.end1693:                                       ; preds = %cond.end1678
  call void @__sanitizer_cov_trace_pc() #7
  %call1695 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.124) #8
  br label %do.end1703

do.end1703:                                       ; preds = %do.end1693, %if.then1688
  %call1705 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.180, ptr noundef nonnull @.str.2) #8
  br label %detach_frontend

if.end1706:                                       ; preds = %if.then1681
  %160 = ptrtoint ptr %frontend1664 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %frontend1664, align 4
  %i2c_gate_ctrl1710 = getelementptr inbounds %struct.dvb_frontend, ptr %161, i32 0, i32 1, i32 28
  %162 = ptrtoint ptr %i2c_gate_ctrl1710 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %i2c_gate_ctrl1710, align 4
  %call1711 = tail call i32 %163(ptr noundef %161, i32 noundef 1) #5
  %call1714 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.108) #5
  %tobool1715.not = icmp eq ptr %call1714, null
  br i1 %tobool1715.not, label %cond.end1720, label %if.end1706.if.then1723_crit_edge

if.end1706.if.then1723_crit_edge:                 ; preds = %if.end1706
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then1723

cond.end1720:                                     ; preds = %if.end1706
  %call1718 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.109) #5
  %call1719 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.108) #5
  %tobool1722.not = icmp eq ptr %call1719, null
  br i1 %tobool1722.not, label %do.end1733, label %cond.end1720.if.then1723_crit_edge

cond.end1720.if.then1723_crit_edge:               ; preds = %cond.end1720
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then1723

if.then1723:                                      ; preds = %cond.end1720.if.then1723_crit_edge, %if.end1706.if.then1723_crit_edge
  %cond17213890 = phi ptr [ %call1719, %cond.end1720.if.then1723_crit_edge ], [ %call1714, %if.end1706.if.then1723_crit_edge ]
  %call1725 = tail call ptr %cond17213890(ptr noundef %161, ptr noundef %i2c_adap1649, i8 noundef zeroext 8, i8 noundef zeroext 0, i8 noundef zeroext 0) #5
  %cmp1726 = icmp eq ptr %call1725, null
  br i1 %cmp1726, label %if.then1728, label %cleanup1760

if.then1728:                                      ; preds = %if.then1723
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @__symbol_put(ptr noundef nonnull @.str.108) #5
  br label %do.end1743

do.end1733:                                       ; preds = %cond.end1720
  call void @__sanitizer_cov_trace_pc() #7
  %call1735 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.111) #8
  br label %do.end1743

do.end1743:                                       ; preds = %do.end1733, %if.then1728
  %call1745 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.185, ptr noundef nonnull @.str.2) #8
  br label %detach_frontend

cleanup1760:                                      ; preds = %if.then1723
  call void @__sanitizer_cov_trace_pc() #7
  %164 = ptrtoint ptr %i2c_gate_ctrl1710 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %i2c_gate_ctrl1710, align 4
  %call1749 = tail call i32 %165(ptr noundef %161, i32 noundef 0) #5
  %set_voltage1751 = getelementptr inbounds %struct.dvb_frontend, ptr %161, i32 0, i32 1, i32 25
  %166 = ptrtoint ptr %set_voltage1751 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %set_voltage1751, align 4
  %original_set_voltage1752 = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 99
  %168 = ptrtoint ptr %original_set_voltage1752 to i32
  call void @__asan_store4_noabort(i32 %168)
  store ptr %167, ptr %original_set_voltage1752, align 8
  store ptr @md8800_set_voltage, ptr %set_voltage1751, align 4
  %enable_high_lnb_voltage1756 = getelementptr inbounds %struct.dvb_frontend, ptr %161, i32 0, i32 1, i32 26
  %169 = ptrtoint ptr %enable_high_lnb_voltage1756 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %enable_high_lnb_voltage1756, align 4
  %original_set_high_voltage1757 = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 100
  %171 = ptrtoint ptr %original_set_high_voltage1757 to i32
  call void @__asan_store4_noabort(i32 %171)
  store ptr %170, ptr %original_set_high_voltage1757, align 4
  store ptr @md8800_set_high_voltage, ptr %enable_high_lnb_voltage1756, align 4
  br label %if.end3023

sw.bb1764:                                        ; preds = %if.end23
  tail call void @saa7134_set_gpio(ptr noundef %dev, i32 noundef 25, i32 noundef 0) #5
  tail call void @msleep(i32 noundef 10) #5
  tail call void @saa7134_set_gpio(ptr noundef %dev, i32 noundef 25, i32 noundef 1) #5
  %call1767 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.10) #5
  %tobool1768.not = icmp eq ptr %call1767, null
  br i1 %tobool1768.not, label %cond.end1773, label %sw.bb1764.if.then1776_crit_edge

sw.bb1764.if.then1776_crit_edge:                  ; preds = %sw.bb1764
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then1776

cond.end1773:                                     ; preds = %sw.bb1764
  %call1771 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.11) #5
  %call1772 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.10) #5
  %tobool1775.not = icmp eq ptr %call1772, null
  br i1 %tobool1775.not, label %do.end1786, label %cond.end1773.if.then1776_crit_edge

cond.end1773.if.then1776_crit_edge:               ; preds = %cond.end1773
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then1776

if.then1776:                                      ; preds = %cond.end1773.if.then1776_crit_edge, %sw.bb1764.if.then1776_crit_edge
  %cond17743896 = phi ptr [ %call1772, %cond.end1773.if.then1776_crit_edge ], [ %call1767, %sw.bb1764.if.then1776_crit_edge ]
  %i2c_adap1777 = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 27
  %call1778 = tail call ptr %cond17743896(ptr noundef nonnull @avermedia_xc3028_mt352_dev, ptr noundef %i2c_adap1777) #5
  %cmp1779 = icmp eq ptr %call1778, null
  br i1 %cmp1779, label %if.then1781, label %if.then1776.if.then2973_crit_edge

if.then1776.if.then2973_crit_edge:                ; preds = %if.then1776
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then2973

if.then1781:                                      ; preds = %if.then1776
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @__symbol_put(ptr noundef nonnull @.str.10) #5
  br label %if.then2973

do.end1786:                                       ; preds = %cond.end1773
  call void @__sanitizer_cov_trace_pc() #7
  %call1788 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13) #8
  br label %if.then2973

sw.bb1793:                                        ; preds = %if.end23
  %172 = load i32, ptr @use_frontend, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %172)
  %tobool1794.not = icmp eq i32 %172, 0
  br i1 %tobool1794.not, label %if.then1795, label %if.else1801

if.then1795:                                      ; preds = %sw.bb1793
  %call1796 = tail call fastcc i32 @configure_tda827x_fe(ptr noundef %dev, ptr noundef nonnull @asus_tiger_3in1_config, ptr noundef nonnull @tda827x_cfg_2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1796)
  %cmp1797 = icmp slt i32 %call1796, 0
  br i1 %cmp1797, label %if.then1795.detach_frontend_crit_edge, label %if.then1795.if.end3023_crit_edge

if.then1795.if.end3023_crit_edge:                 ; preds = %if.then1795
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end3023

if.then1795.detach_frontend_crit_edge:            ; preds = %if.then1795
  call void @__sanitizer_cov_trace_pc() #7
  br label %detach_frontend

if.else1801:                                      ; preds = %sw.bb1793
  %call1804 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.67) #5
  %tobool1805.not = icmp eq ptr %call1804, null
  br i1 %tobool1805.not, label %cond.end1810, label %if.else1801.if.then1813_crit_edge

if.else1801.if.then1813_crit_edge:                ; preds = %if.else1801
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then1813

cond.end1810:                                     ; preds = %if.else1801
  %call1808 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.68) #5
  %call1809 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.67) #5
  %tobool1812.not = icmp eq ptr %call1809, null
  br i1 %tobool1812.not, label %do.end1823, label %cond.end1810.if.then1813_crit_edge

cond.end1810.if.then1813_crit_edge:               ; preds = %cond.end1810
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then1813

if.then1813:                                      ; preds = %cond.end1810.if.then1813_crit_edge, %if.else1801.if.then1813_crit_edge
  %cond18113899 = phi ptr [ %call1809, %cond.end1810.if.then1813_crit_edge ], [ %call1804, %if.else1801.if.then1813_crit_edge ]
  %i2c_adap1814 = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 27
  %call1815 = tail call ptr %cond18113899(ptr noundef nonnull @flydvbs, ptr noundef %i2c_adap1814) #5
  %cmp1816 = icmp eq ptr %call1815, null
  br i1 %cmp1816, label %if.then1818, label %if.then1833

if.then1818:                                      ; preds = %if.then1813
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @__symbol_put(ptr noundef nonnull @.str.67) #5
  br label %if.end1826.thread

do.end1823:                                       ; preds = %cond.end1810
  call void @__sanitizer_cov_trace_pc() #7
  %call1825 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.70) #8
  br label %if.end1826.thread

if.end1826.thread:                                ; preds = %do.end1823, %if.then1818
  %frontend18293901 = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call6, i32 0, i32 2, i32 1
  %173 = ptrtoint ptr %frontend18293901 to i32
  call void @__asan_store4_noabort(i32 %173)
  store ptr null, ptr %frontend18293901, align 4
  br label %if.end3023

if.then1833:                                      ; preds = %if.then1813
  %frontend1829 = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call6, i32 0, i32 2, i32 1
  %174 = ptrtoint ptr %frontend1829 to i32
  call void @__asan_store4_noabort(i32 %174)
  store ptr %call1815, ptr %frontend1829, align 4
  %call1836 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.72) #5
  %tobool1837.not = icmp eq ptr %call1836, null
  br i1 %tobool1837.not, label %cond.end1842, label %if.then1833.if.then1845_crit_edge

if.then1833.if.then1845_crit_edge:                ; preds = %if.then1833
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then1845

cond.end1842:                                     ; preds = %if.then1833
  %call1840 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.73) #5
  %call1841 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.72) #5
  %tobool1844.not = icmp eq ptr %call1841, null
  br i1 %tobool1844.not, label %do.end1857, label %cond.end1842.if.then1845_crit_edge

cond.end1842.if.then1845_crit_edge:               ; preds = %cond.end1842
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then1845

if.then1845:                                      ; preds = %cond.end1842.if.then1845_crit_edge, %if.then1833.if.then1845_crit_edge
  %cond18433905 = phi ptr [ %call1841, %cond.end1842.if.then1845_crit_edge ], [ %call1836, %if.then1833.if.then1845_crit_edge ]
  %175 = ptrtoint ptr %frontend1829 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %frontend1829, align 4
  %call1849 = tail call ptr %cond18433905(ptr noundef %176, i32 noundef 96, ptr noundef %i2c_adap1814, i32 noundef 0) #5
  %cmp1850 = icmp eq ptr %call1849, null
  br i1 %cmp1850, label %if.then1852, label %if.end1870

if.then1852:                                      ; preds = %if.then1845
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @__symbol_put(ptr noundef nonnull @.str.72) #5
  br label %do.end1867

do.end1857:                                       ; preds = %cond.end1842
  call void @__sanitizer_cov_trace_pc() #7
  %call1859 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.75) #8
  br label %do.end1867

do.end1867:                                       ; preds = %do.end1857, %if.then1852
  %call1869 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.194, ptr noundef nonnull @.str.2) #8
  br label %detach_frontend

if.end1870:                                       ; preds = %if.then1845
  %call1873 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.163) #5
  %tobool1874.not = icmp eq ptr %call1873, null
  br i1 %tobool1874.not, label %cond.end1879, label %if.end1870.if.then1882_crit_edge

if.end1870.if.then1882_crit_edge:                 ; preds = %if.end1870
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then1882

cond.end1879:                                     ; preds = %if.end1870
  %call1877 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.164) #5
  %call1878 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.163) #5
  %tobool1881.not = icmp eq ptr %call1878, null
  br i1 %tobool1881.not, label %do.end1894, label %cond.end1879.if.then1882_crit_edge

cond.end1879.if.then1882_crit_edge:               ; preds = %cond.end1879
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then1882

if.then1882:                                      ; preds = %cond.end1879.if.then1882_crit_edge, %if.end1870.if.then1882_crit_edge
  %cond18803910 = phi ptr [ %call1878, %cond.end1879.if.then1882_crit_edge ], [ %call1873, %if.end1870.if.then1882_crit_edge ]
  %177 = ptrtoint ptr %frontend1829 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %frontend1829, align 4
  %call1886 = tail call ptr %cond18803910(ptr noundef %178, ptr noundef %i2c_adap1814, i8 noundef zeroext 0, i8 noundef zeroext 0) #5
  %cmp1887 = icmp eq ptr %call1886, null
  br i1 %cmp1887, label %if.then1889, label %if.then1882.if.end3023_crit_edge

if.then1882.if.end3023_crit_edge:                 ; preds = %if.then1882
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end3023

if.then1889:                                      ; preds = %if.then1882
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @__symbol_put(ptr noundef nonnull @.str.163) #5
  br label %do.end1904

do.end1894:                                       ; preds = %cond.end1879
  call void @__sanitizer_cov_trace_pc() #7
  %call1896 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.166) #8
  br label %do.end1904

do.end1904:                                       ; preds = %do.end1894, %if.then1889
  %call1906 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.199, ptr noundef nonnull @.str.2) #8
  br label %detach_frontend

sw.bb1910:                                        ; preds = %if.end23
  %179 = load i32, ptr @use_frontend, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %179)
  %tobool1911.not = icmp eq i32 %179, 0
  br i1 %tobool1911.not, label %if.then1912, label %if.else1918

if.then1912:                                      ; preds = %sw.bb1910
  %call1913 = tail call fastcc i32 @configure_tda827x_fe(ptr noundef %dev, ptr noundef nonnull @asus_ps3_100_config, ptr noundef nonnull @tda827x_cfg_2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1913)
  %cmp1914 = icmp slt i32 %call1913, 0
  br i1 %cmp1914, label %if.then1912.detach_frontend_crit_edge, label %if.then1912.if.end3023_crit_edge

if.then1912.if.end3023_crit_edge:                 ; preds = %if.then1912
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end3023

if.then1912.detach_frontend_crit_edge:            ; preds = %if.then1912
  call void @__sanitizer_cov_trace_pc() #7
  br label %detach_frontend

if.else1918:                                      ; preds = %sw.bb1910
  %call1921 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.67) #5
  %tobool1922.not = icmp eq ptr %call1921, null
  br i1 %tobool1922.not, label %cond.end1927, label %if.else1918.if.then1930_crit_edge

if.else1918.if.then1930_crit_edge:                ; preds = %if.else1918
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then1930

cond.end1927:                                     ; preds = %if.else1918
  %call1925 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.68) #5
  %call1926 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.67) #5
  %tobool1929.not = icmp eq ptr %call1926, null
  br i1 %tobool1929.not, label %do.end1940, label %cond.end1927.if.then1930_crit_edge

cond.end1927.if.then1930_crit_edge:               ; preds = %cond.end1927
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then1930

if.then1930:                                      ; preds = %cond.end1927.if.then1930_crit_edge, %if.else1918.if.then1930_crit_edge
  %cond19283915 = phi ptr [ %call1926, %cond.end1927.if.then1930_crit_edge ], [ %call1921, %if.else1918.if.then1930_crit_edge ]
  %i2c_adap1931 = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 27
  %call1932 = tail call ptr %cond19283915(ptr noundef nonnull @flydvbs, ptr noundef %i2c_adap1931) #5
  %cmp1933 = icmp eq ptr %call1932, null
  br i1 %cmp1933, label %if.then1935, label %if.then1950

if.then1935:                                      ; preds = %if.then1930
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @__symbol_put(ptr noundef nonnull @.str.67) #5
  br label %if.end1943.thread

do.end1940:                                       ; preds = %cond.end1927
  call void @__sanitizer_cov_trace_pc() #7
  %call1942 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.70) #8
  br label %if.end1943.thread

if.end1943.thread:                                ; preds = %do.end1940, %if.then1935
  %frontend19463917 = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call6, i32 0, i32 2, i32 1
  %180 = ptrtoint ptr %frontend19463917 to i32
  call void @__asan_store4_noabort(i32 %180)
  store ptr null, ptr %frontend19463917, align 4
  br label %if.end3023

if.then1950:                                      ; preds = %if.then1930
  %frontend1946 = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call6, i32 0, i32 2, i32 1
  %181 = ptrtoint ptr %frontend1946 to i32
  call void @__asan_store4_noabort(i32 %181)
  store ptr %call1932, ptr %frontend1946, align 4
  %call1953 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.72) #5
  %tobool1954.not = icmp eq ptr %call1953, null
  br i1 %tobool1954.not, label %cond.end1959, label %if.then1950.if.then1962_crit_edge

if.then1950.if.then1962_crit_edge:                ; preds = %if.then1950
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then1962

cond.end1959:                                     ; preds = %if.then1950
  %call1957 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.73) #5
  %call1958 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.72) #5
  %tobool1961.not = icmp eq ptr %call1958, null
  br i1 %tobool1961.not, label %do.end1974, label %cond.end1959.if.then1962_crit_edge

cond.end1959.if.then1962_crit_edge:               ; preds = %cond.end1959
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then1962

if.then1962:                                      ; preds = %cond.end1959.if.then1962_crit_edge, %if.then1950.if.then1962_crit_edge
  %cond19603921 = phi ptr [ %call1958, %cond.end1959.if.then1962_crit_edge ], [ %call1953, %if.then1950.if.then1962_crit_edge ]
  %182 = ptrtoint ptr %frontend1946 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %frontend1946, align 4
  %call1966 = tail call ptr %cond19603921(ptr noundef %183, i32 noundef 96, ptr noundef %i2c_adap1931, i32 noundef 0) #5
  %cmp1967 = icmp eq ptr %call1966, null
  br i1 %cmp1967, label %if.then1969, label %if.end1987

if.then1969:                                      ; preds = %if.then1962
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @__symbol_put(ptr noundef nonnull @.str.72) #5
  br label %do.end1984

do.end1974:                                       ; preds = %cond.end1959
  call void @__sanitizer_cov_trace_pc() #7
  %call1976 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.75) #8
  br label %do.end1984

do.end1984:                                       ; preds = %do.end1974, %if.then1969
  %call1986 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.206, ptr noundef nonnull @.str.2) #8
  br label %detach_frontend

if.end1987:                                       ; preds = %if.then1962
  %call1990 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.163) #5
  %tobool1991.not = icmp eq ptr %call1990, null
  br i1 %tobool1991.not, label %cond.end1996, label %if.end1987.if.then1999_crit_edge

if.end1987.if.then1999_crit_edge:                 ; preds = %if.end1987
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then1999

cond.end1996:                                     ; preds = %if.end1987
  %call1994 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.164) #5
  %call1995 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.163) #5
  %tobool1998.not = icmp eq ptr %call1995, null
  br i1 %tobool1998.not, label %do.end2011, label %cond.end1996.if.then1999_crit_edge

cond.end1996.if.then1999_crit_edge:               ; preds = %cond.end1996
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then1999

if.then1999:                                      ; preds = %cond.end1996.if.then1999_crit_edge, %if.end1987.if.then1999_crit_edge
  %cond19973926 = phi ptr [ %call1995, %cond.end1996.if.then1999_crit_edge ], [ %call1990, %if.end1987.if.then1999_crit_edge ]
  %184 = ptrtoint ptr %frontend1946 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %frontend1946, align 4
  %call2003 = tail call ptr %cond19973926(ptr noundef %185, ptr noundef %i2c_adap1931, i8 noundef zeroext 0, i8 noundef zeroext 0) #5
  %cmp2004 = icmp eq ptr %call2003, null
  br i1 %cmp2004, label %if.then2006, label %if.then1999.if.end3023_crit_edge

if.then1999.if.end3023_crit_edge:                 ; preds = %if.then1999
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end3023

if.then2006:                                      ; preds = %if.then1999
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @__symbol_put(ptr noundef nonnull @.str.163) #5
  br label %do.end2021

do.end2011:                                       ; preds = %cond.end1996
  call void @__sanitizer_cov_trace_pc() #7
  %call2013 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.166) #8
  br label %do.end2021

do.end2021:                                       ; preds = %do.end2011, %if.then2006
  %call2023 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.211, ptr noundef nonnull @.str.2) #8
  br label %detach_frontend

sw.bb2027:                                        ; preds = %if.end23
  %call2028 = tail call fastcc i32 @configure_tda827x_fe(ptr noundef %dev, ptr noundef nonnull @philips_tiger_config, ptr noundef nonnull @tda827x_cfg_0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2028)
  %cmp2029 = icmp slt i32 %call2028, 0
  br i1 %cmp2029, label %sw.bb2027.detach_frontend_crit_edge, label %sw.bb2027.if.end3023_crit_edge

sw.bb2027.if.end3023_crit_edge:                   ; preds = %sw.bb2027
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end3023

sw.bb2027.detach_frontend_crit_edge:              ; preds = %sw.bb2027
  call void @__sanitizer_cov_trace_pc() #7
  br label %detach_frontend

sw.bb2033:                                        ; preds = %if.end23
  %call2036 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.213) #5
  %tobool2037.not = icmp eq ptr %call2036, null
  br i1 %tobool2037.not, label %cond.end2042, label %sw.bb2033.if.then2045_crit_edge

sw.bb2033.if.then2045_crit_edge:                  ; preds = %sw.bb2033
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then2045

cond.end2042:                                     ; preds = %sw.bb2033
  %call2040 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.214) #5
  %call2041 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.213) #5
  %tobool2044.not = icmp eq ptr %call2041, null
  br i1 %tobool2044.not, label %do.end2055, label %cond.end2042.if.then2045_crit_edge

cond.end2042.if.then2045_crit_edge:               ; preds = %cond.end2042
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then2045

if.then2045:                                      ; preds = %cond.end2042.if.then2045_crit_edge, %sw.bb2033.if.then2045_crit_edge
  %cond20433931 = phi ptr [ %call2041, %cond.end2042.if.then2045_crit_edge ], [ %call2036, %sw.bb2033.if.then2045_crit_edge ]
  %i2c_adap2046 = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 27
  %call2047 = tail call ptr %cond20433931(ptr noundef nonnull @behold_h6_config, ptr noundef %i2c_adap2046) #5
  %cmp2048 = icmp eq ptr %call2047, null
  br i1 %cmp2048, label %if.then2050, label %if.then2065

if.then2050:                                      ; preds = %if.then2045
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @__symbol_put(ptr noundef nonnull @.str.213) #5
  br label %if.end2058.thread

do.end2055:                                       ; preds = %cond.end2042
  call void @__sanitizer_cov_trace_pc() #7
  %call2057 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.216) #8
  br label %if.end2058.thread

if.end2058.thread:                                ; preds = %do.end2055, %if.then2050
  %frontend20613933 = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call6, i32 0, i32 2, i32 1
  %186 = ptrtoint ptr %frontend20613933 to i32
  call void @__asan_store4_noabort(i32 %186)
  store ptr null, ptr %frontend20613933, align 4
  br label %if.end3023

if.then2065:                                      ; preds = %if.then2045
  %frontend2061 = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call6, i32 0, i32 2, i32 1
  %187 = ptrtoint ptr %frontend2061 to i32
  call void @__asan_store4_noabort(i32 %187)
  store ptr %call2047, ptr %frontend2061, align 4
  %call2068 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.19) #5
  %tobool2069.not = icmp eq ptr %call2068, null
  br i1 %tobool2069.not, label %cond.end2074, label %if.then2065.if.then2077_crit_edge

if.then2065.if.then2077_crit_edge:                ; preds = %if.then2065
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then2077

cond.end2074:                                     ; preds = %if.then2065
  %call2072 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.20) #5
  %call2073 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.19) #5
  %tobool2076.not = icmp eq ptr %call2073, null
  br i1 %tobool2076.not, label %do.end2089, label %cond.end2074.if.then2077_crit_edge

cond.end2074.if.then2077_crit_edge:               ; preds = %cond.end2074
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then2077

if.then2077:                                      ; preds = %cond.end2074.if.then2077_crit_edge, %if.then2065.if.then2077_crit_edge
  %cond20753937 = phi ptr [ %call2073, %cond.end2074.if.then2077_crit_edge ], [ %call2068, %if.then2065.if.then2077_crit_edge ]
  %188 = ptrtoint ptr %frontend2061 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %frontend2061, align 4
  %call2081 = tail call ptr %cond20753937(ptr noundef %189, ptr noundef %i2c_adap2046, i8 noundef zeroext 97, i32 noundef 78) #5
  %cmp2082 = icmp eq ptr %call2081, null
  br i1 %cmp2082, label %if.then2084, label %if.then2077.if.end3023_crit_edge

if.then2077.if.end3023_crit_edge:                 ; preds = %if.then2077
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end3023

if.then2084:                                      ; preds = %if.then2077
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @__symbol_put(ptr noundef nonnull @.str.19) #5
  br label %if.end3023

do.end2089:                                       ; preds = %cond.end2074
  call void @__sanitizer_cov_trace_pc() #7
  %call2091 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22) #8
  br label %if.end3023

sw.bb2095:                                        ; preds = %if.end23
  %call2098 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.213) #5
  %tobool2099.not = icmp eq ptr %call2098, null
  br i1 %tobool2099.not, label %cond.end2104, label %sw.bb2095.if.then2107_crit_edge

sw.bb2095.if.then2107_crit_edge:                  ; preds = %sw.bb2095
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then2107

cond.end2104:                                     ; preds = %sw.bb2095
  %call2102 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.214) #5
  %call2103 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.213) #5
  %tobool2106.not = icmp eq ptr %call2103, null
  br i1 %tobool2106.not, label %do.end2117, label %cond.end2104.if.then2107_crit_edge

cond.end2104.if.then2107_crit_edge:               ; preds = %cond.end2104
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then2107

if.then2107:                                      ; preds = %cond.end2104.if.then2107_crit_edge, %sw.bb2095.if.then2107_crit_edge
  %cond21053940 = phi ptr [ %call2103, %cond.end2104.if.then2107_crit_edge ], [ %call2098, %sw.bb2095.if.then2107_crit_edge ]
  %i2c_adap2108 = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 27
  %call2109 = tail call ptr %cond21053940(ptr noundef nonnull @behold_x7_config, ptr noundef %i2c_adap2108) #5
  %cmp2110 = icmp eq ptr %call2109, null
  br i1 %cmp2110, label %if.then2112, label %if.then2127

if.then2112:                                      ; preds = %if.then2107
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @__symbol_put(ptr noundef nonnull @.str.213) #5
  br label %if.end2120.thread

do.end2117:                                       ; preds = %cond.end2104
  call void @__sanitizer_cov_trace_pc() #7
  %call2119 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.216) #8
  br label %if.end2120.thread

if.end2120.thread:                                ; preds = %do.end2117, %if.then2112
  %frontend21233942 = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call6, i32 0, i32 2, i32 1
  %190 = ptrtoint ptr %frontend21233942 to i32
  call void @__asan_store4_noabort(i32 %190)
  store ptr null, ptr %frontend21233942, align 4
  br label %if.end3023

if.then2127:                                      ; preds = %if.then2107
  %frontend2123 = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call6, i32 0, i32 2, i32 1
  %191 = ptrtoint ptr %frontend2123 to i32
  call void @__asan_store4_noabort(i32 %191)
  store ptr %call2109, ptr %frontend2123, align 4
  %call2130 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.222) #5
  %tobool2131.not = icmp eq ptr %call2130, null
  br i1 %tobool2131.not, label %cond.end2136, label %if.then2127.if.then2139_crit_edge

if.then2127.if.then2139_crit_edge:                ; preds = %if.then2127
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then2139

cond.end2136:                                     ; preds = %if.then2127
  %call2134 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.223) #5
  %call2135 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.222) #5
  %tobool2138.not = icmp eq ptr %call2135, null
  br i1 %tobool2138.not, label %do.end2151, label %cond.end2136.if.then2139_crit_edge

cond.end2136.if.then2139_crit_edge:               ; preds = %cond.end2136
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then2139

if.then2139:                                      ; preds = %cond.end2136.if.then2139_crit_edge, %if.then2127.if.then2139_crit_edge
  %cond21373946 = phi ptr [ %call2135, %cond.end2136.if.then2139_crit_edge ], [ %call2130, %if.then2127.if.then2139_crit_edge ]
  %192 = ptrtoint ptr %frontend2123 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %frontend2123, align 4
  %call2143 = tail call ptr %cond21373946(ptr noundef %193, ptr noundef %i2c_adap2108, ptr noundef nonnull @behold_x7_tunerconfig) #5
  %cmp2144 = icmp eq ptr %call2143, null
  br i1 %cmp2144, label %if.then2146, label %if.then2139.if.end3023_crit_edge

if.then2139.if.end3023_crit_edge:                 ; preds = %if.then2139
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end3023

if.then2146:                                      ; preds = %if.then2139
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @__symbol_put(ptr noundef nonnull @.str.222) #5
  br label %if.end3023

do.end2151:                                       ; preds = %cond.end2136
  call void @__sanitizer_cov_trace_pc() #7
  %call2153 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.225) #8
  br label %if.end3023

sw.bb2157:                                        ; preds = %if.end23
  %call2160 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.213) #5
  %tobool2161.not = icmp eq ptr %call2160, null
  br i1 %tobool2161.not, label %cond.end2166, label %sw.bb2157.if.then2169_crit_edge

sw.bb2157.if.then2169_crit_edge:                  ; preds = %sw.bb2157
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then2169

cond.end2166:                                     ; preds = %sw.bb2157
  %call2164 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.214) #5
  %call2165 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.213) #5
  %tobool2168.not = icmp eq ptr %call2165, null
  br i1 %tobool2168.not, label %do.end2179, label %cond.end2166.if.then2169_crit_edge

cond.end2166.if.then2169_crit_edge:               ; preds = %cond.end2166
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then2169

if.then2169:                                      ; preds = %cond.end2166.if.then2169_crit_edge, %sw.bb2157.if.then2169_crit_edge
  %cond21673949 = phi ptr [ %call2165, %cond.end2166.if.then2169_crit_edge ], [ %call2160, %sw.bb2157.if.then2169_crit_edge ]
  %i2c_adap2170 = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 27
  %call2171 = tail call ptr %cond21673949(ptr noundef nonnull @behold_x7_config, ptr noundef %i2c_adap2170) #5
  %cmp2172 = icmp eq ptr %call2171, null
  br i1 %cmp2172, label %if.then2174, label %if.then2189

if.then2174:                                      ; preds = %if.then2169
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @__symbol_put(ptr noundef nonnull @.str.213) #5
  br label %if.end2182.thread

do.end2179:                                       ; preds = %cond.end2166
  call void @__sanitizer_cov_trace_pc() #7
  %call2181 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.216) #8
  br label %if.end2182.thread

if.end2182.thread:                                ; preds = %do.end2179, %if.then2174
  %frontend21853951 = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call6, i32 0, i32 2, i32 1
  %194 = ptrtoint ptr %frontend21853951 to i32
  call void @__asan_store4_noabort(i32 %194)
  store ptr null, ptr %frontend21853951, align 4
  br label %if.end3023

if.then2189:                                      ; preds = %if.then2169
  %frontend2185 = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call6, i32 0, i32 2, i32 1
  %195 = ptrtoint ptr %frontend2185 to i32
  call void @__asan_store4_noabort(i32 %195)
  store ptr %call2171, ptr %frontend2185, align 4
  %call2192 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.222) #5
  %tobool2193.not = icmp eq ptr %call2192, null
  br i1 %tobool2193.not, label %cond.end2198, label %if.then2189.if.then2201_crit_edge

if.then2189.if.then2201_crit_edge:                ; preds = %if.then2189
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then2201

cond.end2198:                                     ; preds = %if.then2189
  %call2196 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.223) #5
  %call2197 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.222) #5
  %tobool2200.not = icmp eq ptr %call2197, null
  br i1 %tobool2200.not, label %do.end2213, label %cond.end2198.if.then2201_crit_edge

cond.end2198.if.then2201_crit_edge:               ; preds = %cond.end2198
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then2201

if.then2201:                                      ; preds = %cond.end2198.if.then2201_crit_edge, %if.then2189.if.then2201_crit_edge
  %cond21993955 = phi ptr [ %call2197, %cond.end2198.if.then2201_crit_edge ], [ %call2192, %if.then2189.if.then2201_crit_edge ]
  %196 = ptrtoint ptr %frontend2185 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %frontend2185, align 4
  %call2205 = tail call ptr %cond21993955(ptr noundef %197, ptr noundef %i2c_adap2170, ptr noundef nonnull @behold_x7_tunerconfig) #5
  %cmp2206 = icmp eq ptr %call2205, null
  br i1 %cmp2206, label %if.then2208, label %if.then2201.if.end3023_crit_edge

if.then2201.if.end3023_crit_edge:                 ; preds = %if.then2201
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end3023

if.then2208:                                      ; preds = %if.then2201
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @__symbol_put(ptr noundef nonnull @.str.222) #5
  br label %if.end3023

do.end2213:                                       ; preds = %cond.end2198
  call void @__sanitizer_cov_trace_pc() #7
  %call2215 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.225) #8
  br label %if.end3023

sw.bb2219:                                        ; preds = %if.end23.sw.bb2219_crit_edge, %if.end23.sw.bb2219_crit_edge4072
  %call2222 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.231) #5
  %tobool2223.not = icmp eq ptr %call2222, null
  br i1 %tobool2223.not, label %cond.end2228, label %sw.bb2219.if.then2231_crit_edge

sw.bb2219.if.then2231_crit_edge:                  ; preds = %sw.bb2219
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then2231

cond.end2228:                                     ; preds = %sw.bb2219
  %call2226 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.232) #5
  %call2227 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.231) #5
  %tobool2230.not = icmp eq ptr %call2227, null
  br i1 %tobool2230.not, label %do.end2241, label %cond.end2228.if.then2231_crit_edge

cond.end2228.if.then2231_crit_edge:               ; preds = %cond.end2228
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then2231

if.then2231:                                      ; preds = %cond.end2228.if.then2231_crit_edge, %sw.bb2219.if.then2231_crit_edge
  %cond22293958 = phi ptr [ %call2227, %cond.end2228.if.then2231_crit_edge ], [ %call2222, %sw.bb2219.if.then2231_crit_edge ]
  %i2c_adap2232 = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 27
  %call2233 = tail call ptr %cond22293958(ptr noundef nonnull @avertv_a700_mt312, ptr noundef %i2c_adap2232) #5
  %cmp2234 = icmp eq ptr %call2233, null
  br i1 %cmp2234, label %if.then2236, label %if.then2251

if.then2236:                                      ; preds = %if.then2231
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @__symbol_put(ptr noundef nonnull @.str.231) #5
  br label %if.end2244.thread

do.end2241:                                       ; preds = %cond.end2228
  call void @__sanitizer_cov_trace_pc() #7
  %call2243 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.234) #8
  br label %if.end2244.thread

if.end2244.thread:                                ; preds = %do.end2241, %if.then2236
  %frontend22473960 = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call6, i32 0, i32 2, i32 1
  %198 = ptrtoint ptr %frontend22473960 to i32
  call void @__asan_store4_noabort(i32 %198)
  store ptr null, ptr %frontend22473960, align 4
  br label %if.end3023

if.then2251:                                      ; preds = %if.then2231
  %frontend2247 = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call6, i32 0, i32 2, i32 1
  %199 = ptrtoint ptr %frontend2247 to i32
  call void @__asan_store4_noabort(i32 %199)
  store ptr %call2233, ptr %frontend2247, align 4
  %call2254 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.236) #5
  %tobool2255.not = icmp eq ptr %call2254, null
  br i1 %tobool2255.not, label %cond.end2260, label %if.then2251.if.then2263_crit_edge

if.then2251.if.then2263_crit_edge:                ; preds = %if.then2251
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then2263

cond.end2260:                                     ; preds = %if.then2251
  %call2258 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.237) #5
  %call2259 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.236) #5
  %tobool2262.not = icmp eq ptr %call2259, null
  br i1 %tobool2262.not, label %do.end2275, label %cond.end2260.if.then2263_crit_edge

cond.end2260.if.then2263_crit_edge:               ; preds = %cond.end2260
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then2263

if.then2263:                                      ; preds = %cond.end2260.if.then2263_crit_edge, %if.then2251.if.then2263_crit_edge
  %cond22613964 = phi ptr [ %call2259, %cond.end2260.if.then2263_crit_edge ], [ %call2254, %if.then2251.if.then2263_crit_edge ]
  %200 = ptrtoint ptr %frontend2247 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %frontend2247, align 4
  %call2267 = tail call ptr %cond22613964(ptr noundef %201, ptr noundef nonnull @avertv_a700_tuner, ptr noundef %i2c_adap2232) #5
  %cmp2268 = icmp eq ptr %call2267, null
  br i1 %cmp2268, label %if.then2270, label %if.then2263.if.end3023_crit_edge

if.then2263.if.end3023_crit_edge:                 ; preds = %if.then2263
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end3023

if.then2270:                                      ; preds = %if.then2263
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @__symbol_put(ptr noundef nonnull @.str.236) #5
  br label %do.end2285

do.end2275:                                       ; preds = %cond.end2260
  call void @__sanitizer_cov_trace_pc() #7
  %call2277 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.239) #8
  br label %do.end2285

do.end2285:                                       ; preds = %do.end2275, %if.then2270
  %call2287 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.242, ptr noundef nonnull @.str.2) #8
  br label %if.end3023

sw.bb2290:                                        ; preds = %if.end23
  %call2293 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.231) #5
  %tobool2294.not = icmp eq ptr %call2293, null
  br i1 %tobool2294.not, label %cond.end2299, label %sw.bb2290.if.then2302_crit_edge

sw.bb2290.if.then2302_crit_edge:                  ; preds = %sw.bb2290
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then2302

cond.end2299:                                     ; preds = %sw.bb2290
  %call2297 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.232) #5
  %call2298 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.231) #5
  %tobool2301.not = icmp eq ptr %call2298, null
  br i1 %tobool2301.not, label %do.end2312, label %cond.end2299.if.then2302_crit_edge

cond.end2299.if.then2302_crit_edge:               ; preds = %cond.end2299
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then2302

if.then2302:                                      ; preds = %cond.end2299.if.then2302_crit_edge, %sw.bb2290.if.then2302_crit_edge
  %cond23003969 = phi ptr [ %call2298, %cond.end2299.if.then2302_crit_edge ], [ %call2293, %sw.bb2290.if.then2302_crit_edge ]
  %i2c_adap2303 = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 27
  %call2304 = tail call ptr %cond23003969(ptr noundef nonnull @zl10313_compro_s350_config, ptr noundef %i2c_adap2303) #5
  %cmp2305 = icmp eq ptr %call2304, null
  br i1 %cmp2305, label %if.then2307, label %if.then2322

if.then2307:                                      ; preds = %if.then2302
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @__symbol_put(ptr noundef nonnull @.str.231) #5
  br label %if.end2315.thread

do.end2312:                                       ; preds = %cond.end2299
  call void @__sanitizer_cov_trace_pc() #7
  %call2314 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.234) #8
  br label %if.end2315.thread

if.end2315.thread:                                ; preds = %do.end2312, %if.then2307
  %frontend23183971 = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call6, i32 0, i32 2, i32 1
  %202 = ptrtoint ptr %frontend23183971 to i32
  call void @__asan_store4_noabort(i32 %202)
  store ptr null, ptr %frontend23183971, align 4
  br label %if.end3023

if.then2322:                                      ; preds = %if.then2302
  %frontend2318 = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call6, i32 0, i32 2, i32 1
  %203 = ptrtoint ptr %frontend2318 to i32
  call void @__asan_store4_noabort(i32 %203)
  store ptr %call2304, ptr %frontend2318, align 4
  %call2325 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.246) #5
  %tobool2326.not = icmp eq ptr %call2325, null
  br i1 %tobool2326.not, label %cond.end2331, label %if.then2322.if.then2334_crit_edge

if.then2322.if.then2334_crit_edge:                ; preds = %if.then2322
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then2334

cond.end2331:                                     ; preds = %if.then2322
  %call2329 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.247) #5
  %call2330 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.246) #5
  %tobool2333.not = icmp eq ptr %call2330, null
  br i1 %tobool2333.not, label %do.end2346, label %cond.end2331.if.then2334_crit_edge

cond.end2331.if.then2334_crit_edge:               ; preds = %cond.end2331
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then2334

if.then2334:                                      ; preds = %cond.end2331.if.then2334_crit_edge, %if.then2322.if.then2334_crit_edge
  %cond23323975 = phi ptr [ %call2330, %cond.end2331.if.then2334_crit_edge ], [ %call2325, %if.then2322.if.then2334_crit_edge ]
  %204 = ptrtoint ptr %frontend2318 to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %frontend2318, align 4
  %call2338 = tail call ptr %cond23323975(ptr noundef %205, i8 noundef zeroext 96, ptr noundef %i2c_adap2303) #5
  %cmp2339 = icmp eq ptr %call2338, null
  br i1 %cmp2339, label %if.then2341, label %if.then2334.if.end3023_crit_edge

if.then2334.if.end3023_crit_edge:                 ; preds = %if.then2334
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end3023

if.then2341:                                      ; preds = %if.then2334
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @__symbol_put(ptr noundef nonnull @.str.246) #5
  br label %do.end2356

do.end2346:                                       ; preds = %cond.end2331
  call void @__sanitizer_cov_trace_pc() #7
  %call2348 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.249) #8
  br label %do.end2356

do.end2356:                                       ; preds = %do.end2346, %if.then2341
  %call2358 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.252, ptr noundef nonnull @.str.2) #8
  br label %if.end3023

sw.bb2361:                                        ; preds = %if.end23
  %call2364 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.213) #5
  %tobool2365.not = icmp eq ptr %call2364, null
  br i1 %tobool2365.not, label %cond.end2370, label %sw.bb2361.if.then2373_crit_edge

sw.bb2361.if.then2373_crit_edge:                  ; preds = %sw.bb2361
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then2373

cond.end2370:                                     ; preds = %sw.bb2361
  %call2368 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.214) #5
  %call2369 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.213) #5
  %tobool2372.not = icmp eq ptr %call2369, null
  br i1 %tobool2372.not, label %do.end2383, label %cond.end2370.if.then2373_crit_edge

cond.end2370.if.then2373_crit_edge:               ; preds = %cond.end2370
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then2373

if.then2373:                                      ; preds = %cond.end2370.if.then2373_crit_edge, %sw.bb2361.if.then2373_crit_edge
  %cond23713980 = phi ptr [ %call2369, %cond.end2370.if.then2373_crit_edge ], [ %call2364, %sw.bb2361.if.then2373_crit_edge ]
  %i2c_adap2374 = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 27
  %call2375 = tail call ptr %cond23713980(ptr noundef nonnull @videomate_t750_zl10353_config, ptr noundef %i2c_adap2374) #5
  %cmp2376 = icmp eq ptr %call2375, null
  br i1 %cmp2376, label %if.then2378, label %if.then2394

if.then2378:                                      ; preds = %if.then2373
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @__symbol_put(ptr noundef nonnull @.str.213) #5
  br label %if.end2386.thread

do.end2383:                                       ; preds = %cond.end2370
  call void @__sanitizer_cov_trace_pc() #7
  %call2385 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.216) #8
  br label %if.end2386.thread

if.end2386.thread:                                ; preds = %do.end2383, %if.then2378
  %frontend23893982 = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call6, i32 0, i32 2, i32 1
  %206 = ptrtoint ptr %frontend23893982 to i32
  call void @__asan_store4_noabort(i32 %206)
  store ptr null, ptr %frontend23893982, align 4
  br label %if.end3023

if.then2394:                                      ; preds = %if.then2373
  %frontend2389 = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call6, i32 0, i32 2, i32 1
  %207 = ptrtoint ptr %frontend2389 to i32
  call void @__asan_store4_noabort(i32 %207)
  store ptr %call2375, ptr %frontend2389, align 4
  %call2397 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.256) #5
  %tobool2398.not = icmp eq ptr %call2397, null
  br i1 %tobool2398.not, label %cond.end2403, label %if.then2394.if.then2406_crit_edge

if.then2394.if.then2406_crit_edge:                ; preds = %if.then2394
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then2406

cond.end2403:                                     ; preds = %if.then2394
  %call2401 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.257) #5
  %call2402 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.256) #5
  %tobool2405.not = icmp eq ptr %call2402, null
  br i1 %tobool2405.not, label %do.end2418, label %cond.end2403.if.then2406_crit_edge

cond.end2403.if.then2406_crit_edge:               ; preds = %cond.end2403
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then2406

if.then2406:                                      ; preds = %cond.end2403.if.then2406_crit_edge, %if.then2394.if.then2406_crit_edge
  %cond24043986 = phi ptr [ %call2402, %cond.end2403.if.then2406_crit_edge ], [ %call2397, %if.then2394.if.then2406_crit_edge ]
  %208 = ptrtoint ptr %frontend2389 to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %frontend2389, align 4
  %call2410 = tail call ptr %cond24043986(ptr noundef %209, ptr noundef %i2c_adap2374, ptr noundef nonnull @videomate_t750_qt1010_config) #5
  %cmp2411 = icmp eq ptr %call2410, null
  br i1 %cmp2411, label %if.then2413, label %if.then2406.if.end3023_crit_edge

if.then2406.if.end3023_crit_edge:                 ; preds = %if.then2406
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end3023

if.then2413:                                      ; preds = %if.then2406
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @__symbol_put(ptr noundef nonnull @.str.256) #5
  br label %do.end2428

do.end2418:                                       ; preds = %cond.end2403
  call void @__sanitizer_cov_trace_pc() #7
  %call2420 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.259) #8
  br label %do.end2428

do.end2428:                                       ; preds = %do.end2418, %if.then2413
  %call2430 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.262) #8
  br label %if.end3023

sw.bb2433:                                        ; preds = %if.end23
  %call2436 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.43) #5
  %tobool2437.not = icmp eq ptr %call2436, null
  br i1 %tobool2437.not, label %cond.end2442, label %sw.bb2433.if.then2445_crit_edge

sw.bb2433.if.then2445_crit_edge:                  ; preds = %sw.bb2433
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then2445

cond.end2442:                                     ; preds = %sw.bb2433
  %call2440 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.44) #5
  %call2441 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.43) #5
  %tobool2444.not = icmp eq ptr %call2441, null
  br i1 %tobool2444.not, label %do.end2455, label %cond.end2442.if.then2445_crit_edge

cond.end2442.if.then2445_crit_edge:               ; preds = %cond.end2442
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then2445

if.then2445:                                      ; preds = %cond.end2442.if.then2445_crit_edge, %sw.bb2433.if.then2445_crit_edge
  %cond24433991 = phi ptr [ %call2441, %cond.end2442.if.then2445_crit_edge ], [ %call2436, %sw.bb2433.if.then2445_crit_edge ]
  %i2c_adap2446 = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 27
  %call2447 = tail call ptr %cond24433991(ptr noundef nonnull @zolid_tda10048_config, ptr noundef %i2c_adap2446) #5
  %cmp2448 = icmp eq ptr %call2447, null
  br i1 %cmp2448, label %if.then2450, label %if.then2466

if.then2450:                                      ; preds = %if.then2445
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @__symbol_put(ptr noundef nonnull @.str.43) #5
  br label %if.end2458.thread

do.end2455:                                       ; preds = %cond.end2442
  call void @__sanitizer_cov_trace_pc() #7
  %call2457 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46) #8
  br label %if.end2458.thread

if.end2458.thread:                                ; preds = %do.end2455, %if.then2450
  %frontend24613993 = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call6, i32 0, i32 2, i32 1
  %210 = ptrtoint ptr %frontend24613993 to i32
  call void @__asan_store4_noabort(i32 %210)
  store ptr null, ptr %frontend24613993, align 4
  br label %if.end3023

if.then2466:                                      ; preds = %if.then2445
  %frontend2461 = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call6, i32 0, i32 2, i32 1
  %211 = ptrtoint ptr %frontend2461 to i32
  call void @__asan_store4_noabort(i32 %211)
  store ptr %call2447, ptr %frontend2461, align 4
  %call2469 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.48) #5
  %tobool2470.not = icmp eq ptr %call2469, null
  br i1 %tobool2470.not, label %cond.end2475, label %if.then2466.if.then2478_crit_edge

if.then2466.if.then2478_crit_edge:                ; preds = %if.then2466
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then2478

cond.end2475:                                     ; preds = %if.then2466
  %call2473 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.49) #5
  %call2474 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.48) #5
  %tobool2477.not = icmp eq ptr %call2474, null
  br i1 %tobool2477.not, label %do.end2490, label %cond.end2475.if.then2478_crit_edge

cond.end2475.if.then2478_crit_edge:               ; preds = %cond.end2475
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then2478

if.then2478:                                      ; preds = %cond.end2475.if.then2478_crit_edge, %if.then2466.if.then2478_crit_edge
  %cond24763997 = phi ptr [ %call2474, %cond.end2475.if.then2478_crit_edge ], [ %call2469, %if.then2466.if.then2478_crit_edge ]
  %212 = ptrtoint ptr %frontend2461 to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %frontend2461, align 4
  %call2482 = tail call ptr %cond24763997(ptr noundef %213, ptr noundef %i2c_adap2446, i8 noundef zeroext 75, ptr noundef nonnull @tda829x_no_probe) #5
  %cmp2483 = icmp eq ptr %call2482, null
  br i1 %cmp2483, label %if.then2485, label %if.then2478.if.end2493_crit_edge

if.then2478.if.end2493_crit_edge:                 ; preds = %if.then2478
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end2493

if.then2485:                                      ; preds = %if.then2478
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @__symbol_put(ptr noundef nonnull @.str.48) #5
  br label %if.end2493

do.end2490:                                       ; preds = %cond.end2475
  call void @__sanitizer_cov_trace_pc() #7
  %call2492 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51) #8
  br label %if.end2493

if.end2493:                                       ; preds = %do.end2490, %if.then2485, %if.then2478.if.end2493_crit_edge
  %call2497 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.53) #5
  %tobool2498.not = icmp eq ptr %call2497, null
  br i1 %tobool2498.not, label %cond.end2503, label %if.end2493.if.then2506_crit_edge

if.end2493.if.then2506_crit_edge:                 ; preds = %if.end2493
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then2506

cond.end2503:                                     ; preds = %if.end2493
  %call2501 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.54) #5
  %call2502 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.53) #5
  %tobool2505.not = icmp eq ptr %call2502, null
  br i1 %tobool2505.not, label %do.end2518, label %cond.end2503.if.then2506_crit_edge

cond.end2503.if.then2506_crit_edge:               ; preds = %cond.end2503
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then2506

if.then2506:                                      ; preds = %cond.end2503.if.then2506_crit_edge, %if.end2493.if.then2506_crit_edge
  %cond25044000 = phi ptr [ %call2502, %cond.end2503.if.then2506_crit_edge ], [ %call2497, %if.end2493.if.then2506_crit_edge ]
  %214 = ptrtoint ptr %frontend2461 to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %frontend2461, align 4
  %call2510 = tail call ptr %cond25044000(ptr noundef %215, i8 noundef zeroext 96, ptr noundef %i2c_adap2446, ptr noundef nonnull @zolid_tda18271_config) #5
  %cmp2511 = icmp eq ptr %call2510, null
  br i1 %cmp2511, label %if.then2513, label %if.then2506.if.end3023_crit_edge

if.then2506.if.end3023_crit_edge:                 ; preds = %if.then2506
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end3023

if.then2513:                                      ; preds = %if.then2506
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @__symbol_put(ptr noundef nonnull @.str.53) #5
  br label %if.end3023

do.end2518:                                       ; preds = %cond.end2503
  call void @__sanitizer_cov_trace_pc() #7
  %call2520 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56) #8
  br label %if.end3023

sw.bb2524:                                        ; preds = %if.end23
  %call2527 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.43) #5
  %tobool2528.not = icmp eq ptr %call2527, null
  br i1 %tobool2528.not, label %cond.end2533, label %sw.bb2524.if.then2536_crit_edge

sw.bb2524.if.then2536_crit_edge:                  ; preds = %sw.bb2524
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then2536

cond.end2533:                                     ; preds = %sw.bb2524
  %call2531 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.44) #5
  %call2532 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.43) #5
  %tobool2535.not = icmp eq ptr %call2532, null
  br i1 %tobool2535.not, label %do.end2546, label %cond.end2533.if.then2536_crit_edge

cond.end2533.if.then2536_crit_edge:               ; preds = %cond.end2533
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then2536

if.then2536:                                      ; preds = %cond.end2533.if.then2536_crit_edge, %sw.bb2524.if.then2536_crit_edge
  %cond25344003 = phi ptr [ %call2532, %cond.end2533.if.then2536_crit_edge ], [ %call2527, %sw.bb2524.if.then2536_crit_edge ]
  %i2c_adap2537 = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 27
  %call2538 = tail call ptr %cond25344003(ptr noundef nonnull @dtv1000s_tda10048_config, ptr noundef %i2c_adap2537) #5
  %cmp2539 = icmp eq ptr %call2538, null
  br i1 %cmp2539, label %if.then2541, label %if.then2557

if.then2541:                                      ; preds = %if.then2536
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @__symbol_put(ptr noundef nonnull @.str.43) #5
  br label %if.end2549.thread

do.end2546:                                       ; preds = %cond.end2533
  call void @__sanitizer_cov_trace_pc() #7
  %call2548 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46) #8
  br label %if.end2549.thread

if.end2549.thread:                                ; preds = %do.end2546, %if.then2541
  %frontend25524005 = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call6, i32 0, i32 2, i32 1
  %216 = ptrtoint ptr %frontend25524005 to i32
  call void @__asan_store4_noabort(i32 %216)
  store ptr null, ptr %frontend25524005, align 4
  br label %if.end3023

if.then2557:                                      ; preds = %if.then2536
  %frontend2552 = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call6, i32 0, i32 2, i32 1
  %217 = ptrtoint ptr %frontend2552 to i32
  call void @__asan_store4_noabort(i32 %217)
  store ptr %call2538, ptr %frontend2552, align 4
  %call2560 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.48) #5
  %tobool2561.not = icmp eq ptr %call2560, null
  br i1 %tobool2561.not, label %cond.end2566, label %if.then2557.if.then2569_crit_edge

if.then2557.if.then2569_crit_edge:                ; preds = %if.then2557
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then2569

cond.end2566:                                     ; preds = %if.then2557
  %call2564 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.49) #5
  %call2565 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.48) #5
  %tobool2568.not = icmp eq ptr %call2565, null
  br i1 %tobool2568.not, label %do.end2581, label %cond.end2566.if.then2569_crit_edge

cond.end2566.if.then2569_crit_edge:               ; preds = %cond.end2566
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then2569

if.then2569:                                      ; preds = %cond.end2566.if.then2569_crit_edge, %if.then2557.if.then2569_crit_edge
  %cond25674009 = phi ptr [ %call2565, %cond.end2566.if.then2569_crit_edge ], [ %call2560, %if.then2557.if.then2569_crit_edge ]
  %218 = ptrtoint ptr %frontend2552 to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %frontend2552, align 4
  %call2573 = tail call ptr %cond25674009(ptr noundef %219, ptr noundef %i2c_adap2537, i8 noundef zeroext 75, ptr noundef nonnull @tda829x_no_probe) #5
  %cmp2574 = icmp eq ptr %call2573, null
  br i1 %cmp2574, label %if.then2576, label %if.then2569.if.end2584_crit_edge

if.then2569.if.end2584_crit_edge:                 ; preds = %if.then2569
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end2584

if.then2576:                                      ; preds = %if.then2569
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @__symbol_put(ptr noundef nonnull @.str.48) #5
  br label %if.end2584

do.end2581:                                       ; preds = %cond.end2566
  call void @__sanitizer_cov_trace_pc() #7
  %call2583 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51) #8
  br label %if.end2584

if.end2584:                                       ; preds = %do.end2581, %if.then2576, %if.then2569.if.end2584_crit_edge
  %call2588 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.53) #5
  %tobool2589.not = icmp eq ptr %call2588, null
  br i1 %tobool2589.not, label %cond.end2594, label %if.end2584.if.then2597_crit_edge

if.end2584.if.then2597_crit_edge:                 ; preds = %if.end2584
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then2597

cond.end2594:                                     ; preds = %if.end2584
  %call2592 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.54) #5
  %call2593 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.53) #5
  %tobool2596.not = icmp eq ptr %call2593, null
  br i1 %tobool2596.not, label %do.end2609, label %cond.end2594.if.then2597_crit_edge

cond.end2594.if.then2597_crit_edge:               ; preds = %cond.end2594
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then2597

if.then2597:                                      ; preds = %cond.end2594.if.then2597_crit_edge, %if.end2584.if.then2597_crit_edge
  %cond25954012 = phi ptr [ %call2593, %cond.end2594.if.then2597_crit_edge ], [ %call2588, %if.end2584.if.then2597_crit_edge ]
  %220 = ptrtoint ptr %frontend2552 to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %frontend2552, align 4
  %call2601 = tail call ptr %cond25954012(ptr noundef %221, i8 noundef zeroext 96, ptr noundef %i2c_adap2537, ptr noundef nonnull @dtv1000s_tda18271_config) #5
  %cmp2602 = icmp eq ptr %call2601, null
  br i1 %cmp2602, label %if.then2604, label %if.then2597.if.end3023_crit_edge

if.then2597.if.end3023_crit_edge:                 ; preds = %if.then2597
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end3023

if.then2604:                                      ; preds = %if.then2597
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @__symbol_put(ptr noundef nonnull @.str.53) #5
  br label %if.end3023

do.end2609:                                       ; preds = %cond.end2594
  call void @__sanitizer_cov_trace_pc() #7
  %call2611 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56) #8
  br label %if.end3023

sw.bb2615:                                        ; preds = %if.end23
  %call2616 = tail call i32 @saa7134_tuner_callback(ptr noundef %dev, i32 noundef 0, i32 noundef 0, i32 noundef 1) #5
  %call2619 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.276) #5
  %tobool2620.not = icmp eq ptr %call2619, null
  br i1 %tobool2620.not, label %cond.end2625, label %sw.bb2615.if.then2628_crit_edge

sw.bb2615.if.then2628_crit_edge:                  ; preds = %sw.bb2615
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then2628

cond.end2625:                                     ; preds = %sw.bb2615
  %call2623 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.277) #5
  %call2624 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.276) #5
  %tobool2627.not = icmp eq ptr %call2624, null
  br i1 %tobool2627.not, label %do.end2638, label %cond.end2625.if.then2628_crit_edge

cond.end2625.if.then2628_crit_edge:               ; preds = %cond.end2625
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then2628

if.then2628:                                      ; preds = %cond.end2625.if.then2628_crit_edge, %sw.bb2615.if.then2628_crit_edge
  %cond26264015 = phi ptr [ %call2624, %cond.end2625.if.then2628_crit_edge ], [ %call2619, %sw.bb2615.if.then2628_crit_edge ]
  %i2c_adap2629 = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 27
  %call2630 = tail call ptr %cond26264015(ptr noundef nonnull @kworld_mb86a20s_config, ptr noundef %i2c_adap2629) #5
  %cmp2631 = icmp eq ptr %call2630, null
  br i1 %cmp2631, label %if.then2633, label %if.then2649

if.then2633:                                      ; preds = %if.then2628
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @__symbol_put(ptr noundef nonnull @.str.276) #5
  br label %if.end2641.thread

do.end2638:                                       ; preds = %cond.end2625
  call void @__sanitizer_cov_trace_pc() #7
  %call2640 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.279) #8
  br label %if.end2641.thread

if.end2641.thread:                                ; preds = %do.end2638, %if.then2633
  %frontend26444017 = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call6, i32 0, i32 2, i32 1
  %222 = ptrtoint ptr %frontend26444017 to i32
  call void @__asan_store4_noabort(i32 %222)
  store ptr null, ptr %frontend26444017, align 4
  br label %if.end3023

if.then2649:                                      ; preds = %if.then2628
  %frontend2644 = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call6, i32 0, i32 2, i32 1
  %223 = ptrtoint ptr %frontend2644 to i32
  call void @__asan_store4_noabort(i32 %223)
  store ptr %call2630, ptr %frontend2644, align 4
  %call2652 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.48) #5
  %tobool2653.not = icmp eq ptr %call2652, null
  br i1 %tobool2653.not, label %cond.end2658, label %if.then2649.if.then2661_crit_edge

if.then2649.if.then2661_crit_edge:                ; preds = %if.then2649
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then2661

cond.end2658:                                     ; preds = %if.then2649
  %call2656 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.49) #5
  %call2657 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.48) #5
  %tobool2660.not = icmp eq ptr %call2657, null
  br i1 %tobool2660.not, label %do.end2673, label %cond.end2658.if.then2661_crit_edge

cond.end2658.if.then2661_crit_edge:               ; preds = %cond.end2658
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then2661

if.then2661:                                      ; preds = %cond.end2658.if.then2661_crit_edge, %if.then2649.if.then2661_crit_edge
  %cond26594021 = phi ptr [ %call2657, %cond.end2658.if.then2661_crit_edge ], [ %call2652, %if.then2649.if.then2661_crit_edge ]
  %224 = ptrtoint ptr %frontend2644 to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %frontend2644, align 4
  %call2665 = tail call ptr %cond26594021(ptr noundef %225, ptr noundef %i2c_adap2629, i8 noundef zeroext 75, ptr noundef nonnull @tda829x_no_probe) #5
  %cmp2666 = icmp eq ptr %call2665, null
  br i1 %cmp2666, label %if.then2668, label %if.then2661.if.end2676_crit_edge

if.then2661.if.end2676_crit_edge:                 ; preds = %if.then2661
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end2676

if.then2668:                                      ; preds = %if.then2661
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @__symbol_put(ptr noundef nonnull @.str.48) #5
  br label %if.end2676

do.end2673:                                       ; preds = %cond.end2658
  call void @__sanitizer_cov_trace_pc() #7
  %call2675 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51) #8
  br label %if.end2676

if.end2676:                                       ; preds = %do.end2673, %if.then2668, %if.then2661.if.end2676_crit_edge
  %226 = ptrtoint ptr %frontend2644 to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %frontend2644, align 4
  %i2c_gate_ctrl2681 = getelementptr inbounds %struct.dvb_frontend, ptr %227, i32 0, i32 1, i32 28
  %228 = ptrtoint ptr %i2c_gate_ctrl2681 to i32
  call void @__asan_store4_noabort(i32 %228)
  store ptr @kworld_sbtvd_gate_ctrl, ptr %i2c_gate_ctrl2681, align 4
  %call2684 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.53) #5
  %tobool2685.not = icmp eq ptr %call2684, null
  br i1 %tobool2685.not, label %cond.end2690, label %if.end2676.if.then2693_crit_edge

if.end2676.if.then2693_crit_edge:                 ; preds = %if.end2676
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then2693

cond.end2690:                                     ; preds = %if.end2676
  %call2688 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.54) #5
  %call2689 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.53) #5
  %tobool2692.not = icmp eq ptr %call2689, null
  br i1 %tobool2692.not, label %do.end2705, label %cond.end2690.if.then2693_crit_edge

cond.end2690.if.then2693_crit_edge:               ; preds = %cond.end2690
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then2693

if.then2693:                                      ; preds = %cond.end2690.if.then2693_crit_edge, %if.end2676.if.then2693_crit_edge
  %cond26914024 = phi ptr [ %call2689, %cond.end2690.if.then2693_crit_edge ], [ %call2684, %if.end2676.if.then2693_crit_edge ]
  %229 = ptrtoint ptr %frontend2644 to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %frontend2644, align 4
  %call2697 = tail call ptr %cond26914024(ptr noundef %230, i8 noundef zeroext 96, ptr noundef %i2c_adap2629, ptr noundef nonnull @kworld_tda18271_config) #5
  %cmp2698 = icmp eq ptr %call2697, null
  br i1 %cmp2698, label %if.then2700, label %if.then2693.if.end3023_crit_edge

if.then2693.if.end3023_crit_edge:                 ; preds = %if.then2693
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end3023

if.then2700:                                      ; preds = %if.then2693
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @__symbol_put(ptr noundef nonnull @.str.53) #5
  br label %if.end3023

do.end2705:                                       ; preds = %cond.end2690
  call void @__sanitizer_cov_trace_pc() #7
  %call2707 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56) #8
  br label %if.end3023

sw.bb2711:                                        ; preds = %if.end23
  %call2714 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.285) #5
  %tobool2715.not = icmp eq ptr %call2714, null
  br i1 %tobool2715.not, label %cond.end2720, label %sw.bb2711.if.then2723_crit_edge

sw.bb2711.if.then2723_crit_edge:                  ; preds = %sw.bb2711
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then2723

cond.end2720:                                     ; preds = %sw.bb2711
  %call2718 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.286) #5
  %call2719 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.285) #5
  %tobool2722.not = icmp eq ptr %call2719, null
  br i1 %tobool2722.not, label %do.end2733, label %cond.end2720.if.then2723_crit_edge

cond.end2720.if.then2723_crit_edge:               ; preds = %cond.end2720
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then2723

if.then2723:                                      ; preds = %cond.end2720.if.then2723_crit_edge, %sw.bb2711.if.then2723_crit_edge
  %cond27214027 = phi ptr [ %call2719, %cond.end2720.if.then2723_crit_edge ], [ %call2714, %sw.bb2711.if.then2723_crit_edge ]
  %i2c_adap2724 = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 27
  %call2725 = tail call ptr %cond27214027(ptr noundef nonnull @prohdtv_pro2_lgs8g75_config, ptr noundef %i2c_adap2724) #5
  %cmp2726 = icmp eq ptr %call2725, null
  br i1 %cmp2726, label %if.then2728, label %if.then2744

if.then2728:                                      ; preds = %if.then2723
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @__symbol_put(ptr noundef nonnull @.str.285) #5
  br label %if.end2736.thread

do.end2733:                                       ; preds = %cond.end2720
  call void @__sanitizer_cov_trace_pc() #7
  %call2735 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.288) #8
  br label %if.end2736.thread

if.end2736.thread:                                ; preds = %do.end2733, %if.then2728
  %frontend27394029 = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call6, i32 0, i32 2, i32 1
  %231 = ptrtoint ptr %frontend27394029 to i32
  call void @__asan_store4_noabort(i32 %231)
  store ptr null, ptr %frontend27394029, align 4
  br label %if.end3023

if.then2744:                                      ; preds = %if.then2723
  %frontend2739 = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call6, i32 0, i32 2, i32 1
  %232 = ptrtoint ptr %frontend2739 to i32
  call void @__asan_store4_noabort(i32 %232)
  store ptr %call2725, ptr %frontend2739, align 4
  %call2747 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.48) #5
  %tobool2748.not = icmp eq ptr %call2747, null
  br i1 %tobool2748.not, label %cond.end2753, label %if.then2744.if.then2756_crit_edge

if.then2744.if.then2756_crit_edge:                ; preds = %if.then2744
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then2756

cond.end2753:                                     ; preds = %if.then2744
  %call2751 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.49) #5
  %call2752 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.48) #5
  %tobool2755.not = icmp eq ptr %call2752, null
  br i1 %tobool2755.not, label %do.end2768, label %cond.end2753.if.then2756_crit_edge

cond.end2753.if.then2756_crit_edge:               ; preds = %cond.end2753
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then2756

if.then2756:                                      ; preds = %cond.end2753.if.then2756_crit_edge, %if.then2744.if.then2756_crit_edge
  %cond27544033 = phi ptr [ %call2752, %cond.end2753.if.then2756_crit_edge ], [ %call2747, %if.then2744.if.then2756_crit_edge ]
  %233 = ptrtoint ptr %frontend2739 to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %frontend2739, align 4
  %call2760 = tail call ptr %cond27544033(ptr noundef %234, ptr noundef %i2c_adap2724, i8 noundef zeroext 75, ptr noundef nonnull @tda829x_no_probe) #5
  %cmp2761 = icmp eq ptr %call2760, null
  br i1 %cmp2761, label %if.then2763, label %if.then2756.if.end2771_crit_edge

if.then2756.if.end2771_crit_edge:                 ; preds = %if.then2756
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end2771

if.then2763:                                      ; preds = %if.then2756
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @__symbol_put(ptr noundef nonnull @.str.48) #5
  br label %if.end2771

do.end2768:                                       ; preds = %cond.end2753
  call void @__sanitizer_cov_trace_pc() #7
  %call2770 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51) #8
  br label %if.end2771

if.end2771:                                       ; preds = %do.end2768, %if.then2763, %if.then2756.if.end2771_crit_edge
  %call2775 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.53) #5
  %tobool2776.not = icmp eq ptr %call2775, null
  br i1 %tobool2776.not, label %cond.end2781, label %if.end2771.if.then2784_crit_edge

if.end2771.if.then2784_crit_edge:                 ; preds = %if.end2771
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then2784

cond.end2781:                                     ; preds = %if.end2771
  %call2779 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.54) #5
  %call2780 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.53) #5
  %tobool2783.not = icmp eq ptr %call2780, null
  br i1 %tobool2783.not, label %do.end2796, label %cond.end2781.if.then2784_crit_edge

cond.end2781.if.then2784_crit_edge:               ; preds = %cond.end2781
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then2784

if.then2784:                                      ; preds = %cond.end2781.if.then2784_crit_edge, %if.end2771.if.then2784_crit_edge
  %cond27824036 = phi ptr [ %call2780, %cond.end2781.if.then2784_crit_edge ], [ %call2775, %if.end2771.if.then2784_crit_edge ]
  %235 = ptrtoint ptr %frontend2739 to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %frontend2739, align 4
  %call2788 = tail call ptr %cond27824036(ptr noundef %236, i8 noundef zeroext 96, ptr noundef %i2c_adap2724, ptr noundef nonnull @prohdtv_pro2_tda18271_config) #5
  %cmp2789 = icmp eq ptr %call2788, null
  br i1 %cmp2789, label %if.then2791, label %if.then2784.if.end3023_crit_edge

if.then2784.if.end3023_crit_edge:                 ; preds = %if.then2784
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end3023

if.then2791:                                      ; preds = %if.then2784
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @__symbol_put(ptr noundef nonnull @.str.53) #5
  br label %if.end3023

do.end2796:                                       ; preds = %cond.end2781
  call void @__sanitizer_cov_trace_pc() #7
  %call2798 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56) #8
  br label %if.end3023

sw.bb2802:                                        ; preds = %if.end23
  tail call void @saa7134_set_gpio(ptr noundef %dev, i32 noundef 23, i32 noundef 0) #5
  tail call void @saa7134_set_gpio(ptr noundef %dev, i32 noundef 9, i32 noundef 0) #5
  tail call void @saa7134_set_gpio(ptr noundef %dev, i32 noundef 25, i32 noundef 1) #5
  tail call void @msleep(i32 noundef 1) #5
  %call2805 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.231) #5
  %tobool2806.not = icmp eq ptr %call2805, null
  br i1 %tobool2806.not, label %cond.end2811, label %sw.bb2802.if.then2814_crit_edge

sw.bb2802.if.then2814_crit_edge:                  ; preds = %sw.bb2802
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then2814

cond.end2811:                                     ; preds = %sw.bb2802
  %call2809 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.232) #5
  %call2810 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.231) #5
  %tobool2813.not = icmp eq ptr %call2810, null
  br i1 %tobool2813.not, label %do.end2824, label %cond.end2811.if.then2814_crit_edge

cond.end2811.if.then2814_crit_edge:               ; preds = %cond.end2811
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then2814

if.then2814:                                      ; preds = %cond.end2811.if.then2814_crit_edge, %sw.bb2802.if.then2814_crit_edge
  %cond28124039 = phi ptr [ %call2810, %cond.end2811.if.then2814_crit_edge ], [ %call2805, %sw.bb2802.if.then2814_crit_edge ]
  %i2c_adap2815 = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 27
  %call2816 = tail call ptr %cond28124039(ptr noundef nonnull @zl10313_avermedia_a706_config, ptr noundef %i2c_adap2815) #5
  %cmp2817 = icmp eq ptr %call2816, null
  br i1 %cmp2817, label %if.then2819, label %if.then2834

if.then2819:                                      ; preds = %if.then2814
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @__symbol_put(ptr noundef nonnull @.str.231) #5
  br label %if.end2827.thread

do.end2824:                                       ; preds = %cond.end2811
  call void @__sanitizer_cov_trace_pc() #7
  %call2826 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.234) #8
  br label %if.end2827.thread

if.end2827.thread:                                ; preds = %do.end2824, %if.then2819
  %frontend28304041 = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call6, i32 0, i32 2, i32 1
  %237 = ptrtoint ptr %frontend28304041 to i32
  call void @__asan_store4_noabort(i32 %237)
  store ptr null, ptr %frontend28304041, align 4
  br label %if.end3023

if.then2834:                                      ; preds = %if.then2814
  %frontend2830 = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call6, i32 0, i32 2, i32 1
  %238 = ptrtoint ptr %frontend2830 to i32
  call void @__asan_store4_noabort(i32 %238)
  store ptr %call2816, ptr %frontend2830, align 4
  %i2c_gate_ctrl2838 = getelementptr inbounds %struct.dvb_frontend, ptr %call2816, i32 0, i32 1, i32 28
  %239 = ptrtoint ptr %i2c_gate_ctrl2838 to i32
  call void @__asan_store4_noabort(i32 %239)
  store ptr null, ptr %i2c_gate_ctrl2838, align 4
  %call2841 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.246) #5
  %tobool2842.not = icmp eq ptr %call2841, null
  br i1 %tobool2842.not, label %cond.end2847, label %if.then2834.if.then2850_crit_edge

if.then2834.if.then2850_crit_edge:                ; preds = %if.then2834
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then2850

cond.end2847:                                     ; preds = %if.then2834
  %call2845 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.247) #5
  %call2846 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.246) #5
  %tobool2849.not = icmp eq ptr %call2846, null
  br i1 %tobool2849.not, label %do.end2862, label %cond.end2847.if.then2850_crit_edge

cond.end2847.if.then2850_crit_edge:               ; preds = %cond.end2847
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then2850

if.then2850:                                      ; preds = %cond.end2847.if.then2850_crit_edge, %if.then2834.if.then2850_crit_edge
  %cond28484045 = phi ptr [ %call2846, %cond.end2847.if.then2850_crit_edge ], [ %call2841, %if.then2834.if.then2850_crit_edge ]
  %240 = ptrtoint ptr %frontend2830 to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %frontend2830, align 4
  %call2854 = tail call ptr %cond28484045(ptr noundef %241, i8 noundef zeroext 96, ptr noundef %i2c_adap2815) #5
  %cmp2855 = icmp eq ptr %call2854, null
  br i1 %cmp2855, label %if.then2857, label %if.then2850.if.end3023_crit_edge

if.then2850.if.end3023_crit_edge:                 ; preds = %if.then2850
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end3023

if.then2857:                                      ; preds = %if.then2850
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @__symbol_put(ptr noundef nonnull @.str.246) #5
  br label %do.end2872

do.end2862:                                       ; preds = %cond.end2847
  call void @__sanitizer_cov_trace_pc() #7
  %call2864 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.249) #8
  br label %do.end2872

do.end2872:                                       ; preds = %do.end2862, %if.then2857
  %call2874 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.252, ptr noundef nonnull @.str.2) #8
  br label %if.end3023

sw.bb2877:                                        ; preds = %if.end23
  %call2880 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.130) #5
  %tobool2881.not = icmp eq ptr %call2880, null
  br i1 %tobool2881.not, label %cond.end2886, label %sw.bb2877.if.then2889_crit_edge

sw.bb2877.if.then2889_crit_edge:                  ; preds = %sw.bb2877
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then2889

cond.end2886:                                     ; preds = %sw.bb2877
  %call2884 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.131) #5
  %call2885 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.130) #5
  %tobool2888.not = icmp eq ptr %call2885, null
  br i1 %tobool2888.not, label %do.end2899, label %cond.end2886.if.then2889_crit_edge

cond.end2886.if.then2889_crit_edge:               ; preds = %cond.end2886
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then2889

if.then2889:                                      ; preds = %cond.end2886.if.then2889_crit_edge, %sw.bb2877.if.then2889_crit_edge
  %cond28874050 = phi ptr [ %call2885, %cond.end2886.if.then2889_crit_edge ], [ %call2880, %sw.bb2877.if.then2889_crit_edge ]
  %i2c_adap2890 = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 27
  %call2891 = tail call ptr %cond28874050(ptr noundef nonnull @hdtv200h_s5h1411_config, ptr noundef %i2c_adap2890) #5
  %cmp2892 = icmp eq ptr %call2891, null
  br i1 %cmp2892, label %if.then2894, label %if.then2909

if.then2894:                                      ; preds = %if.then2889
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @__symbol_put(ptr noundef nonnull @.str.130) #5
  br label %if.end2902.thread

do.end2899:                                       ; preds = %cond.end2886
  call void @__sanitizer_cov_trace_pc() #7
  %call2901 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.133) #8
  br label %if.end2902.thread

if.end2902.thread:                                ; preds = %do.end2899, %if.then2894
  %frontend29054052 = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call6, i32 0, i32 2, i32 1
  %242 = ptrtoint ptr %frontend29054052 to i32
  call void @__asan_store4_noabort(i32 %242)
  store ptr null, ptr %frontend29054052, align 4
  br label %if.end3023

if.then2909:                                      ; preds = %if.then2889
  %frontend2905 = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call6, i32 0, i32 2, i32 1
  %243 = ptrtoint ptr %frontend2905 to i32
  call void @__asan_store4_noabort(i32 %243)
  store ptr %call2891, ptr %frontend2905, align 4
  %call2912 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.48) #5
  %tobool2913.not = icmp eq ptr %call2912, null
  br i1 %tobool2913.not, label %cond.end2918, label %if.then2909.if.then2921_crit_edge

if.then2909.if.then2921_crit_edge:                ; preds = %if.then2909
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then2921

cond.end2918:                                     ; preds = %if.then2909
  %call2916 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.49) #5
  %call2917 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.48) #5
  %tobool2920.not = icmp eq ptr %call2917, null
  br i1 %tobool2920.not, label %do.end2933, label %cond.end2918.if.then2921_crit_edge

cond.end2918.if.then2921_crit_edge:               ; preds = %cond.end2918
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then2921

if.then2921:                                      ; preds = %cond.end2918.if.then2921_crit_edge, %if.then2909.if.then2921_crit_edge
  %cond29194056 = phi ptr [ %call2917, %cond.end2918.if.then2921_crit_edge ], [ %call2912, %if.then2909.if.then2921_crit_edge ]
  %244 = ptrtoint ptr %frontend2905 to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %frontend2905, align 4
  %call2925 = tail call ptr %cond29194056(ptr noundef %245, ptr noundef %i2c_adap2890, i8 noundef zeroext 75, ptr noundef nonnull @tda829x_no_probe) #5
  %cmp2926 = icmp eq ptr %call2925, null
  br i1 %cmp2926, label %if.then2928, label %if.then2921.if.end2936_crit_edge

if.then2921.if.end2936_crit_edge:                 ; preds = %if.then2921
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end2936

if.then2928:                                      ; preds = %if.then2921
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @__symbol_put(ptr noundef nonnull @.str.48) #5
  br label %if.end2936

do.end2933:                                       ; preds = %cond.end2918
  call void @__sanitizer_cov_trace_pc() #7
  %call2935 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51) #8
  br label %if.end2936

if.end2936:                                       ; preds = %do.end2933, %if.then2928, %if.then2921.if.end2936_crit_edge
  %call2940 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.53) #5
  %tobool2941.not = icmp eq ptr %call2940, null
  br i1 %tobool2941.not, label %cond.end2946, label %if.end2936.if.then2949_crit_edge

if.end2936.if.then2949_crit_edge:                 ; preds = %if.end2936
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then2949

cond.end2946:                                     ; preds = %if.end2936
  %call2944 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.54) #5
  %call2945 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.53) #5
  %tobool2948.not = icmp eq ptr %call2945, null
  br i1 %tobool2948.not, label %do.end2961, label %cond.end2946.if.then2949_crit_edge

cond.end2946.if.then2949_crit_edge:               ; preds = %cond.end2946
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then2949

if.then2949:                                      ; preds = %cond.end2946.if.then2949_crit_edge, %if.end2936.if.then2949_crit_edge
  %cond29474059 = phi ptr [ %call2945, %cond.end2946.if.then2949_crit_edge ], [ %call2940, %if.end2936.if.then2949_crit_edge ]
  %246 = ptrtoint ptr %frontend2905 to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %frontend2905, align 4
  %call2953 = tail call ptr %cond29474059(ptr noundef %247, i8 noundef zeroext 96, ptr noundef %i2c_adap2890, ptr noundef nonnull @hdtv200h_tda18271_config) #5
  %cmp2954 = icmp eq ptr %call2953, null
  br i1 %cmp2954, label %if.then2956, label %if.then2949.if.end3023_crit_edge

if.then2949.if.end3023_crit_edge:                 ; preds = %if.then2949
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end3023

if.then2956:                                      ; preds = %if.then2949
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @__symbol_put(ptr noundef nonnull @.str.53) #5
  br label %if.end3023

do.end2961:                                       ; preds = %cond.end2946
  call void @__sanitizer_cov_trace_pc() #7
  %call2963 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56) #8
  br label %if.end3023

do.end2969:                                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #7
  %call2971 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.307) #8
  br label %if.end3023

if.then2973:                                      ; preds = %do.end1786, %if.then1781, %if.then1776.if.then2973_crit_edge, %do.end1629, %if.then1624, %if.then1619.if.then2973_crit_edge, %do.end172, %if.then167, %if.then163.if.then2973_crit_edge
  %__r152.0.sink = phi ptr [ null, %if.then167 ], [ %call165, %if.then163.if.then2973_crit_edge ], [ null, %do.end172 ], [ null, %if.then1624 ], [ %call1621, %if.then1619.if.then2973_crit_edge ], [ null, %do.end1629 ], [ null, %if.then1781 ], [ %call1778, %if.then1776.if.then2973_crit_edge ], [ null, %do.end1786 ]
  %frontend178 = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call6, i32 0, i32 2, i32 1
  %248 = ptrtoint ptr %frontend178 to i32
  call void @__asan_store4_noabort(i32 %248)
  store ptr %__r152.0.sink, ptr %frontend178, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %cfg) #5
  %249 = getelementptr inbounds i8, ptr %cfg, i32 4
  %250 = ptrtoint ptr %249 to i32
  call void @__asan_store4_noabort(i32 %250)
  store i32 -1, ptr %249, align 4
  %i2c_adap2976 = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 27
  %251 = ptrtoint ptr %cfg to i32
  call void @__asan_store4_noabort(i32 %251)
  store ptr %i2c_adap2976, ptr %cfg, align 4
  %i2c_addr = getelementptr inbounds %struct.xc2028_config, ptr %cfg, i32 0, i32 1
  %252 = ptrtoint ptr %i2c_addr to i32
  call void @__asan_store1_noabort(i32 %252)
  store i8 97, ptr %i2c_addr, align 4
  %ctrl = getelementptr inbounds %struct.xc2028_config, ptr %cfg, i32 0, i32 2
  %253 = ptrtoint ptr %ctrl to i32
  call void @__asan_store4_noabort(i32 %253)
  store ptr null, ptr %ctrl, align 4
  %frontend2978 = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call6, i32 0, i32 2, i32 1
  %254 = ptrtoint ptr %frontend2978 to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %frontend2978, align 4
  %tobool2979.not = icmp eq ptr %255, null
  br i1 %tobool2979.not, label %if.then2973.cleanup3019.thread_crit_edge, label %if.end2981

if.then2973.cleanup3019.thread_crit_edge:         ; preds = %if.then2973
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup3019.thread

if.end2981:                                       ; preds = %if.then2973
  %call2984 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.309) #5
  %tobool2985.not = icmp eq ptr %call2984, null
  br i1 %tobool2985.not, label %cond.end2990, label %if.end2981.if.then2993_crit_edge

if.end2981.if.then2993_crit_edge:                 ; preds = %if.end2981
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then2993

cond.end2990:                                     ; preds = %if.end2981
  %call2988 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.310) #5
  %call2989 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.309) #5
  %tobool2992.not = icmp eq ptr %call2989, null
  br i1 %tobool2992.not, label %do.end3004, label %cond.end2990.if.then2993_crit_edge

cond.end2990.if.then2993_crit_edge:               ; preds = %cond.end2990
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then2993

if.then2993:                                      ; preds = %cond.end2990.if.then2993_crit_edge, %if.end2981.if.then2993_crit_edge
  %cond29914062 = phi ptr [ %call2989, %cond.end2990.if.then2993_crit_edge ], [ %call2984, %if.end2981.if.then2993_crit_edge ]
  %256 = ptrtoint ptr %frontend2978 to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %frontend2978, align 4
  %call2996 = call ptr %cond29914062(ptr noundef %257, ptr noundef nonnull %cfg) #5
  %cmp2997 = icmp eq ptr %call2996, null
  br i1 %cmp2997, label %if.then2999, label %cleanup3019

if.then2999:                                      ; preds = %if.then2993
  call void @__sanitizer_cov_trace_pc() #7
  call void @__symbol_put(ptr noundef nonnull @.str.309) #5
  br label %do.end3013

do.end3004:                                       ; preds = %cond.end2990
  call void @__sanitizer_cov_trace_pc() #7
  %call3006 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.312) #8
  br label %do.end3013

do.end3013:                                       ; preds = %do.end3004, %if.then2999
  %call3017 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.315, ptr noundef %name) #8
  br label %cleanup3019.thread

cleanup3019.thread:                               ; preds = %do.end3013, %if.then2973.cleanup3019.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %cfg) #5
  br label %detach_frontend

cleanup3019:                                      ; preds = %if.then2993
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %cfg) #5
  br label %if.end3023

if.end3023:                                       ; preds = %cleanup3019, %do.end2969, %do.end2961, %if.then2956, %if.then2949.if.end3023_crit_edge, %if.end2902.thread, %do.end2872, %if.then2850.if.end3023_crit_edge, %if.end2827.thread, %do.end2796, %if.then2791, %if.then2784.if.end3023_crit_edge, %if.end2736.thread, %do.end2705, %if.then2700, %if.then2693.if.end3023_crit_edge, %if.end2641.thread, %do.end2609, %if.then2604, %if.then2597.if.end3023_crit_edge, %if.end2549.thread, %do.end2518, %if.then2513, %if.then2506.if.end3023_crit_edge, %if.end2458.thread, %do.end2428, %if.then2406.if.end3023_crit_edge, %if.end2386.thread, %do.end2356, %if.then2334.if.end3023_crit_edge, %if.end2315.thread, %do.end2285, %if.then2263.if.end3023_crit_edge, %if.end2244.thread, %do.end2213, %if.then2208, %if.then2201.if.end3023_crit_edge, %if.end2182.thread, %do.end2151, %if.then2146, %if.then2139.if.end3023_crit_edge, %if.end2120.thread, %do.end2089, %if.then2084, %if.then2077.if.end3023_crit_edge, %if.end2058.thread, %sw.bb2027.if.end3023_crit_edge, %if.then1999.if.end3023_crit_edge, %if.end1943.thread, %if.then1912.if.end3023_crit_edge, %if.then1882.if.end3023_crit_edge, %if.end1826.thread, %if.then1795.if.end3023_crit_edge, %cleanup1760, %if.end1661.thread, %sw.bb1585.if.end3023_crit_edge, %sw.bb1579.if.end3023_crit_edge, %if.then1552.if.end3023_crit_edge, %if.end1496.thread, %sw.bb1465.if.end3023_crit_edge, %sw.bb1459.if.end3023_crit_edge, %sw.bb1453.if.end3023_crit_edge, %sw.bb1447.if.end3023_crit_edge, %sw.bb1441.if.end3023_crit_edge, %sw.bb1435.if.end3023_crit_edge, %sw.bb1429.if.end3023_crit_edge, %if.then1417, %if.end1410.thread, %do.end1379, %if.then1374, %if.then1367.if.end3023_crit_edge, %if.end1339.thread, %if.then1287.if.end3023_crit_edge, %if.end1231.thread, %do.end1200, %if.then1195, %if.then1188.if.end3023_crit_edge, %if.end1140.thread, %do.end1108, %if.then1103, %if.then1096.if.end3023_crit_edge, %if.end1077.thread, %do.end1046, %if.then1041, %if.then1035.if.end3023_crit_edge, %if.end1016.thread, %cleanup.thread, %if.end875.thread, %if.then844.if.end3023_crit_edge, %sw.bb836.if.end3023_crit_edge, %do.end832, %if.then802.if.end3023_crit_edge, %if.then733.if.end3023_crit_edge, %if.end679.thread, %if.then650.if.end3023_crit_edge, %sw.bb643.if.end3023_crit_edge, %sw.bb638.if.end3023_crit_edge, %do.end632, %if.then627, %if.then621.if.end3023_crit_edge, %if.end575.thread, %sw.bb546.if.end3023_crit_edge, %sw.bb541.if.end3023_crit_edge, %sw.bb536.if.end3023_crit_edge, %do.end530, %if.then525, %if.then519.if.end3023_crit_edge, %if.end473.thread, %sw.bb444.if.end3023_crit_edge, %if.then432, %if.end425.thread, %if.then375, %if.end368.thread, %if.then320, %if.end313.thread, %sw.bb284.if.end3023_crit_edge, %if.then273, %if.end266.thread, %do.end236, %if.then231, %if.then225.if.end3023_crit_edge, %if.end203.thread, %do.end129, %if.then124, %if.then118.if.end3023_crit_edge, %if.end99.thread, %if.then54, %if.end48.thread
  %frontend3025 = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call6, i32 0, i32 2, i32 1
  %258 = ptrtoint ptr %frontend3025 to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load ptr, ptr %frontend3025, align 4
  %cmp3026 = icmp eq ptr %259, null
  br i1 %cmp3026, label %do.end3031, label %if.end3036

do.end3031:                                       ; preds = %if.end3023
  call void @__sanitizer_cov_trace_pc() #7
  %call3035 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.318, ptr noundef %name) #8
  br label %detach_frontend

if.end3036:                                       ; preds = %if.end3023
  %callback = getelementptr inbounds %struct.dvb_frontend, ptr %259, i32 0, i32 9
  %260 = ptrtoint ptr %callback to i32
  call void @__asan_store4_noabort(i32 %260)
  store ptr @saa7134_tuner_callback, ptr %callback, align 4
  %261 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load ptr, ptr %pci, align 4
  %dev3041 = getelementptr inbounds %struct.pci_dev, ptr %262, i32 0, i32 44
  %media_dev = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 89
  %263 = ptrtoint ptr %media_dev to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load ptr, ptr %media_dev, align 8
  %call3042 = call i32 @vb2_dvb_register_bus(ptr noundef %frontends, ptr noundef null, ptr noundef %dev, ptr noundef %dev3041, ptr noundef %264, ptr noundef nonnull @adapter_nr, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3042)
  %tobool3043.not = icmp eq i32 %call3042, 0
  br i1 %tobool3043.not, label %if.then3044, label %if.end3036.cleanup3093_crit_edge

if.end3036.cleanup3093_crit_edge:                 ; preds = %if.end3036
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup3093

if.then3044:                                      ; preds = %if.end3036
  %265 = ptrtoint ptr %frontend3025 to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load ptr, ptr %frontend3025, align 4
  %init3048 = getelementptr inbounds %struct.dvb_frontend, ptr %266, i32 0, i32 1, i32 5
  %267 = ptrtoint ptr %init3048 to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load ptr, ptr %init3048, align 4
  %tobool3049.not = icmp eq ptr %268, null
  br i1 %tobool3049.not, label %if.then3044.if.end3058_crit_edge, label %if.then3050

if.then3044.if.end3058_crit_edge:                 ; preds = %if.then3044
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end3058

if.then3050:                                      ; preds = %if.then3044
  call void @__sanitizer_cov_trace_pc() #7
  %call3057 = call i32 %268(ptr noundef %266) #5
  br label %if.end3058

if.end3058:                                       ; preds = %if.then3050, %if.then3044.if.end3058_crit_edge
  %269 = ptrtoint ptr %frontend3025 to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load ptr, ptr %frontend3025, align 4
  %sleep3062 = getelementptr inbounds %struct.dvb_frontend, ptr %270, i32 0, i32 1, i32 6
  %271 = ptrtoint ptr %sleep3062 to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load ptr, ptr %sleep3062, align 4
  %tobool3063.not = icmp eq ptr %272, null
  br i1 %tobool3063.not, label %if.end3058.if.end3072_crit_edge, label %if.then3064

if.end3058.if.end3072_crit_edge:                  ; preds = %if.end3058
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end3072

if.then3064:                                      ; preds = %if.end3058
  call void @__sanitizer_cov_trace_pc() #7
  %call3071 = call i32 %272(ptr noundef %270) #5
  br label %if.end3072

if.end3072:                                       ; preds = %if.then3064, %if.end3058.if.end3072_crit_edge
  %273 = ptrtoint ptr %frontend3025 to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load ptr, ptr %frontend3025, align 4
  %sleep3077 = getelementptr inbounds %struct.dvb_frontend, ptr %274, i32 0, i32 1, i32 32, i32 3
  %275 = ptrtoint ptr %sleep3077 to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load ptr, ptr %sleep3077, align 4
  %tobool3078.not = icmp eq ptr %276, null
  br i1 %tobool3078.not, label %if.end3072.cleanup3093_crit_edge, label %if.then3079

if.end3072.cleanup3093_crit_edge:                 ; preds = %if.end3072
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup3093

if.then3079:                                      ; preds = %if.end3072
  call void @__sanitizer_cov_trace_pc() #7
  %call3087 = call i32 %276(ptr noundef %274) #5
  br label %cleanup3093

detach_frontend:                                  ; preds = %do.end3031, %cleanup3019.thread, %sw.bb2027.detach_frontend_crit_edge, %do.end2021, %do.end1984, %if.then1912.detach_frontend_crit_edge, %do.end1904, %do.end1867, %if.then1795.detach_frontend_crit_edge, %do.end1743, %do.end1703, %sw.bb1585.detach_frontend_crit_edge, %sw.bb1579.detach_frontend_crit_edge, %do.end1574, %do.end1537, %sw.bb1465.detach_frontend_crit_edge, %sw.bb1459.detach_frontend_crit_edge, %sw.bb1453.detach_frontend_crit_edge, %sw.bb1447.detach_frontend_crit_edge, %sw.bb1441.detach_frontend_crit_edge, %sw.bb1435.detach_frontend_crit_edge, %sw.bb1429.detach_frontend_crit_edge, %do.end1309, %do.end1272, %cleanup, %if.then844.detach_frontend_crit_edge, %sw.bb836.detach_frontend_crit_edge, %do.end824, %do.end753, %do.end718, %if.then650.detach_frontend_crit_edge, %sw.bb643.detach_frontend_crit_edge, %sw.bb638.detach_frontend_crit_edge, %sw.bb546.detach_frontend_crit_edge, %sw.bb541.detach_frontend_crit_edge, %sw.bb536.detach_frontend_crit_edge, %sw.bb444.detach_frontend_crit_edge, %sw.bb284.detach_frontend_crit_edge
  call void @vb2_dvb_dealloc_frontends(ptr noundef %frontends) #5
  call void @vb2_queue_release(ptr noundef %dvbq) #5
  br label %cleanup3093

cleanup3093:                                      ; preds = %detach_frontend, %if.then3079, %if.end3072.cleanup3093_crit_edge, %if.end3036.cleanup3093_crit_edge, %if.then21, %do.end9
  %retval.0 = phi i32 [ %call19, %if.then21 ], [ -22, %detach_frontend ], [ -12, %do.end9 ], [ 0, %if.end3072.cleanup3093_crit_edge ], [ 0, %if.then3079 ], [ %call3042, %if.end3036.cleanup3093_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dvb_fini(ptr noundef %dev) #2 align 64 {
entry:
  %tda9887_cfg = alloca %struct.v4l2_priv_tun_config, align 4
  %data = alloca i8, align 1
  %msg = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %frontends = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 97
  %call = tail call ptr @vb2_dvb_get_frontend(ptr noundef %frontends, i32 noundef 1) #5
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %board = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 20
  %0 = ptrtoint ptr %board to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %board, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.353)
  switch i32 %1, label %if.end.if.end57_crit_edge [
    i32 50, label %if.then1
    i32 96, label %if.then38
  ]

if.end.if.end57_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end57

if.then1:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tda9887_cfg) #5
  %3 = getelementptr inbounds %struct.v4l2_priv_tun_config, ptr %tda9887_cfg, i32 0, i32 1
  %4 = ptrtoint ptr %tda9887_cfg to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 74, ptr %tda9887_cfg, align 4
  %5 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @dvb_fini.on, ptr %3, align 4
  %gate_ctrl = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 101
  %6 = ptrtoint ptr %gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %gate_ctrl, align 8
  %tobool2.not = icmp eq ptr %7, null
  br i1 %tobool2.not, label %if.then1.do.body6_crit_edge, label %if.then3

if.then1.do.body6_crit_edge:                      ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body6

if.then3:                                         ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #7
  tail call void %7(ptr noundef %dev, i32 noundef 1) #5
  br label %do.body6

do.body6:                                         ; preds = %if.then3, %if.then1.do.body6_crit_edge
  %subdevs = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 3, i32 2
  %8 = ptrtoint ptr %subdevs to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pn89 = load ptr, ptr %subdevs, align 4
  %cmp10.not91 = icmp eq ptr %.pn89, %subdevs
  br i1 %cmp10.not91, label %do.body6.do.end_crit_edge, label %do.body6.for.body_crit_edge

do.body6.for.body_crit_edge:                      ; preds = %do.body6
  br label %for.body

do.body6.do.end_crit_edge:                        ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.body6.for.body_crit_edge
  %.pn92 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn89, %do.body6.for.body_crit_edge ]
  %__sd.093 = getelementptr i8, ptr %.pn92, i32 -80
  %ops = getelementptr i8, ptr %.pn92, i32 24
  %9 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ops, align 4
  %tuner11 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %tuner11 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %tuner11, align 4
  %tobool12.not = icmp eq ptr %12, null
  br i1 %tobool12.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %s_config = getelementptr inbounds %struct.v4l2_subdev_tuner_ops, ptr %12, i32 0, i32 10
  %13 = ptrtoint ptr %s_config to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %s_config, align 4
  %tobool15.not = icmp eq ptr %14, null
  br i1 %tobool15.not, label %land.lhs.true.for.inc_crit_edge, label %if.then16

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.then16:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %call20 = call i32 %14(ptr noundef %__sd.093, ptr noundef nonnull %tda9887_cfg) #5
  br label %for.inc

for.inc:                                          ; preds = %if.then16, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %15 = ptrtoint ptr %.pn92 to i32
  call void @__asan_load4_noabort(i32 %15)
  %.pn = load ptr, ptr %.pn92, align 4
  %cmp10.not = icmp eq ptr %.pn, %subdevs
  br i1 %cmp10.not, label %for.inc.do.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.inc.do.end_crit_edge:                         ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

do.end:                                           ; preds = %for.inc.do.end_crit_edge, %do.body6.do.end_crit_edge
  %16 = ptrtoint ptr %gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %gate_ctrl, align 8
  %tobool30.not = icmp eq ptr %17, null
  br i1 %tobool30.not, label %do.end.do.end35_crit_edge, label %if.then31

do.end.do.end35_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end35

if.then31:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  call void %17(ptr noundef %dev, i32 noundef 0) #5
  br label %do.end35

do.end35:                                         ; preds = %if.then31, %do.end.do.end35_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tda9887_cfg) #5
  br label %if.end57

if.then38:                                        ; preds = %if.end
  %arrayidx = getelementptr %struct.saa7134_dev, ptr %dev, i32 0, i32 29, i32 2
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %19)
  %cmp39 = icmp eq i8 %19, 7
  br i1 %cmp39, label %land.lhs.true41, label %if.then38.if.end57_crit_edge

if.then38.if.end57_crit_edge:                     ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end57

land.lhs.true41:                                  ; preds = %if.then38
  %20 = load i32, ptr @use_frontend, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool42.not = icmp eq i32 %20, 0
  br i1 %tobool42.not, label %land.lhs.true41.if.end57_crit_edge, label %if.then43

land.lhs.true41.if.end57_crit_edge:               ; preds = %land.lhs.true41
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end57

if.then43:                                        ; preds = %land.lhs.true41
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data) #5
  %21 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 -128, ptr %data, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg) #5
  %22 = getelementptr inbounds i8, ptr %msg, i32 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 -1, ptr %22, align 4
  %24 = ptrtoint ptr %msg to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 8, ptr %msg, align 4
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 1
  %25 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 0, ptr %flags, align 2
  %len = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 2
  %26 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 1, ptr %len, align 4
  %buf = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 3
  %27 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %data, ptr %buf, align 4
  %frontend = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call, i32 0, i32 2, i32 1
  %28 = ptrtoint ptr %frontend to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %frontend, align 4
  %i2c_gate_ctrl = getelementptr inbounds %struct.dvb_frontend, ptr %29, i32 0, i32 1, i32 28
  %30 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool45.not = icmp eq ptr %31, null
  br i1 %tobool45.not, label %if.then43.if.end54_crit_edge, label %if.then46

if.then43.if.end54_crit_edge:                     ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end54

if.then46:                                        ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #7
  %call49 = call i32 %31(ptr noundef %29, i32 noundef 1) #5
  %i2c_adap = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 27
  %call50 = call i32 @i2c_transfer(ptr noundef %i2c_adap, ptr noundef nonnull %msg, i32 noundef 1) #5
  %32 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %i2c_gate_ctrl, align 4
  %call53 = call i32 %33(ptr noundef %29, i32 noundef 0) #5
  br label %if.end54

if.end54:                                         ; preds = %if.then46, %if.then43.if.end54_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data) #5
  br label %if.end57

if.end57:                                         ; preds = %if.end54, %land.lhs.true41.if.end57_crit_edge, %if.then38.if.end57_crit_edge, %do.end35, %if.end.if.end57_crit_edge
  call void @vb2_dvb_unregister_bus(ptr noundef %frontends) #5
  %dvbq = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call, i32 0, i32 2, i32 2
  call void @vb2_queue_release(ptr noundef %dvbq) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end57, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end57 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vb2_dvb_alloc_frontend(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_queue_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_dvb_dealloc_frontends(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__symbol_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__request_module(i1 noundef zeroext, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__symbol_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt352_pinnacle_tuner_set_params(ptr noundef %fe) #2 align 64 {
entry:
  %off = alloca [2 x i8], align 2
  %on = alloca [2 x i8], align 2
  %msg = alloca %struct.i2c_msg, align 4
  %f = alloca %struct.v4l2_frequency, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dtv_property_cache = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %off) #5
  %0 = ptrtoint ptr %off to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 241, ptr %off, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %on) #5
  %1 = ptrtoint ptr %on to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 113, ptr %on, align 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg) #5
  %2 = getelementptr inbounds i8, ptr %msg, i32 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %2, align 4
  %4 = ptrtoint ptr %msg to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 67, ptr %msg, align 4
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 1
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 0, ptr %flags, align 2
  %len = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 2
  %6 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 2, ptr %len, align 4
  %buf = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 3
  %7 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %off, ptr %buf, align 4
  %dvb = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 2
  %8 = ptrtoint ptr %dvb to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dvb, align 4
  %priv = getelementptr inbounds %struct.dvb_adapter, ptr %9, i32 0, i32 5
  %10 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %priv, align 4
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %f) #5
  %12 = getelementptr inbounds i8, ptr %f, i32 12
  %13 = call ptr @memset(ptr %12, i32 255, i32 32)
  %14 = ptrtoint ptr %f to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %f, align 4
  %type = getelementptr inbounds %struct.v4l2_frequency, ptr %f, i32 0, i32 1
  %15 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 3, ptr %type, align 4
  %16 = ptrtoint ptr %dtv_property_cache to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %dtv_property_cache, align 4
  %div = udiv i32 %17, 1000
  %mul = shl nuw nsw i32 %div, 4
  %div1 = udiv i32 %mul, 1000
  %frequency2 = getelementptr inbounds %struct.v4l2_frequency, ptr %f, i32 0, i32 2
  %18 = ptrtoint ptr %frequency2 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %div1, ptr %frequency2, align 4
  %i2c_gate_ctrl = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 28
  %19 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool.not = icmp eq ptr %20, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call = call i32 %20(ptr noundef %fe, i32 noundef 1) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %i2c_adap = getelementptr inbounds %struct.saa7134_dev, ptr %11, i32 0, i32 27
  %call5 = call i32 @i2c_transfer(ptr noundef %i2c_adap, ptr noundef nonnull %msg, i32 noundef 1) #5
  %gate_ctrl = getelementptr inbounds %struct.saa7134_dev, ptr %11, i32 0, i32 101
  %21 = ptrtoint ptr %gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %gate_ctrl, align 8
  %tobool6.not = icmp eq ptr %22, null
  br i1 %tobool6.not, label %if.end.do.body10_crit_edge, label %if.then7

if.end.do.body10_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body10

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  call void %22(ptr noundef %11, i32 noundef 1) #5
  br label %do.body10

do.body10:                                        ; preds = %if.then7, %if.end.do.body10_crit_edge
  %subdevs = getelementptr inbounds %struct.saa7134_dev, ptr %11, i32 0, i32 3, i32 2
  %23 = ptrtoint ptr %subdevs to i32
  call void @__asan_load4_noabort(i32 %23)
  %.pn82 = load ptr, ptr %subdevs, align 4
  %cmp.not84 = icmp eq ptr %.pn82, %subdevs
  br i1 %cmp.not84, label %do.body10.do.end_crit_edge, label %do.body10.for.body_crit_edge

do.body10.for.body_crit_edge:                     ; preds = %do.body10
  br label %for.body

do.body10.do.end_crit_edge:                       ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.body10.for.body_crit_edge
  %.pn85 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn82, %do.body10.for.body_crit_edge ]
  %__sd.086 = getelementptr i8, ptr %.pn85, i32 -80
  %ops14 = getelementptr i8, ptr %.pn85, i32 24
  %24 = ptrtoint ptr %ops14 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ops14, align 4
  %tuner15 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %tuner15 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %tuner15, align 4
  %tobool16.not = icmp eq ptr %27, null
  br i1 %tobool16.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %s_frequency = getelementptr inbounds %struct.v4l2_subdev_tuner_ops, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %s_frequency to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %s_frequency, align 4
  %tobool19.not = icmp eq ptr %29, null
  br i1 %tobool19.not, label %land.lhs.true.for.inc_crit_edge, label %if.then20

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.then20:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %call24 = call i32 %29(ptr noundef %__sd.086, ptr noundef nonnull %f) #5
  br label %for.inc

for.inc:                                          ; preds = %if.then20, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %30 = ptrtoint ptr %.pn85 to i32
  call void @__asan_load4_noabort(i32 %30)
  %.pn = load ptr, ptr %.pn85, align 4
  %cmp.not = icmp eq ptr %.pn, %subdevs
  br i1 %cmp.not, label %for.inc.do.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.inc.do.end_crit_edge:                         ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

do.end:                                           ; preds = %for.inc.do.end_crit_edge, %do.body10.do.end_crit_edge
  %31 = ptrtoint ptr %gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %gate_ctrl, align 8
  %tobool34.not = icmp eq ptr %32, null
  br i1 %tobool34.not, label %do.end.do.end39_crit_edge, label %if.then35

do.end.do.end39_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end39

if.then35:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  call void %32(ptr noundef %11, i32 noundef 0) #5
  br label %do.end39

do.end39:                                         ; preds = %if.then35, %do.end.do.end39_crit_edge
  %33 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %on, ptr %buf, align 4
  %34 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool44.not = icmp eq ptr %35, null
  br i1 %tobool44.not, label %do.end39.if.end49_crit_edge, label %if.then45

do.end39.if.end49_crit_edge:                      ; preds = %do.end39
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end49

if.then45:                                        ; preds = %do.end39
  call void @__sanitizer_cov_trace_pc() #7
  %call48 = call i32 %35(ptr noundef %fe, i32 noundef 1) #5
  br label %if.end49

if.end49:                                         ; preds = %if.then45, %do.end39.if.end49_crit_edge
  %call51 = call i32 @i2c_transfer(ptr noundef %i2c_adap, ptr noundef nonnull %msg, i32 noundef 1) #5
  %36 = load i32, ptr @antenna_pwr, align 4
  call fastcc void @pinnacle_antenna_pwr(ptr noundef %11, i32 noundef %36)
  %call53 = call i32 @mt352_pinnacle_init(ptr noundef %fe)
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %f) #5
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %on) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %off) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @philips_tu1216_init(ptr noundef %fe) #2 align 64 {
entry:
  %tuner_msg = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dvb = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 2
  %0 = ptrtoint ptr %dvb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dvb, align 4
  %priv = getelementptr inbounds %struct.dvb_adapter, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %4 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %demodulator_priv, align 4
  %config = getelementptr inbounds %struct.tda1004x_state, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %config, align 4
  %tuner_address = getelementptr inbounds %struct.tda1004x_config, ptr %7, i32 0, i32 8
  %8 = ptrtoint ptr %tuner_address to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %tuner_address, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %tuner_msg) #5
  %10 = getelementptr inbounds i8, ptr %tuner_msg, i32 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %10, align 4
  %conv = zext i8 %9 to i16
  %12 = ptrtoint ptr %tuner_msg to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %conv, ptr %tuner_msg, align 4
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %tuner_msg, i32 0, i32 1
  %13 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 0, ptr %flags, align 2
  %len = getelementptr inbounds %struct.i2c_msg, ptr %tuner_msg, i32 0, i32 2
  %14 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 4, ptr %len, align 4
  %buf = getelementptr inbounds %struct.i2c_msg, ptr %tuner_msg, i32 0, i32 3
  %15 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @philips_tu1216_init.tu1216_init, ptr %buf, align 4
  %i2c_gate_ctrl = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 28
  %16 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool.not = icmp eq ptr %17, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call i32 %17(ptr noundef %fe, i32 noundef 1) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %i2c_adap = getelementptr inbounds %struct.saa7134_dev, ptr %3, i32 0, i32 27
  %call4 = call i32 @i2c_transfer(ptr noundef %i2c_adap, ptr noundef nonnull %tuner_msg, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call4)
  %cmp.not = icmp eq i32 %call4, 1
  br i1 %cmp.not, label %if.end7, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  call void @msleep(i32 noundef 1) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end7 ], [ -5, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %tuner_msg) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @philips_tda6651_pll_set(ptr noundef %fe) #2 align 64 {
entry:
  %tuner_buf = alloca [4 x i8], align 1
  %tuner_msg = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #7
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
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %4 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %demodulator_priv, align 4
  %config = getelementptr inbounds %struct.tda1004x_state, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %config, align 4
  %tuner_address = getelementptr inbounds %struct.tda1004x_config, ptr %7, i32 0, i32 8
  %8 = ptrtoint ptr %tuner_address to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %tuner_address, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tuner_buf) #5
  %10 = getelementptr inbounds [4 x i8], ptr %tuner_buf, i32 0, i32 1
  %11 = getelementptr inbounds [4 x i8], ptr %tuner_buf, i32 0, i32 2
  %12 = getelementptr inbounds [4 x i8], ptr %tuner_buf, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %tuner_msg) #5
  %13 = getelementptr inbounds i8, ptr %tuner_msg, i32 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -1, ptr %13, align 4
  %conv = zext i8 %9 to i16
  %15 = ptrtoint ptr %tuner_msg to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %conv, ptr %tuner_msg, align 4
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %tuner_msg, i32 0, i32 1
  %16 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 0, ptr %flags, align 2
  %len = getelementptr inbounds %struct.i2c_msg, ptr %tuner_msg, i32 0, i32 2
  %17 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 4, ptr %len, align 4
  %buf = getelementptr inbounds %struct.i2c_msg, ptr %tuner_msg, i32 0, i32 3
  %18 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %tuner_buf, ptr %buf, align 4
  %19 = ptrtoint ptr %dtv_property_cache to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %dtv_property_cache, align 4
  %add = add i32 %20, 36166000
  call void @__sanitizer_cov_trace_const_cmp4(i32 87000000, i32 %add)
  %cmp = icmp slt i32 %add, 87000000
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.else

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 130000000, i32 %add)
  %cmp3 = icmp ult i32 %add, 130000000
  br i1 %cmp3, label %if.else.if.end71_crit_edge, label %if.else6

if.else.if.end71_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end71

if.else6:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 160000000, i32 %add)
  %cmp7 = icmp ult i32 %add, 160000000
  br i1 %cmp7, label %if.else6.if.end71_crit_edge, label %if.else10

if.else6.if.end71_crit_edge:                      ; preds = %if.else6
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end71

if.else10:                                        ; preds = %if.else6
  call void @__sanitizer_cov_trace_const_cmp4(i32 200000000, i32 %add)
  %cmp11 = icmp ult i32 %add, 200000000
  br i1 %cmp11, label %if.else52, label %if.else14

if.else14:                                        ; preds = %if.else10
  call void @__sanitizer_cov_trace_const_cmp4(i32 290000000, i32 %add)
  %cmp15 = icmp ult i32 %add, 290000000
  br i1 %cmp15, label %if.else14.if.end71_crit_edge, label %if.else18

if.else14.if.end71_crit_edge:                     ; preds = %if.else14
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end71

if.else18:                                        ; preds = %if.else14
  call void @__sanitizer_cov_trace_const_cmp4(i32 420000000, i32 %add)
  %cmp19 = icmp ult i32 %add, 420000000
  br i1 %cmp19, label %if.else18.if.end71_crit_edge, label %if.else22

if.else18.if.end71_crit_edge:                     ; preds = %if.else18
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end71

if.else22:                                        ; preds = %if.else18
  call void @__sanitizer_cov_trace_const_cmp4(i32 480000000, i32 %add)
  %cmp23 = icmp ult i32 %add, 480000000
  br i1 %cmp23, label %if.else22.if.end71_crit_edge, label %if.else26

if.else22.if.end71_crit_edge:                     ; preds = %if.else22
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end71

if.else26:                                        ; preds = %if.else22
  call void @__sanitizer_cov_trace_const_cmp4(i32 620000000, i32 %add)
  %cmp27 = icmp ult i32 %add, 620000000
  br i1 %cmp27, label %if.else57, label %if.else30

if.else30:                                        ; preds = %if.else26
  call void @__sanitizer_cov_trace_const_cmp4(i32 830000000, i32 %add)
  %cmp31 = icmp ult i32 %add, 830000000
  br i1 %cmp31, label %if.else30.if.else62_crit_edge, label %if.else34

if.else30.if.else62_crit_edge:                    ; preds = %if.else30
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else62

if.else34:                                        ; preds = %if.else30
  call void @__sanitizer_cov_trace_const_cmp4(i32 895000000, i32 %add)
  %cmp35 = icmp ult i32 %add, 895000000
  br i1 %cmp35, label %if.else34.if.else62_crit_edge, label %if.else34.cleanup_crit_edge

if.else34.cleanup_crit_edge:                      ; preds = %if.else34
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.else34.if.else62_crit_edge:                    ; preds = %if.else34
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else62

if.else52:                                        ; preds = %if.else10
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 161000000, i32 %20)
  %cmp54 = icmp ult i32 %20, 161000000
  %spec.select = select i1 %cmp54, i8 1, i8 2
  br label %if.end71

if.else57:                                        ; preds = %if.else26
  call void @__sanitizer_cov_trace_const_cmp4(i32 444000000, i32 %20)
  %cmp59 = icmp ult i32 %20, 444000000
  br i1 %cmp59, label %if.else57.if.end71_crit_edge, label %if.else57.if.else62_crit_edge

if.else57.if.else62_crit_edge:                    ; preds = %if.else57
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else62

if.else57.if.end71_crit_edge:                     ; preds = %if.else57
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end71

if.else62:                                        ; preds = %if.else57.if.else62_crit_edge, %if.else34.if.else62_crit_edge, %if.else30.if.else62_crit_edge
  %cp.0.ph153 = phi i8 [ 96, %if.else57.if.else62_crit_edge ], [ -96, %if.else30.if.else62_crit_edge ], [ -32, %if.else34.if.else62_crit_edge ]
  br label %if.end71

if.end71:                                         ; preds = %if.else62, %if.else57.if.end71_crit_edge, %if.else52, %if.else22.if.end71_crit_edge, %if.else18.if.end71_crit_edge, %if.else14.if.end71_crit_edge, %if.else6.if.end71_crit_edge, %if.else.if.end71_crit_edge
  %cp.0137 = phi i8 [ 96, %if.else57.if.end71_crit_edge ], [ %cp.0.ph153, %if.else62 ], [ -96, %if.else6.if.end71_crit_edge ], [ 96, %if.else.if.end71_crit_edge ], [ 96, %if.else14.if.end71_crit_edge ], [ -96, %if.else18.if.end71_crit_edge ], [ -64, %if.else22.if.end71_crit_edge ], [ -64, %if.else52 ]
  %band.0 = phi i8 [ 2, %if.else57.if.end71_crit_edge ], [ 4, %if.else62 ], [ 1, %if.else6.if.end71_crit_edge ], [ 1, %if.else.if.end71_crit_edge ], [ 2, %if.else14.if.end71_crit_edge ], [ 2, %if.else18.if.end71_crit_edge ], [ 2, %if.else22.if.end71_crit_edge ], [ %spec.select, %if.else52 ]
  %bandwidth_hz = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 7
  %21 = ptrtoint ptr %bandwidth_hz to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %bandwidth_hz, align 4
  %23 = zext i32 %22 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.354)
  switch i32 %22, label %if.end71.cleanup_crit_edge [
    i32 6000000, label %if.end71.sw.epilog_crit_edge
    i32 7000000, label %if.end71.sw.epilog_crit_edge154
    i32 8000000, label %sw.bb73
  ]

if.end71.sw.epilog_crit_edge154:                  ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.end71.sw.epilog_crit_edge:                     ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.end71.cleanup_crit_edge:                       ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb73:                                          ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb73, %if.end71.sw.epilog_crit_edge, %if.end71.sw.epilog_crit_edge154
  %filter.0 = phi i8 [ 8, %sw.bb73 ], [ 0, %if.end71.sw.epilog_crit_edge ], [ 0, %if.end71.sw.epilog_crit_edge154 ]
  %div = udiv i32 %20, 1000
  %mul = mul nuw nsw i32 %div, 6
  %add75 = add nuw nsw i32 %mul, 217496
  %div76 = udiv i32 %add75, 1000
  %24 = lshr i32 %div76, 8
  %25 = trunc i32 %24 to i8
  %26 = ptrtoint ptr %tuner_buf to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %25, ptr %tuner_buf, align 1
  %conv79 = trunc i32 %div76 to i8
  %27 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %conv79, ptr %10, align 1
  %28 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 -54, ptr %11, align 1
  %or = or i8 %band.0, %cp.0137
  %or86 = or i8 %or, %filter.0
  %29 = ptrtoint ptr %12 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %or86, ptr %12, align 1
  %i2c_gate_ctrl = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 28
  %30 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool.not = icmp eq ptr %31, null
  br i1 %tobool.not, label %sw.epilog.if.end92_crit_edge, label %if.then89

sw.epilog.if.end92_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end92

if.then89:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  %call = call i32 %31(ptr noundef %fe, i32 noundef 1) #5
  br label %if.end92

if.end92:                                         ; preds = %if.then89, %sw.epilog.if.end92_crit_edge
  %i2c_adap = getelementptr inbounds %struct.saa7134_dev, ptr %3, i32 0, i32 27
  %call93 = call i32 @i2c_transfer(ptr noundef %i2c_adap, ptr noundef nonnull %tuner_msg, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call93)
  %cmp94.not = icmp eq i32 %call93, 1
  br i1 %cmp94.not, label %if.end100, label %do.end

do.end:                                           ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #7
  %conv97 = zext i8 %9 to i32
  %shl98 = shl nuw nsw i32 %conv97, 1
  %call99 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.328, i32 noundef %shl98) #8
  br label %cleanup

if.end100:                                        ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #7
  call void @msleep(i32 noundef 1) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end100, %do.end, %if.end71.cleanup_crit_edge, %if.else34.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %do.end ], [ 0, %if.end100 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.else34.cleanup_crit_edge ], [ -22, %if.end71.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %tuner_msg) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tuner_buf) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @configure_tda827x_fe(ptr noundef %dev, ptr noundef %cdec_conf, ptr noundef %tuner_conf) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %frontends = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 97
  %call = tail call ptr @vb2_dvb_get_frontend(ptr noundef %frontends, i32 noundef 1) #5
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.28) #5
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %cond.end, label %if.end.if.then6_crit_edge

if.end.if.then6_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then6

cond.end:                                         ; preds = %if.end
  %call3 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.29) #5
  %call4 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.28) #5
  %tobool5.not = icmp eq ptr %call4, null
  br i1 %tobool5.not, label %do.end, label %cond.end.if.then6_crit_edge

cond.end.if.then6_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then6

if.then6:                                         ; preds = %cond.end.if.then6_crit_edge, %if.end.if.then6_crit_edge
  %cond76 = phi ptr [ %call4, %cond.end.if.then6_crit_edge ], [ %call1, %if.end.if.then6_crit_edge ]
  %i2c_adap = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 27
  %call7 = tail call ptr %cond76(ptr noundef %cdec_conf, ptr noundef %i2c_adap) #5
  %cmp = icmp eq ptr %call7, null
  br i1 %cmp, label %if.then8, label %if.then16

if.then8:                                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @__symbol_put(ptr noundef nonnull @.str.28) #5
  br label %if.end11.thread

do.end:                                           ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #7
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31) #8
  br label %if.end11.thread

if.end11.thread:                                  ; preds = %do.end, %if.then8
  %frontend78 = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call, i32 0, i32 2, i32 1
  %0 = ptrtoint ptr %frontend78 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %frontend78, align 4
  br label %cleanup

if.then16:                                        ; preds = %if.then6
  %frontend = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call, i32 0, i32 2, i32 1
  %1 = ptrtoint ptr %frontend to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7, ptr %frontend, align 4
  %i2c_gate = getelementptr inbounds %struct.tda1004x_config, ptr %cdec_conf, i32 0, i32 10
  %2 = ptrtoint ptr %i2c_gate to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %i2c_gate, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool17.not = icmp eq i8 %3, 0
  br i1 %tobool17.not, label %if.then16.if.end21_crit_edge, label %if.then18

if.then16.if.end21_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end21

if.then18:                                        ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #7
  %i2c_gate_ctrl = getelementptr inbounds %struct.dvb_frontend, ptr %call7, i32 0, i32 1, i32 28
  %4 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @tda8290_i2c_gate_ctrl, ptr %i2c_gate_ctrl, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.then18, %if.then16.if.end21_crit_edge
  %call24 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.90) #5
  %tobool25.not = icmp eq ptr %call24, null
  br i1 %tobool25.not, label %cond.end30, label %if.end21.if.then33_crit_edge

if.end21.if.then33_crit_edge:                     ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then33

cond.end30:                                       ; preds = %if.end21
  %call28 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.91) #5
  %call29 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.90) #5
  %tobool32.not = icmp eq ptr %call29, null
  br i1 %tobool32.not, label %do.end45, label %cond.end30.if.then33_crit_edge

cond.end30.if.then33_crit_edge:                   ; preds = %cond.end30
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then33

if.then33:                                        ; preds = %cond.end30.if.then33_crit_edge, %if.end21.if.then33_crit_edge
  %cond3182 = phi ptr [ %call29, %cond.end30.if.then33_crit_edge ], [ %call24, %if.end21.if.then33_crit_edge ]
  %5 = ptrtoint ptr %frontend to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %frontend, align 4
  %tuner_address = getelementptr inbounds %struct.tda1004x_config, ptr %cdec_conf, i32 0, i32 8
  %7 = ptrtoint ptr %tuner_address to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %tuner_address, align 4
  %conv = zext i8 %8 to i32
  %call37 = tail call ptr %cond3182(ptr noundef %6, i32 noundef %conv, ptr noundef %i2c_adap, ptr noundef %tuner_conf) #5
  %cmp38 = icmp eq ptr %call37, null
  br i1 %cmp38, label %if.then40, label %if.then33.cleanup_crit_edge

if.then33.cleanup_crit_edge:                      ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then40:                                        ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @__symbol_put(ptr noundef nonnull @.str.90) #5
  br label %do.end55

do.end45:                                         ; preds = %cond.end30
  call void @__sanitizer_cov_trace_pc() #7
  %call47 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.93) #8
  br label %do.end55

do.end55:                                         ; preds = %do.end45, %if.then40
  %tuner_address57 = getelementptr inbounds %struct.tda1004x_config, ptr %cdec_conf, i32 0, i32 8
  %9 = ptrtoint ptr %tuner_address57 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %tuner_address57, align 4
  %conv58 = zext i8 %10 to i32
  %call59 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.96, i32 noundef %conv58) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end55, %if.then33.cleanup_crit_edge, %if.end11.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %do.end55 ], [ -22, %if.end11.thread ], [ 0, %if.then33.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @philips_europa_demod_sleep(ptr noundef %fe) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dvb = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 2
  %0 = ptrtoint ptr %dvb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dvb, align 4
  %priv = getelementptr inbounds %struct.dvb_adapter, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  %original_demod_sleep = getelementptr inbounds %struct.saa7134_dev, ptr %3, i32 0, i32 98
  %4 = ptrtoint ptr %original_demod_sleep to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %original_demod_sleep, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call i32 %5(ptr noundef %fe) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %i2c_gate_ctrl = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 28
  %6 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %i2c_gate_ctrl, align 4
  %call2 = tail call i32 %7(ptr noundef %fe, i32 noundef 1) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @philips_europa_tuner_init(ptr noundef %fe) #2 align 64 {
entry:
  %init_msg.i = alloca %struct.i2c_msg, align 4
  %init_msg = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dvb = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 2
  %0 = ptrtoint ptr %dvb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dvb, align 4
  %priv = getelementptr inbounds %struct.dvb_adapter, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %init_msg) #5
  %4 = call ptr @memcpy(ptr %init_msg, ptr @__const.philips_europa_tuner_init.init_msg, i32 12)
  %demodulator_priv.i = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %5 = ptrtoint ptr %demodulator_priv.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %demodulator_priv.i, align 4
  %config.i = getelementptr inbounds %struct.tda1004x_state, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %config.i, align 4
  %tuner_address.i = getelementptr inbounds %struct.tda1004x_config, ptr %8, i32 0, i32 8
  %9 = ptrtoint ptr %tuner_address.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %tuner_address.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %init_msg.i) #5
  %11 = getelementptr inbounds i8, ptr %init_msg.i, i32 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 327679, ptr %11, align 4
  %conv.i = zext i8 %10 to i16
  %13 = ptrtoint ptr %init_msg.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %conv.i, ptr %init_msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %init_msg.i, i32 0, i32 1
  %14 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 0, ptr %flags.i, align 2
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %init_msg.i, i32 0, i32 3
  %15 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @philips_td1316_tuner_init.msg, ptr %buf.i, align 4
  %i2c_gate_ctrl.i = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 28
  %16 = ptrtoint ptr %i2c_gate_ctrl.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %i2c_gate_ctrl.i, align 4
  %tobool.not.i = icmp eq ptr %17, null
  br i1 %tobool.not.i, label %entry.philips_td1316_tuner_init.exit_crit_edge, label %if.then.i

entry.philips_td1316_tuner_init.exit_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %philips_td1316_tuner_init.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call.i = tail call i32 %17(ptr noundef %fe, i32 noundef 1) #5
  br label %philips_td1316_tuner_init.exit

philips_td1316_tuner_init.exit:                   ; preds = %if.then.i, %entry.philips_td1316_tuner_init.exit_crit_edge
  %i2c_adap.i = getelementptr inbounds %struct.saa7134_dev, ptr %3, i32 0, i32 27
  %call4.i = call i32 @i2c_transfer(ptr noundef %i2c_adap.i, ptr noundef nonnull %init_msg.i, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call4.i)
  %cmp.not.i = icmp eq i32 %call4.i, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %init_msg.i) #5
  br i1 %cmp.not.i, label %if.end, label %philips_td1316_tuner_init.exit.cleanup_crit_edge

philips_td1316_tuner_init.exit.cleanup_crit_edge: ; preds = %philips_td1316_tuner_init.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %philips_td1316_tuner_init.exit
  call void @__sanitizer_cov_trace_pc() #7
  call void @msleep(i32 noundef 1) #5
  %call1 = call i32 @i2c_transfer(ptr noundef %i2c_adap.i, ptr noundef nonnull %init_msg, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call1)
  %cmp.not = icmp eq i32 %call1, 1
  %. = select i1 %cmp.not, i32 0, i32 -5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %philips_td1316_tuner_init.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %philips_td1316_tuner_init.exit.cleanup_crit_edge ], [ %., %if.end ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %init_msg) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @philips_europa_tuner_sleep(ptr noundef %fe) #2 align 64 {
entry:
  %analog_msg.i = alloca %struct.i2c_msg, align 4
  %analog_msg = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dvb = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 2
  %0 = ptrtoint ptr %dvb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dvb, align 4
  %priv = getelementptr inbounds %struct.dvb_adapter, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %analog_msg) #5
  %4 = call ptr @memcpy(ptr %analog_msg, ptr @__const.philips_europa_tuner_sleep.analog_msg, i32 12)
  %demodulator_priv.i = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %5 = ptrtoint ptr %demodulator_priv.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %demodulator_priv.i, align 4
  %config.i = getelementptr inbounds %struct.tda1004x_state, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %config.i, align 4
  %tuner_address.i = getelementptr inbounds %struct.tda1004x_config, ptr %8, i32 0, i32 8
  %9 = ptrtoint ptr %tuner_address.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %tuner_address.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %analog_msg.i) #5
  %11 = getelementptr inbounds i8, ptr %analog_msg.i, i32 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 327679, ptr %11, align 4
  %conv.i = zext i8 %10 to i16
  %13 = ptrtoint ptr %analog_msg.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %conv.i, ptr %analog_msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %analog_msg.i, i32 0, i32 1
  %14 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 0, ptr %flags.i, align 2
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %analog_msg.i, i32 0, i32 3
  %15 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @philips_td1316_tuner_sleep.msg, ptr %buf.i, align 4
  %i2c_gate_ctrl.i = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 28
  %16 = ptrtoint ptr %i2c_gate_ctrl.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %i2c_gate_ctrl.i, align 4
  %tobool.not.i = icmp eq ptr %17, null
  br i1 %tobool.not.i, label %entry.philips_td1316_tuner_sleep.exit_crit_edge, label %if.then.i

entry.philips_td1316_tuner_sleep.exit_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %philips_td1316_tuner_sleep.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call.i = tail call i32 %17(ptr noundef %fe, i32 noundef 1) #5
  br label %philips_td1316_tuner_sleep.exit

philips_td1316_tuner_sleep.exit:                  ; preds = %if.then.i, %entry.philips_td1316_tuner_sleep.exit_crit_edge
  %i2c_adap.i = getelementptr inbounds %struct.saa7134_dev, ptr %3, i32 0, i32 27
  %call4.i = call i32 @i2c_transfer(ptr noundef %i2c_adap.i, ptr noundef nonnull %analog_msg.i, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call4.i)
  %cmp.not.i = icmp eq i32 %call4.i, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %analog_msg.i) #5
  br i1 %cmp.not.i, label %if.end, label %philips_td1316_tuner_sleep.exit.cleanup_crit_edge

philips_td1316_tuner_sleep.exit.cleanup_crit_edge: ; preds = %philips_td1316_tuner_sleep.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %philips_td1316_tuner_sleep.exit
  %18 = ptrtoint ptr %i2c_gate_ctrl.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %i2c_gate_ctrl.i, align 4
  %tobool1.not = icmp eq ptr %19, null
  br i1 %tobool1.not, label %if.end.if.end6_crit_edge, label %if.then2

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %call5 = call i32 %19(ptr noundef %fe, i32 noundef 1) #5
  br label %if.end6

if.end6:                                          ; preds = %if.then2, %if.end.if.end6_crit_edge
  %call7 = call i32 @i2c_transfer(ptr noundef %i2c_adap.i, ptr noundef nonnull %analog_msg, i32 noundef 1) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %philips_td1316_tuner_sleep.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end6 ], [ -5, %philips_td1316_tuner_sleep.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %analog_msg) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @philips_td1316_tuner_set_params(ptr noundef %fe) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @philips_tda6651_pll_set(ptr noundef %fe)
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @md8800_set_voltage(ptr noundef %fe, i32 noundef %voltage) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %i2c_gate_ctrl = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 28
  %0 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end10_crit_edge, label %if.then

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end10

if.then:                                          ; preds = %entry
  %dvb = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 2
  %2 = ptrtoint ptr %dvb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dvb, align 4
  %priv = getelementptr inbounds %struct.dvb_adapter, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv, align 4
  %call = tail call i32 %1(ptr noundef %fe, i32 noundef 1) #5
  %original_set_voltage = getelementptr inbounds %struct.saa7134_dev, ptr %5, i32 0, i32 99
  %6 = ptrtoint ptr %original_set_voltage to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %original_set_voltage, align 8
  %tobool3.not = icmp eq ptr %7, null
  br i1 %tobool3.not, label %if.then.if.end_crit_edge, label %if.then4

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %call6 = tail call i32 %7(ptr noundef %fe, i32 noundef %voltage) #5
  br label %if.end

if.end:                                           ; preds = %if.then4, %if.then.if.end_crit_edge
  %res.0 = phi i32 [ %call6, %if.then4 ], [ -5, %if.then.if.end_crit_edge ]
  %8 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %i2c_gate_ctrl, align 4
  %call9 = tail call i32 %9(ptr noundef %fe, i32 noundef 0) #5
  br label %if.end10

if.end10:                                         ; preds = %if.end, %entry.if.end10_crit_edge
  %res.1 = phi i32 [ %res.0, %if.end ], [ -5, %entry.if.end10_crit_edge ]
  ret i32 %res.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @md8800_set_high_voltage(ptr noundef %fe, i32 noundef %arg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %i2c_gate_ctrl = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 28
  %0 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end10_crit_edge, label %if.then

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end10

if.then:                                          ; preds = %entry
  %dvb = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 2
  %2 = ptrtoint ptr %dvb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dvb, align 4
  %priv = getelementptr inbounds %struct.dvb_adapter, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv, align 4
  %call = tail call i32 %1(ptr noundef %fe, i32 noundef 1) #5
  %original_set_high_voltage = getelementptr inbounds %struct.saa7134_dev, ptr %5, i32 0, i32 100
  %6 = ptrtoint ptr %original_set_high_voltage to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %original_set_high_voltage, align 4
  %tobool3.not = icmp eq ptr %7, null
  br i1 %tobool3.not, label %if.then.if.end_crit_edge, label %if.then4

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %call6 = tail call i32 %7(ptr noundef %fe, i32 noundef %arg) #5
  br label %if.end

if.end:                                           ; preds = %if.then4, %if.then.if.end_crit_edge
  %res.0 = phi i32 [ %call6, %if.then4 ], [ -5, %if.then.if.end_crit_edge ]
  %8 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %i2c_gate_ctrl, align 4
  %call9 = tail call i32 %9(ptr noundef %fe, i32 noundef 0) #5
  br label %if.end10

if.end10:                                         ; preds = %if.end, %entry.if.end10_crit_edge
  %res.1 = phi i32 [ %res.0, %if.end ], [ -5, %entry.if.end10_crit_edge ]
  ret i32 %res.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @md8800_set_voltage2(ptr nocapture noundef readonly %fe, i32 noundef %voltage) #2 align 64 {
entry:
  %wbuf = alloca [2 x i8], align 2
  %rbuf = alloca i8, align 1
  %msg = alloca [2 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dvb = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 2
  %0 = ptrtoint ptr %dvb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dvb, align 4
  %priv = getelementptr inbounds %struct.dvb_adapter, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %wbuf) #5
  %4 = ptrtoint ptr %wbuf to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 7936, ptr %wbuf, align 2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %rbuf) #5
  %5 = ptrtoint ptr %rbuf to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 -1, ptr %rbuf, align 1, !annotation !725
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg) #5
  %6 = getelementptr inbounds i8, ptr %msg, i32 4
  %7 = call ptr @memset(ptr %6, i32 255, i32 16)
  %8 = ptrtoint ptr %msg to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 8, ptr %msg, align 4
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 1
  %9 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 0, ptr %flags, align 2
  %len = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 2
  %10 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 1, ptr %len, align 4
  %buf = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 3
  %11 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %wbuf, ptr %buf, align 4
  %arrayinit.element = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 1
  %12 = ptrtoint ptr %arrayinit.element to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 8, ptr %arrayinit.element, align 4
  %flags2 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 1, i32 1
  %13 = ptrtoint ptr %flags2 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 1, ptr %flags2, align 2
  %len3 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 1, i32 2
  %14 = ptrtoint ptr %len3 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 1, ptr %len3, align 4
  %buf4 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 1, i32 3
  %15 = ptrtoint ptr %buf4 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %rbuf, ptr %buf4, align 4
  %i2c_adap = getelementptr inbounds %struct.saa7134_dev, ptr %3, i32 0, i32 27
  %call = call i32 @i2c_transfer(ptr noundef %i2c_adap, ptr noundef nonnull %msg, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call)
  %cmp.not = icmp eq i32 %call, 2
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %voltage)
  %cmp6 = icmp eq i32 %voltage, 1
  %16 = ptrtoint ptr %rbuf to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %rbuf, align 1
  %18 = and i8 %17, -17
  %masksel = select i1 %cmp6, i8 16, i8 0
  %.sink = or i8 %18, %masksel
  %19 = getelementptr inbounds [2 x i8], ptr %wbuf, i32 0, i32 1
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %.sink, ptr %19, align 1
  %21 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 2, ptr %len, align 4
  %call17 = call i32 @i2c_transfer(ptr noundef %i2c_adap, ptr noundef nonnull %msg, i32 noundef 1) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -5, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %rbuf) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %wbuf) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @md8800_set_high_voltage2(ptr nocapture noundef readnone %fe, i32 noundef %arg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.344, ptr noundef nonnull @.str.345) #8
  ret i32 -5
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @saa7134_set_gpio(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @saa7134_tuner_callback(ptr noundef, i32 noundef, i32 noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @philips_td1316_tuner_init(ptr noundef %fe) #2 align 64 {
entry:
  %init_msg = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dvb = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 2
  %0 = ptrtoint ptr %dvb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dvb, align 4
  %priv = getelementptr inbounds %struct.dvb_adapter, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %4 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %demodulator_priv, align 4
  %config = getelementptr inbounds %struct.tda1004x_state, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %config, align 4
  %tuner_address = getelementptr inbounds %struct.tda1004x_config, ptr %7, i32 0, i32 8
  %8 = ptrtoint ptr %tuner_address to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %tuner_address, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %init_msg) #5
  %10 = getelementptr inbounds i8, ptr %init_msg, i32 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %10, align 4
  %conv = zext i8 %9 to i16
  %12 = ptrtoint ptr %init_msg to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %conv, ptr %init_msg, align 4
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %init_msg, i32 0, i32 1
  %13 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 0, ptr %flags, align 2
  %len = getelementptr inbounds %struct.i2c_msg, ptr %init_msg, i32 0, i32 2
  %14 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 4, ptr %len, align 4
  %buf = getelementptr inbounds %struct.i2c_msg, ptr %init_msg, i32 0, i32 3
  %15 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @philips_td1316_tuner_init.msg, ptr %buf, align 4
  %i2c_gate_ctrl = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 28
  %16 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool.not = icmp eq ptr %17, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call i32 %17(ptr noundef %fe, i32 noundef 1) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %i2c_adap = getelementptr inbounds %struct.saa7134_dev, ptr %3, i32 0, i32 27
  %call4 = call i32 @i2c_transfer(ptr noundef %i2c_adap, ptr noundef nonnull %init_msg, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call4)
  %cmp.not = icmp eq i32 %call4, 1
  %. = select i1 %cmp.not, i32 0, i32 -5
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %init_msg) #5
  ret i32 %.
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kworld_sbtvd_gate_ctrl(ptr nocapture noundef readonly %fe, i32 noundef %enable) #2 align 64 {
entry:
  %initmsg = alloca [2 x i8], align 2
  %msg_enable = alloca [2 x i8], align 2
  %msg_disable = alloca [2 x i8], align 2
  %msg = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dvb = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 2
  %0 = ptrtoint ptr %dvb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dvb, align 4
  %priv = getelementptr inbounds %struct.dvb_adapter, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %initmsg) #5
  %4 = ptrtoint ptr %initmsg to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 17815, ptr %initmsg, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %msg_enable) #5
  %5 = ptrtoint ptr %msg_enable to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 17857, ptr %msg_enable, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %msg_disable) #5
  %6 = ptrtoint ptr %msg_disable to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 17793, ptr %msg_disable, align 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg) #5
  %7 = getelementptr inbounds i8, ptr %msg, i32 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %7, align 4
  %9 = ptrtoint ptr %msg to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 75, ptr %msg, align 4
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 1
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 0, ptr %flags, align 2
  %len = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 2
  %11 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 2, ptr %len, align 4
  %buf = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 3
  %12 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %initmsg, ptr %buf, align 4
  %i2c_adap = getelementptr inbounds %struct.saa7134_dev, ptr %3, i32 0, i32 27
  %call = call i32 @i2c_transfer(ptr noundef %i2c_adap, ptr noundef nonnull %msg, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call1 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.348) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable)
  %tobool.not = icmp eq i32 %enable, 0
  %msg_disable.msg_enable = select i1 %tobool.not, ptr %msg_disable, ptr %msg_enable
  %13 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %msg_disable.msg_enable, ptr %buf, align 4
  %call9 = call i32 @i2c_transfer(ptr noundef %i2c_adap, ptr noundef nonnull %msg, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call9)
  %cmp10.not = icmp eq i32 %call9, 1
  br i1 %cmp10.not, label %if.end17, label %do.end14

do.end14:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %call16 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.348) #8
  br label %cleanup

if.end17:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  call void @msleep(i32 noundef 20) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %do.end14, %do.end
  %retval.0 = phi i32 [ -5, %do.end ], [ -5, %do.end14 ], [ 0, %if.end17 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %msg_disable) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %msg_enable) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %initmsg) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_dvb_register_bus(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_queue_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt352_pinnacle_init(ptr noundef %fe) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mt352_pinnacle_init.__UNIQUE_ID_ddebug397, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mt352_pinnacle_init, %if.then)) #5
          to label %do.end [label %if.then], !srcloc !724

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mt352_pinnacle_init.__UNIQUE_ID_ddebug397, ptr noundef nonnull @.str.322, ptr noundef nonnull @.str.320) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %write.i = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 9
  %0 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %write.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %do.end.mt352_write.exit_crit_edge, label %if.then.i

do.end.mt352_write.exit_crit_edge:                ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %mt352_write.exit

if.then.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  %call.i = tail call i32 %1(ptr noundef %fe, ptr noundef nonnull @mt352_pinnacle_init.clock_config, i32 noundef 3) #5
  br label %mt352_write.exit

mt352_write.exit:                                 ; preds = %if.then.i, %do.end.mt352_write.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %2(i32 noundef 42949600) #5
  %3 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %write.i, align 4
  %tobool.not.i21 = icmp eq ptr %4, null
  br i1 %tobool.not.i21, label %mt352_write.exit.mt352_write.exit59_crit_edge, label %mt352_write.exit24

mt352_write.exit.mt352_write.exit59_crit_edge:    ; preds = %mt352_write.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %mt352_write.exit59

mt352_write.exit24:                               ; preds = %mt352_write.exit
  %call.i22 = tail call i32 %4(ptr noundef %fe, ptr noundef nonnull @mt352_pinnacle_init.reset, i32 noundef 2) #5
  %5 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %.pr = load ptr, ptr %write.i, align 4
  %tobool.not.i26 = icmp eq ptr %.pr, null
  br i1 %tobool.not.i26, label %mt352_write.exit24.mt352_write.exit59_crit_edge, label %mt352_write.exit29

mt352_write.exit24.mt352_write.exit59_crit_edge:  ; preds = %mt352_write.exit24
  call void @__sanitizer_cov_trace_pc() #7
  br label %mt352_write.exit59

mt352_write.exit29:                               ; preds = %mt352_write.exit24
  %call.i27 = tail call i32 %.pr(ptr noundef %fe, ptr noundef nonnull @mt352_pinnacle_init.adc_ctl_1_cfg, i32 noundef 2) #5
  %6 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pr62 = load ptr, ptr %write.i, align 4
  %tobool.not.i31 = icmp eq ptr %.pr62, null
  br i1 %tobool.not.i31, label %mt352_write.exit29.mt352_write.exit59_crit_edge, label %mt352_write.exit34

mt352_write.exit29.mt352_write.exit59_crit_edge:  ; preds = %mt352_write.exit29
  call void @__sanitizer_cov_trace_pc() #7
  br label %mt352_write.exit59

mt352_write.exit34:                               ; preds = %mt352_write.exit29
  %call.i32 = tail call i32 %.pr62(ptr noundef %fe, ptr noundef nonnull @mt352_pinnacle_init.agc_cfg, i32 noundef 3) #5
  %7 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %.pr64.pr = load ptr, ptr %write.i, align 4
  %tobool.not.i36 = icmp eq ptr %.pr64.pr, null
  br i1 %tobool.not.i36, label %mt352_write.exit34.mt352_write.exit59_crit_edge, label %mt352_write.exit39

mt352_write.exit34.mt352_write.exit59_crit_edge:  ; preds = %mt352_write.exit34
  call void @__sanitizer_cov_trace_pc() #7
  br label %mt352_write.exit59

mt352_write.exit39:                               ; preds = %mt352_write.exit34
  %call.i37 = tail call i32 %.pr64.pr(ptr noundef %fe, ptr noundef nonnull @mt352_pinnacle_init.capt_range_cfg, i32 noundef 2) #5
  %8 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pr66 = load ptr, ptr %write.i, align 4
  %tobool.not.i41 = icmp eq ptr %.pr66, null
  br i1 %tobool.not.i41, label %mt352_write.exit39.mt352_write.exit59_crit_edge, label %mt352_write.exit44

mt352_write.exit39.mt352_write.exit59_crit_edge:  ; preds = %mt352_write.exit39
  call void @__sanitizer_cov_trace_pc() #7
  br label %mt352_write.exit59

mt352_write.exit44:                               ; preds = %mt352_write.exit39
  %call.i42 = tail call i32 %.pr66(ptr noundef %fe, ptr noundef nonnull @mt352_pinnacle_init.gpp_ctl_cfg, i32 noundef 2) #5
  %9 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %.pr68.pr.pr = load ptr, ptr %write.i, align 4
  %tobool.not.i46 = icmp eq ptr %.pr68.pr.pr, null
  br i1 %tobool.not.i46, label %mt352_write.exit44.mt352_write.exit59_crit_edge, label %mt352_write.exit49

mt352_write.exit44.mt352_write.exit59_crit_edge:  ; preds = %mt352_write.exit44
  call void @__sanitizer_cov_trace_pc() #7
  br label %mt352_write.exit59

mt352_write.exit49:                               ; preds = %mt352_write.exit44
  %call.i47 = tail call i32 %.pr68.pr.pr(ptr noundef %fe, ptr noundef nonnull @mt352_pinnacle_init.fsm_ctl_cfg, i32 noundef 2) #5
  %10 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pr70 = load ptr, ptr %write.i, align 4
  %tobool.not.i51 = icmp eq ptr %.pr70, null
  br i1 %tobool.not.i51, label %mt352_write.exit49.mt352_write.exit59_crit_edge, label %mt352_write.exit54

mt352_write.exit49.mt352_write.exit59_crit_edge:  ; preds = %mt352_write.exit49
  call void @__sanitizer_cov_trace_pc() #7
  br label %mt352_write.exit59

mt352_write.exit54:                               ; preds = %mt352_write.exit49
  %call.i52 = tail call i32 %.pr70(ptr noundef %fe, ptr noundef nonnull @mt352_pinnacle_init.scan_ctl_cfg, i32 noundef 2) #5
  %11 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %.pr72.pr.pr = load ptr, ptr %write.i, align 4
  %tobool.not.i56 = icmp eq ptr %.pr72.pr.pr, null
  br i1 %tobool.not.i56, label %mt352_write.exit54.mt352_write.exit59_crit_edge, label %if.then.i58

mt352_write.exit54.mt352_write.exit59_crit_edge:  ; preds = %mt352_write.exit54
  call void @__sanitizer_cov_trace_pc() #7
  br label %mt352_write.exit59

if.then.i58:                                      ; preds = %mt352_write.exit54
  call void @__sanitizer_cov_trace_pc() #7
  %call.i57 = tail call i32 %.pr72.pr.pr(ptr noundef %fe, ptr noundef nonnull @mt352_pinnacle_init.irq_cfg, i32 noundef 5) #5
  br label %mt352_write.exit59

mt352_write.exit59:                               ; preds = %if.then.i58, %mt352_write.exit54.mt352_write.exit59_crit_edge, %mt352_write.exit49.mt352_write.exit59_crit_edge, %mt352_write.exit44.mt352_write.exit59_crit_edge, %mt352_write.exit39.mt352_write.exit59_crit_edge, %mt352_write.exit34.mt352_write.exit59_crit_edge, %mt352_write.exit29.mt352_write.exit59_crit_edge, %mt352_write.exit24.mt352_write.exit59_crit_edge, %mt352_write.exit.mt352_write.exit59_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pinnacle_antenna_pwr(ptr nocapture noundef readonly %dev, i32 noundef %on) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %on)
  %tobool.not = icmp eq i32 %on, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5
  tail call void @arm_heavy_mb() #5
  %lmmio = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 18
  %0 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lmmio, align 4
  %add.ptr = getelementptr i32, ptr %1, i32 108
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5
  %3 = or i32 %2, 4
  %4 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %lmmio, align 4
  %add.ptr3 = getelementptr i32, ptr %5, i32 108
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %3) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5
  tail call void @arm_heavy_mb() #5
  %6 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %lmmio, align 4
  %add.ptr10 = getelementptr i32, ptr %7, i32 109
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5
  br i1 %tobool.not, label %do.body, label %do.body18

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %9 = and i32 %8, -5
  %10 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %lmmio, align 4
  %add.ptr17 = getelementptr i32, ptr %11, i32 109
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17, i32 %9) #5, !srcloc !726
  br label %cleanup

do.body18:                                        ; preds = %entry
  %12 = or i32 %8, 4
  %13 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %lmmio, align 4
  %add.ptr45 = getelementptr i32, ptr %14, i32 109
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr45, i32 %12) #5, !srcloc !726
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %15(i32 noundef 2147480) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !727
  tail call void @arm_heavy_mb() #5
  %16 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %lmmio, align 4
  %add.ptr52 = getelementptr i32, ptr %17, i32 108
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr52) #5, !srcloc !728
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !729
  %19 = or i32 %18, 16
  %20 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %lmmio, align 4
  %add.ptr59 = getelementptr i32, ptr %21, i32 108
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr59, i32 %19) #5, !srcloc !726
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !730
  tail call void @arm_heavy_mb() #5
  %22 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %lmmio, align 4
  %add.ptr66 = getelementptr i32, ptr %23, i32 109
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr66) #5, !srcloc !728
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !731
  %25 = and i32 %24, -17
  %26 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %lmmio, align 4
  %add.ptr73 = getelementptr i32, ptr %27, i32 109
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr73, i32 %25) #5, !srcloc !726
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %28 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %28(i32 noundef 2147480) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !732
  tail call void @arm_heavy_mb() #5
  %29 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %lmmio, align 4
  %add.ptr80 = getelementptr i32, ptr %30, i32 109
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr80) #5, !srcloc !728
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !733
  %32 = or i32 %31, 16
  %33 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %lmmio, align 4
  %add.ptr87 = getelementptr i32, ptr %34, i32 109
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr87, i32 %32) #5, !srcloc !726
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %35 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %35(i32 noundef 2147480) #5
  %36 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %lmmio, align 4
  %add.ptr91 = getelementptr i32, ptr %37, i32 436
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr91) #5, !srcloc !728
  %39 = shl i32 %38, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !734
  %and95 = and i32 %39, 134217728
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pinnacle_antenna_pwr.__UNIQUE_ID_ddebug396, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pinnacle_antenna_pwr, %if.then102)) #5
          to label %do.end106 [label %if.then102], !srcloc !724

if.then102:                                       ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and95)
  %tobool103.not = icmp eq i32 %and95, 0
  %cond = select i1 %tobool103.not, ptr @.str.327, ptr @.str.326
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pinnacle_antenna_pwr.__UNIQUE_ID_ddebug396, ptr noundef nonnull @.str.325, ptr noundef nonnull @.str.323, ptr noundef nonnull %cond) #5
  br label %do.end106

do.end106:                                        ; preds = %if.then102, %do.body18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and95)
  %tobool107.not = icmp eq i32 %and95, 0
  br i1 %tobool107.not, label %do.body109, label %do.end106.cleanup_crit_edge

do.end106.cleanup_crit_edge:                      ; preds = %do.end106
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body109:                                       ; preds = %do.end106
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !735
  tail call void @arm_heavy_mb() #5
  %40 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %lmmio, align 4
  %add.ptr115 = getelementptr i32, ptr %41, i32 109
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr115) #5, !srcloc !728
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !736
  %43 = and i32 %42, -5
  %44 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %lmmio, align 4
  %add.ptr122 = getelementptr i32, ptr %45, i32 109
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr122, i32 %43) #5, !srcloc !726
  br label %cleanup

cleanup:                                          ; preds = %do.body109, %do.end106.cleanup_crit_edge, %do.body
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt352_aver777_init(ptr noundef %fe) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %write.i = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 9
  %0 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %write.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.mt352_write.exit_crit_edge, label %if.then.i

entry.mt352_write.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %mt352_write.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call.i = tail call i32 %1(ptr noundef %fe, ptr noundef nonnull @mt352_aver777_init.clock_config, i32 noundef 3) #5
  br label %mt352_write.exit

mt352_write.exit:                                 ; preds = %if.then.i, %entry.mt352_write.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %2(i32 noundef 42949600) #5
  %3 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %write.i, align 4
  %tobool.not.i10 = icmp eq ptr %4, null
  br i1 %tobool.not.i10, label %mt352_write.exit.mt352_write.exit28_crit_edge, label %mt352_write.exit13

mt352_write.exit.mt352_write.exit28_crit_edge:    ; preds = %mt352_write.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %mt352_write.exit28

mt352_write.exit13:                               ; preds = %mt352_write.exit
  %call.i11 = tail call i32 %4(ptr noundef %fe, ptr noundef nonnull @mt352_aver777_init.reset, i32 noundef 2) #5
  %5 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %.pr = load ptr, ptr %write.i, align 4
  %tobool.not.i15 = icmp eq ptr %.pr, null
  br i1 %tobool.not.i15, label %mt352_write.exit13.mt352_write.exit28_crit_edge, label %mt352_write.exit18

mt352_write.exit13.mt352_write.exit28_crit_edge:  ; preds = %mt352_write.exit13
  call void @__sanitizer_cov_trace_pc() #7
  br label %mt352_write.exit28

mt352_write.exit18:                               ; preds = %mt352_write.exit13
  %call.i16 = tail call i32 %.pr(ptr noundef %fe, ptr noundef nonnull @mt352_aver777_init.adc_ctl_1_cfg, i32 noundef 2) #5
  %6 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pr30 = load ptr, ptr %write.i, align 4
  %tobool.not.i20 = icmp eq ptr %.pr30, null
  br i1 %tobool.not.i20, label %mt352_write.exit18.mt352_write.exit28_crit_edge, label %mt352_write.exit23

mt352_write.exit18.mt352_write.exit28_crit_edge:  ; preds = %mt352_write.exit18
  call void @__sanitizer_cov_trace_pc() #7
  br label %mt352_write.exit28

mt352_write.exit23:                               ; preds = %mt352_write.exit18
  %call.i21 = tail call i32 %.pr30(ptr noundef %fe, ptr noundef nonnull @mt352_aver777_init.agc_cfg, i32 noundef 3) #5
  %7 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %.pr32.pr = load ptr, ptr %write.i, align 4
  %tobool.not.i25 = icmp eq ptr %.pr32.pr, null
  br i1 %tobool.not.i25, label %mt352_write.exit23.mt352_write.exit28_crit_edge, label %if.then.i27

mt352_write.exit23.mt352_write.exit28_crit_edge:  ; preds = %mt352_write.exit23
  call void @__sanitizer_cov_trace_pc() #7
  br label %mt352_write.exit28

if.then.i27:                                      ; preds = %mt352_write.exit23
  call void @__sanitizer_cov_trace_pc() #7
  %call.i26 = tail call i32 %.pr32.pr(ptr noundef %fe, ptr noundef nonnull @mt352_aver777_init.capt_range_cfg, i32 noundef 2) #5
  br label %mt352_write.exit28

mt352_write.exit28:                               ; preds = %if.then.i27, %mt352_write.exit23.mt352_write.exit28_crit_edge, %mt352_write.exit18.mt352_write.exit28_crit_edge, %mt352_write.exit13.mt352_write.exit28_crit_edge, %mt352_write.exit.mt352_write.exit28_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt352_avermedia_xc3028_init(ptr noundef %fe) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %write.i = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 9
  %0 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %write.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.mt352_write.exit_crit_edge, label %if.then.i

entry.mt352_write.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %mt352_write.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call.i = tail call i32 %1(ptr noundef %fe, ptr noundef nonnull @mt352_avermedia_xc3028_init.clock_config, i32 noundef 3) #5
  br label %mt352_write.exit

mt352_write.exit:                                 ; preds = %if.then.i, %entry.mt352_write.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %2(i32 noundef 42949600) #5
  %3 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %write.i, align 4
  %tobool.not.i10 = icmp eq ptr %4, null
  br i1 %tobool.not.i10, label %mt352_write.exit.mt352_write.exit28_crit_edge, label %mt352_write.exit13

mt352_write.exit.mt352_write.exit28_crit_edge:    ; preds = %mt352_write.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %mt352_write.exit28

mt352_write.exit13:                               ; preds = %mt352_write.exit
  %call.i11 = tail call i32 %4(ptr noundef %fe, ptr noundef nonnull @mt352_avermedia_xc3028_init.reset, i32 noundef 2) #5
  %5 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %.pr = load ptr, ptr %write.i, align 4
  %tobool.not.i15 = icmp eq ptr %.pr, null
  br i1 %tobool.not.i15, label %mt352_write.exit13.mt352_write.exit28_crit_edge, label %mt352_write.exit18

mt352_write.exit13.mt352_write.exit28_crit_edge:  ; preds = %mt352_write.exit13
  call void @__sanitizer_cov_trace_pc() #7
  br label %mt352_write.exit28

mt352_write.exit18:                               ; preds = %mt352_write.exit13
  %call.i16 = tail call i32 %.pr(ptr noundef %fe, ptr noundef nonnull @mt352_avermedia_xc3028_init.adc_ctl_1_cfg, i32 noundef 2) #5
  %6 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pr30 = load ptr, ptr %write.i, align 4
  %tobool.not.i20 = icmp eq ptr %.pr30, null
  br i1 %tobool.not.i20, label %mt352_write.exit18.mt352_write.exit28_crit_edge, label %mt352_write.exit23

mt352_write.exit18.mt352_write.exit28_crit_edge:  ; preds = %mt352_write.exit18
  call void @__sanitizer_cov_trace_pc() #7
  br label %mt352_write.exit28

mt352_write.exit23:                               ; preds = %mt352_write.exit18
  %call.i21 = tail call i32 %.pr30(ptr noundef %fe, ptr noundef nonnull @mt352_avermedia_xc3028_init.agc_cfg, i32 noundef 2) #5
  %7 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %.pr32.pr = load ptr, ptr %write.i, align 4
  %tobool.not.i25 = icmp eq ptr %.pr32.pr, null
  br i1 %tobool.not.i25, label %mt352_write.exit23.mt352_write.exit28_crit_edge, label %if.then.i27

mt352_write.exit23.mt352_write.exit28_crit_edge:  ; preds = %mt352_write.exit23
  call void @__sanitizer_cov_trace_pc() #7
  br label %mt352_write.exit28

if.then.i27:                                      ; preds = %mt352_write.exit23
  call void @__sanitizer_cov_trace_pc() #7
  %call.i26 = tail call i32 %.pr32.pr(ptr noundef %fe, ptr noundef nonnull @mt352_avermedia_xc3028_init.capt_range_cfg, i32 noundef 2) #5
  br label %mt352_write.exit28

mt352_write.exit28:                               ; preds = %if.then.i27, %mt352_write.exit23.mt352_write.exit28_crit_edge, %mt352_write.exit18.mt352_write.exit28_crit_edge, %mt352_write.exit13.mt352_write.exit28_crit_edge, %mt352_write.exit.mt352_write.exit28_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @philips_tda1004x_request_firmware(ptr nocapture noundef readonly %fe, ptr noundef %fw, ptr noundef %name) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dvb = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 2
  %0 = ptrtoint ptr %dvb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dvb, align 4
  %priv = getelementptr inbounds %struct.dvb_adapter, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  %pci = getelementptr inbounds %struct.saa7134_dev, ptr %3, i32 0, i32 15
  %4 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pci, align 4
  %dev1 = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  %call = tail call i32 @request_firmware(ptr noundef %fw, ptr noundef %name, ptr noundef %dev1) #5
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vb2_dvb_get_frontend(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tda8290_i2c_gate_ctrl(ptr nocapture noundef readonly %fe, i32 noundef %enable) #2 align 64 {
entry:
  %tda8290_msg = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %config = getelementptr inbounds %struct.tda1004x_state, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %config, align 4
  %i2c_gate = getelementptr inbounds %struct.tda1004x_config, ptr %3, i32 0, i32 10
  %4 = ptrtoint ptr %i2c_gate to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %i2c_gate, align 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %tda8290_msg) #5
  %6 = getelementptr inbounds i8, ptr %tda8290_msg, i32 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %6, align 4
  %conv = zext i8 %5 to i16
  %8 = ptrtoint ptr %tda8290_msg to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %conv, ptr %tda8290_msg, align 4
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %tda8290_msg, i32 0, i32 1
  %9 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 0, ptr %flags, align 2
  %len = getelementptr inbounds %struct.i2c_msg, ptr %tda8290_msg, i32 0, i32 2
  %10 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 2, ptr %len, align 4
  %buf = getelementptr inbounds %struct.i2c_msg, ptr %tda8290_msg, i32 0, i32 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable)
  %tobool.not = icmp eq i32 %enable, 0
  %tda8290_i2c_gate_ctrl.tda8290_open.tda8290_i2c_gate_ctrl.tda8290_close = select i1 %tobool.not, ptr @tda8290_i2c_gate_ctrl.tda8290_open, ptr @tda8290_i2c_gate_ctrl.tda8290_close
  %11 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %tda8290_i2c_gate_ctrl.tda8290_open.tda8290_i2c_gate_ctrl.tda8290_close, ptr %buf, align 4
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 4
  %call = call i32 @i2c_transfer(ptr noundef %13, ptr noundef nonnull %tda8290_msg, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end7, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call6 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.335) #8
  br label %cleanup

if.end7:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  call void @msleep(i32 noundef 20) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %do.end
  %retval.0 = phi i32 [ -5, %do.end ], [ 0, %if.end7 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %tda8290_msg) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @philips_tda827x_tuner_init(ptr nocapture noundef readonly %fe) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dvb = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 2
  %0 = ptrtoint ptr %dvb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dvb, align 4
  %priv = getelementptr inbounds %struct.dvb_adapter, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %4 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %demodulator_priv, align 4
  %config = getelementptr inbounds %struct.tda1004x_state, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %config, align 4
  %antenna_switch = getelementptr inbounds %struct.tda1004x_config, ptr %7, i32 0, i32 9
  %8 = ptrtoint ptr %antenna_switch to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %antenna_switch, align 1
  %10 = zext i8 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.355)
  switch i8 %9, label %entry.sw.epilog_crit_edge [
    i8 2, label %do.body4
    i8 1, label %do.body
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @philips_tda827x_tuner_init.__UNIQUE_ID_ddebug398, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@philips_tda827x_tuner_init, %if.then)) #5
          to label %sw.epilog.sink.split [label %if.then], !srcloc !724

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @philips_tda827x_tuner_init.__UNIQUE_ID_ddebug398, ptr noundef nonnull @.str.339) #5
  br label %sw.epilog.sink.split

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @philips_tda827x_tuner_init.__UNIQUE_ID_ddebug399, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@philips_tda827x_tuner_init, %if.then16)) #5
          to label %sw.epilog.sink.split [label %if.then16], !srcloc !724

if.then16:                                        ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @philips_tda827x_tuner_init.__UNIQUE_ID_ddebug399, ptr noundef nonnull @.str.341) #5
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %if.then16, %do.body4, %if.then, %do.body
  %.sink = phi i32 [ 0, %do.body ], [ 0, %if.then ], [ 1, %do.body4 ], [ 1, %if.then16 ]
  tail call void @saa7134_set_gpio(ptr noundef %3, i32 noundef 21, i32 noundef %.sink) #5
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %entry.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @philips_tda827x_tuner_sleep(ptr nocapture noundef readonly %fe) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dvb = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 2
  %0 = ptrtoint ptr %dvb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dvb, align 4
  %priv = getelementptr inbounds %struct.dvb_adapter, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %4 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %demodulator_priv, align 4
  %config = getelementptr inbounds %struct.tda1004x_state, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %config, align 4
  %antenna_switch = getelementptr inbounds %struct.tda1004x_config, ptr %7, i32 0, i32 9
  %8 = ptrtoint ptr %antenna_switch to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %antenna_switch, align 1
  %10 = zext i8 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.356)
  switch i8 %9, label %entry.sw.epilog_crit_edge [
    i8 2, label %do.body4
    i8 1, label %do.body
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @philips_tda827x_tuner_sleep.__UNIQUE_ID_ddebug400, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@philips_tda827x_tuner_sleep, %if.then)) #5
          to label %sw.epilog.sink.split [label %if.then], !srcloc !724

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @philips_tda827x_tuner_sleep.__UNIQUE_ID_ddebug400, ptr noundef nonnull @.str.341) #5
  br label %sw.epilog.sink.split

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @philips_tda827x_tuner_sleep.__UNIQUE_ID_ddebug401, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@philips_tda827x_tuner_sleep, %if.then16)) #5
          to label %sw.epilog.sink.split [label %if.then16], !srcloc !724

if.then16:                                        ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @philips_tda827x_tuner_sleep.__UNIQUE_ID_ddebug401, ptr noundef nonnull @.str.339) #5
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %if.then16, %do.body4, %if.then, %do.body
  %.sink = phi i32 [ 1, %do.body ], [ 1, %if.then ], [ 0, %do.body4 ], [ 0, %if.then16 ]
  tail call void @saa7134_set_gpio(ptr noundef %3, i32 noundef 21, i32 noundef %.sink) #5
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %entry.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ads_duo_tuner_init(ptr nocapture noundef readonly %fe) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dvb = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 2
  %0 = ptrtoint ptr %dvb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dvb, align 4
  %priv = getelementptr inbounds %struct.dvb_adapter, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  %demodulator_priv.i = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %4 = ptrtoint ptr %demodulator_priv.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %demodulator_priv.i, align 4
  %config.i = getelementptr inbounds %struct.tda1004x_state, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %config.i, align 4
  %antenna_switch.i = getelementptr inbounds %struct.tda1004x_config, ptr %7, i32 0, i32 9
  %8 = ptrtoint ptr %antenna_switch.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %antenna_switch.i, align 1
  %10 = zext i8 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.357)
  switch i8 %9, label %entry.philips_tda827x_tuner_init.exit_crit_edge [
    i8 2, label %do.body4.i
    i8 1, label %do.body.i
  ]

entry.philips_tda827x_tuner_init.exit_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %philips_tda827x_tuner_init.exit

do.body.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @philips_tda827x_tuner_init.__UNIQUE_ID_ddebug398, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ads_duo_tuner_init, %if.then.i)) #5
          to label %sw.epilog.sink.split.i [label %if.then.i], !srcloc !724

if.then.i:                                        ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @philips_tda827x_tuner_init.__UNIQUE_ID_ddebug398, ptr noundef nonnull @.str.339) #5
  br label %sw.epilog.sink.split.i

do.body4.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @philips_tda827x_tuner_init.__UNIQUE_ID_ddebug399, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ads_duo_tuner_init, %if.then16.i)) #5
          to label %sw.epilog.sink.split.i [label %if.then16.i], !srcloc !724

if.then16.i:                                      ; preds = %do.body4.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @philips_tda827x_tuner_init.__UNIQUE_ID_ddebug399, ptr noundef nonnull @.str.341) #5
  br label %sw.epilog.sink.split.i

sw.epilog.sink.split.i:                           ; preds = %if.then16.i, %do.body4.i, %if.then.i, %do.body.i
  %.sink.i = phi i32 [ 0, %do.body.i ], [ 0, %if.then.i ], [ 1, %do.body4.i ], [ 1, %if.then16.i ]
  tail call void @saa7134_set_gpio(ptr noundef %3, i32 noundef 21, i32 noundef %.sink.i) #5
  br label %philips_tda827x_tuner_init.exit

philips_tda827x_tuner_init.exit:                  ; preds = %sw.epilog.sink.split.i, %entry.philips_tda827x_tuner_init.exit_crit_edge
  tail call void @saa7134_set_gpio(ptr noundef %3, i32 noundef 22, i32 noundef 1) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ads_duo_tuner_sleep(ptr nocapture noundef readonly %fe) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dvb = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 2
  %0 = ptrtoint ptr %dvb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dvb, align 4
  %priv = getelementptr inbounds %struct.dvb_adapter, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  tail call void @saa7134_set_gpio(ptr noundef %3, i32 noundef 22, i32 noundef 0) #5
  %4 = ptrtoint ptr %dvb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dvb, align 4
  %priv.i = getelementptr inbounds %struct.dvb_adapter, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %priv.i, align 4
  %demodulator_priv.i = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %8 = ptrtoint ptr %demodulator_priv.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %demodulator_priv.i, align 4
  %config.i = getelementptr inbounds %struct.tda1004x_state, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %config.i, align 4
  %antenna_switch.i = getelementptr inbounds %struct.tda1004x_config, ptr %11, i32 0, i32 9
  %12 = ptrtoint ptr %antenna_switch.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %antenna_switch.i, align 1
  %14 = zext i8 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.358)
  switch i8 %13, label %entry.philips_tda827x_tuner_sleep.exit_crit_edge [
    i8 2, label %do.body4.i
    i8 1, label %do.body.i
  ]

entry.philips_tda827x_tuner_sleep.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %philips_tda827x_tuner_sleep.exit

do.body.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @philips_tda827x_tuner_sleep.__UNIQUE_ID_ddebug400, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ads_duo_tuner_sleep, %if.then.i)) #5
          to label %sw.epilog.sink.split.i [label %if.then.i], !srcloc !724

if.then.i:                                        ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @philips_tda827x_tuner_sleep.__UNIQUE_ID_ddebug400, ptr noundef nonnull @.str.341) #5
  br label %sw.epilog.sink.split.i

do.body4.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @philips_tda827x_tuner_sleep.__UNIQUE_ID_ddebug401, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ads_duo_tuner_sleep, %if.then16.i)) #5
          to label %sw.epilog.sink.split.i [label %if.then16.i], !srcloc !724

if.then16.i:                                      ; preds = %do.body4.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @philips_tda827x_tuner_sleep.__UNIQUE_ID_ddebug401, ptr noundef nonnull @.str.339) #5
  br label %sw.epilog.sink.split.i

sw.epilog.sink.split.i:                           ; preds = %if.then16.i, %do.body4.i, %if.then.i, %do.body.i
  %.sink.i = phi i32 [ 1, %do.body.i ], [ 1, %if.then.i ], [ 0, %do.body4.i ], [ 0, %if.then16.i ]
  tail call void @saa7134_set_gpio(ptr noundef %7, i32 noundef 21, i32 noundef %.sink.i) #5
  br label %philips_tda827x_tuner_sleep.exit

philips_tda827x_tuner_sleep.exit:                 ; preds = %sw.epilog.sink.split.i, %entry.philips_tda827x_tuner_sleep.exit_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_dvb_unregister_bus(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @saa7134_ts_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 344)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 344)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !8, !10, !12, !13, !15, !17, !18, !19, !21, !23, !25, !27, !28, !29, !30, !31, !32, !34, !36, !37, !39, !40, !41, !42, !43, !45, !46, !47, !49, !50, !51, !52, !54, !55, !56, !57, !58, !60, !61, !62, !64, !65, !67, !68, !69, !70, !71, !73, !74, !75, !77, !78, !80, !81, !82, !83, !84, !86, !87, !89, !90, !92, !93, !95, !96, !98, !99, !101, !102, !103, !104, !105, !107, !108, !109, !110, !111, !113, !114, !115, !116, !117, !119, !120, !121, !122, !123, !125, !126, !128, !129, !131, !132, !133, !134, !135, !137, !138, !139, !140, !141, !143, !144, !145, !147, !148, !149, !150, !151, !153, !154, !155, !157, !158, !160, !161, !162, !163, !164, !166, !167, !168, !170, !171, !172, !174, !175, !177, !178, !180, !181, !182, !184, !185, !186, !187, !188, !190, !191, !192, !194, !195, !196, !197, !198, !200, !201, !202, !203, !204, !206, !207, !209, !210, !212, !213, !214, !215, !216, !218, !219, !221, !222, !224, !225, !227, !228, !230, !231, !232, !234, !235, !237, !238, !239, !241, !242, !244, !245, !247, !248, !250, !251, !253, !254, !256, !257, !259, !260, !261, !262, !263, !265, !266, !267, !269, !270, !271, !273, !274, !276, !277, !279, !280, !282, !283, !284, !286, !287, !289, !290, !291, !293, !294, !296, !297, !299, !300, !302, !303, !304, !306, !307, !309, !310, !311, !313, !314, !316, !317, !319, !320, !321, !323, !324, !326, !327, !328, !330, !331, !332, !333, !334, !336, !337, !339, !340, !342, !343, !344, !345, !346, !348, !349, !351, !352, !354, !355, !356, !357, !358, !360, !361, !362, !363, !364, !366, !367, !368, !370, !371, !373, !374, !375, !376, !377, !379, !380, !381, !383, !384, !386, !387, !388, !389, !390, !392, !393, !394, !396, !397, !399, !400, !402, !403, !405, !406, !408, !409, !411, !412, !414, !415, !416, !417, !418, !420, !421, !423, !424, !426, !427, !428, !429, !430, !432, !433, !435, !436, !438, !439, !441, !442, !444, !445, !447, !448, !450, !451, !453, !454, !456, !457, !458, !460, !461, !462, !463, !464, !466, !467, !468, !470, !471, !472, !474, !476, !478, !480, !482, !484, !486, !488, !490, !492, !494, !495, !496, !497, !499, !500, !501, !502, !503, !504, !506, !508, !510, !512, !514, !516, !518, !520, !522, !524, !526, !528, !530, !532, !534, !536, !537, !538, !539, !541, !542, !543, !545, !546, !548, !549, !551, !553, !555, !556, !557, !558, !560, !562, !564, !565, !566, !567, !569, !570, !571, !573, !574, !576, !578, !580, !582, !584, !586, !588, !590, !592, !594, !596, !598, !600, !602, !604, !606, !608, !610, !612, !614, !616, !618, !620, !622, !624, !626, !627, !628, !629, !631, !633, !635, !637, !639, !641, !643, !645, !647, !649, !651, !653, !655, !657, !659, !661, !663, !665, !667, !669, !671, !673, !675, !677, !679, !681, !683, !685, !687, !689, !691, !693, !694, !695, !696, !698, !699, !701, !703, !705, !707, !709, !711, !713}
!llvm.module.flags = !{!715, !716, !717, !718, !719, !720, !721, !722}
!llvm.ident = !{!723}

!0 = !{ptr @__UNIQUE_ID_author387, !1, !"__UNIQUE_ID_author387", i1 false, i1 false}
!1 = !{!"../drivers/media/pci/saa7134/saa7134-dvb.c", i32 54, i32 1}
!2 = !{ptr @__UNIQUE_ID_file388, !3, !"__UNIQUE_ID_file388", i1 false, i1 false}
!3 = !{!"../drivers/media/pci/saa7134/saa7134-dvb.c", i32 55, i32 1}
!4 = !{ptr @__UNIQUE_ID_license389, !3, !"__UNIQUE_ID_license389", i1 false, i1 false}
!5 = !{ptr @__param_antenna_pwr, !6, !"__param_antenna_pwr", i1 false, i1 false}
!6 = !{!"../drivers/media/pci/saa7134/saa7134-dvb.c", i32 59, i32 1}
!7 = !{ptr @__UNIQUE_ID_antenna_pwrtype390, !6, !"__UNIQUE_ID_antenna_pwrtype390", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_antenna_pwr391, !9, !"__UNIQUE_ID_antenna_pwr391", i1 false, i1 false}
!9 = !{!"../drivers/media/pci/saa7134/saa7134-dvb.c", i32 60, i32 1}
!10 = !{ptr @__param_use_frontend, !11, !"__param_use_frontend", i1 false, i1 false}
!11 = !{!"../drivers/media/pci/saa7134/saa7134-dvb.c", i32 63, i32 1}
!12 = !{ptr @__UNIQUE_ID_use_frontendtype392, !11, !"__UNIQUE_ID_use_frontendtype392", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_use_frontend393, !14, !"__UNIQUE_ID_use_frontend393", i1 false, i1 false}
!14 = !{!"../drivers/media/pci/saa7134/saa7134-dvb.c", i32 64, i32 1}
!15 = !{ptr @__param_adapter_nr, !16, !"__param_adapter_nr", i1 false, i1 false}
!16 = !{!"../drivers/media/pci/saa7134/saa7134-dvb.c", i32 66, i32 1}
!17 = !{ptr @__UNIQUE_ID_adapter_nrtype394, !16, !"__UNIQUE_ID_adapter_nrtype394", i1 false, i1 false}
!18 = !{ptr @__UNIQUE_ID_adapter_nr395, !16, !"__UNIQUE_ID_adapter_nr395", i1 false, i1 false}
!19 = !{ptr @__initcall__kmod_saa7134_dvb__406_2003_dvb_register6, !20, !"__initcall__kmod_saa7134_dvb__406_2003_dvb_register6", i1 false, i1 false}
!20 = !{!"../drivers/media/pci/saa7134/saa7134-dvb.c", i32 2003, i32 1}
!21 = !{ptr @__exitcall_dvb_unregister, !22, !"__exitcall_dvb_unregister", i1 false, i1 false}
!22 = !{!"../drivers/media/pci/saa7134/saa7134-dvb.c", i32 2004, i32 1}
!23 = !{ptr @antenna_pwr, !24, !"antenna_pwr", i1 false, i1 false}
!24 = !{!"../drivers/media/pci/saa7134/saa7134-dvb.c", i32 57, i32 21}
!25 = !{ptr @use_frontend, !26, !"use_frontend", i1 false, i1 false}
!26 = !{!"../drivers/media/pci/saa7134/saa7134-dvb.c", i32 62, i32 12}
!27 = !{ptr @__param_str_antenna_pwr, !6, !"__param_str_antenna_pwr", i1 false, i1 false}
!28 = !{ptr @__param_str_use_frontend, !11, !"__param_str_use_frontend", i1 false, i1 false}
!29 = !{ptr @__param_str_adapter_nr, !16, !"__param_str_adapter_nr", i1 false, i1 false}
!30 = !{ptr @__param_arr_adapter_nr, !16, !"__param_arr_adapter_nr", i1 false, i1 false}
!31 = !{ptr @adapter_nr, !16, !"adapter_nr", i1 false, i1 false}
!32 = !{ptr @dvb_ops, !33, !"dvb_ops", i1 false, i1 false}
!33 = !{!"../drivers/media/pci/saa7134/saa7134-dvb.c", i32 1987, i32 32}
!34 = !{ptr @dvb_init.__key, !35, !"__key", i1 false, i1 false}
!35 = !{!"../drivers/media/pci/saa7134/saa7134-dvb.c", i32 1221, i32 2}
!36 = !{ptr @.str, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.1, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/media/pci/saa7134/saa7134-dvb.c", i32 1224, i32 2}
!39 = !{ptr @.str.2, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.3, !38, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @dvb_init._entry, !38, !"_entry", i1 false, i1 false}
!42 = !{ptr @dvb_init._entry_ptr, !38, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.5, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/media/pci/saa7134/saa7134-dvb.c", i32 1227, i32 3}
!45 = !{ptr @dvb_init._entry.4, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @dvb_init._entry_ptr.6, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.7, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/media/pci/saa7134/saa7134-dvb.c", i32 1253, i32 3}
!49 = !{ptr @.str.8, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @dvb_init.__UNIQUE_ID_ddebug402, !48, !"__UNIQUE_ID_ddebug402", i1 false, i1 false}
!51 = !{ptr @.str.9, !48, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @.str.10, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/media/pci/saa7134/saa7134-dvb.c", i32 1254, i32 23}
!54 = !{ptr @.str.11, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @.str.13, !53, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @dvb_init._entry.12, !53, !"_entry", i1 false, i1 false}
!57 = !{ptr @dvb_init._entry_ptr.14, !53, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.15, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/media/pci/saa7134/saa7134-dvb.c", i32 1262, i32 3}
!60 = !{ptr @dvb_init.__UNIQUE_ID_ddebug403, !59, !"__UNIQUE_ID_ddebug403", i1 false, i1 false}
!61 = !{ptr @.str.16, !59, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @dvb_init._entry.17, !63, !"_entry", i1 false, i1 false}
!63 = !{!"../drivers/media/pci/saa7134/saa7134-dvb.c", i32 1263, i32 23}
!64 = !{ptr @dvb_init._entry_ptr.18, !63, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.19, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/media/pci/saa7134/saa7134-dvb.c", i32 1266, i32 4}
!67 = !{ptr @.str.20, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @.str.22, !66, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @dvb_init._entry.21, !66, !"_entry", i1 false, i1 false}
!70 = !{ptr @dvb_init._entry_ptr.23, !66, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.24, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/media/pci/saa7134/saa7134-dvb.c", i32 1272, i32 3}
!73 = !{ptr @dvb_init.__UNIQUE_ID_ddebug404, !72, !"__UNIQUE_ID_ddebug404", i1 false, i1 false}
!74 = !{ptr @.str.25, !72, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @dvb_init._entry.26, !76, !"_entry", i1 false, i1 false}
!76 = !{!"../drivers/media/pci/saa7134/saa7134-dvb.c", i32 1273, i32 23}
!77 = !{ptr @dvb_init._entry_ptr.27, !76, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.28, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/media/pci/saa7134/saa7134-dvb.c", i32 1279, i32 23}
!80 = !{ptr @.str.29, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @.str.31, !79, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @dvb_init._entry.30, !79, !"_entry", i1 false, i1 false}
!83 = !{ptr @dvb_init._entry_ptr.32, !79, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @dvb_init._entry.33, !85, !"_entry", i1 false, i1 false}
!85 = !{!"../drivers/media/pci/saa7134/saa7134-dvb.c", i32 1297, i32 4}
!86 = !{ptr @dvb_init._entry_ptr.34, !85, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @dvb_init._entry.35, !88, !"_entry", i1 false, i1 false}
!88 = !{!"../drivers/media/pci/saa7134/saa7134-dvb.c", i32 1303, i32 23}
!89 = !{ptr @dvb_init._entry_ptr.36, !88, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @dvb_init._entry.37, !91, !"_entry", i1 false, i1 false}
!91 = !{!"../drivers/media/pci/saa7134/saa7134-dvb.c", i32 1320, i32 23}
!92 = !{ptr @dvb_init._entry_ptr.38, !91, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @dvb_init._entry.39, !94, !"_entry", i1 false, i1 false}
!94 = !{!"../drivers/media/pci/saa7134/saa7134-dvb.c", i32 1332, i32 23}
!95 = !{ptr @dvb_init._entry_ptr.40, !94, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @dvb_init._entry.41, !97, !"_entry", i1 false, i1 false}
!97 = !{!"../drivers/media/pci/saa7134/saa7134-dvb.c", i32 1344, i32 23}
!98 = !{ptr @dvb_init._entry_ptr.42, !97, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.43, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/media/pci/saa7134/saa7134-dvb.c", i32 1358, i32 23}
!101 = !{ptr @.str.44, !100, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @.str.46, !100, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @dvb_init._entry.45, !100, !"_entry", i1 false, i1 false}
!104 = !{ptr @dvb_init._entry_ptr.47, !100, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @.str.48, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/media/pci/saa7134/saa7134-dvb.c", i32 1362, i32 4}
!107 = !{ptr @.str.49, !106, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @.str.51, !106, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @dvb_init._entry.50, !106, !"_entry", i1 false, i1 false}
!110 = !{ptr @dvb_init._entry_ptr.52, !106, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @.str.53, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/media/pci/saa7134/saa7134-dvb.c", i32 1365, i32 4}
!113 = !{ptr @.str.54, !112, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @.str.56, !112, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @dvb_init._entry.55, !112, !"_entry", i1 false, i1 false}
!116 = !{ptr @dvb_init._entry_ptr.57, !112, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @.str.58, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/media/pci/saa7134/saa7134-dvb.c", i32 1386, i32 23}
!119 = !{ptr @.str.59, !118, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @.str.61, !118, !"<string literal>", i1 false, i1 false}
!121 = !{ptr @dvb_init._entry.60, !118, !"_entry", i1 false, i1 false}
!122 = !{ptr @dvb_init._entry_ptr.62, !118, !"_entry_ptr", i1 false, i1 false}
!123 = !{ptr @dvb_init._entry.63, !124, !"_entry", i1 false, i1 false}
!124 = !{!"../drivers/media/pci/saa7134/saa7134-dvb.c", i32 1390, i32 4}
!125 = !{ptr @dvb_init._entry_ptr.64, !124, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @dvb_init._entry.65, !127, !"_entry", i1 false, i1 false}
!127 = !{!"../drivers/media/pci/saa7134/saa7134-dvb.c", i32 1393, i32 4}
!128 = !{ptr @dvb_init._entry_ptr.66, !127, !"_entry_ptr", i1 false, i1 false}
!129 = !{ptr @.str.67, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/media/pci/saa7134/saa7134-dvb.c", i32 1414, i32 24}
!131 = !{ptr @.str.68, !130, !"<string literal>", i1 false, i1 false}
!132 = !{ptr @.str.70, !130, !"<string literal>", i1 false, i1 false}
!133 = !{ptr @dvb_init._entry.69, !130, !"_entry", i1 false, i1 false}
!134 = !{ptr @dvb_init._entry_ptr.71, !130, !"_entry_ptr", i1 false, i1 false}
!135 = !{ptr @.str.72, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/media/pci/saa7134/saa7134-dvb.c", i32 1416, i32 9}
!137 = !{ptr @.str.73, !136, !"<string literal>", i1 false, i1 false}
!138 = !{ptr @.str.75, !136, !"<string literal>", i1 false, i1 false}
!139 = !{ptr @dvb_init._entry.74, !136, !"_entry", i1 false, i1 false}
!140 = !{ptr @dvb_init._entry_ptr.76, !136, !"_entry_ptr", i1 false, i1 false}
!141 = !{ptr @.str.78, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/media/pci/saa7134/saa7134-dvb.c", i32 1418, i32 6}
!143 = !{ptr @dvb_init._entry.77, !142, !"_entry", i1 false, i1 false}
!144 = !{ptr @dvb_init._entry_ptr.79, !142, !"_entry_ptr", i1 false, i1 false}
!145 = !{ptr @.str.80, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/media/pci/saa7134/saa7134-dvb.c", i32 1422, i32 9}
!147 = !{ptr @.str.81, !146, !"<string literal>", i1 false, i1 false}
!148 = !{ptr @.str.83, !146, !"<string literal>", i1 false, i1 false}
!149 = !{ptr @dvb_init._entry.82, !146, !"_entry", i1 false, i1 false}
!150 = !{ptr @dvb_init._entry_ptr.84, !146, !"_entry_ptr", i1 false, i1 false}
!151 = !{ptr @.str.86, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/media/pci/saa7134/saa7134-dvb.c", i32 1425, i32 6}
!153 = !{ptr @dvb_init._entry.85, !152, !"_entry", i1 false, i1 false}
!154 = !{ptr @dvb_init._entry_ptr.87, !152, !"_entry_ptr", i1 false, i1 false}
!155 = !{ptr @dvb_init._entry.88, !156, !"_entry", i1 false, i1 false}
!156 = !{!"../drivers/media/pci/saa7134/saa7134-dvb.c", i32 1434, i32 23}
!157 = !{ptr @dvb_init._entry_ptr.89, !156, !"_entry_ptr", i1 false, i1 false}
!158 = !{ptr @.str.90, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/media/pci/saa7134/saa7134-dvb.c", i32 1438, i32 8}
!160 = !{ptr @.str.91, !159, !"<string literal>", i1 false, i1 false}
!161 = !{ptr @.str.93, !159, !"<string literal>", i1 false, i1 false}
!162 = !{ptr @dvb_init._entry.92, !159, !"_entry", i1 false, i1 false}
!163 = !{ptr @dvb_init._entry_ptr.94, !159, !"_entry_ptr", i1 false, i1 false}
!164 = !{ptr @.str.96, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/media/pci/saa7134/saa7134-dvb.c", i32 1441, i32 5}
!166 = !{ptr @dvb_init._entry.95, !165, !"_entry", i1 false, i1 false}
!167 = !{ptr @dvb_init._entry_ptr.97, !165, !"_entry_ptr", i1 false, i1 false}
!168 = !{ptr @.str.99, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/media/pci/saa7134/saa7134-dvb.c", i32 1446, i32 4}
!170 = !{ptr @dvb_init._entry.98, !169, !"_entry", i1 false, i1 false}
!171 = !{ptr @dvb_init._entry_ptr.100, !169, !"_entry_ptr", i1 false, i1 false}
!172 = !{ptr @dvb_init._entry.101, !173, !"_entry", i1 false, i1 false}
!173 = !{!"../drivers/media/pci/saa7134/saa7134-dvb.c", i32 1459, i32 24}
!174 = !{ptr @dvb_init._entry_ptr.102, !173, !"_entry_ptr", i1 false, i1 false}
!175 = !{ptr @dvb_init._entry.103, !176, !"_entry", i1 false, i1 false}
!176 = !{!"../drivers/media/pci/saa7134/saa7134-dvb.c", i32 1467, i32 9}
!177 = !{ptr @dvb_init._entry_ptr.104, !176, !"_entry_ptr", i1 false, i1 false}
!178 = !{ptr @.str.106, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/media/pci/saa7134/saa7134-dvb.c", i32 1469, i32 6}
!180 = !{ptr @dvb_init._entry.105, !179, !"_entry", i1 false, i1 false}
!181 = !{ptr @dvb_init._entry_ptr.107, !179, !"_entry_ptr", i1 false, i1 false}
!182 = !{ptr @.str.108, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/media/pci/saa7134/saa7134-dvb.c", i32 1476, i32 10}
!184 = !{ptr @.str.109, !183, !"<string literal>", i1 false, i1 false}
!185 = !{ptr @.str.111, !183, !"<string literal>", i1 false, i1 false}
!186 = !{ptr @dvb_init._entry.110, !183, !"_entry", i1 false, i1 false}
!187 = !{ptr @dvb_init._entry_ptr.112, !183, !"_entry_ptr", i1 false, i1 false}
!188 = !{ptr @.str.114, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/media/pci/saa7134/saa7134-dvb.c", i32 1478, i32 7}
!190 = !{ptr @dvb_init._entry.113, !189, !"_entry", i1 false, i1 false}
!191 = !{ptr @dvb_init._entry_ptr.115, !189, !"_entry_ptr", i1 false, i1 false}
!192 = !{ptr @.str.116, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/media/pci/saa7134/saa7134-dvb.c", i32 1501, i32 23}
!194 = !{ptr @.str.117, !193, !"<string literal>", i1 false, i1 false}
!195 = !{ptr @.str.119, !193, !"<string literal>", i1 false, i1 false}
!196 = !{ptr @dvb_init._entry.118, !193, !"_entry", i1 false, i1 false}
!197 = !{ptr @dvb_init._entry_ptr.120, !193, !"_entry_ptr", i1 false, i1 false}
!198 = !{ptr @.str.121, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/media/pci/saa7134/saa7134-dvb.c", i32 1504, i32 4}
!200 = !{ptr @.str.122, !199, !"<string literal>", i1 false, i1 false}
!201 = !{ptr @.str.124, !199, !"<string literal>", i1 false, i1 false}
!202 = !{ptr @dvb_init._entry.123, !199, !"_entry", i1 false, i1 false}
!203 = !{ptr @dvb_init._entry_ptr.125, !199, !"_entry_ptr", i1 false, i1 false}
!204 = !{ptr @dvb_init._entry.126, !205, !"_entry", i1 false, i1 false}
!205 = !{!"../drivers/media/pci/saa7134/saa7134-dvb.c", i32 1509, i32 23}
!206 = !{ptr @dvb_init._entry_ptr.127, !205, !"_entry_ptr", i1 false, i1 false}
!207 = !{ptr @dvb_init._entry.128, !208, !"_entry", i1 false, i1 false}
!208 = !{!"../drivers/media/pci/saa7134/saa7134-dvb.c", i32 1512, i32 4}
!209 = !{ptr @dvb_init._entry_ptr.129, !208, !"_entry_ptr", i1 false, i1 false}
!210 = !{ptr @.str.130, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/media/pci/saa7134/saa7134-dvb.c", i32 1520, i32 23}
!212 = !{ptr @.str.131, !211, !"<string literal>", i1 false, i1 false}
!213 = !{ptr @.str.133, !211, !"<string literal>", i1 false, i1 false}
!214 = !{ptr @dvb_init._entry.132, !211, !"_entry", i1 false, i1 false}
!215 = !{ptr @dvb_init._entry_ptr.134, !211, !"_entry_ptr", i1 false, i1 false}
!216 = !{ptr @dvb_init._entry.135, !217, !"_entry", i1 false, i1 false}
!217 = !{!"../drivers/media/pci/saa7134/saa7134-dvb.c", i32 1524, i32 4}
!218 = !{ptr @dvb_init._entry_ptr.136, !217, !"_entry_ptr", i1 false, i1 false}
!219 = !{ptr @dvb_init._entry.137, !220, !"_entry", i1 false, i1 false}
!220 = !{!"../drivers/media/pci/saa7134/saa7134-dvb.c", i32 1527, i32 4}
!221 = !{ptr @dvb_init._entry_ptr.138, !220, !"_entry_ptr", i1 false, i1 false}
!222 = !{ptr @dvb_init._entry.139, !223, !"_entry", i1 false, i1 false}
!223 = !{!"../drivers/media/pci/saa7134/saa7134-dvb.c", i32 1533, i32 23}
!224 = !{ptr @dvb_init._entry_ptr.140, !223, !"_entry_ptr", i1 false, i1 false}
!225 = !{ptr @dvb_init._entry.141, !226, !"_entry", i1 false, i1 false}
!226 = !{!"../drivers/media/pci/saa7134/saa7134-dvb.c", i32 1536, i32 8}
!227 = !{ptr @dvb_init._entry_ptr.142, !226, !"_entry_ptr", i1 false, i1 false}
!228 = !{ptr @.str.144, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../drivers/media/pci/saa7134/saa7134-dvb.c", i32 1538, i32 5}
!230 = !{ptr @dvb_init._entry.143, !229, !"_entry", i1 false, i1 false}
!231 = !{ptr @dvb_init._entry_ptr.145, !229, !"_entry_ptr", i1 false, i1 false}
!232 = !{ptr @dvb_init._entry.146, !233, !"_entry", i1 false, i1 false}
!233 = !{!"../drivers/media/pci/saa7134/saa7134-dvb.c", i32 1541, i32 8}
!234 = !{ptr @dvb_init._entry_ptr.147, !233, !"_entry_ptr", i1 false, i1 false}
!235 = !{ptr @.str.149, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../drivers/media/pci/saa7134/saa7134-dvb.c", i32 1544, i32 5}
!237 = !{ptr @dvb_init._entry.148, !236, !"_entry", i1 false, i1 false}
!238 = !{ptr @dvb_init._entry_ptr.150, !236, !"_entry_ptr", i1 false, i1 false}
!239 = !{ptr @dvb_init._entry.151, !240, !"_entry", i1 false, i1 false}
!240 = !{!"../drivers/media/pci/saa7134/saa7134-dvb.c", i32 1550, i32 23}
!241 = !{ptr @dvb_init._entry_ptr.152, !240, !"_entry_ptr", i1 false, i1 false}
!242 = !{ptr @dvb_init._entry.153, !243, !"_entry", i1 false, i1 false}
!243 = !{!"../drivers/media/pci/saa7134/saa7134-dvb.c", i32 1557, i32 4}
!244 = !{ptr @dvb_init._entry_ptr.154, !243, !"_entry_ptr", i1 false, i1 false}
!245 = !{ptr @dvb_init._entry.155, !246, !"_entry", i1 false, i1 false}
!246 = !{!"../drivers/media/pci/saa7134/saa7134-dvb.c", i32 1563, i32 23}
!247 = !{ptr @dvb_init._entry_ptr.156, !246, !"_entry_ptr", i1 false, i1 false}
!248 = !{ptr @dvb_init._entry.157, !249, !"_entry", i1 false, i1 false}
!249 = !{!"../drivers/media/pci/saa7134/saa7134-dvb.c", i32 1607, i32 23}
!250 = !{ptr @dvb_init._entry_ptr.158, !249, !"_entry_ptr", i1 false, i1 false}
!251 = !{ptr @dvb_init._entry.159, !252, !"_entry", i1 false, i1 false}
!252 = !{!"../drivers/media/pci/saa7134/saa7134-dvb.c", i32 1610, i32 8}
!253 = !{ptr @dvb_init._entry_ptr.160, !252, !"_entry_ptr", i1 false, i1 false}
!254 = !{ptr @dvb_init._entry.161, !255, !"_entry", i1 false, i1 false}
!255 = !{!"../drivers/media/pci/saa7134/saa7134-dvb.c", i32 1612, i32 5}
!256 = !{ptr @dvb_init._entry_ptr.162, !255, !"_entry_ptr", i1 false, i1 false}
!257 = !{ptr @.str.163, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../drivers/media/pci/saa7134/saa7134-dvb.c", i32 1615, i32 8}
!259 = !{ptr @.str.164, !258, !"<string literal>", i1 false, i1 false}
!260 = !{ptr @.str.166, !258, !"<string literal>", i1 false, i1 false}
!261 = !{ptr @dvb_init._entry.165, !258, !"_entry", i1 false, i1 false}
!262 = !{ptr @dvb_init._entry_ptr.167, !258, !"_entry_ptr", i1 false, i1 false}
!263 = !{ptr @.str.169, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../drivers/media/pci/saa7134/saa7134-dvb.c", i32 1617, i32 5}
!265 = !{ptr @dvb_init._entry.168, !264, !"_entry", i1 false, i1 false}
!266 = !{ptr @dvb_init._entry_ptr.170, !264, !"_entry_ptr", i1 false, i1 false}
!267 = !{ptr @.str.171, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../drivers/media/pci/saa7134/saa7134-dvb.c", i32 1633, i32 3}
!269 = !{ptr @dvb_init.__UNIQUE_ID_ddebug405, !268, !"__UNIQUE_ID_ddebug405", i1 false, i1 false}
!270 = !{ptr @.str.172, !268, !"<string literal>", i1 false, i1 false}
!271 = !{ptr @dvb_init._entry.173, !272, !"_entry", i1 false, i1 false}
!272 = !{!"../drivers/media/pci/saa7134/saa7134-dvb.c", i32 1637, i32 23}
!273 = !{ptr @dvb_init._entry_ptr.174, !272, !"_entry_ptr", i1 false, i1 false}
!274 = !{ptr @dvb_init._entry.175, !275, !"_entry", i1 false, i1 false}
!275 = !{!"../drivers/media/pci/saa7134/saa7134-dvb.c", i32 1643, i32 23}
!276 = !{ptr @dvb_init._entry_ptr.176, !275, !"_entry_ptr", i1 false, i1 false}
!277 = !{ptr @dvb_init._entry.177, !278, !"_entry", i1 false, i1 false}
!278 = !{!"../drivers/media/pci/saa7134/saa7134-dvb.c", i32 1647, i32 8}
!279 = !{ptr @dvb_init._entry_ptr.178, !278, !"_entry_ptr", i1 false, i1 false}
!280 = !{ptr @.str.180, !281, !"<string literal>", i1 false, i1 false}
!281 = !{!"../drivers/media/pci/saa7134/saa7134-dvb.c", i32 1649, i32 5}
!282 = !{ptr @dvb_init._entry.179, !281, !"_entry", i1 false, i1 false}
!283 = !{ptr @dvb_init._entry_ptr.181, !281, !"_entry_ptr", i1 false, i1 false}
!284 = !{ptr @dvb_init._entry.182, !285, !"_entry", i1 false, i1 false}
!285 = !{!"../drivers/media/pci/saa7134/saa7134-dvb.c", i32 1656, i32 8}
!286 = !{ptr @dvb_init._entry_ptr.183, !285, !"_entry_ptr", i1 false, i1 false}
!287 = !{ptr @.str.185, !288, !"<string literal>", i1 false, i1 false}
!288 = !{!"../drivers/media/pci/saa7134/saa7134-dvb.c", i32 1658, i32 5}
!289 = !{ptr @dvb_init._entry.184, !288, !"_entry", i1 false, i1 false}
!290 = !{ptr @dvb_init._entry_ptr.186, !288, !"_entry_ptr", i1 false, i1 false}
!291 = !{ptr @dvb_init._entry.187, !292, !"_entry", i1 false, i1 false}
!292 = !{!"../drivers/media/pci/saa7134/saa7134-dvb.c", i32 1673, i32 23}
!293 = !{ptr @dvb_init._entry_ptr.188, !292, !"_entry_ptr", i1 false, i1 false}
!294 = !{ptr @dvb_init._entry.189, !295, !"_entry", i1 false, i1 false}
!295 = !{!"../drivers/media/pci/saa7134/saa7134-dvb.c", i32 1684, i32 24}
!296 = !{ptr @dvb_init._entry_ptr.190, !295, !"_entry_ptr", i1 false, i1 false}
!297 = !{ptr @dvb_init._entry.191, !298, !"_entry", i1 false, i1 false}
!298 = !{!"../drivers/media/pci/saa7134/saa7134-dvb.c", i32 1687, i32 9}
!299 = !{ptr @dvb_init._entry_ptr.192, !298, !"_entry_ptr", i1 false, i1 false}
!300 = !{ptr @.str.194, !301, !"<string literal>", i1 false, i1 false}
!301 = !{!"../drivers/media/pci/saa7134/saa7134-dvb.c", i32 1690, i32 6}
!302 = !{ptr @dvb_init._entry.193, !301, !"_entry", i1 false, i1 false}
!303 = !{ptr @dvb_init._entry_ptr.195, !301, !"_entry_ptr", i1 false, i1 false}
!304 = !{ptr @dvb_init._entry.196, !305, !"_entry", i1 false, i1 false}
!305 = !{!"../drivers/media/pci/saa7134/saa7134-dvb.c", i32 1694, i32 9}
!306 = !{ptr @dvb_init._entry_ptr.197, !305, !"_entry_ptr", i1 false, i1 false}
!307 = !{ptr @.str.199, !308, !"<string literal>", i1 false, i1 false}
!308 = !{!"../drivers/media/pci/saa7134/saa7134-dvb.c", i32 1696, i32 6}
!309 = !{ptr @dvb_init._entry.198, !308, !"_entry", i1 false, i1 false}
!310 = !{ptr @dvb_init._entry_ptr.200, !308, !"_entry_ptr", i1 false, i1 false}
!311 = !{ptr @dvb_init._entry.201, !312, !"_entry", i1 false, i1 false}
!312 = !{!"../drivers/media/pci/saa7134/saa7134-dvb.c", i32 1709, i32 24}
!313 = !{ptr @dvb_init._entry_ptr.202, !312, !"_entry_ptr", i1 false, i1 false}
!314 = !{ptr @dvb_init._entry.203, !315, !"_entry", i1 false, i1 false}
!315 = !{!"../drivers/media/pci/saa7134/saa7134-dvb.c", i32 1712, i32 9}
!316 = !{ptr @dvb_init._entry_ptr.204, !315, !"_entry_ptr", i1 false, i1 false}
!317 = !{ptr @.str.206, !318, !"<string literal>", i1 false, i1 false}
!318 = !{!"../drivers/media/pci/saa7134/saa7134-dvb.c", i32 1715, i32 6}
!319 = !{ptr @dvb_init._entry.205, !318, !"_entry", i1 false, i1 false}
!320 = !{ptr @dvb_init._entry_ptr.207, !318, !"_entry_ptr", i1 false, i1 false}
!321 = !{ptr @dvb_init._entry.208, !322, !"_entry", i1 false, i1 false}
!322 = !{!"../drivers/media/pci/saa7134/saa7134-dvb.c", i32 1719, i32 9}
!323 = !{ptr @dvb_init._entry_ptr.209, !322, !"_entry_ptr", i1 false, i1 false}
!324 = !{ptr @.str.211, !325, !"<string literal>", i1 false, i1 false}
!325 = !{!"../drivers/media/pci/saa7134/saa7134-dvb.c", i32 1721, i32 6}
!326 = !{ptr @dvb_init._entry.210, !325, !"_entry", i1 false, i1 false}
!327 = !{ptr @dvb_init._entry_ptr.212, !325, !"_entry_ptr", i1 false, i1 false}
!328 = !{ptr @.str.213, !329, !"<string literal>", i1 false, i1 false}
!329 = !{!"../drivers/media/pci/saa7134/saa7134-dvb.c", i32 1734, i32 23}
!330 = !{ptr @.str.214, !329, !"<string literal>", i1 false, i1 false}
!331 = !{ptr @.str.216, !329, !"<string literal>", i1 false, i1 false}
!332 = !{ptr @dvb_init._entry.215, !329, !"_entry", i1 false, i1 false}
!333 = !{ptr @dvb_init._entry_ptr.217, !329, !"_entry_ptr", i1 false, i1 false}
!334 = !{ptr @dvb_init._entry.218, !335, !"_entry", i1 false, i1 false}
!335 = !{!"../drivers/media/pci/saa7134/saa7134-dvb.c", i32 1738, i32 4}
!336 = !{ptr @dvb_init._entry_ptr.219, !335, !"_entry_ptr", i1 false, i1 false}
!337 = !{ptr @dvb_init._entry.220, !338, !"_entry", i1 false, i1 false}
!338 = !{!"../drivers/media/pci/saa7134/saa7134-dvb.c", i32 1744, i32 23}
!339 = !{ptr @dvb_init._entry_ptr.221, !338, !"_entry_ptr", i1 false, i1 false}
!340 = !{ptr @.str.222, !341, !"<string literal>", i1 false, i1 false}
!341 = !{!"../drivers/media/pci/saa7134/saa7134-dvb.c", i32 1748, i32 4}
!342 = !{ptr @.str.223, !341, !"<string literal>", i1 false, i1 false}
!343 = !{ptr @.str.225, !341, !"<string literal>", i1 false, i1 false}
!344 = !{ptr @dvb_init._entry.224, !341, !"_entry", i1 false, i1 false}
!345 = !{ptr @dvb_init._entry_ptr.226, !341, !"_entry_ptr", i1 false, i1 false}
!346 = !{ptr @dvb_init._entry.227, !347, !"_entry", i1 false, i1 false}
!347 = !{!"../drivers/media/pci/saa7134/saa7134-dvb.c", i32 1753, i32 23}
!348 = !{ptr @dvb_init._entry_ptr.228, !347, !"_entry_ptr", i1 false, i1 false}
!349 = !{ptr @dvb_init._entry.229, !350, !"_entry", i1 false, i1 false}
!350 = !{!"../drivers/media/pci/saa7134/saa7134-dvb.c", i32 1757, i32 4}
!351 = !{ptr @dvb_init._entry_ptr.230, !350, !"_entry_ptr", i1 false, i1 false}
!352 = !{ptr @.str.231, !353, !"<string literal>", i1 false, i1 false}
!353 = !{!"../drivers/media/pci/saa7134/saa7134-dvb.c", i32 1764, i32 23}
!354 = !{ptr @.str.232, !353, !"<string literal>", i1 false, i1 false}
!355 = !{ptr @.str.234, !353, !"<string literal>", i1 false, i1 false}
!356 = !{ptr @dvb_init._entry.233, !353, !"_entry", i1 false, i1 false}
!357 = !{ptr @dvb_init._entry_ptr.235, !353, !"_entry_ptr", i1 false, i1 false}
!358 = !{ptr @.str.236, !359, !"<string literal>", i1 false, i1 false}
!359 = !{!"../drivers/media/pci/saa7134/saa7134-dvb.c", i32 1767, i32 8}
!360 = !{ptr @.str.237, !359, !"<string literal>", i1 false, i1 false}
!361 = !{ptr @.str.239, !359, !"<string literal>", i1 false, i1 false}
!362 = !{ptr @dvb_init._entry.238, !359, !"_entry", i1 false, i1 false}
!363 = !{ptr @dvb_init._entry_ptr.240, !359, !"_entry_ptr", i1 false, i1 false}
!364 = !{ptr @.str.242, !365, !"<string literal>", i1 false, i1 false}
!365 = !{!"../drivers/media/pci/saa7134/saa7134-dvb.c", i32 1769, i32 5}
!366 = !{ptr @dvb_init._entry.241, !365, !"_entry", i1 false, i1 false}
!367 = !{ptr @dvb_init._entry_ptr.243, !365, !"_entry_ptr", i1 false, i1 false}
!368 = !{ptr @dvb_init._entry.244, !369, !"_entry", i1 false, i1 false}
!369 = !{!"../drivers/media/pci/saa7134/saa7134-dvb.c", i32 1775, i32 23}
!370 = !{ptr @dvb_init._entry_ptr.245, !369, !"_entry_ptr", i1 false, i1 false}
!371 = !{ptr @.str.246, !372, !"<string literal>", i1 false, i1 false}
!372 = !{!"../drivers/media/pci/saa7134/saa7134-dvb.c", i32 1778, i32 8}
!373 = !{ptr @.str.247, !372, !"<string literal>", i1 false, i1 false}
!374 = !{ptr @.str.249, !372, !"<string literal>", i1 false, i1 false}
!375 = !{ptr @dvb_init._entry.248, !372, !"_entry", i1 false, i1 false}
!376 = !{ptr @dvb_init._entry_ptr.250, !372, !"_entry_ptr", i1 false, i1 false}
!377 = !{ptr @.str.252, !378, !"<string literal>", i1 false, i1 false}
!378 = !{!"../drivers/media/pci/saa7134/saa7134-dvb.c", i32 1780, i32 5}
!379 = !{ptr @dvb_init._entry.251, !378, !"_entry", i1 false, i1 false}
!380 = !{ptr @dvb_init._entry_ptr.253, !378, !"_entry_ptr", i1 false, i1 false}
!381 = !{ptr @dvb_init._entry.254, !382, !"_entry", i1 false, i1 false}
!382 = !{!"../drivers/media/pci/saa7134/saa7134-dvb.c", i32 1785, i32 23}
!383 = !{ptr @dvb_init._entry_ptr.255, !382, !"_entry_ptr", i1 false, i1 false}
!384 = !{ptr @.str.256, !385, !"<string literal>", i1 false, i1 false}
!385 = !{!"../drivers/media/pci/saa7134/saa7134-dvb.c", i32 1789, i32 8}
!386 = !{ptr @.str.257, !385, !"<string literal>", i1 false, i1 false}
!387 = !{ptr @.str.259, !385, !"<string literal>", i1 false, i1 false}
!388 = !{ptr @dvb_init._entry.258, !385, !"_entry", i1 false, i1 false}
!389 = !{ptr @dvb_init._entry_ptr.260, !385, !"_entry_ptr", i1 false, i1 false}
!390 = !{ptr @.str.262, !391, !"<string literal>", i1 false, i1 false}
!391 = !{!"../drivers/media/pci/saa7134/saa7134-dvb.c", i32 1793, i32 5}
!392 = !{ptr @dvb_init._entry.261, !391, !"_entry", i1 false, i1 false}
!393 = !{ptr @dvb_init._entry_ptr.263, !391, !"_entry_ptr", i1 false, i1 false}
!394 = !{ptr @dvb_init._entry.264, !395, !"_entry", i1 false, i1 false}
!395 = !{!"../drivers/media/pci/saa7134/saa7134-dvb.c", i32 1797, i32 23}
!396 = !{ptr @dvb_init._entry_ptr.265, !395, !"_entry_ptr", i1 false, i1 false}
!397 = !{ptr @dvb_init._entry.266, !398, !"_entry", i1 false, i1 false}
!398 = !{!"../drivers/media/pci/saa7134/saa7134-dvb.c", i32 1801, i32 4}
!399 = !{ptr @dvb_init._entry_ptr.267, !398, !"_entry_ptr", i1 false, i1 false}
!400 = !{ptr @dvb_init._entry.268, !401, !"_entry", i1 false, i1 false}
!401 = !{!"../drivers/media/pci/saa7134/saa7134-dvb.c", i32 1804, i32 4}
!402 = !{ptr @dvb_init._entry_ptr.269, !401, !"_entry_ptr", i1 false, i1 false}
!403 = !{ptr @dvb_init._entry.270, !404, !"_entry", i1 false, i1 false}
!404 = !{!"../drivers/media/pci/saa7134/saa7134-dvb.c", i32 1810, i32 23}
!405 = !{ptr @dvb_init._entry_ptr.271, !404, !"_entry_ptr", i1 false, i1 false}
!406 = !{ptr @dvb_init._entry.272, !407, !"_entry", i1 false, i1 false}
!407 = !{!"../drivers/media/pci/saa7134/saa7134-dvb.c", i32 1814, i32 4}
!408 = !{ptr @dvb_init._entry_ptr.273, !407, !"_entry_ptr", i1 false, i1 false}
!409 = !{ptr @dvb_init._entry.274, !410, !"_entry", i1 false, i1 false}
!410 = !{!"../drivers/media/pci/saa7134/saa7134-dvb.c", i32 1817, i32 4}
!411 = !{ptr @dvb_init._entry_ptr.275, !410, !"_entry_ptr", i1 false, i1 false}
!412 = !{ptr @.str.276, !413, !"<string literal>", i1 false, i1 false}
!413 = !{!"../drivers/media/pci/saa7134/saa7134-dvb.c", i32 1826, i32 23}
!414 = !{ptr @.str.277, !413, !"<string literal>", i1 false, i1 false}
!415 = !{ptr @.str.279, !413, !"<string literal>", i1 false, i1 false}
!416 = !{ptr @dvb_init._entry.278, !413, !"_entry", i1 false, i1 false}
!417 = !{ptr @dvb_init._entry_ptr.280, !413, !"_entry_ptr", i1 false, i1 false}
!418 = !{ptr @dvb_init._entry.281, !419, !"_entry", i1 false, i1 false}
!419 = !{!"../drivers/media/pci/saa7134/saa7134-dvb.c", i32 1830, i32 4}
!420 = !{ptr @dvb_init._entry_ptr.282, !419, !"_entry_ptr", i1 false, i1 false}
!421 = !{ptr @dvb_init._entry.283, !422, !"_entry", i1 false, i1 false}
!422 = !{!"../drivers/media/pci/saa7134/saa7134-dvb.c", i32 1834, i32 4}
!423 = !{ptr @dvb_init._entry_ptr.284, !422, !"_entry_ptr", i1 false, i1 false}
!424 = !{ptr @.str.285, !425, !"<string literal>", i1 false, i1 false}
!425 = !{!"../drivers/media/pci/saa7134/saa7134-dvb.c", i32 1842, i32 23}
!426 = !{ptr @.str.286, !425, !"<string literal>", i1 false, i1 false}
!427 = !{ptr @.str.288, !425, !"<string literal>", i1 false, i1 false}
!428 = !{ptr @dvb_init._entry.287, !425, !"_entry", i1 false, i1 false}
!429 = !{ptr @dvb_init._entry_ptr.289, !425, !"_entry_ptr", i1 false, i1 false}
!430 = !{ptr @dvb_init._entry.290, !431, !"_entry", i1 false, i1 false}
!431 = !{!"../drivers/media/pci/saa7134/saa7134-dvb.c", i32 1846, i32 4}
!432 = !{ptr @dvb_init._entry_ptr.291, !431, !"_entry_ptr", i1 false, i1 false}
!433 = !{ptr @dvb_init._entry.292, !434, !"_entry", i1 false, i1 false}
!434 = !{!"../drivers/media/pci/saa7134/saa7134-dvb.c", i32 1849, i32 4}
!435 = !{ptr @dvb_init._entry_ptr.293, !434, !"_entry_ptr", i1 false, i1 false}
!436 = !{ptr @dvb_init._entry.294, !437, !"_entry", i1 false, i1 false}
!437 = !{!"../drivers/media/pci/saa7134/saa7134-dvb.c", i32 1863, i32 23}
!438 = !{ptr @dvb_init._entry_ptr.295, !437, !"_entry_ptr", i1 false, i1 false}
!439 = !{ptr @dvb_init._entry.296, !440, !"_entry", i1 false, i1 false}
!440 = !{!"../drivers/media/pci/saa7134/saa7134-dvb.c", i32 1867, i32 8}
!441 = !{ptr @dvb_init._entry_ptr.297, !440, !"_entry_ptr", i1 false, i1 false}
!442 = !{ptr @dvb_init._entry.298, !443, !"_entry", i1 false, i1 false}
!443 = !{!"../drivers/media/pci/saa7134/saa7134-dvb.c", i32 1869, i32 5}
!444 = !{ptr @dvb_init._entry_ptr.299, !443, !"_entry_ptr", i1 false, i1 false}
!445 = !{ptr @dvb_init._entry.300, !446, !"_entry", i1 false, i1 false}
!446 = !{!"../drivers/media/pci/saa7134/saa7134-dvb.c", i32 1874, i32 23}
!447 = !{ptr @dvb_init._entry_ptr.301, !446, !"_entry_ptr", i1 false, i1 false}
!448 = !{ptr @dvb_init._entry.302, !449, !"_entry", i1 false, i1 false}
!449 = !{!"../drivers/media/pci/saa7134/saa7134-dvb.c", i32 1878, i32 4}
!450 = !{ptr @dvb_init._entry_ptr.303, !449, !"_entry_ptr", i1 false, i1 false}
!451 = !{ptr @dvb_init._entry.304, !452, !"_entry", i1 false, i1 false}
!452 = !{!"../drivers/media/pci/saa7134/saa7134-dvb.c", i32 1881, i32 4}
!453 = !{ptr @dvb_init._entry_ptr.305, !452, !"_entry_ptr", i1 false, i1 false}
!454 = !{ptr @.str.307, !455, !"<string literal>", i1 false, i1 false}
!455 = !{!"../drivers/media/pci/saa7134/saa7134-dvb.c", i32 1887, i32 3}
!456 = !{ptr @dvb_init._entry.306, !455, !"_entry", i1 false, i1 false}
!457 = !{ptr @dvb_init._entry_ptr.308, !455, !"_entry_ptr", i1 false, i1 false}
!458 = !{ptr @.str.309, !459, !"<string literal>", i1 false, i1 false}
!459 = !{!"../drivers/media/pci/saa7134/saa7134-dvb.c", i32 1901, i32 8}
!460 = !{ptr @.str.310, !459, !"<string literal>", i1 false, i1 false}
!461 = !{ptr @.str.312, !459, !"<string literal>", i1 false, i1 false}
!462 = !{ptr @dvb_init._entry.311, !459, !"_entry", i1 false, i1 false}
!463 = !{ptr @dvb_init._entry_ptr.313, !459, !"_entry_ptr", i1 false, i1 false}
!464 = !{ptr @.str.315, !465, !"<string literal>", i1 false, i1 false}
!465 = !{!"../drivers/media/pci/saa7134/saa7134-dvb.c", i32 1903, i32 4}
!466 = !{ptr @dvb_init._entry.314, !465, !"_entry", i1 false, i1 false}
!467 = !{ptr @dvb_init._entry_ptr.316, !465, !"_entry_ptr", i1 false, i1 false}
!468 = !{ptr @.str.318, !469, !"<string literal>", i1 false, i1 false}
!469 = !{!"../drivers/media/pci/saa7134/saa7134-dvb.c", i32 1910, i32 3}
!470 = !{ptr @dvb_init._entry.317, !469, !"_entry", i1 false, i1 false}
!471 = !{ptr @dvb_init._entry_ptr.319, !469, !"_entry_ptr", i1 false, i1 false}
!472 = !{ptr @pinnacle_300i, !473, !"pinnacle_300i", i1 false, i1 false}
!473 = !{!"../drivers/media/pci/saa7134/saa7134-dvb.c", i32 192, i32 28}
!474 = !{ptr @mt352_pinnacle_init.clock_config, !475, !"clock_config", i1 false, i1 false}
!475 = !{!"../drivers/media/pci/saa7134/saa7134-dvb.c", i32 101, i32 12}
!476 = !{ptr @mt352_pinnacle_init.reset, !477, !"reset", i1 false, i1 false}
!477 = !{!"../drivers/media/pci/saa7134/saa7134-dvb.c", i32 102, i32 12}
!478 = !{ptr @mt352_pinnacle_init.adc_ctl_1_cfg, !479, !"adc_ctl_1_cfg", i1 false, i1 false}
!479 = !{!"../drivers/media/pci/saa7134/saa7134-dvb.c", i32 103, i32 12}
!480 = !{ptr @mt352_pinnacle_init.agc_cfg, !481, !"agc_cfg", i1 false, i1 false}
!481 = !{!"../drivers/media/pci/saa7134/saa7134-dvb.c", i32 104, i32 12}
!482 = !{ptr @mt352_pinnacle_init.capt_range_cfg, !483, !"capt_range_cfg", i1 false, i1 false}
!483 = !{!"../drivers/media/pci/saa7134/saa7134-dvb.c", i32 105, i32 12}
!484 = !{ptr @mt352_pinnacle_init.fsm_ctl_cfg, !485, !"fsm_ctl_cfg", i1 false, i1 false}
!485 = !{!"../drivers/media/pci/saa7134/saa7134-dvb.c", i32 106, i32 12}
!486 = !{ptr @mt352_pinnacle_init.gpp_ctl_cfg, !487, !"gpp_ctl_cfg", i1 false, i1 false}
!487 = !{!"../drivers/media/pci/saa7134/saa7134-dvb.c", i32 107, i32 12}
!488 = !{ptr @mt352_pinnacle_init.scan_ctl_cfg, !489, !"scan_ctl_cfg", i1 false, i1 false}
!489 = !{!"../drivers/media/pci/saa7134/saa7134-dvb.c", i32 108, i32 12}
!490 = !{ptr @mt352_pinnacle_init.irq_cfg, !491, !"irq_cfg", i1 false, i1 false}
!491 = !{!"../drivers/media/pci/saa7134/saa7134-dvb.c", i32 109, i32 12}
!492 = !{ptr @.str.320, !493, !"<string literal>", i1 false, i1 false}
!493 = !{!"../drivers/media/pci/saa7134/saa7134-dvb.c", i32 111, i32 2}
!494 = !{ptr @.str.321, !493, !"<string literal>", i1 false, i1 false}
!495 = !{ptr @mt352_pinnacle_init.__UNIQUE_ID_ddebug397, !493, !"__UNIQUE_ID_ddebug397", i1 false, i1 false}
!496 = !{ptr @.str.322, !493, !"<string literal>", i1 false, i1 false}
!497 = !{ptr @.str.323, !498, !"<string literal>", i1 false, i1 false}
!498 = !{!"../drivers/media/pci/saa7134/saa7134-dvb.c", i32 92, i32 2}
!499 = !{ptr @.str.324, !498, !"<string literal>", i1 false, i1 false}
!500 = !{ptr @pinnacle_antenna_pwr.__UNIQUE_ID_ddebug396, !498, !"__UNIQUE_ID_ddebug396", i1 false, i1 false}
!501 = !{ptr @.str.325, !498, !"<string literal>", i1 false, i1 false}
!502 = !{ptr @.str.326, !498, !"<string literal>", i1 false, i1 false}
!503 = !{ptr @.str.327, !498, !"<string literal>", i1 false, i1 false}
!504 = !{ptr @avermedia_777, !505, !"avermedia_777", i1 false, i1 false}
!505 = !{!"../drivers/media/pci/saa7134/saa7134-dvb.c", i32 200, i32 28}
!506 = !{ptr @mt352_aver777_init.clock_config, !507, !"clock_config", i1 false, i1 false}
!507 = !{!"../drivers/media/pci/saa7134/saa7134-dvb.c", i32 130, i32 12}
!508 = !{ptr @mt352_aver777_init.reset, !509, !"reset", i1 false, i1 false}
!509 = !{!"../drivers/media/pci/saa7134/saa7134-dvb.c", i32 131, i32 12}
!510 = !{ptr @mt352_aver777_init.adc_ctl_1_cfg, !511, !"adc_ctl_1_cfg", i1 false, i1 false}
!511 = !{!"../drivers/media/pci/saa7134/saa7134-dvb.c", i32 132, i32 12}
!512 = !{ptr @mt352_aver777_init.agc_cfg, !513, !"agc_cfg", i1 false, i1 false}
!513 = !{!"../drivers/media/pci/saa7134/saa7134-dvb.c", i32 133, i32 12}
!514 = !{ptr @mt352_aver777_init.capt_range_cfg, !515, !"capt_range_cfg", i1 false, i1 false}
!515 = !{!"../drivers/media/pci/saa7134/saa7134-dvb.c", i32 134, i32 12}
!516 = !{ptr @avermedia_xc3028_mt352_dev, !517, !"avermedia_xc3028_mt352_dev", i1 false, i1 false}
!517 = !{!"../drivers/media/pci/saa7134/saa7134-dvb.c", i32 205, i32 28}
!518 = !{ptr @mt352_avermedia_xc3028_init.clock_config, !519, !"clock_config", i1 false, i1 false}
!519 = !{!"../drivers/media/pci/saa7134/saa7134-dvb.c", i32 148, i32 12}
!520 = !{ptr @mt352_avermedia_xc3028_init.reset, !521, !"reset", i1 false, i1 false}
!521 = !{!"../drivers/media/pci/saa7134/saa7134-dvb.c", i32 149, i32 12}
!522 = !{ptr @mt352_avermedia_xc3028_init.adc_ctl_1_cfg, !523, !"adc_ctl_1_cfg", i1 false, i1 false}
!523 = !{!"../drivers/media/pci/saa7134/saa7134-dvb.c", i32 150, i32 12}
!524 = !{ptr @mt352_avermedia_xc3028_init.agc_cfg, !525, !"agc_cfg", i1 false, i1 false}
!525 = !{!"../drivers/media/pci/saa7134/saa7134-dvb.c", i32 151, i32 12}
!526 = !{ptr @mt352_avermedia_xc3028_init.capt_range_cfg, !527, !"capt_range_cfg", i1 false, i1 false}
!527 = !{!"../drivers/media/pci/saa7134/saa7134-dvb.c", i32 152, i32 12}
!528 = !{ptr @medion_cardbus, !529, !"medion_cardbus", i1 false, i1 false}
!529 = !{!"../drivers/media/pci/saa7134/saa7134-dvb.c", i32 495, i32 31}
!530 = !{ptr @philips_tu1216_60_config, !531, !"philips_tu1216_60_config", i1 false, i1 false}
!531 = !{!"../drivers/media/pci/saa7134/saa7134-dvb.c", i32 376, i32 31}
!532 = !{ptr @philips_tu1216_init.tu1216_init, !533, !"tu1216_init", i1 false, i1 false}
!533 = !{!"../drivers/media/pci/saa7134/saa7134-dvb.c", i32 361, i32 12}
!534 = !{ptr @.str.328, !535, !"<string literal>", i1 false, i1 false}
!535 = !{!"../drivers/media/pci/saa7134/saa7134-dvb.c", i32 348, i32 3}
!536 = !{ptr @.str.329, !535, !"<string literal>", i1 false, i1 false}
!537 = !{ptr @philips_tda6651_pll_set._entry, !535, !"_entry", i1 false, i1 false}
!538 = !{ptr @philips_tda6651_pll_set._entry_ptr, !535, !"_entry_ptr", i1 false, i1 false}
!539 = !{ptr @.str.330, !540, !"<string literal>", i1 false, i1 false}
!540 = !{!"../drivers/media/pci/saa7134/saa7134-dvb.c", i32 594, i32 22}
!541 = !{ptr @configure_tda827x_fe._entry, !540, !"_entry", i1 false, i1 false}
!542 = !{ptr @configure_tda827x_fe._entry_ptr, !540, !"_entry_ptr", i1 false, i1 false}
!543 = !{ptr @configure_tda827x_fe._entry.331, !544, !"_entry", i1 false, i1 false}
!544 = !{!"../drivers/media/pci/saa7134/saa7134-dvb.c", i32 598, i32 7}
!545 = !{ptr @configure_tda827x_fe._entry_ptr.332, !544, !"_entry_ptr", i1 false, i1 false}
!546 = !{ptr @configure_tda827x_fe._entry.333, !547, !"_entry", i1 false, i1 false}
!547 = !{!"../drivers/media/pci/saa7134/saa7134-dvb.c", i32 603, i32 3}
!548 = !{ptr @configure_tda827x_fe._entry_ptr.334, !547, !"_entry_ptr", i1 false, i1 false}
!549 = !{ptr @tda8290_i2c_gate_ctrl.tda8290_close, !550, !"tda8290_close", i1 false, i1 false}
!550 = !{!"../drivers/media/pci/saa7134/saa7134-dvb.c", i32 526, i32 12}
!551 = !{ptr @tda8290_i2c_gate_ctrl.tda8290_open, !552, !"tda8290_open", i1 false, i1 false}
!552 = !{!"../drivers/media/pci/saa7134/saa7134-dvb.c", i32 527, i32 12}
!553 = !{ptr @.str.335, !554, !"<string literal>", i1 false, i1 false}
!554 = !{!"../drivers/media/pci/saa7134/saa7134-dvb.c", i32 535, i32 3}
!555 = !{ptr @.str.336, !554, !"<string literal>", i1 false, i1 false}
!556 = !{ptr @tda8290_i2c_gate_ctrl._entry, !554, !"_entry", i1 false, i1 false}
!557 = !{ptr @tda8290_i2c_gate_ctrl._entry_ptr, !554, !"_entry_ptr", i1 false, i1 false}
!558 = !{ptr @tda827x_lifeview_config, !559, !"tda827x_lifeview_config", i1 false, i1 false}
!559 = !{!"../drivers/media/pci/saa7134/saa7134-dvb.c", i32 641, i32 31}
!560 = !{ptr @tda827x_cfg_0, !561, !"tda827x_cfg_0", i1 false, i1 false}
!561 = !{!"../drivers/media/pci/saa7134/saa7134-dvb.c", i32 611, i32 30}
!562 = !{ptr @.str.337, !563, !"<string literal>", i1 false, i1 false}
!563 = !{!"../drivers/media/pci/saa7134/saa7134-dvb.c", i32 551, i32 3}
!564 = !{ptr @.str.338, !563, !"<string literal>", i1 false, i1 false}
!565 = !{ptr @philips_tda827x_tuner_init.__UNIQUE_ID_ddebug398, !563, !"__UNIQUE_ID_ddebug398", i1 false, i1 false}
!566 = !{ptr @.str.339, !563, !"<string literal>", i1 false, i1 false}
!567 = !{ptr @.str.340, !568, !"<string literal>", i1 false, i1 false}
!568 = !{!"../drivers/media/pci/saa7134/saa7134-dvb.c", i32 555, i32 3}
!569 = !{ptr @philips_tda827x_tuner_init.__UNIQUE_ID_ddebug399, !568, !"__UNIQUE_ID_ddebug399", i1 false, i1 false}
!570 = !{ptr @.str.341, !568, !"<string literal>", i1 false, i1 false}
!571 = !{ptr @.str.342, !572, !"<string literal>", i1 false, i1 false}
!572 = !{!"../drivers/media/pci/saa7134/saa7134-dvb.c", i32 571, i32 3}
!573 = !{ptr @philips_tda827x_tuner_sleep.__UNIQUE_ID_ddebug400, !572, !"__UNIQUE_ID_ddebug400", i1 false, i1 false}
!574 = !{ptr @philips_tda827x_tuner_sleep.__UNIQUE_ID_ddebug401, !575, !"__UNIQUE_ID_ddebug401", i1 false, i1 false}
!575 = !{!"../drivers/media/pci/saa7134/saa7134-dvb.c", i32 575, i32 3}
!576 = !{ptr @philips_europa_config, !577, !"philips_europa_config", i1 false, i1 false}
!577 = !{!"../drivers/media/pci/saa7134/saa7134-dvb.c", i32 483, i32 31}
!578 = !{ptr @philips_europa_tuner_init.msg, !579, !"msg", i1 false, i1 false}
!579 = !{!"../drivers/media/pci/saa7134/saa7134-dvb.c", i32 443, i32 12}
!580 = !{ptr @philips_europa_tuner_sleep.msg, !581, !"msg", i1 false, i1 false}
!581 = !{!"../drivers/media/pci/saa7134/saa7134-dvb.c", i32 460, i32 12}
!582 = !{ptr @philips_td1316_tuner_sleep.msg, !583, !"msg", i1 false, i1 false}
!583 = !{!"../drivers/media/pci/saa7134/saa7134-dvb.c", i32 427, i32 12}
!584 = !{ptr @technotrend_budget_t3000_config, !585, !"technotrend_budget_t3000_config", i1 false, i1 false}
!585 = !{!"../drivers/media/pci/saa7134/saa7134-dvb.c", i32 506, i32 31}
!586 = !{ptr @philips_tu1216_61_config, !587, !"philips_tu1216_61_config", i1 false, i1 false}
!587 = !{!"../drivers/media/pci/saa7134/saa7134-dvb.c", i32 387, i32 31}
!588 = !{ptr @kworld_dvb_t_210_config, !589, !"kworld_dvb_t_210_config", i1 false, i1 false}
!589 = !{!"../drivers/media/pci/saa7134/saa7134-dvb.c", i32 812, i32 31}
!590 = !{ptr @tda827x_cfg_2, !591, !"tda827x_cfg_2", i1 false, i1 false}
!591 = !{!"../drivers/media/pci/saa7134/saa7134-dvb.c", i32 625, i32 30}
!592 = !{ptr @hcw_tda10048_config, !593, !"hcw_tda10048_config", i1 false, i1 false}
!593 = !{!"../drivers/media/pci/saa7134/saa7134-dvb.c", i32 1074, i32 31}
!594 = !{ptr @tda829x_no_probe, !595, !"tda829x_no_probe", i1 false, i1 false}
!595 = !{!"../drivers/media/pci/saa7134/saa7134-dvb.c", i32 1100, i32 30}
!596 = !{ptr @hcw_tda18271_config, !597, !"hcw_tda18271_config", i1 false, i1 false}
!597 = !{!"../drivers/media/pci/saa7134/saa7134-dvb.c", i32 1093, i32 31}
!598 = !{ptr @hauppauge_tda18271_std_map, !599, !"hauppauge_tda18271_std_map", i1 false, i1 false}
!599 = !{!"../drivers/media/pci/saa7134/saa7134-dvb.c", i32 1086, i32 32}
!600 = !{ptr @philips_tiger_config, !601, !"philips_tiger_config", i1 false, i1 false}
!601 = !{!"../drivers/media/pci/saa7134/saa7134-dvb.c", i32 653, i32 31}
!602 = !{ptr @pinnacle_pctv_310i_config, !603, !"pinnacle_pctv_310i_config", i1 false, i1 false}
!603 = !{!"../drivers/media/pci/saa7134/saa7134-dvb.c", i32 707, i32 31}
!604 = !{ptr @tda827x_cfg_1, !605, !"tda827x_cfg_1", i1 false, i1 false}
!605 = !{!"../drivers/media/pci/saa7134/saa7134-dvb.c", i32 618, i32 30}
!606 = !{ptr @hauppauge_hvr_1110_config, !607, !"hauppauge_hvr_1110_config", i1 false, i1 false}
!607 = !{!"../drivers/media/pci/saa7134/saa7134-dvb.c", i32 720, i32 31}
!608 = !{ptr @hcw_lgdt3305_config, !609, !"hcw_lgdt3305_config", i1 false, i1 false}
!609 = !{!"../drivers/media/pci/saa7134/saa7134-dvb.c", i32 1063, i32 31}
!610 = !{ptr @asus_p7131_dual_config, !611, !"asus_p7131_dual_config", i1 false, i1 false}
!611 = !{!"../drivers/media/pci/saa7134/saa7134-dvb.c", i32 733, i32 31}
!612 = !{ptr @lifeview_trio_config, !613, !"lifeview_trio_config", i1 false, i1 false}
!613 = !{!"../drivers/media/pci/saa7134/saa7134-dvb.c", i32 747, i32 31}
!614 = !{ptr @flydvbs, !615, !"flydvbs", i1 false, i1 false}
!615 = !{!"../drivers/media/pci/saa7134/saa7134-dvb.c", i32 959, i32 31}
!616 = !{ptr @ads_tech_duo_config, !617, !"ads_tech_duo_config", i1 false, i1 false}
!617 = !{!"../drivers/media/pci/saa7134/saa7134-dvb.c", i32 910, i32 31}
!618 = !{ptr @ads_duo_cfg, !619, !"ads_duo_cfg", i1 false, i1 false}
!619 = !{!"../drivers/media/pci/saa7134/saa7134-dvb.c", i32 904, i32 30}
!620 = !{ptr @tevion_dvbt220rf_config, !621, !"tevion_dvbt220rf_config", i1 false, i1 false}
!621 = !{!"../drivers/media/pci/saa7134/saa7134-dvb.c", i32 759, i32 31}
!622 = !{ptr @md8800_dvbt_config, !623, !"md8800_dvbt_config", i1 false, i1 false}
!623 = !{!"../drivers/media/pci/saa7134/saa7134-dvb.c", i32 771, i32 31}
!624 = !{ptr @.str.344, !625, !"<string literal>", i1 false, i1 false}
!625 = !{!"../drivers/media/pci/saa7134/saa7134-dvb.c", i32 1027, i32 2}
!626 = !{ptr @.str.345, !625, !"<string literal>", i1 false, i1 false}
!627 = !{ptr @md8800_set_high_voltage2._entry, !625, !"_entry", i1 false, i1 false}
!628 = !{ptr @md8800_set_high_voltage2._entry_ptr, !625, !"_entry_ptr", i1 false, i1 false}
!629 = !{ptr @avertvhda180, !630, !"avertvhda180", i1 false, i1 false}
!630 = !{!"../drivers/media/pci/saa7134/saa7134-dvb.c", i32 1036, i32 36}
!631 = !{ptr @kworldatsc110, !632, !"kworldatsc110", i1 false, i1 false}
!632 = !{!"../drivers/media/pci/saa7134/saa7134-dvb.c", i32 1040, i32 36}
!633 = !{ptr @kworld_s5h1411_config, !634, !"kworld_s5h1411_config", i1 false, i1 false}
!634 = !{!"../drivers/media/pci/saa7134/saa7134-dvb.c", i32 1181, i32 30}
!635 = !{ptr @kworld_pc150u_tda18271_config, !636, !"kworld_pc150u_tda18271_config", i1 false, i1 false}
!636 = !{!"../drivers/media/pci/saa7134/saa7134-dvb.c", i32 1173, i32 31}
!637 = !{ptr @kworld_tda18271_std_map, !638, !"kworld_tda18271_std_map", i1 false, i1 false}
!638 = !{!"../drivers/media/pci/saa7134/saa7134-dvb.c", i32 1166, i32 32}
!639 = !{ptr @philips_td1316_tuner_init.msg, !640, !"msg", i1 false, i1 false}
!640 = !{!"../drivers/media/pci/saa7134/saa7134-dvb.c", i32 406, i32 12}
!641 = !{ptr @cinergy_ht_config, !642, !"cinergy_ht_config", i1 false, i1 false}
!642 = !{!"../drivers/media/pci/saa7134/saa7134-dvb.c", i32 667, i32 31}
!643 = !{ptr @cinergy_ht_pci_config, !644, !"cinergy_ht_pci_config", i1 false, i1 false}
!644 = !{!"../drivers/media/pci/saa7134/saa7134-dvb.c", i32 680, i32 31}
!645 = !{ptr @philips_tiger_s_config, !646, !"philips_tiger_s_config", i1 false, i1 false}
!646 = !{!"../drivers/media/pci/saa7134/saa7134-dvb.c", i32 693, i32 31}
!647 = !{ptr @asus_p7131_4871_config, !648, !"asus_p7131_4871_config", i1 false, i1 false}
!648 = !{!"../drivers/media/pci/saa7134/saa7134-dvb.c", i32 784, i32 31}
!649 = !{ptr @asus_p7131_hybrid_lna_config, !650, !"asus_p7131_hybrid_lna_config", i1 false, i1 false}
!650 = !{!"../drivers/media/pci/saa7134/saa7134-dvb.c", i32 798, i32 31}
!651 = !{ptr @avermedia_super_007_config, !652, !"avermedia_super_007_config", i1 false, i1 false}
!652 = !{!"../drivers/media/pci/saa7134/saa7134-dvb.c", i32 826, i32 31}
!653 = !{ptr @twinhan_dtv_dvb_3056_config, !654, !"twinhan_dtv_dvb_3056_config", i1 false, i1 false}
!654 = !{!"../drivers/media/pci/saa7134/saa7134-dvb.c", i32 840, i32 31}
!655 = !{ptr @tda827x_cfg_2_sw42, !656, !"tda827x_cfg_2_sw42", i1 false, i1 false}
!656 = !{!"../drivers/media/pci/saa7134/saa7134-dvb.c", i32 632, i32 30}
!657 = !{ptr @sd1878_4m, !658, !"sd1878_4m", i1 false, i1 false}
!658 = !{!"../drivers/media/pci/saa7134/saa7134-dvb.c", i32 966, i32 31}
!659 = !{ptr @asus_tiger_3in1_config, !660, !"asus_tiger_3in1_config", i1 false, i1 false}
!660 = !{!"../drivers/media/pci/saa7134/saa7134-dvb.c", i32 854, i32 31}
!661 = !{ptr @asus_ps3_100_config, !662, !"asus_ps3_100_config", i1 false, i1 false}
!662 = !{!"../drivers/media/pci/saa7134/saa7134-dvb.c", i32 868, i32 31}
!663 = !{ptr @behold_h6_config, !664, !"behold_h6_config", i1 false, i1 false}
!664 = !{!"../drivers/media/pci/saa7134/saa7134-dvb.c", i32 922, i32 30}
!665 = !{ptr @behold_x7_config, !666, !"behold_x7_config", i1 false, i1 false}
!666 = !{!"../drivers/media/pci/saa7134/saa7134-dvb.c", i32 935, i32 30}
!667 = !{ptr @behold_x7_tunerconfig, !668, !"behold_x7_tunerconfig", i1 false, i1 false}
!668 = !{!"../drivers/media/pci/saa7134/saa7134-dvb.c", i32 929, i32 29}
!669 = !{ptr @avertv_a700_mt312, !670, !"avertv_a700_mt312", i1 false, i1 false}
!670 = !{!"../drivers/media/pci/saa7134/saa7134-dvb.c", i32 1046, i32 28}
!671 = !{ptr @avertv_a700_tuner, !672, !"avertv_a700_tuner", i1 false, i1 false}
!672 = !{!"../drivers/media/pci/saa7134/saa7134-dvb.c", i32 1051, i32 30}
!673 = !{ptr @zl10313_compro_s350_config, !674, !"zl10313_compro_s350_config", i1 false, i1 false}
!674 = !{!"../drivers/media/pci/saa7134/saa7134-dvb.c", i32 1055, i32 28}
!675 = !{ptr @videomate_t750_zl10353_config, !676, !"videomate_t750_zl10353_config", i1 false, i1 false}
!676 = !{!"../drivers/media/pci/saa7134/saa7134-dvb.c", i32 943, i32 30}
!677 = !{ptr @videomate_t750_qt1010_config, !678, !"videomate_t750_qt1010_config", i1 false, i1 false}
!678 = !{!"../drivers/media/pci/saa7134/saa7134-dvb.c", i32 950, i32 29}
!679 = !{ptr @zolid_tda10048_config, !680, !"zolid_tda10048_config", i1 false, i1 false}
!680 = !{!"../drivers/media/pci/saa7134/saa7134-dvb.c", i32 1104, i32 31}
!681 = !{ptr @zolid_tda18271_config, !682, !"zolid_tda18271_config", i1 false, i1 false}
!682 = !{!"../drivers/media/pci/saa7134/saa7134-dvb.c", i32 1116, i32 31}
!683 = !{ptr @dtv1000s_tda10048_config, !684, !"dtv1000s_tda10048_config", i1 false, i1 false}
!684 = !{!"../drivers/media/pci/saa7134/saa7134-dvb.c", i32 1120, i32 31}
!685 = !{ptr @dtv1000s_tda18271_config, !686, !"dtv1000s_tda18271_config", i1 false, i1 false}
!686 = !{!"../drivers/media/pci/saa7134/saa7134-dvb.c", i32 1141, i32 31}
!687 = !{ptr @dtv1000s_tda18271_std_map, !688, !"dtv1000s_tda18271_std_map", i1 false, i1 false}
!688 = !{!"../drivers/media/pci/saa7134/saa7134-dvb.c", i32 1132, i32 32}
!689 = !{ptr @kworld_mb86a20s_config, !690, !"kworld_mb86a20s_config", i1 false, i1 false}
!690 = !{!"../drivers/media/pci/saa7134/saa7134-dvb.c", i32 223, i32 37}
!691 = !{ptr @.str.348, !692, !"<string literal>", i1 false, i1 false}
!692 = !{!"../drivers/media/pci/saa7134/saa7134-dvb.c", i32 237, i32 3}
!693 = !{ptr @.str.349, !692, !"<string literal>", i1 false, i1 false}
!694 = !{ptr @kworld_sbtvd_gate_ctrl._entry, !692, !"_entry", i1 false, i1 false}
!695 = !{ptr @kworld_sbtvd_gate_ctrl._entry_ptr, !692, !"_entry_ptr", i1 false, i1 false}
!696 = !{ptr @kworld_sbtvd_gate_ctrl._entry.350, !697, !"_entry", i1 false, i1 false}
!697 = !{!"../drivers/media/pci/saa7134/saa7134-dvb.c", i32 245, i32 3}
!698 = !{ptr @kworld_sbtvd_gate_ctrl._entry_ptr.351, !697, !"_entry_ptr", i1 false, i1 false}
!699 = !{ptr @kworld_tda18271_config, !700, !"kworld_tda18271_config", i1 false, i1 false}
!700 = !{!"../drivers/media/pci/saa7134/saa7134-dvb.c", i32 216, i32 31}
!701 = !{ptr @mb86a20s_tda18271_std_map, !702, !"mb86a20s_tda18271_std_map", i1 false, i1 false}
!702 = !{!"../drivers/media/pci/saa7134/saa7134-dvb.c", i32 211, i32 32}
!703 = !{ptr @prohdtv_pro2_lgs8g75_config, !704, !"prohdtv_pro2_lgs8g75_config", i1 false, i1 false}
!704 = !{!"../drivers/media/pci/saa7134/saa7134-dvb.c", i32 1146, i32 30}
!705 = !{ptr @prohdtv_pro2_tda18271_config, !706, !"prohdtv_pro2_tda18271_config", i1 false, i1 false}
!706 = !{!"../drivers/media/pci/saa7134/saa7134-dvb.c", i32 1161, i32 31}
!707 = !{ptr @zl10313_avermedia_a706_config, !708, !"zl10313_avermedia_a706_config", i1 false, i1 false}
!708 = !{!"../drivers/media/pci/saa7134/saa7134-dvb.c", i32 1059, i32 28}
!709 = !{ptr @hdtv200h_s5h1411_config, !710, !"hdtv200h_s5h1411_config", i1 false, i1 false}
!710 = !{!"../drivers/media/pci/saa7134/saa7134-dvb.c", i32 1197, i32 30}
!711 = !{ptr @hdtv200h_tda18271_config, !712, !"hdtv200h_tda18271_config", i1 false, i1 false}
!712 = !{!"../drivers/media/pci/saa7134/saa7134-dvb.c", i32 1192, i32 31}
!713 = !{ptr @dvb_fini.on, !714, !"on", i1 false, i1 false}
!714 = !{!"../drivers/media/pci/saa7134/saa7134-dvb.c", i32 1961, i32 14}
!715 = !{i32 1, !"wchar_size", i32 2}
!716 = !{i32 1, !"min_enum_size", i32 4}
!717 = !{i32 8, !"branch-target-enforcement", i32 0}
!718 = !{i32 8, !"sign-return-address", i32 0}
!719 = !{i32 8, !"sign-return-address-all", i32 0}
!720 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!721 = !{i32 7, !"uwtable", i32 1}
!722 = !{i32 7, !"frame-pointer", i32 2}
!723 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!724 = !{i64 2148573759, i64 2148573764, i64 2148573777, i64 2148573821, i64 2148573855, i64 2148573876}
!725 = !{!"auto-init"}
!726 = !{i64 5068504}
!727 = !{i64 2158933125}
!728 = !{i64 5068922}
!729 = !{i64 2158934208}
!730 = !{i64 2158935559}
!731 = !{i64 2158936618}
!732 = !{i64 2158938537}
!733 = !{i64 2158939620}
!734 = !{i64 2158940785}
!735 = !{i64 2158944286}
!736 = !{i64 2158945345}
