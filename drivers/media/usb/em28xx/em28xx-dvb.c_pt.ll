; ModuleID = '/llk/IR_all_yes/drivers/media/usb/em28xx/em28xx-dvb.c_pt.bc'
source_filename = "../drivers/media/usb/em28xx/em28xx-dvb.c"
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
%struct.em28xx_ops = type { %struct.list_head, ptr, i32, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.s921_config = type { i8 }
%struct.lgdt330x_config = type { i32, i32, ptr, ptr, i32, ptr }
%struct.zl10353_config = type { i8, i32, i32, i32, i32, i8, i8, i8 }
%struct.mt352_config = type { i8, i32, i32, i32, ptr }
%struct.mt2060_config = type { i8, i8 }
%struct.qt1010_config = type { i8 }
%struct.s5h1409_config = type { i8, i8, i8, i16, i8, i8, i16, i8 }
%struct.drxd_config = type { i8, i8, i8, i32, i8, i8, i8, i8, i8, i32, ptr }
%struct.tda10023_config = type { i8, i8, i32, i8, i8, i8, i8, i16 }
%struct.lgdt3305_config = type { i8, i16, i16, i16, i16, i16, i8, i32, i32, i32, i32, i32 }
%struct.tda18271_config = type { ptr, i32, i32, i32, i32, i8, i32 }
%struct.cxd2820r_config = type { i8, i8, i8, i8, i8 }
%struct.drxk_config = type { i8, i8, i8, i8, i8, i8, i8, i16, i8, i32, ptr, i32 }
%struct.mb86a20s_config = type { i32, i8, i8 }
%struct.tda18212_config = type { i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr }
%struct.tda18271_std_map_item = type { i16, i16 }
%struct.em28xx_reg_seq = type { i32, i8, i8, i32 }
%struct.anon.149 = type { [4 x i8], i32 }
%struct.anon.150 = type { [4 x i8], i32 }
%struct.anon.151 = type { [4 x i8], i32 }
%struct.anon.152 = type { [4 x i8], i32 }
%struct.anon.153 = type { [4 x i8], i32 }
%struct.anon.154 = type { [4 x i8], i32 }
%struct.lgdt3306a_config = type { i8, i16, i16, i8, i32, i32, i32, i32, ptr, ptr }
%struct.xc5000_config = type { i8, i32, i8, i16, i16, i32 }
%struct.em28xx = type { %struct.kref, ptr, ptr, %struct.em28xx_audio, ptr, i32, i32, i32, i8, i32, i32, [32 x i8], %struct.em28xx_board, i32, i32, %struct.list_head, i32, %struct.em28xx_audio_mode, i32, [2 x %struct.i2c_adapter], [2 x %struct.i2c_client], [2 x %struct.em28xx_i2c_bus], i8, i32, i32, %struct.rt_mutex, i32, i32, i32, [4 x i32], i32, i32, i32, i32, %struct.work_struct, %struct.mutex, %struct.mutex, i32, ptr, i16, %struct.em28xx_dmaqueue, %struct.em28xx_dmaqueue, %struct.em28xx_usb_ctl, %struct.spinlock, ptr, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, ptr, i8, i32, i32, i32, i8, [80 x i8], ptr, ptr, ptr, ptr, ptr, i32, %struct.delayed_work, [5 x i8], [5 x i8], i8, i16, [30 x i8], ptr, ptr, [4 x %struct.media_entity], [4 x %struct.media_pad], ptr, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.em28xx_audio = type { [50 x i8], i32, ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, %struct.spinlock, %struct.work_struct, %struct.atomic_t }
%struct.em28xx_board = type { ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i16, i8, i8, i8, i16, i32, i32, [4 x %struct.em28xx_input], %struct.em28xx_input, ptr, ptr, ptr }
%struct.em28xx_input = type { i32, i32, i32, i32, ptr }
%struct.em28xx_audio_mode = type { i32 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
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
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
%struct.em28xx_i2c_bus = type { ptr, i32, i32 }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.em28xx_dmaqueue = type { %struct.list_head, %struct.wait_queue_head }
%struct.em28xx_usb_ctl = type { %struct.em28xx_usb_bufs, %struct.em28xx_usb_bufs, ptr, ptr, ptr }
%struct.em28xx_usb_bufs = type { i32, i32, i32, ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.127 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.127 = type { %struct.anon.128 }
%struct.anon.128 = type { i32, i32 }
%struct.media_pad = type { %struct.media_gobj, ptr, i16, i32, i32 }
%struct.usb_interface = type { ptr, ptr, i32, ptr, i32, i32, i8, %struct.device, ptr, %struct.work_struct }
%struct.em28xx_dvb = type { [2 x ptr], %struct.mutex, i32, %struct.dvb_adapter, %struct.dvb_demux, %struct.dmxdev, %struct.dmx_frontend, %struct.dmx_frontend, %struct.dvb_net, ptr, %struct.semaphore, i8, i32, ptr, ptr, ptr }
%struct.dvb_adapter = type { i32, %struct.list_head, %struct.list_head, ptr, [6 x i8], ptr, ptr, ptr, i32, ptr, %struct.mutex, %struct.mutex, ptr, ptr, ptr }
%struct.dvb_demux = type { %struct.dmx_demux, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, %struct.list_head, [20 x ptr], [20 x i16], %struct.list_head, [204 x i8], i32, %struct.mutex, %struct.spinlock, ptr, i64, i32, i32, i32 }
%struct.dmx_demux = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dmxdev = type { ptr, ptr, ptr, ptr, i32, i32, i8, ptr, %struct.dvb_ringbuffer, %struct.dvb_vb2_ctx, %struct.mutex, %struct.spinlock }
%struct.dvb_ringbuffer = type { ptr, i32, i32, i32, i32, %struct.wait_queue_head, %struct.spinlock }
%struct.dvb_vb2_ctx = type { %struct.vb2_queue, %struct.mutex, %struct.spinlock, %struct.list_head, ptr, i32, i32, i32, i32, i32, i32, i32, i32, [21 x i8] }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.dmx_frontend = type { %struct.list_head, i32 }
%struct.dvb_net = type { ptr, [10 x ptr], [10 x i32], i8, ptr, %struct.mutex }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
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
%struct.xc2028_config = type { ptr, i8, ptr }
%struct.xc2028_ctrl = type { ptr, i32, i32, i32, i8, i32, i8 }
%struct.tda10071_platform_data = type { i32, i16, i8, i8, i8, i8, ptr }
%struct.a8293_platform_data = type { ptr }
%struct.m88ds3103_platform_data = type { i32, i16, i32, i32, i32, i8, i8, i8, ptr, ptr, i8 }
%struct.ts2020_config = type { i8, i32, i16, ptr, i8, ptr }
%struct.si2168_config = type { ptr, ptr, i8, i8 }
%struct.si2157_config = type { ptr, ptr, i8, i8 }
%struct.tc90522_config = type { ptr, ptr, i8 }
%struct.qm1d1c0042_config = type { ptr, i32, i8, i8, i32, i32, i32 }
%struct.mxl692_config = type { i8, i8, ptr }
%struct.dvb_demux_feed = type { %union.anon.143, %union.anon.144, ptr, ptr, i32, i32, i16, i64, ptr, i32, i32, i32, i32, i8, i16, %struct.list_head, i32 }
%union.anon.143 = type { %struct.dmx_section_feed }
%struct.dmx_section_feed = type { i32, ptr, ptr, i32, i32, ptr, [4284 x i8], i16, i16, i16, ptr, ptr, ptr, ptr, ptr }
%union.anon.144 = type { ptr }
%struct.urb = type { %struct.kref, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, [0 x %struct.usb_iso_packet_descriptor] }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }

@__UNIQUE_ID_author388 = internal constant [61 x i8] c"em28xx_dvb.author=Mauro Carvalho Chehab <mchehab@kernel.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_file389 = internal constant [52 x i8] c"em28xx_dvb.file=drivers/media/usb/em28xx/em28xx-dvb\00", section ".modinfo", align 1
@__UNIQUE_ID_license390 = internal constant [26 x i8] c"em28xx_dvb.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_description391 = internal constant [73 x i8] c"em28xx_dvb.description=Empia em28xx device driver - digital TV interface\00", section ".modinfo", align 1
@__UNIQUE_ID_version392 = internal constant [25 x i8] c"em28xx_dvb.version=0.2.2\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"em28xx_dvb\00", [21 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"0.2.2\00", [26 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.2 }, section "__modver", align 4
@__param_str_debug = internal constant [17 x i8] c"em28xx_dvb.debug\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@debug = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.101 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype393 = internal constant [30 x i8] c"em28xx_dvb.parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug394 = internal constant [50 x i8] c"em28xx_dvb.parm=debug:enable debug messages [dvb]\00", section ".modinfo", align 1
@__param_str_adapter_nr = internal constant [22 x i8] c"em28xx_dvb.adapter_nr\00", align 1
@param_array_ops = external dso_local constant %struct.kernel_param_ops, align 4
@__param_arr_adapter_nr = internal constant %struct.kparam_array { i32 16, i32 2, ptr null, ptr @param_ops_short, ptr @adapter_nr }, align 4
@__param_adapter_nr = internal constant %struct.kernel_param { ptr @__param_str_adapter_nr, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.101 { ptr @__param_arr_adapter_nr } }, section "__param", align 4
@__UNIQUE_ID_adapter_nrtype395 = internal constant [46 x i8] c"em28xx_dvb.parmtype=adapter_nr:array of short\00", section ".modinfo", align 1
@__UNIQUE_ID_adapter_nr396 = internal constant [47 x i8] c"em28xx_dvb.parm=adapter_nr:DVB adapter numbers\00", section ".modinfo", align 1
@dvb_ops = internal global { %struct.em28xx_ops, [32 x i8] } { %struct.em28xx_ops { %struct.list_head zeroinitializer, ptr @.str.3, i32 32, ptr @em28xx_dvb_init, ptr @em28xx_dvb_fini, ptr @em28xx_dvb_suspend, ptr @em28xx_dvb_resume }, [32 x i8] zeroinitializer }, align 32
@__initcall__kmod_em28xx_dvb__397_2152_em28xx_dvb_register6 = internal global ptr @em28xx_dvb_register, section ".initcall6.init", align 4
@__exitcall_em28xx_dvb_unregister = internal global ptr @em28xx_dvb_unregister, section ".exitcall.exit", align 4
@param_ops_short = external dso_local constant %struct.kernel_param_ops, align 4
@adapter_nr = internal global { [16 x i16], [32 x i8] } { [16 x i16] [i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1], [32 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Em28xx dvb Extension\00", [43 x i8] zeroinitializer }, align 32
@em28xx_dvb_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 1499, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Binding DVB extension\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"em28xx_dvb_init\00", [16 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/media/usb/em28xx/em28xx-dvb.c\00", [58 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@em28xx_dvb_init._entry_ptr = internal global ptr @em28xx_dvb_init._entry, section ".printk_index", align 4
@em28xx_dvb_init._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.5, ptr @.str.6, i32 1525, ptr @.str.11, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"failed to pre-allocate USB transfer buffers for DVB.\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@em28xx_dvb_init._entry_ptr.12 = internal global ptr @em28xx_dvb_init._entry.9, section ".printk_index", align 4
@.str.13 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"s921_attach\00", [20 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"symbol:s921_attach\00", [45 x i8] zeroinitializer }, align 32
@sharp_isdbt = internal global { %struct.s921_config, [31 x i8] } { %struct.s921_config { i8 24 }, [31 x i8] zeroinitializer }, align 32
@em28xx_dvb_init._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.5, ptr @.str.6, i32 1538, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013DVB: Unable to find symbol s921_attach()\0A\00", [52 x i8] zeroinitializer }, align 32
@em28xx_dvb_init._entry_ptr.17 = internal global ptr @em28xx_dvb_init._entry.15, section ".printk_index", align 4
@.str.18 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"lgdt330x_attach\00", [16 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"symbol:lgdt330x_attach\00", [41 x i8] zeroinitializer }, align 32
@em2880_lgdt3303_dev = internal global { %struct.lgdt330x_config, [40 x i8] } { %struct.lgdt330x_config { i32 2, i32 0, ptr null, ptr null, i32 0, ptr null }, [40 x i8] zeroinitializer }, align 32
@em28xx_dvb_init._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.5, ptr @.str.6, i32 1553, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013DVB: Unable to find symbol lgdt330x_attach()\0A\00", [48 x i8] zeroinitializer }, align 32
@em28xx_dvb_init._entry_ptr.22 = internal global ptr @em28xx_dvb_init._entry.20, section ".printk_index", align 4
@.str.23 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"zl10353_attach\00", [17 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"symbol:zl10353_attach\00", [42 x i8] zeroinitializer }, align 32
@em28xx_zl10353_with_xc3028 = internal global { %struct.zl10353_config, [40 x i8] } { %struct.zl10353_config { i8 15, i32 0, i32 45600, i32 1, i32 1, i8 0, i8 0, i8 0 }, [40 x i8] zeroinitializer }, align 32
@em28xx_dvb_init._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.5, ptr @.str.6, i32 1562, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013DVB: Unable to find symbol zl10353_attach()\0A\00", [49 x i8] zeroinitializer }, align 32
@em28xx_dvb_init._entry_ptr.27 = internal global ptr @em28xx_dvb_init._entry.25, section ".printk_index", align 4
@em28xx_zl10353_xc3028_no_i2c_gate = internal global { %struct.zl10353_config, [40 x i8] } { %struct.zl10353_config { i8 15, i32 0, i32 45600, i32 1, i32 1, i8 -128, i8 0, i8 0 }, [40 x i8] zeroinitializer }, align 32
@em28xx_dvb_init._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.5, ptr @.str.6, i32 1574, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@em28xx_dvb_init._entry_ptr.29 = internal global ptr @em28xx_dvb_init._entry.28, section ".printk_index", align 4
@em28xx_dvb_init._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.5, ptr @.str.6, i32 1591, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@em28xx_dvb_init._entry_ptr.31 = internal global ptr @em28xx_dvb_init._entry.30, section ".printk_index", align 4
@.str.32 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mt352_attach\00", [19 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"symbol:mt352_attach\00", [44 x i8] zeroinitializer }, align 32
@terratec_xs_mt352_cfg = internal global { %struct.mt352_config, [44 x i8] } { %struct.mt352_config { i8 15, i32 0, i32 45600, i32 1, ptr @em28xx_mt352_terratec_xs_init }, [44 x i8] zeroinitializer }, align 32
@em28xx_dvb_init._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.5, ptr @.str.6, i32 1595, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013DVB: Unable to find symbol mt352_attach()\0A\00", [51 x i8] zeroinitializer }, align 32
@em28xx_dvb_init._entry_ptr.36 = internal global ptr @em28xx_dvb_init._entry.34, section ".printk_index", align 4
@em28xx_zl10353_no_i2c_gate_dev = internal global { %struct.zl10353_config, [40 x i8] } { %struct.zl10353_config { i8 15, i32 0, i32 0, i32 1, i32 1, i8 -128, i8 0, i8 0 }, [40 x i8] zeroinitializer }, align 32
@em28xx_dvb_init._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.5, ptr @.str.6, i32 1605, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@em28xx_dvb_init._entry_ptr.38 = internal global ptr @em28xx_dvb_init._entry.37, section ".printk_index", align 4
@.str.39 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mt2060_attach\00", [18 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"symbol:mt2060_attach\00", [43 x i8] zeroinitializer }, align 32
@em28xx_mt2060_config = internal global { %struct.mt2060_config, [30 x i8] } { %struct.mt2060_config { i8 96, i8 0 }, [30 x i8] zeroinitializer }, align 32
@em28xx_dvb_init._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.5, ptr @.str.6, i32 1609, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013DVB: Unable to find symbol mt2060_attach()\0A\00", [50 x i8] zeroinitializer }, align 32
@em28xx_dvb_init._entry_ptr.43 = internal global ptr @em28xx_dvb_init._entry.41, section ".printk_index", align 4
@em28xx_dvb_init._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.5, ptr @.str.6, i32 1615, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@em28xx_dvb_init._entry_ptr.45 = internal global ptr @em28xx_dvb_init._entry.44, section ".printk_index", align 4
@.str.46 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"qt1010_attach\00", [18 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"symbol:qt1010_attach\00", [43 x i8] zeroinitializer }, align 32
@em28xx_qt1010_config = internal global { %struct.qt1010_config, [31 x i8] } { %struct.qt1010_config { i8 98 }, [31 x i8] zeroinitializer }, align 32
@em28xx_dvb_init._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.5, ptr @.str.6, i32 1619, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013DVB: Unable to find symbol qt1010_attach()\0A\00", [50 x i8] zeroinitializer }, align 32
@em28xx_dvb_init._entry_ptr.50 = internal global ptr @em28xx_dvb_init._entry.48, section ".printk_index", align 4
@.str.51 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"s5h1409_attach\00", [17 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"symbol:s5h1409_attach\00", [42 x i8] zeroinitializer }, align 32
@em28xx_s5h1409_with_xc3028 = internal global { %struct.s5h1409_config, [20 x i8] } { %struct.s5h1409_config { i8 25, i8 0, i8 0, i16 0, i8 0, i8 1, i16 1, i8 0 }, [20 x i8] zeroinitializer }, align 32
@em28xx_dvb_init._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.5, ptr @.str.6, i32 1625, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013DVB: Unable to find symbol s5h1409_attach()\0A\00", [49 x i8] zeroinitializer }, align 32
@em28xx_dvb_init._entry_ptr.55 = internal global ptr @em28xx_dvb_init._entry.53, section ".printk_index", align 4
@em28xx_dvb_init._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.5, ptr @.str.6, i32 1635, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@em28xx_dvb_init._entry_ptr.57 = internal global ptr @em28xx_dvb_init._entry.56, section ".printk_index", align 4
@.str.58 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"simple_tuner_attach\00", [44 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"symbol:simple_tuner_attach\00", [37 x i8] zeroinitializer }, align 32
@em28xx_dvb_init._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.5, ptr @.str.6, i32 1639, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\013DVB: Unable to find symbol simple_tuner_attach()\0A\00", [44 x i8] zeroinitializer }, align 32
@em28xx_dvb_init._entry_ptr.62 = internal global ptr @em28xx_dvb_init._entry.60, section ".printk_index", align 4
@.str.63 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"drxd_attach\00", [20 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"symbol:drxd_attach\00", [45 x i8] zeroinitializer }, align 32
@em28xx_drxd = internal global { %struct.drxd_config, [40 x i8] } { %struct.drxd_config { i8 0, i8 0, i8 0, i32 12000, i8 1, i8 112, i8 0, i8 -94, i8 1, i32 42800000, ptr null }, [40 x i8] zeroinitializer }, align 32
@em28xx_dvb_init._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.5, ptr @.str.6, i32 1649, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013DVB: Unable to find symbol drxd_attach()\0A\00", [52 x i8] zeroinitializer }, align 32
@em28xx_dvb_init._entry_ptr.67 = internal global ptr @em28xx_dvb_init._entry.65, section ".printk_index", align 4
@.str.68 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"tda10023_attach\00", [16 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"symbol:tda10023_attach\00", [41 x i8] zeroinitializer }, align 32
@em28xx_tda10023_config = internal global { %struct.tda10023_config, [16 x i8] } { %struct.tda10023_config { i8 12, i8 1, i32 0, i8 0, i8 0, i8 0, i8 0, i16 0 }, [16 x i8] zeroinitializer }, align 32
@em28xx_dvb_init._entry.70 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.5, ptr @.str.6, i32 1660, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013DVB: Unable to find symbol tda10023_attach()\0A\00", [48 x i8] zeroinitializer }, align 32
@em28xx_dvb_init._entry_ptr.72 = internal global ptr @em28xx_dvb_init._entry.70, section ".printk_index", align 4
@em28xx_dvb_init._entry.73 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.5, ptr @.str.6, i32 1664, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@em28xx_dvb_init._entry_ptr.74 = internal global ptr @em28xx_dvb_init._entry.73, section ".printk_index", align 4
@.str.75 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"lgdt3305_attach\00", [16 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"symbol:lgdt3305_attach\00", [41 x i8] zeroinitializer }, align 32
@em2870_lgdt3304_dev = internal global { %struct.lgdt3305_config, [60 x i8] } { %struct.lgdt3305_config { i8 14, i16 4000, i16 3250, i16 0, i16 0, i16 0, i8 -64, i32 0, i32 1, i32 0, i32 1, i32 1 }, [60 x i8] zeroinitializer }, align 32
@em28xx_dvb_init._entry.77 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.5, ptr @.str.6, i32 1673, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013DVB: Unable to find symbol lgdt3305_attach()\0A\00", [48 x i8] zeroinitializer }, align 32
@em28xx_dvb_init._entry_ptr.79 = internal global ptr @em28xx_dvb_init._entry.77, section ".printk_index", align 4
@.str.80 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"tda18271_attach\00", [16 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"symbol:tda18271_attach\00", [41 x i8] zeroinitializer }, align 32
@kworld_a340_config = internal global { %struct.tda18271_config, [36 x i8] } { %struct.tda18271_config { ptr @kworld_a340_std_map, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@em28xx_dvb_init._entry.82 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.5, ptr @.str.6, i32 1680, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013DVB: Unable to find symbol tda18271_attach()\0A\00", [48 x i8] zeroinitializer }, align 32
@em28xx_dvb_init._entry_ptr.84 = internal global ptr @em28xx_dvb_init._entry.82, section ".printk_index", align 4
@.str.85 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"cxd2820r_attach\00", [16 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"symbol:cxd2820r_attach\00", [41 x i8] zeroinitializer }, align 32
@em28xx_cxd2820r_config = internal global { %struct.cxd2820r_config, [27 x i8] } { %struct.cxd2820r_config { i8 108, i8 8, i8 0, i8 0, i8 0 }, [27 x i8] zeroinitializer }, align 32
@em28xx_dvb_init._entry.87 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.88, ptr @.str.5, ptr @.str.6, i32 1693, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013DVB: Unable to find symbol cxd2820r_attach()\0A\00", [48 x i8] zeroinitializer }, align 32
@em28xx_dvb_init._entry_ptr.89 = internal global ptr @em28xx_dvb_init._entry.87, section ".printk_index", align 4
@em28xx_cxd2820r_tda18271_config = internal global { %struct.tda18271_config, [36 x i8] } { %struct.tda18271_config { ptr null, i32 0, i32 2, i32 1, i32 0, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@em28xx_dvb_init._entry.90 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.5, ptr @.str.6, i32 1700, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@em28xx_dvb_init._entry_ptr.91 = internal global ptr @em28xx_dvb_init._entry.90, section ".printk_index", align 4
@em28xx_dvb_init._entry.92 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.93, ptr @.str.5, ptr @.str.6, i32 1713, ptr @.str.11, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"gpio request failed %d\0A\00", [40 x i8] zeroinitializer }, align 32
@em28xx_dvb_init._entry_ptr.94 = internal global ptr @em28xx_dvb_init._entry.92, section ".printk_index", align 4
@.str.95 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"drxk_attach\00", [20 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"symbol:drxk_attach\00", [45 x i8] zeroinitializer }, align 32
@hauppauge_930c_drxk = internal global { %struct.drxk_config, [40 x i8] } { %struct.drxk_config { i8 41, i8 1, i8 1, i8 0, i8 0, i8 0, i8 0, i16 0, i8 0, i32 56, ptr @.str.173, i32 2 }, [40 x i8] zeroinitializer }, align 32
@em28xx_dvb_init._entry.97 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.98, ptr @.str.5, ptr @.str.6, i32 1731, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013DVB: Unable to find symbol drxk_attach()\0A\00", [52 x i8] zeroinitializer }, align 32
@em28xx_dvb_init._entry_ptr.99 = internal global ptr @em28xx_dvb_init._entry.97, section ".printk_index", align 4
@.str.100 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"xc5000_attach\00", [18 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"symbol:xc5000_attach\00", [43 x i8] zeroinitializer }, align 32
@em28xx_dvb_init._entry.102 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.103, ptr @.str.5, ptr @.str.6, i32 1749, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013DVB: Unable to find symbol xc5000_attach()\0A\00", [50 x i8] zeroinitializer }, align 32
@em28xx_dvb_init._entry_ptr.104 = internal global ptr @em28xx_dvb_init._entry.102, section ".printk_index", align 4
@terratec_h5_drxk = internal global { %struct.drxk_config, [40 x i8] } { %struct.drxk_config { i8 41, i8 1, i8 1, i8 0, i8 0, i8 0, i8 0, i16 0, i8 0, i32 0, ptr @.str.176, i32 2 }, [40 x i8] zeroinitializer }, align 32
@em28xx_dvb_init._entry.105 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.98, ptr @.str.5, ptr @.str.6, i32 1762, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@em28xx_dvb_init._entry_ptr.106 = internal global ptr @em28xx_dvb_init._entry.105, section ".printk_index", align 4
@.str.107 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"tda18271c2dd_attach\00", [44 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"symbol:tda18271c2dd_attach\00", [37 x i8] zeroinitializer }, align 32
@em28xx_dvb_init._entry.109 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.110, ptr @.str.5, ptr @.str.6, i32 1777, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\013DVB: Unable to find symbol tda18271c2dd_attach()\0A\00", [44 x i8] zeroinitializer }, align 32
@em28xx_dvb_init._entry_ptr.111 = internal global ptr @em28xx_dvb_init._entry.109, section ".printk_index", align 4
@.str.112 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"mb86a20s_attach\00", [16 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"symbol:mb86a20s_attach\00", [41 x i8] zeroinitializer }, align 32
@c3tech_duo_mb86a20s_config = internal constant { %struct.mb86a20s_config, [24 x i8] } { %struct.mb86a20s_config { i32 0, i8 16, i8 1 }, [24 x i8] zeroinitializer }, align 32
@em28xx_dvb_init._entry.114 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.115, ptr @.str.5, ptr @.str.6, i32 1788, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013DVB: Unable to find symbol mb86a20s_attach()\0A\00", [48 x i8] zeroinitializer }, align 32
@em28xx_dvb_init._entry_ptr.116 = internal global ptr @em28xx_dvb_init._entry.114, section ".printk_index", align 4
@c3tech_duo_tda18271_config = internal global { %struct.tda18271_config, [36 x i8] } { %struct.tda18271_config { ptr @mb86a20s_tda18271_config, i32 0, i32 2, i32 0, i32 3, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@em28xx_dvb_init._entry.117 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.5, ptr @.str.6, i32 1792, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@em28xx_dvb_init._entry_ptr.118 = internal global ptr @em28xx_dvb_init._entry.117, section ".printk_index", align 4
@maxmedia_ub425_tc_drxk = internal global { %struct.drxk_config, [40 x i8] } { %struct.drxk_config { i8 41, i8 1, i8 1, i8 0, i8 0, i8 0, i8 0, i16 0, i8 0, i32 62, ptr @.str.181, i32 2 }, [40 x i8] zeroinitializer }, align 32
@em28xx_dvb_init._entry.119 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.98, ptr @.str.5, ptr @.str.6, i32 1803, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@em28xx_dvb_init._entry_ptr.120 = internal global ptr @em28xx_dvb_init._entry.119, section ".printk_index", align 4
@em28xx_dvb_init._entry.121 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.5, ptr @.str.6, i32 1812, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@em28xx_dvb_init._entry_ptr.122 = internal global ptr @em28xx_dvb_init._entry.121, section ".printk_index", align 4
@pctv_520e_drxk = internal global { %struct.drxk_config, [40 x i8] } { %struct.drxk_config { i8 41, i8 1, i8 0, i8 0, i8 0, i8 0, i8 1, i16 4, i8 0, i32 58, ptr @.str.182, i32 2 }, [40 x i8] zeroinitializer }, align 32
@em28xx_dvb_init._entry.123 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.98, ptr @.str.5, ptr @.str.6, i32 1825, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@em28xx_dvb_init._entry_ptr.124 = internal global ptr @em28xx_dvb_init._entry.123, section ".printk_index", align 4
@em28xx_dvb_init._entry.125 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.5, ptr @.str.6, i32 1831, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@em28xx_dvb_init._entry_ptr.126 = internal global ptr @em28xx_dvb_init._entry.125, section ".printk_index", align 4
@terratec_htc_stick_drxk = internal global { %struct.drxk_config, [40 x i8] } { %struct.drxk_config { i8 41, i8 1, i8 1, i8 0, i8 0, i8 0, i8 1, i16 6, i8 0, i32 54, ptr @.str.183, i32 2 }, [40 x i8] zeroinitializer }, align 32
@em28xx_dvb_init._entry.127 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.98, ptr @.str.5, ptr @.str.6, i32 1845, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@em28xx_dvb_init._entry_ptr.128 = internal global ptr @em28xx_dvb_init._entry.127, section ".printk_index", align 4
@em28xx_dvb_init._entry.129 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.5, ptr @.str.6, i32 1854, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@em28xx_dvb_init._entry_ptr.130 = internal global ptr @em28xx_dvb_init._entry.129, section ".printk_index", align 4
@em28xx_dvb_init._entry.131 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.98, ptr @.str.5, ptr @.str.6, i32 1864, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@em28xx_dvb_init._entry_ptr.132 = internal global ptr @em28xx_dvb_init._entry.131, section ".printk_index", align 4
@em28xx_dvb_init._entry.133 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.5, ptr @.str.6, i32 1873, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@em28xx_dvb_init._entry_ptr.134 = internal global ptr @em28xx_dvb_init._entry.133, section ".printk_index", align 4
@em2874_lgdt3305_dev = internal global { %struct.lgdt3305_config, [60 x i8] } { %struct.lgdt3305_config { i8 14, i16 4000, i16 3250, i16 0, i16 0, i16 0, i8 64, i32 1, i32 1, i32 0, i32 1, i32 0 }, [60 x i8] zeroinitializer }, align 32
@em28xx_dvb_init._entry.135 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.5, ptr @.str.6, i32 1881, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@em28xx_dvb_init._entry_ptr.136 = internal global ptr @em28xx_dvb_init._entry.135, section ".printk_index", align 4
@kworld_ub435q_v2_config = internal global { %struct.tda18271_config, [36 x i8] } { %struct.tda18271_config { ptr @kworld_a340_std_map, i32 0, i32 2, i32 0, i32 0, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@em28xx_dvb_init._entry.137 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.5, ptr @.str.6, i32 1890, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@em28xx_dvb_init._entry_ptr.138 = internal global ptr @em28xx_dvb_init._entry.137, section ".printk_index", align 4
@em2874_lgdt3305_nogate_dev = internal global { %struct.lgdt3305_config, [60 x i8] } { %struct.lgdt3305_config { i8 14, i16 3600, i16 3600, i16 0, i16 0, i16 0, i8 -64, i32 1, i32 1, i32 0, i32 1, i32 0 }, [60 x i8] zeroinitializer }, align 32
@em28xx_dvb_init._entry.139 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.5, ptr @.str.6, i32 1901, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@em28xx_dvb_init._entry_ptr.140 = internal global ptr @em28xx_dvb_init._entry.139, section ".printk_index", align 4
@kworld_ub435q_v3_config = internal global { %struct.tda18212_config, [40 x i8] } { %struct.tda18212_config { i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 3600, i16 3600, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"tda18212\00", [23 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"drx39xxj_attach\00", [16 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"symbol:drx39xxj_attach\00", [41 x i8] zeroinitializer }, align 32
@em28xx_dvb_init._entry.144 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.145, ptr @.str.5, ptr @.str.6, i32 1922, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013DVB: Unable to find symbol drx39xxj_attach()\0A\00", [48 x i8] zeroinitializer }, align 32
@em28xx_dvb_init._entry_ptr.146 = internal global ptr @em28xx_dvb_init._entry.144, section ".printk_index", align 4
@pinnacle_80e_dvb_config = internal global { %struct.tda18271_config, [36 x i8] } { %struct.tda18271_config { ptr @drx_j_std_map, i32 0, i32 2, i32 0, i32 0, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@em28xx_dvb_init._entry.147 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.5, ptr @.str.6, i32 1927, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@em28xx_dvb_init._entry_ptr.148 = internal global ptr @em28xx_dvb_init._entry.147, section ".printk_index", align 4
@em28xx_dvb_init._entry.149 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.150, ptr @.str.5, ptr @.str.6, i32 1976, ptr @.str.11, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"The frontend of your DVB/ATSC card isn't supported yet\0A\00", [40 x i8] zeroinitializer }, align 32
@em28xx_dvb_init._entry_ptr.151 = internal global ptr @em28xx_dvb_init._entry.149, section ".printk_index", align 4
@em28xx_dvb_init._entry.152 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.153, ptr @.str.5, ptr @.str.6, i32 1980, ptr @.str.11, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"frontend initialization failed\0A\00", [32 x i8] zeroinitializer }, align 32
@em28xx_dvb_init._entry_ptr.154 = internal global ptr @em28xx_dvb_init._entry.152, section ".printk_index", align 4
@em28xx_dvb_init._entry.155 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.156, ptr @.str.5, ptr @.str.6, i32 2003, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"DVB extension successfully initialized\0A\00", [56 x i8] zeroinitializer }, align 32
@em28xx_dvb_init._entry_ptr.157 = internal global ptr @em28xx_dvb_init._entry.155, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@em28xx_attach_xc3028._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.158, ptr @.str.159, ptr @.str.6, i32 958, ptr @.str.11, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"dvb frontend not attached. Can't attach xc3028\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"em28xx_attach_xc3028\00", [43 x i8] zeroinitializer }, align 32
@em28xx_attach_xc3028._entry_ptr = internal global ptr @em28xx_attach_xc3028._entry, section ".printk_index", align 4
@.str.160 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"xc2028_attach\00", [18 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"symbol:xc2028_attach\00", [43 x i8] zeroinitializer }, align 32
@em28xx_attach_xc3028._entry.162 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.163, ptr @.str.159, ptr @.str.6, i32 962, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013DVB: Unable to find symbol xc2028_attach()\0A\00", [50 x i8] zeroinitializer }, align 32
@em28xx_attach_xc3028._entry_ptr.164 = internal global ptr @em28xx_attach_xc3028._entry.162, section ".printk_index", align 4
@em28xx_attach_xc3028._entry.165 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.166, ptr @.str.159, ptr @.str.6, i32 964, ptr @.str.11, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"xc3028 attach failed\0A\00", [42 x i8] zeroinitializer }, align 32
@em28xx_attach_xc3028._entry_ptr.167 = internal global ptr @em28xx_attach_xc3028._entry.165, section ".printk_index", align 4
@em28xx_attach_xc3028._entry.168 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.169, ptr @.str.159, ptr @.str.6, i32 970, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"xc3028 attached\0A\00", [47 x i8] zeroinitializer }, align 32
@em28xx_attach_xc3028._entry_ptr.170 = internal global ptr @em28xx_attach_xc3028._entry.168, section ".printk_index", align 4
@em28xx_mt352_terratec_xs_init.clock_config = internal global { [3 x i8], [29 x i8] } { [3 x i8] c"\898,", [29 x i8] zeroinitializer }, align 32
@em28xx_mt352_terratec_xs_init.reset = internal global { [2 x i8], [30 x i8] } { [2 x i8] c"P\80", [30 x i8] zeroinitializer }, align 32
@em28xx_mt352_terratec_xs_init.adc_ctl_1_cfg = internal global { [2 x i8], [30 x i8] } { [2 x i8] c"\8E@", [30 x i8] zeroinitializer }, align 32
@em28xx_mt352_terratec_xs_init.agc_cfg = internal global { [3 x i8], [29 x i8] } { [3 x i8] c"g(\A0", [29 x i8] zeroinitializer }, align 32
@em28xx_mt352_terratec_xs_init.input_freq_cfg = internal global { [3 x i8], [29 x i8] } { [3 x i8] c"V1\B8", [29 x i8] zeroinitializer }, align 32
@em28xx_mt352_terratec_xs_init.rs_err_cfg = internal global { [3 x i8], [29 x i8] } { [3 x i8] c"|\00M", [29 x i8] zeroinitializer }, align 32
@em28xx_mt352_terratec_xs_init.capt_range_cfg = internal global { [2 x i8], [30 x i8] } { [2 x i8] c"u2", [30 x i8] zeroinitializer }, align 32
@em28xx_mt352_terratec_xs_init.trl_nom_cfg = internal global { [3 x i8], [29 x i8] } { [3 x i8] c"Td\00", [29 x i8] zeroinitializer }, align 32
@em28xx_mt352_terratec_xs_init.tps_given_cfg = internal global { [4 x i8], [28 x i8] } { [4 x i8] c"Q@\80P", [28 x i8] zeroinitializer }, align 32
@em28xx_mt352_terratec_xs_init.tuner_go = internal global { [2 x i8], [30 x i8] } { [2 x i8] c"]\01", [30 x i8] zeroinitializer }, align 32
@kworld_a340_std_map = internal global { { %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, { i16, i8, i8 }, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, { i16, i8, i8 }, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item }, [36 x i8] } { { %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, { i16, i8, i8 }, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, { i16, i8, i8 }, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item } { %struct.tda18271_std_map_item zeroinitializer, %struct.tda18271_std_map_item zeroinitializer, %struct.tda18271_std_map_item zeroinitializer, %struct.tda18271_std_map_item zeroinitializer, %struct.tda18271_std_map_item zeroinitializer, %struct.tda18271_std_map_item zeroinitializer, %struct.tda18271_std_map_item zeroinitializer, %struct.tda18271_std_map_item zeroinitializer, { i16, i8, i8 } { i16 3250, i8 -64, i8 -73 }, %struct.tda18271_std_map_item zeroinitializer, %struct.tda18271_std_map_item zeroinitializer, %struct.tda18271_std_map_item zeroinitializer, { i16, i8, i8 } { i16 4000, i8 -56, i8 -73 }, %struct.tda18271_std_map_item zeroinitializer, %struct.tda18271_std_map_item zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@em28xx_pctv_290e_set_lna._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.93, ptr @.str.172, ptr @.str.6, i32 746, ptr @.str.11, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"em28xx_pctv_290e_set_lna\00", [39 x i8] zeroinitializer }, align 32
@em28xx_pctv_290e_set_lna._entry_ptr = internal global ptr @em28xx_pctv_290e_set_lna._entry, section ".printk_index", align 4
@hauppauge_hvr930c_init.hauppauge_hvr930c_init = internal constant { [4 x %struct.em28xx_reg_seq], [48 x i8] } { [4 x %struct.em28xx_reg_seq] [%struct.em28xx_reg_seq { i32 128, i8 -1, i8 -1, i32 101 }, %struct.em28xx_reg_seq { i32 128, i8 -5, i8 -1, i32 50 }, %struct.em28xx_reg_seq { i32 128, i8 -1, i8 -1, i32 184 }, %struct.em28xx_reg_seq { i32 -1, i8 -1, i8 -1, i32 -1 }], [48 x i8] zeroinitializer }, align 32
@hauppauge_hvr930c_init.hauppauge_hvr930c_end = internal constant { [11 x %struct.em28xx_reg_seq], [60 x i8] } { [11 x %struct.em28xx_reg_seq] [%struct.em28xx_reg_seq { i32 128, i8 -17, i8 -1, i32 1 }, %struct.em28xx_reg_seq { i32 128, i8 -81, i8 -1, i32 101 }, %struct.em28xx_reg_seq { i32 128, i8 -17, i8 -1, i32 118 }, %struct.em28xx_reg_seq { i32 128, i8 -17, i8 -1, i32 1 }, %struct.em28xx_reg_seq { i32 128, i8 -49, i8 -1, i32 11 }, %struct.em28xx_reg_seq { i32 128, i8 -17, i8 -1, i32 64 }, %struct.em28xx_reg_seq { i32 128, i8 -49, i8 -1, i32 101 }, %struct.em28xx_reg_seq { i32 128, i8 -17, i8 -1, i32 101 }, %struct.em28xx_reg_seq { i32 128, i8 -49, i8 -1, i32 11 }, %struct.em28xx_reg_seq { i32 128, i8 -17, i8 -1, i32 101 }, %struct.em28xx_reg_seq { i32 -1, i8 -1, i8 -1, i32 -1 }], [60 x i8] zeroinitializer }, align 32
@hauppauge_hvr930c_init.regs = internal constant { [13 x %struct.anon.149], [56 x i8] } { [13 x %struct.anon.149] [%struct.anon.149 { [4 x i8] c"\06\02\001", i32 4 }, %struct.anon.149 { [4 x i8] c"\01\02\00\00", i32 2 }, %struct.anon.149 { [4 x i8] c"\01\02\00\C6", i32 4 }, %struct.anon.149 { [4 x i8] c"\01\00\00\00", i32 2 }, %struct.anon.149 { [4 x i8] c"\01\00\FF\AF", i32 4 }, %struct.anon.149 { [4 x i8] c"\01\00\03\A0", i32 4 }, %struct.anon.149 { [4 x i8] c"\01\00\00\00", i32 2 }, %struct.anon.149 { [4 x i8] c"\01\00s\AF", i32 4 }, %struct.anon.149 { [4 x i8] c"\04\00\00\00", i32 2 }, %struct.anon.149 { [4 x i8] c"\00\04\00\00", i32 2 }, %struct.anon.149 { [4 x i8] c"\00\04\00\0A", i32 4 }, %struct.anon.149 { [4 x i8] c"\04\14\00\00", i32 2 }, %struct.anon.149 { [4 x i8] c"\04\14\00\00", i32 4 }], [56 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"dvb-usb-hauppauge-hvr930c-drxk.fw\00", [62 x i8] zeroinitializer }, align 32
@sema_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.174 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"(*sem).lock\00", [20 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"semaphore->lock\00", [16 x i8] zeroinitializer }, align 32
@terratec_h5_init.terratec_h5_init = internal constant { [5 x %struct.em28xx_reg_seq], [36 x i8] } { [5 x %struct.em28xx_reg_seq] [%struct.em28xx_reg_seq { i32 8, i8 -1, i8 -1, i32 10 }, %struct.em28xx_reg_seq { i32 128, i8 -10, i8 -1, i32 100 }, %struct.em28xx_reg_seq { i32 128, i8 -14, i8 -1, i32 50 }, %struct.em28xx_reg_seq { i32 128, i8 -10, i8 -1, i32 100 }, %struct.em28xx_reg_seq { i32 -1, i8 -1, i8 -1, i32 -1 }], [36 x i8] zeroinitializer }, align 32
@terratec_h5_init.terratec_h5_end = internal constant { [4 x %struct.em28xx_reg_seq], [48 x i8] } { [4 x %struct.em28xx_reg_seq] [%struct.em28xx_reg_seq { i32 128, i8 -26, i8 -1, i32 100 }, %struct.em28xx_reg_seq { i32 128, i8 -90, i8 -1, i32 50 }, %struct.em28xx_reg_seq { i32 128, i8 -26, i8 -1, i32 100 }, %struct.em28xx_reg_seq { i32 -1, i8 -1, i8 -1, i32 -1 }], [48 x i8] zeroinitializer }, align 32
@terratec_h5_init.regs = internal constant { [13 x %struct.anon.150], [56 x i8] } { [13 x %struct.anon.150] [%struct.anon.150 { [4 x i8] c"\06\02\001", i32 4 }, %struct.anon.150 { [4 x i8] c"\01\02\00\00", i32 2 }, %struct.anon.150 { [4 x i8] c"\01\02\00\C6", i32 4 }, %struct.anon.150 { [4 x i8] c"\01\00\00\00", i32 2 }, %struct.anon.150 { [4 x i8] c"\01\00\FF\AF", i32 4 }, %struct.anon.150 { [4 x i8] c"\01\00\03\A0", i32 4 }, %struct.anon.150 { [4 x i8] c"\01\00\00\00", i32 2 }, %struct.anon.150 { [4 x i8] c"\01\00s\AF", i32 4 }, %struct.anon.150 { [4 x i8] c"\04\00\00\00", i32 2 }, %struct.anon.150 { [4 x i8] c"\00\04\00\00", i32 2 }, %struct.anon.150 { [4 x i8] c"\00\04\00\0A", i32 4 }, %struct.anon.150 { [4 x i8] c"\04\14\00\00", i32 2 }, %struct.anon.150 { [4 x i8] c"\04\14\00\00", i32 4 }], [56 x i8] zeroinitializer }, align 32
@.str.176 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"dvb-usb-terratec-h5-drxk.fw\00", [36 x i8] zeroinitializer }, align 32
@mb86a20s_tda18271_config = internal global { { %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, { i16, i8, i8 }, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item }, [36 x i8] } { { %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, { i16, i8, i8 }, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item } { %struct.tda18271_std_map_item zeroinitializer, %struct.tda18271_std_map_item zeroinitializer, %struct.tda18271_std_map_item zeroinitializer, %struct.tda18271_std_map_item zeroinitializer, %struct.tda18271_std_map_item zeroinitializer, %struct.tda18271_std_map_item zeroinitializer, %struct.tda18271_std_map_item zeroinitializer, %struct.tda18271_std_map_item zeroinitializer, %struct.tda18271_std_map_item zeroinitializer, { i16, i8, i8 } { i16 4000, i8 -32, i8 -73 }, %struct.tda18271_std_map_item zeroinitializer, %struct.tda18271_std_map_item zeroinitializer, %struct.tda18271_std_map_item zeroinitializer, %struct.tda18271_std_map_item zeroinitializer, %struct.tda18271_std_map_item zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@.str.178 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"tda10071\00", [23 x i8] zeroinitializer }, align 32
@.str.179 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"tda10071_cx24118\00", [47 x i8] zeroinitializer }, align 32
@.str.180 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"a8293\00", [26 x i8] zeroinitializer }, align 32
@.str.181 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"dvb-demod-drxk-01.fw\00", [43 x i8] zeroinitializer }, align 32
@pctv_520e_init.regs = internal constant { [8 x %struct.anon.151], [32 x i8] } { [8 x %struct.anon.151] [%struct.anon.151 { [4 x i8] c"\06\02\001", i32 4 }, %struct.anon.151 { [4 x i8] c"\01\02\00\00", i32 2 }, %struct.anon.151 { [4 x i8] c"\01\02\00\C6", i32 4 }, %struct.anon.151 { [4 x i8] c"\01\00\00\00", i32 2 }, %struct.anon.151 { [4 x i8] c"\01\00\FF\AF", i32 4 }, %struct.anon.151 { [4 x i8] c"\01\00\03\A0", i32 4 }, %struct.anon.151 { [4 x i8] c"\01\00\00\00", i32 2 }, %struct.anon.151 { [4 x i8] c"\01\00s\AF", i32 4 }], [32 x i8] zeroinitializer }, align 32
@.str.182 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"dvb-demod-drxk-pctv.fw\00", [41 x i8] zeroinitializer }, align 32
@terratec_htc_stick_init.terratec_htc_stick_init = internal constant { [5 x %struct.em28xx_reg_seq], [36 x i8] } { [5 x %struct.em28xx_reg_seq] [%struct.em28xx_reg_seq { i32 8, i8 -1, i8 -1, i32 10 }, %struct.em28xx_reg_seq { i32 128, i8 -10, i8 -1, i32 100 }, %struct.em28xx_reg_seq { i32 128, i8 -26, i8 -1, i32 50 }, %struct.em28xx_reg_seq { i32 128, i8 -10, i8 -1, i32 100 }, %struct.em28xx_reg_seq { i32 -1, i8 -1, i8 -1, i32 -1 }], [36 x i8] zeroinitializer }, align 32
@terratec_htc_stick_init.terratec_htc_stick_end = internal constant { [3 x %struct.em28xx_reg_seq], [60 x i8] } { [3 x %struct.em28xx_reg_seq] [%struct.em28xx_reg_seq { i32 128, i8 -74, i8 -1, i32 100 }, %struct.em28xx_reg_seq { i32 128, i8 -10, i8 -1, i32 50 }, %struct.em28xx_reg_seq { i32 -1, i8 -1, i8 -1, i32 -1 }], [60 x i8] zeroinitializer }, align 32
@terratec_htc_stick_init.regs = internal constant { [5 x %struct.anon.152], [56 x i8] } { [5 x %struct.anon.152] [%struct.anon.152 { [4 x i8] c"\06\02\001", i32 4 }, %struct.anon.152 { [4 x i8] c"\01\02\00\00", i32 2 }, %struct.anon.152 { [4 x i8] c"\01\02\00\C6", i32 4 }, %struct.anon.152 { [4 x i8] c"\01\00\00\00", i32 2 }, %struct.anon.152 { [4 x i8] c"\01\00\FF\AF", i32 4 }], [56 x i8] zeroinitializer }, align 32
@.str.183 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"dvb-usb-terratec-htc-stick-drxk.fw\00", [61 x i8] zeroinitializer }, align 32
@terratec_htc_usb_xs_init.terratec_htc_usb_xs_init = internal constant { [5 x %struct.em28xx_reg_seq], [36 x i8] } { [5 x %struct.em28xx_reg_seq] [%struct.em28xx_reg_seq { i32 8, i8 -1, i8 -1, i32 10 }, %struct.em28xx_reg_seq { i32 128, i8 -78, i8 -1, i32 100 }, %struct.em28xx_reg_seq { i32 128, i8 -78, i8 -1, i32 50 }, %struct.em28xx_reg_seq { i32 128, i8 -74, i8 -1, i32 100 }, %struct.em28xx_reg_seq { i32 -1, i8 -1, i8 -1, i32 -1 }], [36 x i8] zeroinitializer }, align 32
@terratec_htc_usb_xs_init.terratec_htc_usb_xs_end = internal constant { [4 x %struct.em28xx_reg_seq], [48 x i8] } { [4 x %struct.em28xx_reg_seq] [%struct.em28xx_reg_seq { i32 128, i8 -90, i8 -1, i32 100 }, %struct.em28xx_reg_seq { i32 128, i8 -90, i8 -1, i32 50 }, %struct.em28xx_reg_seq { i32 128, i8 -26, i8 -1, i32 100 }, %struct.em28xx_reg_seq { i32 -1, i8 -1, i8 -1, i32 -1 }], [48 x i8] zeroinitializer }, align 32
@terratec_htc_usb_xs_init.regs = internal constant { [13 x %struct.anon.153], [56 x i8] } { [13 x %struct.anon.153] [%struct.anon.153 { [4 x i8] c"\06\02\001", i32 4 }, %struct.anon.153 { [4 x i8] c"\01\02\00\00", i32 2 }, %struct.anon.153 { [4 x i8] c"\01\02\00\C6", i32 4 }, %struct.anon.153 { [4 x i8] c"\01\00\00\00", i32 2 }, %struct.anon.153 { [4 x i8] c"\01\00\FF\AF", i32 4 }, %struct.anon.153 { [4 x i8] c"\01\00\03\A0", i32 4 }, %struct.anon.153 { [4 x i8] c"\01\00\00\00", i32 2 }, %struct.anon.153 { [4 x i8] c"\01\00s\AF", i32 4 }, %struct.anon.153 { [4 x i8] c"\04\00\00\00", i32 2 }, %struct.anon.153 { [4 x i8] c"\00\04\00\00", i32 2 }, %struct.anon.153 { [4 x i8] c"\00\04\00\0A", i32 4 }, %struct.anon.153 { [4 x i8] c"\04\14\00\00", i32 2 }, %struct.anon.153 { [4 x i8] c"\04\14\00\00", i32 4 }], [56 x i8] zeroinitializer }, align 32
@drx_j_std_map = internal global { { %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, { i16, i8, i8 }, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, { i16, i8, i8 }, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item }, [36 x i8] } { { %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, { i16, i8, i8 }, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, { i16, i8, i8 }, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item } { %struct.tda18271_std_map_item zeroinitializer, %struct.tda18271_std_map_item zeroinitializer, %struct.tda18271_std_map_item zeroinitializer, %struct.tda18271_std_map_item zeroinitializer, %struct.tda18271_std_map_item zeroinitializer, %struct.tda18271_std_map_item zeroinitializer, %struct.tda18271_std_map_item zeroinitializer, %struct.tda18271_std_map_item zeroinitializer, { i16, i8, i8 } { i16 5000, i8 -64, i8 -73 }, %struct.tda18271_std_map_item zeroinitializer, %struct.tda18271_std_map_item zeroinitializer, %struct.tda18271_std_map_item zeroinitializer, { i16, i8, i8 } { i16 5380, i8 -40, i8 -73 }, %struct.tda18271_std_map_item zeroinitializer, %struct.tda18271_std_map_item zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@.str.185 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"m88ds3103\00", [22 x i8] zeroinitializer }, align 32
@.str.186 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ts2020\00", [25 x i8] zeroinitializer }, align 32
@.str.187 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ts2022\00", [25 x i8] zeroinitializer }, align 32
@.str.188 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"m88ds3103b\00", [21 x i8] zeroinitializer }, align 32
@.str.189 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"si2168\00", [25 x i8] zeroinitializer }, align 32
@.str.190 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"si2157\00", [25 x i8] zeroinitializer }, align 32
@.str.191 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"si2146\00", [25 x i8] zeroinitializer }, align 32
@.str.192 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"tc90522\00", [24 x i8] zeroinitializer }, align 32
@.str.193 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"tc90522sat\00", [21 x i8] zeroinitializer }, align 32
@.str.194 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"qm1d1c0042\00", [21 x i8] zeroinitializer }, align 32
@px_bcud_init.regs1 = internal constant { [3 x %struct.anon.154], [40 x i8] } { [3 x %struct.anon.154] [%struct.anon.154 { [4 x i8] c"\0Ew\00\00", i32 2 }, %struct.anon.154 { [4 x i8] c"\0Fw\00\00", i32 2 }, %struct.anon.154 { [4 x i8] c"\03\90\00\00", i32 2 }], [40 x i8] zeroinitializer }, align 32
@px_bcud_init.regs2 = internal constant { [9 x %struct.anon.154], [56 x i8] } { [9 x %struct.anon.154] [%struct.anon.154 { [4 x i8] c"\07\01\00\00", i32 2 }, %struct.anon.154 { [4 x i8] c"\08\10\00\00", i32 2 }, %struct.anon.154 { [4 x i8] c"\13\00\00\00", i32 2 }, %struct.anon.154 { [4 x i8] c"\17\00\00\00", i32 2 }, %struct.anon.154 { [4 x i8] c"\03\01\00\00", i32 2 }, %struct.anon.154 { [4 x i8] c"\10\B1\00\00", i32 2 }, %struct.anon.154 { [4 x i8] c"\11@\00\00", i32 2 }, %struct.anon.154 { [4 x i8] c"\85z\00\00", i32 2 }, %struct.anon.154 { [4 x i8] c"\87\04\00\00", i32 2 }], [56 x i8] zeroinitializer }, align 32
@px_bcud_init.gpio = internal constant { [20 x %struct.em28xx_reg_seq], [48 x i8] } { [20 x %struct.em28xx_reg_seq] [%struct.em28xx_reg_seq { i32 6, i8 64, i8 -1, i32 300 }, %struct.em28xx_reg_seq { i32 128, i8 -3, i8 -1, i32 60 }, %struct.em28xx_reg_seq { i32 21, i8 32, i8 -1, i32 0 }, %struct.em28xx_reg_seq { i32 22, i8 32, i8 -1, i32 0 }, %struct.em28xx_reg_seq { i32 23, i8 32, i8 -1, i32 0 }, %struct.em28xx_reg_seq { i32 24, i8 0, i8 -1, i32 0 }, %struct.em28xx_reg_seq { i32 25, i8 0, i8 -1, i32 0 }, %struct.em28xx_reg_seq { i32 26, i8 0, i8 -1, i32 0 }, %struct.em28xx_reg_seq { i32 35, i8 0, i8 -1, i32 0 }, %struct.em28xx_reg_seq { i32 36, i8 0, i8 -1, i32 0 }, %struct.em28xx_reg_seq { i32 38, i8 0, i8 -1, i32 0 }, %struct.em28xx_reg_seq { i32 19, i8 8, i8 -1, i32 0 }, %struct.em28xx_reg_seq { i32 18, i8 39, i8 -1, i32 0 }, %struct.em28xx_reg_seq { i32 12, i8 16, i8 -1, i32 0 }, %struct.em28xx_reg_seq { i32 39, i8 0, i8 -1, i32 0 }, %struct.em28xx_reg_seq { i32 16, i8 0, i8 -1, i32 0 }, %struct.em28xx_reg_seq { i32 17, i8 17, i8 -1, i32 0 }, %struct.em28xx_reg_seq { i32 80, i8 1, i8 -1, i32 0 }, %struct.em28xx_reg_seq { i32 95, i8 -128, i8 -1, i32 0 }, %struct.em28xx_reg_seq { i32 6, i8 70, i8 -1, i32 0 }], [48 x i8] zeroinitializer }, align 32
@hauppauge_01595_lgdt3306a_config = internal constant { %struct.lgdt3306a_config, [32 x i8] } { %struct.lgdt3306a_config { i8 0, i16 4000, i16 3250, i8 0, i32 1, i32 0, i32 1, i32 25, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.195 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"lgdt3306a\00", [22 x i8] zeroinitializer }, align 32
@.str.196 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"mxl692\00", [25 x i8] zeroinitializer }, align 32
@em28xx_register_dvb.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.197 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&dvb->lock\00", [21 x i8] zeroinitializer }, align 32
@em28xx_register_dvb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.198, ptr @.str.199, ptr @.str.6, i32 992, ptr @.str.200, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.198 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"dvb_register_adapter failed (errno = %d)\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.199 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"em28xx_register_dvb\00", [44 x i8] zeroinitializer }, align 32
@.str.200 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@em28xx_register_dvb._entry_ptr = internal global ptr @em28xx_register_dvb._entry, section ".printk_index", align 4
@em28xx_register_dvb._entry.201 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.202, ptr @.str.199, ptr @.str.6, i32 1011, ptr @.str.200, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.202 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"dvb_register_frontend failed (errno = %d)\0A\00", [53 x i8] zeroinitializer }, align 32
@em28xx_register_dvb._entry_ptr.203 = internal global ptr @em28xx_register_dvb._entry.201, section ".printk_index", align 4
@em28xx_register_dvb._entry.204 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.205, ptr @.str.199, ptr @.str.6, i32 1021, ptr @.str.200, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.205 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"2nd dvb_register_frontend failed (errno = %d)\0A\00", [49 x i8] zeroinitializer }, align 32
@em28xx_register_dvb._entry_ptr.206 = internal global ptr @em28xx_register_dvb._entry.204, section ".printk_index", align 4
@em28xx_register_dvb._entry.207 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.208, ptr @.str.199, ptr @.str.6, i32 1040, ptr @.str.200, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.208 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"dvb_dmx_init failed (errno = %d)\0A\00", [62 x i8] zeroinitializer }, align 32
@em28xx_register_dvb._entry_ptr.209 = internal global ptr @em28xx_register_dvb._entry.207, section ".printk_index", align 4
@em28xx_register_dvb._entry.210 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.211, ptr @.str.199, ptr @.str.6, i32 1051, ptr @.str.200, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.211 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"dvb_dmxdev_init failed (errno = %d)\0A\00", [59 x i8] zeroinitializer }, align 32
@em28xx_register_dvb._entry_ptr.212 = internal global ptr @em28xx_register_dvb._entry.210, section ".printk_index", align 4
@em28xx_register_dvb._entry.213 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.214, ptr @.str.199, ptr @.str.6, i32 1060, ptr @.str.200, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.214 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"add_frontend failed (DMX_FRONTEND_0, errno = %d)\0A\00", [46 x i8] zeroinitializer }, align 32
@em28xx_register_dvb._entry_ptr.215 = internal global ptr @em28xx_register_dvb._entry.213, section ".printk_index", align 4
@em28xx_register_dvb._entry.216 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.217, ptr @.str.199, ptr @.str.6, i32 1069, ptr @.str.200, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.217 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"add_frontend failed (DMX_MEMORY_FE, errno = %d)\0A\00", [47 x i8] zeroinitializer }, align 32
@em28xx_register_dvb._entry_ptr.218 = internal global ptr @em28xx_register_dvb._entry.216, section ".printk_index", align 4
@em28xx_register_dvb._entry.219 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.220, ptr @.str.199, ptr @.str.6, i32 1077, ptr @.str.200, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.220 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"connect_frontend failed (errno = %d)\0A\00", [58 x i8] zeroinitializer }, align 32
@em28xx_register_dvb._entry_ptr.221 = internal global ptr @em28xx_register_dvb._entry.219, section ".printk_index", align 4
@em28xx_start_streaming._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.222, ptr @.str.223, ptr @.str.6, i32 232, ptr @.str.224, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.222 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"dvb: Using %d buffers each with %d x %d bytes, alternate %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.223 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"em28xx_start_streaming\00", [41 x i8] zeroinitializer }, align 32
@.str.224 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\017\00", [29 x i8] zeroinitializer }, align 32
@em28xx_start_streaming._entry_ptr = internal global ptr @em28xx_start_streaming._entry, section ".printk_index", align 4
@.str.225 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Unknown\00", [24 x i8] zeroinitializer }, align 32
@.str.226 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"unlinked synchronously\00", [41 x i8] zeroinitializer }, align 32
@.str.227 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"unlinked asynchronously\00", [40 x i8] zeroinitializer }, align 32
@.str.228 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Buffer error (overrun)\00", [41 x i8] zeroinitializer }, align 32
@.str.229 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Stalled (device not responding)\00", [32 x i8] zeroinitializer }, align 32
@.str.230 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Babble (bad cable?)\00", [44 x i8] zeroinitializer }, align 32
@.str.231 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Bit-stuff error (bad cable?)\00", [35 x i8] zeroinitializer }, align 32
@.str.232 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"CRC/Timeout (could be anything)\00", [32 x i8] zeroinitializer }, align 32
@.str.233 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Device does not respond\00", [40 x i8] zeroinitializer }, align 32
@print_err_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.234, ptr @.str.235, ptr @.str.6, i32 141, ptr @.str.224, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.234 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"dvb: URB status %d [%s].\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.235 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"print_err_status\00", [47 x i8] zeroinitializer }, align 32
@print_err_status._entry_ptr = internal global ptr @print_err_status._entry, section ".printk_index", align 4
@print_err_status._entry.236 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.237, ptr @.str.235, ptr @.str.6, i32 144, ptr @.str.224, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.237 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"dvb: URB packet %d, status %d [%s].\0A\00", [59 x i8] zeroinitializer }, align 32
@print_err_status._entry_ptr.238 = internal global ptr @print_err_status._entry.236, section ".printk_index", align 4
@em28xx_dvb_fini._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.239, ptr @.str.240, ptr @.str.6, i32 2043, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.239 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Closing DVB extension\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.240 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"em28xx_dvb_fini\00", [16 x i8] zeroinitializer }, align 32
@em28xx_dvb_fini._entry_ptr = internal global ptr @em28xx_dvb_fini._entry, section ".printk_index", align 4
@em28xx_dvb_suspend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.241, ptr @.str.242, ptr @.str.6, i32 2088, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.241 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Suspending DVB extension\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.242 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"em28xx_dvb_suspend\00", [45 x i8] zeroinitializer }, align 32
@em28xx_dvb_suspend._entry_ptr = internal global ptr @em28xx_dvb_suspend._entry, section ".printk_index", align 4
@em28xx_dvb_suspend._entry.243 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.244, ptr @.str.242, ptr @.str.6, i32 2094, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.244 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"fe0 suspend %d\0A\00", [16 x i8] zeroinitializer }, align 32
@em28xx_dvb_suspend._entry_ptr.245 = internal global ptr @em28xx_dvb_suspend._entry.243, section ".printk_index", align 4
@em28xx_dvb_suspend._entry.246 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.247, ptr @.str.242, ptr @.str.6, i32 2098, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.247 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"fe1 suspend %d\0A\00", [16 x i8] zeroinitializer }, align 32
@em28xx_dvb_suspend._entry_ptr.248 = internal global ptr @em28xx_dvb_suspend._entry.246, section ".printk_index", align 4
@em28xx_dvb_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.249, ptr @.str.250, ptr @.str.6, i32 2115, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.249 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Resuming DVB extension\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.250 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"em28xx_dvb_resume\00", [46 x i8] zeroinitializer }, align 32
@em28xx_dvb_resume._entry_ptr = internal global ptr @em28xx_dvb_resume._entry, section ".printk_index", align 4
@em28xx_dvb_resume._entry.251 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.252, ptr @.str.250, ptr @.str.6, i32 2121, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.252 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"fe0 resume %d\0A\00", [17 x i8] zeroinitializer }, align 32
@em28xx_dvb_resume._entry_ptr.253 = internal global ptr @em28xx_dvb_resume._entry.251, section ".printk_index", align 4
@em28xx_dvb_resume._entry.254 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.255, ptr @.str.250, ptr @.str.6, i32 2126, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.255 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"fe1 resume %d\0A\00", [17 x i8] zeroinitializer }, align 32
@em28xx_dvb_resume._entry_ptr.256 = internal global ptr @em28xx_dvb_resume._entry.254, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [50 x i64] [i64 48, i64 32, i64 10, i64 11, i64 16, i64 17, i64 18, i64 20, i64 42, i64 44, i64 48, i64 51, i64 53, i64 54, i64 55, i64 56, i64 57, i64 59, i64 60, i64 66, i64 69, i64 70, i64 73, i64 75, i64 76, i64 77, i64 78, i64 79, i64 80, i64 81, i64 82, i64 84, i64 85, i64 86, i64 87, i64 88, i64 89, i64 90, i64 92, i64 93, i64 94, i64 96, i64 97, i64 98, i64 99, i64 100, i64 101, i64 102, i64 104, i64 106]
@__sancov_gen_cov_switch_values.257 = internal global [10 x i64] [i64 8, i64 32, i64 4294967192, i64 4294967212, i64 4294967221, i64 4294967225, i64 4294967233, i64 4294967234, i64 4294967264, i64 4294967294]
@__sancov_gen_cov_switch_values.258 = internal global [10 x i64] [i64 8, i64 32, i64 4294967192, i64 4294967212, i64 4294967221, i64 4294967225, i64 4294967233, i64 4294967234, i64 4294967264, i64 4294967294]
@__sancov_gen_cov_switch_values.259 = internal global [10 x i64] [i64 8, i64 32, i64 4294967192, i64 4294967212, i64 4294967221, i64 4294967225, i64 4294967233, i64 4294967234, i64 4294967264, i64 4294967294]
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 70, i32 1 }
@___asan_gen_.269 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 72, i32 21 }
@___asan_gen_.272 = private unnamed_addr constant [8 x i8] c"dvb_ops\00", align 1
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 2133, i32 26 }
@___asan_gen_.275 = private unnamed_addr constant [11 x i8] c"adapter_nr\00", align 1
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 76, i32 1 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 2135, i32 10 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 1499, i32 2 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 1524, i32 3 }
@___asan_gen_.314 = private unnamed_addr constant [12 x i8] c"sharp_isdbt\00", align 1
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 345, i32 27 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 1536, i32 16 }
@___asan_gen_.329 = private unnamed_addr constant [20 x i8] c"em2880_lgdt3303_dev\00", align 1
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 305, i32 31 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 1550, i32 16 }
@___asan_gen_.344 = private unnamed_addr constant [27 x i8] c"em28xx_zl10353_with_xc3028\00", align 1
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 349, i32 30 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 1560, i32 16 }
@___asan_gen_.353 = private unnamed_addr constant [34 x i8] c"em28xx_zl10353_xc3028_no_i2c_gate\00", align 1
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 386, i32 30 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 1572, i32 16 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 1589, i32 16 }
@___asan_gen_.368 = private unnamed_addr constant [22 x i8] c"terratec_xs_mt352_cfg\00", align 1
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 863, i32 28 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 1593, i32 17 }
@___asan_gen_.377 = private unnamed_addr constant [31 x i8] c"em28xx_zl10353_no_i2c_gate_dev\00", align 1
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 885, i32 30 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 1603, i32 16 }
@___asan_gen_.389 = private unnamed_addr constant [21 x i8] c"em28xx_mt2060_config\00", align 1
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 892, i32 29 }
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 1607, i32 4 }
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 1613, i32 16 }
@___asan_gen_.407 = private unnamed_addr constant [21 x i8] c"em28xx_qt1010_config\00", align 1
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 896, i32 29 }
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 1617, i32 4 }
@___asan_gen_.422 = private unnamed_addr constant [27 x i8] c"em28xx_s5h1409_with_xc3028\00", align 1
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 356, i32 30 }
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 1623, i32 16 }
@___asan_gen_.433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 1632, i32 16 }
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 1637, i32 9 }
@___asan_gen_.452 = private unnamed_addr constant [12 x i8] c"em28xx_drxd\00", align 1
@___asan_gen_.454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 394, i32 27 }
@___asan_gen_.460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 1647, i32 16 }
@___asan_gen_.467 = private unnamed_addr constant [23 x i8] c"em28xx_tda10023_config\00", align 1
@___asan_gen_.469 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 870, i32 31 }
@___asan_gen_.475 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 1657, i32 16 }
@___asan_gen_.478 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 1662, i32 9 }
@___asan_gen_.485 = private unnamed_addr constant [20 x i8] c"em2870_lgdt3304_dev\00", align 1
@___asan_gen_.487 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 309, i32 31 }
@___asan_gen_.493 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 1671, i32 16 }
@___asan_gen_.500 = private unnamed_addr constant [19 x i8] c"kworld_a340_config\00", align 1
@___asan_gen_.502 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 372, i32 31 }
@___asan_gen_.508 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 1678, i32 8 }
@___asan_gen_.515 = private unnamed_addr constant [23 x i8] c"em28xx_cxd2820r_config\00", align 1
@___asan_gen_.517 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 875, i32 31 }
@___asan_gen_.523 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 1690, i32 16 }
@___asan_gen_.524 = private unnamed_addr constant [32 x i8] c"em28xx_cxd2820r_tda18271_config\00", align 1
@___asan_gen_.526 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 880, i32 31 }
@___asan_gen_.529 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 1696, i32 9 }
@___asan_gen_.535 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 1711, i32 5 }
@___asan_gen_.542 = private unnamed_addr constant [20 x i8] c"hauppauge_930c_drxk\00", align 1
@___asan_gen_.544 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 412, i32 27 }
@___asan_gen_.550 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 1729, i32 16 }
@___asan_gen_.562 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 1748, i32 8 }
@___asan_gen_.563 = private unnamed_addr constant [17 x i8] c"terratec_h5_drxk\00", align 1
@___asan_gen_.565 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 404, i32 27 }
@___asan_gen_.568 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 1761, i32 16 }
@___asan_gen_.580 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 1776, i32 8 }
@___asan_gen_.587 = private unnamed_addr constant [27 x i8] c"c3tech_duo_mb86a20s_config\00", align 1
@___asan_gen_.589 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 900, i32 37 }
@___asan_gen_.595 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 1786, i32 16 }
@___asan_gen_.596 = private unnamed_addr constant [27 x i8] c"c3tech_duo_tda18271_config\00", align 1
@___asan_gen_.598 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 910, i32 31 }
@___asan_gen_.601 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 1790, i32 4 }
@___asan_gen_.602 = private unnamed_addr constant [23 x i8] c"maxmedia_ub425_tc_drxk\00", align 1
@___asan_gen_.604 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 434, i32 27 }
@___asan_gen_.607 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 1802, i32 16 }
@___asan_gen_.610 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 1810, i32 9 }
@___asan_gen_.611 = private unnamed_addr constant [15 x i8] c"pctv_520e_drxk\00", align 1
@___asan_gen_.613 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 443, i32 27 }
@___asan_gen_.616 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 1824, i32 16 }
@___asan_gen_.619 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 1829, i32 9 }
@___asan_gen_.620 = private unnamed_addr constant [24 x i8] c"terratec_htc_stick_drxk\00", align 1
@___asan_gen_.622 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 421, i32 27 }
@___asan_gen_.625 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 1844, i32 16 }
@___asan_gen_.628 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 1852, i32 8 }
@___asan_gen_.631 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 1863, i32 16 }
@___asan_gen_.634 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 1871, i32 8 }
@___asan_gen_.635 = private unnamed_addr constant [20 x i8] c"em2874_lgdt3305_dev\00", align 1
@___asan_gen_.637 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 321, i32 31 }
@___asan_gen_.640 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 1879, i32 16 }
@___asan_gen_.641 = private unnamed_addr constant [24 x i8] c"kworld_ub435q_v2_config\00", align 1
@___asan_gen_.643 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 376, i32 31 }
@___asan_gen_.646 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 1888, i32 8 }
@___asan_gen_.647 = private unnamed_addr constant [27 x i8] c"em2874_lgdt3305_nogate_dev\00", align 1
@___asan_gen_.649 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 333, i32 31 }
@___asan_gen_.652 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 1899, i32 16 }
@___asan_gen_.653 = private unnamed_addr constant [24 x i8] c"kworld_ub435q_v3_config\00", align 1
@___asan_gen_.655 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 381, i32 31 }
@___asan_gen_.658 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 1910, i32 44 }
@___asan_gen_.670 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 1921, i32 16 }
@___asan_gen_.671 = private unnamed_addr constant [24 x i8] c"pinnacle_80e_dvb_config\00", align 1
@___asan_gen_.673 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 923, i32 31 }
@___asan_gen_.676 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 1924, i32 17 }
@___asan_gen_.682 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 1975, i32 3 }
@___asan_gen_.688 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 1980, i32 3 }
@___asan_gen_.694 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 2003, i32 2 }
@___asan_gen_.703 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 957, i32 3 }
@___asan_gen_.715 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 962, i32 7 }
@___asan_gen_.721 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 964, i32 3 }
@___asan_gen_.727 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 970, i32 2 }
@___asan_gen_.728 = private unnamed_addr constant [13 x i8] c"clock_config\00", align 1
@___asan_gen_.730 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 776, i32 12 }
@___asan_gen_.731 = private unnamed_addr constant [6 x i8] c"reset\00", align 1
@___asan_gen_.733 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 777, i32 12 }
@___asan_gen_.734 = private unnamed_addr constant [14 x i8] c"adc_ctl_1_cfg\00", align 1
@___asan_gen_.736 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 778, i32 12 }
@___asan_gen_.737 = private unnamed_addr constant [8 x i8] c"agc_cfg\00", align 1
@___asan_gen_.739 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 779, i32 12 }
@___asan_gen_.740 = private unnamed_addr constant [15 x i8] c"input_freq_cfg\00", align 1
@___asan_gen_.742 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 780, i32 12 }
@___asan_gen_.743 = private unnamed_addr constant [11 x i8] c"rs_err_cfg\00", align 1
@___asan_gen_.745 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 781, i32 12 }
@___asan_gen_.746 = private unnamed_addr constant [15 x i8] c"capt_range_cfg\00", align 1
@___asan_gen_.748 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 782, i32 12 }
@___asan_gen_.749 = private unnamed_addr constant [12 x i8] c"trl_nom_cfg\00", align 1
@___asan_gen_.751 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 783, i32 12 }
@___asan_gen_.752 = private unnamed_addr constant [14 x i8] c"tps_given_cfg\00", align 1
@___asan_gen_.754 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 784, i32 12 }
@___asan_gen_.755 = private unnamed_addr constant [9 x i8] c"tuner_go\00", align 1
@___asan_gen_.757 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 785, i32 12 }
@___asan_gen_.758 = private unnamed_addr constant [20 x i8] c"kworld_a340_std_map\00", align 1
@___asan_gen_.760 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 365, i32 32 }
@___asan_gen_.766 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 746, i32 3 }
@___asan_gen_.767 = private unnamed_addr constant [23 x i8] c"hauppauge_hvr930c_init\00", align 1
@___asan_gen_.769 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 475, i32 37 }
@___asan_gen_.770 = private unnamed_addr constant [22 x i8] c"hauppauge_hvr930c_end\00", align 1
@___asan_gen_.772 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 481, i32 37 }
@___asan_gen_.775 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 500, i32 4 }
@___asan_gen_.778 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 416, i32 20 }
@___asan_gen_.781 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.786, i32 33, i32 31 }
@___asan_gen_.784 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.786, i32 34, i32 28 }
@___asan_gen_.786 = private unnamed_addr constant [29 x i8] c"../include/linux/semaphore.h\00", align 1
@___asan_gen_.787 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.786, i32 35, i32 39 }
@___asan_gen_.788 = private unnamed_addr constant [17 x i8] c"terratec_h5_init\00", align 1
@___asan_gen_.790 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 541, i32 37 }
@___asan_gen_.791 = private unnamed_addr constant [16 x i8] c"terratec_h5_end\00", align 1
@___asan_gen_.793 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 548, i32 37 }
@___asan_gen_.796 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 557, i32 4 }
@___asan_gen_.799 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 408, i32 20 }
@___asan_gen_.800 = private unnamed_addr constant [25 x i8] c"mb86a20s_tda18271_config\00", align 1
@___asan_gen_.802 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 905, i32 32 }
@___asan_gen_.805 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 1147, i32 43 }
@___asan_gen_.808 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 1147, i32 55 }
@___asan_gen_.811 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 1158, i32 41 }
@___asan_gen_.814 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 438, i32 20 }
@___asan_gen_.817 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 711, i32 4 }
@___asan_gen_.820 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 446, i32 20 }
@___asan_gen_.821 = private unnamed_addr constant [24 x i8] c"terratec_htc_stick_init\00", align 1
@___asan_gen_.823 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 598, i32 37 }
@___asan_gen_.824 = private unnamed_addr constant [23 x i8] c"terratec_htc_stick_end\00", align 1
@___asan_gen_.826 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 605, i32 37 }
@___asan_gen_.829 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 618, i32 4 }
@___asan_gen_.832 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 425, i32 20 }
@___asan_gen_.833 = private unnamed_addr constant [25 x i8] c"terratec_htc_usb_xs_init\00", align 1
@___asan_gen_.835 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 646, i32 37 }
@___asan_gen_.836 = private unnamed_addr constant [24 x i8] c"terratec_htc_usb_xs_end\00", align 1
@___asan_gen_.838 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 653, i32 37 }
@___asan_gen_.839 = private unnamed_addr constant [5 x i8] c"regs\00", align 1
@___asan_gen_.841 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 667, i32 4 }
@___asan_gen_.842 = private unnamed_addr constant [14 x i8] c"drx_j_std_map\00", align 1
@___asan_gen_.844 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 916, i32 32 }
@___asan_gen_.847 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 1185, i32 43 }
@___asan_gen_.850 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 1197, i32 43 }
@___asan_gen_.853 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 1197, i32 53 }
@___asan_gen_.856 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 1240, i32 56 }
@___asan_gen_.859 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 1291, i32 43 }
@___asan_gen_.862 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 1303, i32 43 }
@___asan_gen_.865 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 1340, i32 53 }
@___asan_gen_.868 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 1358, i32 43 }
@___asan_gen_.871 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 1358, i32 54 }
@___asan_gen_.874 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 1368, i32 43 }
@___asan_gen_.875 = private unnamed_addr constant [6 x i8] c"regs1\00", align 1
@___asan_gen_.877 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 807, i32 4 }
@___asan_gen_.878 = private unnamed_addr constant [6 x i8] c"regs2\00", align 1
@___asan_gen_.880 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 811, i32 5 }
@___asan_gen_.881 = private unnamed_addr constant [5 x i8] c"gpio\00", align 1
@___asan_gen_.883 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 822, i32 37 }
@___asan_gen_.884 = private unnamed_addr constant [33 x i8] c"hauppauge_01595_lgdt3306a_config\00", align 1
@___asan_gen_.886 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 929, i32 32 }
@___asan_gen_.889 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 1437, i32 43 }
@___asan_gen_.892 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 1474, i32 43 }
@___asan_gen_.893 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.898 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 983, i32 2 }
@___asan_gen_.910 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 990, i32 3 }
@___asan_gen_.916 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 1009, i32 3 }
@___asan_gen_.922 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 1019, i32 4 }
@___asan_gen_.928 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 1038, i32 3 }
@___asan_gen_.934 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 1049, i32 3 }
@___asan_gen_.940 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 1058, i32 3 }
@___asan_gen_.946 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 1067, i32 3 }
@___asan_gen_.952 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 1075, i32 3 }
@___asan_gen_.964 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 229, i32 2 }
@___asan_gen_.967 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 112, i32 17 }
@___asan_gen_.970 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 116, i32 12 }
@___asan_gen_.973 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 119, i32 12 }
@___asan_gen_.976 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 122, i32 12 }
@___asan_gen_.979 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 125, i32 12 }
@___asan_gen_.982 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 128, i32 12 }
@___asan_gen_.985 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 131, i32 12 }
@___asan_gen_.988 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 134, i32 12 }
@___asan_gen_.991 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 137, i32 12 }
@___asan_gen_.1000 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 141, i32 3 }
@___asan_gen_.1006 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 143, i32 3 }
@___asan_gen_.1015 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 2043, i32 2 }
@___asan_gen_.1024 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 2088, i32 2 }
@___asan_gen_.1030 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 2094, i32 4 }
@___asan_gen_.1036 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 2098, i32 4 }
@___asan_gen_.1045 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 2115, i32 2 }
@___asan_gen_.1051 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 2121, i32 4 }
@___asan_gen_.1052 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.1055 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.1056 = private constant [41 x i8] c"../drivers/media/usb/em28xx/em28xx-dvb.c\00", align 1
@___asan_gen_.1057 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 2126, i32 4 }
@llvm.compiler.used = appending global [349 x ptr] [ptr @__UNIQUE_ID_adapter_nr396, ptr @__UNIQUE_ID_adapter_nrtype395, ptr @__UNIQUE_ID_author388, ptr @__UNIQUE_ID_debug394, ptr @__UNIQUE_ID_debugtype393, ptr @__UNIQUE_ID_description391, ptr @__UNIQUE_ID_file389, ptr @__UNIQUE_ID_license390, ptr @__UNIQUE_ID_version392, ptr @__exitcall_em28xx_dvb_unregister, ptr @__initcall__kmod_em28xx_dvb__397_2152_em28xx_dvb_register6, ptr @__modver_attr, ptr @__param_adapter_nr, ptr @__param_debug, ptr @em28xx_attach_xc3028._entry, ptr @em28xx_attach_xc3028._entry.162, ptr @em28xx_attach_xc3028._entry.165, ptr @em28xx_attach_xc3028._entry.168, ptr @em28xx_attach_xc3028._entry_ptr, ptr @em28xx_attach_xc3028._entry_ptr.164, ptr @em28xx_attach_xc3028._entry_ptr.167, ptr @em28xx_attach_xc3028._entry_ptr.170, ptr @em28xx_dvb_fini._entry, ptr @em28xx_dvb_fini._entry_ptr, ptr @em28xx_dvb_init._entry, ptr @em28xx_dvb_init._entry.102, ptr @em28xx_dvb_init._entry.105, ptr @em28xx_dvb_init._entry.109, ptr @em28xx_dvb_init._entry.114, ptr @em28xx_dvb_init._entry.117, ptr @em28xx_dvb_init._entry.119, ptr @em28xx_dvb_init._entry.121, ptr @em28xx_dvb_init._entry.123, ptr @em28xx_dvb_init._entry.125, ptr @em28xx_dvb_init._entry.127, ptr @em28xx_dvb_init._entry.129, ptr @em28xx_dvb_init._entry.131, ptr @em28xx_dvb_init._entry.133, ptr @em28xx_dvb_init._entry.135, ptr @em28xx_dvb_init._entry.137, ptr @em28xx_dvb_init._entry.139, ptr @em28xx_dvb_init._entry.144, ptr @em28xx_dvb_init._entry.147, ptr @em28xx_dvb_init._entry.149, ptr @em28xx_dvb_init._entry.15, ptr @em28xx_dvb_init._entry.152, ptr @em28xx_dvb_init._entry.155, ptr @em28xx_dvb_init._entry.20, ptr @em28xx_dvb_init._entry.25, ptr @em28xx_dvb_init._entry.28, ptr @em28xx_dvb_init._entry.30, ptr @em28xx_dvb_init._entry.34, ptr @em28xx_dvb_init._entry.37, ptr @em28xx_dvb_init._entry.41, ptr @em28xx_dvb_init._entry.44, ptr @em28xx_dvb_init._entry.48, ptr @em28xx_dvb_init._entry.53, ptr @em28xx_dvb_init._entry.56, ptr @em28xx_dvb_init._entry.60, ptr @em28xx_dvb_init._entry.65, ptr @em28xx_dvb_init._entry.70, ptr @em28xx_dvb_init._entry.73, ptr @em28xx_dvb_init._entry.77, ptr @em28xx_dvb_init._entry.82, ptr @em28xx_dvb_init._entry.87, ptr @em28xx_dvb_init._entry.9, ptr @em28xx_dvb_init._entry.90, ptr @em28xx_dvb_init._entry.92, ptr @em28xx_dvb_init._entry.97, ptr @em28xx_dvb_init._entry_ptr, ptr @em28xx_dvb_init._entry_ptr.104, ptr @em28xx_dvb_init._entry_ptr.106, ptr @em28xx_dvb_init._entry_ptr.111, ptr @em28xx_dvb_init._entry_ptr.116, ptr @em28xx_dvb_init._entry_ptr.118, ptr @em28xx_dvb_init._entry_ptr.12, ptr @em28xx_dvb_init._entry_ptr.120, ptr @em28xx_dvb_init._entry_ptr.122, ptr @em28xx_dvb_init._entry_ptr.124, ptr @em28xx_dvb_init._entry_ptr.126, ptr @em28xx_dvb_init._entry_ptr.128, ptr @em28xx_dvb_init._entry_ptr.130, ptr @em28xx_dvb_init._entry_ptr.132, ptr @em28xx_dvb_init._entry_ptr.134, ptr @em28xx_dvb_init._entry_ptr.136, ptr @em28xx_dvb_init._entry_ptr.138, ptr @em28xx_dvb_init._entry_ptr.140, ptr @em28xx_dvb_init._entry_ptr.146, ptr @em28xx_dvb_init._entry_ptr.148, ptr @em28xx_dvb_init._entry_ptr.151, ptr @em28xx_dvb_init._entry_ptr.154, ptr @em28xx_dvb_init._entry_ptr.157, ptr @em28xx_dvb_init._entry_ptr.17, ptr @em28xx_dvb_init._entry_ptr.22, ptr @em28xx_dvb_init._entry_ptr.27, ptr @em28xx_dvb_init._entry_ptr.29, ptr @em28xx_dvb_init._entry_ptr.31, ptr @em28xx_dvb_init._entry_ptr.36, ptr @em28xx_dvb_init._entry_ptr.38, ptr @em28xx_dvb_init._entry_ptr.43, ptr @em28xx_dvb_init._entry_ptr.45, ptr @em28xx_dvb_init._entry_ptr.50, ptr @em28xx_dvb_init._entry_ptr.55, ptr @em28xx_dvb_init._entry_ptr.57, ptr @em28xx_dvb_init._entry_ptr.62, ptr @em28xx_dvb_init._entry_ptr.67, ptr @em28xx_dvb_init._entry_ptr.72, ptr @em28xx_dvb_init._entry_ptr.74, ptr @em28xx_dvb_init._entry_ptr.79, ptr @em28xx_dvb_init._entry_ptr.84, ptr @em28xx_dvb_init._entry_ptr.89, ptr @em28xx_dvb_init._entry_ptr.91, ptr @em28xx_dvb_init._entry_ptr.94, ptr @em28xx_dvb_init._entry_ptr.99, ptr @em28xx_dvb_resume._entry, ptr @em28xx_dvb_resume._entry.251, ptr @em28xx_dvb_resume._entry.254, ptr @em28xx_dvb_resume._entry_ptr, ptr @em28xx_dvb_resume._entry_ptr.253, ptr @em28xx_dvb_resume._entry_ptr.256, ptr @em28xx_dvb_suspend._entry, ptr @em28xx_dvb_suspend._entry.243, ptr @em28xx_dvb_suspend._entry.246, ptr @em28xx_dvb_suspend._entry_ptr, ptr @em28xx_dvb_suspend._entry_ptr.245, ptr @em28xx_dvb_suspend._entry_ptr.248, ptr @em28xx_dvb_unregister, ptr @em28xx_pctv_290e_set_lna._entry, ptr @em28xx_pctv_290e_set_lna._entry_ptr, ptr @em28xx_register_dvb._entry, ptr @em28xx_register_dvb._entry.201, ptr @em28xx_register_dvb._entry.204, ptr @em28xx_register_dvb._entry.207, ptr @em28xx_register_dvb._entry.210, ptr @em28xx_register_dvb._entry.213, ptr @em28xx_register_dvb._entry.216, ptr @em28xx_register_dvb._entry.219, ptr @em28xx_register_dvb._entry_ptr, ptr @em28xx_register_dvb._entry_ptr.203, ptr @em28xx_register_dvb._entry_ptr.206, ptr @em28xx_register_dvb._entry_ptr.209, ptr @em28xx_register_dvb._entry_ptr.212, ptr @em28xx_register_dvb._entry_ptr.215, ptr @em28xx_register_dvb._entry_ptr.218, ptr @em28xx_register_dvb._entry_ptr.221, ptr @em28xx_start_streaming._entry, ptr @em28xx_start_streaming._entry_ptr, ptr @print_err_status._entry, ptr @print_err_status._entry.236, ptr @print_err_status._entry_ptr, ptr @print_err_status._entry_ptr.238, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @debug, ptr @dvb_ops, ptr @adapter_nr, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @sharp_isdbt, ptr @.str.16, ptr @.str.18, ptr @.str.19, ptr @em2880_lgdt3303_dev, ptr @.str.21, ptr @.str.23, ptr @.str.24, ptr @em28xx_zl10353_with_xc3028, ptr @.str.26, ptr @em28xx_zl10353_xc3028_no_i2c_gate, ptr @.str.32, ptr @.str.33, ptr @terratec_xs_mt352_cfg, ptr @.str.35, ptr @em28xx_zl10353_no_i2c_gate_dev, ptr @.str.39, ptr @.str.40, ptr @em28xx_mt2060_config, ptr @.str.42, ptr @.str.46, ptr @.str.47, ptr @em28xx_qt1010_config, ptr @.str.49, ptr @.str.51, ptr @.str.52, ptr @em28xx_s5h1409_with_xc3028, ptr @.str.54, ptr @.str.58, ptr @.str.59, ptr @.str.61, ptr @.str.63, ptr @.str.64, ptr @em28xx_drxd, ptr @.str.66, ptr @.str.68, ptr @.str.69, ptr @em28xx_tda10023_config, ptr @.str.71, ptr @.str.75, ptr @.str.76, ptr @em2870_lgdt3304_dev, ptr @.str.78, ptr @.str.80, ptr @.str.81, ptr @kworld_a340_config, ptr @.str.83, ptr @.str.85, ptr @.str.86, ptr @em28xx_cxd2820r_config, ptr @.str.88, ptr @em28xx_cxd2820r_tda18271_config, ptr @.str.93, ptr @.str.95, ptr @.str.96, ptr @hauppauge_930c_drxk, ptr @.str.98, ptr @.str.100, ptr @.str.101, ptr @.str.103, ptr @terratec_h5_drxk, ptr @.str.107, ptr @.str.108, ptr @.str.110, ptr @.str.112, ptr @.str.113, ptr @c3tech_duo_mb86a20s_config, ptr @.str.115, ptr @c3tech_duo_tda18271_config, ptr @maxmedia_ub425_tc_drxk, ptr @pctv_520e_drxk, ptr @terratec_htc_stick_drxk, ptr @em2874_lgdt3305_dev, ptr @kworld_ub435q_v2_config, ptr @em2874_lgdt3305_nogate_dev, ptr @kworld_ub435q_v3_config, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.145, ptr @pinnacle_80e_dvb_config, ptr @.str.150, ptr @.str.153, ptr @.str.156, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr @.str.163, ptr @.str.166, ptr @.str.169, ptr @em28xx_mt352_terratec_xs_init.clock_config, ptr @em28xx_mt352_terratec_xs_init.reset, ptr @em28xx_mt352_terratec_xs_init.adc_ctl_1_cfg, ptr @em28xx_mt352_terratec_xs_init.agc_cfg, ptr @em28xx_mt352_terratec_xs_init.input_freq_cfg, ptr @em28xx_mt352_terratec_xs_init.rs_err_cfg, ptr @em28xx_mt352_terratec_xs_init.capt_range_cfg, ptr @em28xx_mt352_terratec_xs_init.trl_nom_cfg, ptr @em28xx_mt352_terratec_xs_init.tps_given_cfg, ptr @em28xx_mt352_terratec_xs_init.tuner_go, ptr @kworld_a340_std_map, ptr @.str.172, ptr @hauppauge_hvr930c_init.hauppauge_hvr930c_init, ptr @hauppauge_hvr930c_init.hauppauge_hvr930c_end, ptr @hauppauge_hvr930c_init.regs, ptr @.str.173, ptr @sema_init.__key, ptr @.str.174, ptr @.str.175, ptr @terratec_h5_init.terratec_h5_init, ptr @terratec_h5_init.terratec_h5_end, ptr @terratec_h5_init.regs, ptr @.str.176, ptr @mb86a20s_tda18271_config, ptr @.str.178, ptr @.str.179, ptr @.str.180, ptr @.str.181, ptr @pctv_520e_init.regs, ptr @.str.182, ptr @terratec_htc_stick_init.terratec_htc_stick_init, ptr @terratec_htc_stick_init.terratec_htc_stick_end, ptr @terratec_htc_stick_init.regs, ptr @.str.183, ptr @terratec_htc_usb_xs_init.terratec_htc_usb_xs_init, ptr @terratec_htc_usb_xs_init.terratec_htc_usb_xs_end, ptr @terratec_htc_usb_xs_init.regs, ptr @drx_j_std_map, ptr @.str.185, ptr @.str.186, ptr @.str.187, ptr @.str.188, ptr @.str.189, ptr @.str.190, ptr @.str.191, ptr @.str.192, ptr @.str.193, ptr @.str.194, ptr @px_bcud_init.regs1, ptr @px_bcud_init.regs2, ptr @px_bcud_init.gpio, ptr @hauppauge_01595_lgdt3306a_config, ptr @.str.195, ptr @.str.196, ptr @em28xx_register_dvb.__key, ptr @.str.197, ptr @.str.198, ptr @.str.199, ptr @.str.200, ptr @.str.202, ptr @.str.205, ptr @.str.208, ptr @.str.211, ptr @.str.214, ptr @.str.217, ptr @.str.220, ptr @.str.222, ptr @.str.223, ptr @.str.224, ptr @.str.225, ptr @.str.226, ptr @.str.227, ptr @.str.228, ptr @.str.229, ptr @.str.230, ptr @.str.231, ptr @.str.232, ptr @.str.233, ptr @.str.234, ptr @.str.235, ptr @.str.237, ptr @.str.239, ptr @.str.240, ptr @.str.241, ptr @.str.242, ptr @.str.244, ptr @.str.247, ptr @.str.249, ptr @.str.250, ptr @.str.252, ptr @.str.255], section "llvm.metadata"
@0 = internal global [266 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adapter_nr to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em28xx_dvb_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em28xx_dvb_init._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sharp_isdbt to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em28xx_dvb_init._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em2880_lgdt3303_dev to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em28xx_dvb_init._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em28xx_zl10353_with_xc3028 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em28xx_dvb_init._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em28xx_zl10353_xc3028_no_i2c_gate to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em28xx_dvb_init._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em28xx_dvb_init._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @terratec_xs_mt352_cfg to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em28xx_dvb_init._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em28xx_zl10353_no_i2c_gate_dev to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em28xx_dvb_init._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em28xx_mt2060_config to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em28xx_dvb_init._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em28xx_dvb_init._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em28xx_qt1010_config to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em28xx_dvb_init._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em28xx_s5h1409_with_xc3028 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em28xx_dvb_init._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em28xx_dvb_init._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em28xx_dvb_init._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em28xx_drxd to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em28xx_dvb_init._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em28xx_tda10023_config to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em28xx_dvb_init._entry.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em28xx_dvb_init._entry.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em2870_lgdt3304_dev to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em28xx_dvb_init._entry.77 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kworld_a340_config to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em28xx_dvb_init._entry.82 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em28xx_cxd2820r_config to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em28xx_dvb_init._entry.87 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em28xx_cxd2820r_tda18271_config to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em28xx_dvb_init._entry.90 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em28xx_dvb_init._entry.92 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hauppauge_930c_drxk to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em28xx_dvb_init._entry.97 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em28xx_dvb_init._entry.102 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @terratec_h5_drxk to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em28xx_dvb_init._entry.105 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em28xx_dvb_init._entry.109 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @c3tech_duo_mb86a20s_config to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em28xx_dvb_init._entry.114 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @c3tech_duo_tda18271_config to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em28xx_dvb_init._entry.117 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @maxmedia_ub425_tc_drxk to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em28xx_dvb_init._entry.119 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em28xx_dvb_init._entry.121 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pctv_520e_drxk to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em28xx_dvb_init._entry.123 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em28xx_dvb_init._entry.125 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @terratec_htc_stick_drxk to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em28xx_dvb_init._entry.127 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em28xx_dvb_init._entry.129 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em28xx_dvb_init._entry.131 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em28xx_dvb_init._entry.133 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em2874_lgdt3305_dev to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em28xx_dvb_init._entry.135 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kworld_ub435q_v2_config to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em28xx_dvb_init._entry.137 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em2874_lgdt3305_nogate_dev to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em28xx_dvb_init._entry.139 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kworld_ub435q_v3_config to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em28xx_dvb_init._entry.144 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pinnacle_80e_dvb_config to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em28xx_dvb_init._entry.147 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em28xx_dvb_init._entry.149 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em28xx_dvb_init._entry.152 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em28xx_dvb_init._entry.155 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em28xx_attach_xc3028._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em28xx_attach_xc3028._entry.162 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em28xx_attach_xc3028._entry.165 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em28xx_attach_xc3028._entry.168 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em28xx_mt352_terratec_xs_init.clock_config to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em28xx_mt352_terratec_xs_init.reset to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em28xx_mt352_terratec_xs_init.adc_ctl_1_cfg to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em28xx_mt352_terratec_xs_init.agc_cfg to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em28xx_mt352_terratec_xs_init.input_freq_cfg to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em28xx_mt352_terratec_xs_init.rs_err_cfg to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em28xx_mt352_terratec_xs_init.capt_range_cfg to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em28xx_mt352_terratec_xs_init.trl_nom_cfg to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em28xx_mt352_terratec_xs_init.tps_given_cfg to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.754 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em28xx_mt352_terratec_xs_init.tuner_go to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kworld_a340_std_map to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em28xx_pctv_290e_set_lna._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hauppauge_hvr930c_init.hauppauge_hvr930c_init to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hauppauge_hvr930c_init.hauppauge_hvr930c_end to i32), i32 132, i32 192, i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hauppauge_hvr930c_init.regs to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sema_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.893 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @terratec_h5_init.terratec_h5_init to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @terratec_h5_init.terratec_h5_end to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @terratec_h5_init.regs to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mb86a20s_tda18271_config to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.800 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.808 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.811 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pctv_520e_init.regs to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @terratec_htc_stick_init.terratec_htc_stick_init to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @terratec_htc_stick_init.terratec_htc_stick_end to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @terratec_htc_stick_init.regs to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @terratec_htc_usb_xs_init.terratec_htc_usb_xs_init to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @terratec_htc_usb_xs_init.terratec_htc_usb_xs_end to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @terratec_htc_usb_xs_init.regs to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drx_j_std_map to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.185 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.186 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.187 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.853 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.188 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.189 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.190 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.862 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.191 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.192 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.193 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.871 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.194 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @px_bcud_init.regs1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.875 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @px_bcud_init.regs2 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @px_bcud_init.gpio to i32), i32 240, i32 288, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hauppauge_01595_lgdt3306a_config to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.195 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.196 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em28xx_register_dvb.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.893 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.197 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em28xx_register_dvb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.198 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.199 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.200 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em28xx_register_dvb._entry.201 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.202 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em28xx_register_dvb._entry.204 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.922 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.205 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.922 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em28xx_register_dvb._entry.207 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.928 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.208 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.928 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em28xx_register_dvb._entry.210 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.934 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.211 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.934 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em28xx_register_dvb._entry.213 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.940 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.214 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.940 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em28xx_register_dvb._entry.216 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.217 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em28xx_register_dvb._entry.219 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.952 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.220 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.952 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em28xx_start_streaming._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.222 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.223 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.224 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.225 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.967 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.226 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.227 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.228 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.229 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.979 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.230 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.982 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.231 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.985 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.232 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.233 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.991 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_err_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.234 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.235 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_err_status._entry.236 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.237 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em28xx_dvb_fini._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.239 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.240 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em28xx_dvb_suspend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.241 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.242 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em28xx_dvb_suspend._entry.243 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1030 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.244 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1030 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em28xx_dvb_suspend._entry.246 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1036 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.247 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1036 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em28xx_dvb_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1045 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.249 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1045 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.250 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1045 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em28xx_dvb_resume._entry.251 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1051 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.252 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1051 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em28xx_dvb_resume._entry.254 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.255 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @em28xx_dvb_unregister() #1 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @em28xx_unregister_extension(ptr noundef nonnull @dvb_ops) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @em28xx_unregister_extension(ptr noundef) local_unnamed_addr #0

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @em28xx_dvb_register() #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @em28xx_register_extension(ptr noundef nonnull @dvb_ops) #9
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @em28xx_dvb_init(ptr noundef %dev) #2 align 64 {
entry:
  %cfg = alloca %struct.xc5000_config, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %is_audio_only = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %is_audio_only to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %is_audio_only, align 4
  %1 = and i8 %bf.load, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup1554_crit_edge

entry.cleanup1554_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup1554

if.end:                                           ; preds = %entry
  %has_dvb = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 12, i32 10
  %2 = ptrtoint ptr %has_dvb to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load1 = load i16, ptr %has_dvb, align 8
  %3 = and i16 %bf.load1, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool5.not = icmp eq i16 %3, 0
  br i1 %tobool5.not, label %if.end.cleanup1554_crit_edge, label %do.end

if.end.cleanup1554_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup1554

do.end:                                           ; preds = %if.end
  %intf = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 44
  %4 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %intf, align 4
  %dev8 = getelementptr inbounds %struct.usb_interface, ptr %5, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev8, ptr noundef nonnull @.str.4) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 2264) #13
  %tobool9.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool9.not, label %do.end.cleanup1554_crit_edge, label %if.end11

do.end.cleanup1554_crit_edge:                     ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup1554

if.end11:                                         ; preds = %do.end
  %dvb12 = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 2
  %7 = ptrtoint ptr %dvb12 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call7.i.i, ptr %dvb12, align 8
  %8 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %call7.i.i, align 8
  %arrayidx14 = getelementptr [2 x ptr], ptr %call7.i.i, i32 0, i32 1
  %9 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %arrayidx14, align 4
  %dvb_xfer_bulk = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 61
  %10 = ptrtoint ptr %dvb_xfer_bulk to i32
  call void @__asan_load1_noabort(i32 %10)
  %bf.load15 = load i8, ptr %dvb_xfer_bulk, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load15)
  %tobool18.not = icmp sgt i8 %bf.load15, -1
  br i1 %tobool18.not, label %if.else, label %if.then19

if.then19:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  %call24 = tail call i32 @em28xx_alloc_urbs(ptr noundef %dev, i32 noundef 2, i32 noundef 1, i32 noundef 5, i32 noundef 512, i32 noundef 94) #9
  br label %if.end30

if.else:                                          ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  %dvb_max_pkt_size_isoc = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 59
  %11 = ptrtoint ptr %dvb_max_pkt_size_isoc to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %dvb_max_pkt_size_isoc, align 4
  %call29 = tail call i32 @em28xx_alloc_urbs(ptr noundef %dev, i32 noundef 2, i32 noundef 0, i32 noundef 5, i32 noundef %12, i32 noundef 64) #9
  br label %if.end30

if.end30:                                         ; preds = %if.else, %if.then19
  %result.0 = phi i32 [ %call24, %if.then19 ], [ %call29, %if.else ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %result.0)
  %tobool31.not = icmp eq i32 %result.0, 0
  br i1 %tobool31.not, label %if.end39, label %do.end35

do.end35:                                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #11
  %13 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %intf, align 4
  %dev37 = getelementptr inbounds %struct.usb_interface, ptr %14, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev37, ptr noundef nonnull @.str.10) #12
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #9
  %15 = ptrtoint ptr %dvb12 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %dvb12, align 8
  br label %cleanup1554

if.end39:                                         ; preds = %if.end30
  %lock = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 35
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #9
  %call40 = tail call i32 @em28xx_set_mode(ptr noundef %dev, i32 noundef 2) #9
  %model = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 5
  %16 = ptrtoint ptr %model to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %model, align 8
  %18 = zext i32 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values)
  switch i32 %17, label %do.end1506 [
    i32 77, label %sw.bb
    i32 60, label %if.end39.sw.bb65_crit_edge
    i32 16, label %if.end39.sw.bb65_crit_edge2078
    i32 17, label %if.end39.sw.bb65_crit_edge2079
    i32 20, label %if.end39.sw.bb65_crit_edge2080
    i32 48, label %sw.bb99
    i32 10, label %if.end39.sw.bb133_crit_edge
    i32 55, label %if.end39.sw.bb133_crit_edge2081
    i32 66, label %if.end39.sw.bb133_crit_edge2082
    i32 102, label %if.end39.sw.bb133_crit_edge2083
    i32 11, label %if.end39.sw.bb167_crit_edge
    i32 51, label %if.end39.sw.bb167_crit_edge2084
    i32 53, label %if.end39.sw.bb167_crit_edge2085
    i32 75, label %if.end39.sw.bb167_crit_edge2086
    i32 54, label %if.end39.sw.bb167_crit_edge2087
    i32 44, label %sw.bb235
    i32 42, label %sw.bb299
    i32 57, label %if.end39.sw.bb363_crit_edge
    i32 70, label %if.end39.sw.bb363_crit_edge2088
    i32 69, label %sw.bb397
    i32 18, label %if.end39.sw.bb464_crit_edge
    i32 56, label %if.end39.sw.bb464_crit_edge2089
    i32 73, label %sw.bb500
    i32 76, label %sw.bb567
    i32 78, label %sw.bb636
    i32 81, label %sw.bb720
    i32 79, label %sw.bb824
    i32 88, label %sw.bb932
    i32 80, label %sw.bb996
    i32 89, label %if.end39.sw.bb1001_crit_edge
    i32 84, label %if.end39.sw.bb1001_crit_edge2090
    i32 85, label %if.end39.sw.bb1074_crit_edge
    i32 86, label %if.end39.sw.bb1074_crit_edge2091
    i32 97, label %if.end39.sw.bb1143_crit_edge
    i32 82, label %if.end39.sw.bb1143_crit_edge2092
    i32 101, label %if.end39.sw.bb1143_crit_edge2093
    i32 87, label %sw.bb1210
    i32 90, label %sw.bb1277
    i32 93, label %sw.bb1344
    i32 59, label %sw.bb1393
    i32 92, label %sw.bb1464
    i32 104, label %sw.bb1469
    i32 94, label %sw.bb1474
    i32 96, label %sw.bb1479
    i32 98, label %sw.bb1484
    i32 99, label %sw.bb1489
    i32 100, label %sw.bb1494
    i32 106, label %sw.bb1499
  ]

if.end39.sw.bb1143_crit_edge2093:                 ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb1143

if.end39.sw.bb1143_crit_edge2092:                 ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb1143

if.end39.sw.bb1143_crit_edge:                     ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb1143

if.end39.sw.bb1074_crit_edge2091:                 ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb1074

if.end39.sw.bb1074_crit_edge:                     ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb1074

if.end39.sw.bb1001_crit_edge2090:                 ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb1001

if.end39.sw.bb1001_crit_edge:                     ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb1001

if.end39.sw.bb464_crit_edge2089:                  ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb464

if.end39.sw.bb464_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb464

if.end39.sw.bb363_crit_edge2088:                  ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb363

if.end39.sw.bb363_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb363

if.end39.sw.bb167_crit_edge2087:                  ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb167

if.end39.sw.bb167_crit_edge2086:                  ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb167

if.end39.sw.bb167_crit_edge2085:                  ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb167

if.end39.sw.bb167_crit_edge2084:                  ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb167

if.end39.sw.bb167_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb167

if.end39.sw.bb133_crit_edge2083:                  ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb133

if.end39.sw.bb133_crit_edge2082:                  ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb133

if.end39.sw.bb133_crit_edge2081:                  ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb133

if.end39.sw.bb133_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb133

if.end39.sw.bb65_crit_edge2080:                   ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb65

if.end39.sw.bb65_crit_edge2079:                   ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb65

if.end39.sw.bb65_crit_edge2078:                   ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb65

if.end39.sw.bb65_crit_edge:                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb65

sw.bb:                                            ; preds = %if.end39
  %call41 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.13) #9
  %tobool42.not = icmp eq ptr %call41, null
  br i1 %tobool42.not, label %cond.end, label %sw.bb.if.then46_crit_edge

sw.bb.if.then46_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then46

cond.end:                                         ; preds = %sw.bb
  %call43 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.14) #9
  %call44 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.13) #9
  %tobool45.not = icmp eq ptr %call44, null
  br i1 %tobool45.not, label %do.end54, label %cond.end.if.then46_crit_edge

cond.end.if.then46_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then46

if.then46:                                        ; preds = %cond.end.if.then46_crit_edge, %sw.bb.if.then46_crit_edge
  %cond1895 = phi ptr [ %call44, %cond.end.if.then46_crit_edge ], [ %call41, %sw.bb.if.then46_crit_edge ]
  %def_i2c_bus = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 23
  %19 = ptrtoint ptr %def_i2c_bus to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %def_i2c_bus, align 4
  %arrayidx47 = getelementptr %struct.em28xx, ptr %dev, i32 0, i32 19, i32 %20
  %call48 = tail call ptr %cond1895(ptr noundef nonnull @sharp_isdbt, ptr noundef %arrayidx47) #9
  %cmp = icmp eq ptr %call48, null
  br i1 %cmp, label %if.then49, label %if.then46.if.end1518.sink.split_crit_edge

if.then46.if.end1518.sink.split_crit_edge:        ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end1518.sink.split

if.then49:                                        ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__symbol_put(ptr noundef nonnull @.str.13) #9
  br label %if.end56.thread

do.end54:                                         ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  %call55 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16) #12
  br label %if.end56.thread

if.end56.thread:                                  ; preds = %do.end54, %if.then49
  %21 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %call7.i.i, align 8
  br label %out_free

sw.bb65:                                          ; preds = %if.end39.sw.bb65_crit_edge, %if.end39.sw.bb65_crit_edge2078, %if.end39.sw.bb65_crit_edge2079, %if.end39.sw.bb65_crit_edge2080
  %call68 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.18) #9
  %tobool69.not = icmp eq ptr %call68, null
  br i1 %tobool69.not, label %cond.end74, label %sw.bb65.if.then77_crit_edge

sw.bb65.if.then77_crit_edge:                      ; preds = %sw.bb65
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then77

cond.end74:                                       ; preds = %sw.bb65
  %call72 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.19) #9
  %call73 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.18) #9
  %tobool76.not = icmp eq ptr %call73, null
  br i1 %tobool76.not, label %do.end88, label %cond.end74.if.then77_crit_edge

cond.end74.if.then77_crit_edge:                   ; preds = %cond.end74
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then77

if.then77:                                        ; preds = %cond.end74.if.then77_crit_edge, %sw.bb65.if.then77_crit_edge
  %cond751900 = phi ptr [ %call73, %cond.end74.if.then77_crit_edge ], [ %call68, %sw.bb65.if.then77_crit_edge ]
  %def_i2c_bus79 = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 23
  %22 = ptrtoint ptr %def_i2c_bus79 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %def_i2c_bus79, align 4
  %arrayidx80 = getelementptr %struct.em28xx, ptr %dev, i32 0, i32 19, i32 %23
  %call81 = tail call ptr %cond751900(ptr noundef nonnull @em2880_lgdt3303_dev, i8 noundef zeroext 14, ptr noundef %arrayidx80) #9
  %cmp82 = icmp eq ptr %call81, null
  br i1 %cmp82, label %if.then83, label %if.then77.if.end91_crit_edge

if.then77.if.end91_crit_edge:                     ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end91

if.then83:                                        ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__symbol_put(ptr noundef nonnull @.str.18) #9
  br label %if.end91

do.end88:                                         ; preds = %cond.end74
  call void @__sanitizer_cov_trace_pc() #11
  %call90 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21) #12
  br label %if.end91

if.end91:                                         ; preds = %do.end88, %if.then83, %if.then77.if.end91_crit_edge
  %__r66.0 = phi ptr [ null, %if.then83 ], [ %call81, %if.then77.if.end91_crit_edge ], [ null, %do.end88 ]
  %24 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %__r66.0, ptr %call7.i.i, align 8
  %call95 = tail call fastcc i32 @em28xx_attach_xc3028(ptr noundef %dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call95)
  %cmp96 = icmp slt i32 %call95, 0
  br i1 %cmp96, label %if.end91.out_free_crit_edge, label %if.end91.sw.epilogthread-pre-split_crit_edge

if.end91.sw.epilogthread-pre-split_crit_edge:     ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilogthread-pre-split

if.end91.out_free_crit_edge:                      ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_free

sw.bb99:                                          ; preds = %if.end39
  %call102 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.23) #9
  %tobool103.not = icmp eq ptr %call102, null
  br i1 %tobool103.not, label %cond.end108, label %sw.bb99.if.then111_crit_edge

sw.bb99.if.then111_crit_edge:                     ; preds = %sw.bb99
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then111

cond.end108:                                      ; preds = %sw.bb99
  %call106 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.24) #9
  %call107 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.23) #9
  %tobool110.not = icmp eq ptr %call107, null
  br i1 %tobool110.not, label %do.end122, label %cond.end108.if.then111_crit_edge

cond.end108.if.then111_crit_edge:                 ; preds = %cond.end108
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then111

if.then111:                                       ; preds = %cond.end108.if.then111_crit_edge, %sw.bb99.if.then111_crit_edge
  %cond1091903 = phi ptr [ %call107, %cond.end108.if.then111_crit_edge ], [ %call102, %sw.bb99.if.then111_crit_edge ]
  %def_i2c_bus113 = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 23
  %25 = ptrtoint ptr %def_i2c_bus113 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %def_i2c_bus113, align 4
  %arrayidx114 = getelementptr %struct.em28xx, ptr %dev, i32 0, i32 19, i32 %26
  %call115 = tail call ptr %cond1091903(ptr noundef nonnull @em28xx_zl10353_with_xc3028, ptr noundef %arrayidx114) #9
  %cmp116 = icmp eq ptr %call115, null
  br i1 %cmp116, label %if.then117, label %if.then111.if.end125_crit_edge

if.then111.if.end125_crit_edge:                   ; preds = %if.then111
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end125

if.then117:                                       ; preds = %if.then111
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__symbol_put(ptr noundef nonnull @.str.23) #9
  br label %if.end125

do.end122:                                        ; preds = %cond.end108
  call void @__sanitizer_cov_trace_pc() #11
  %call124 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26) #12
  br label %if.end125

if.end125:                                        ; preds = %do.end122, %if.then117, %if.then111.if.end125_crit_edge
  %__r100.0 = phi ptr [ null, %if.then117 ], [ %call115, %if.then111.if.end125_crit_edge ], [ null, %do.end122 ]
  %27 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %__r100.0, ptr %call7.i.i, align 8
  %call129 = tail call fastcc i32 @em28xx_attach_xc3028(ptr noundef %dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call129)
  %cmp130 = icmp slt i32 %call129, 0
  br i1 %cmp130, label %if.end125.out_free_crit_edge, label %if.end125.sw.epilogthread-pre-split_crit_edge

if.end125.sw.epilogthread-pre-split_crit_edge:    ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilogthread-pre-split

if.end125.out_free_crit_edge:                     ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_free

sw.bb133:                                         ; preds = %if.end39.sw.bb133_crit_edge, %if.end39.sw.bb133_crit_edge2081, %if.end39.sw.bb133_crit_edge2082, %if.end39.sw.bb133_crit_edge2083
  %call136 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.23) #9
  %tobool137.not = icmp eq ptr %call136, null
  br i1 %tobool137.not, label %cond.end142, label %sw.bb133.if.then145_crit_edge

sw.bb133.if.then145_crit_edge:                    ; preds = %sw.bb133
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then145

cond.end142:                                      ; preds = %sw.bb133
  %call140 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.24) #9
  %call141 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.23) #9
  %tobool144.not = icmp eq ptr %call141, null
  br i1 %tobool144.not, label %do.end156, label %cond.end142.if.then145_crit_edge

cond.end142.if.then145_crit_edge:                 ; preds = %cond.end142
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then145

if.then145:                                       ; preds = %cond.end142.if.then145_crit_edge, %sw.bb133.if.then145_crit_edge
  %cond1431906 = phi ptr [ %call141, %cond.end142.if.then145_crit_edge ], [ %call136, %sw.bb133.if.then145_crit_edge ]
  %def_i2c_bus147 = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 23
  %28 = ptrtoint ptr %def_i2c_bus147 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %def_i2c_bus147, align 4
  %arrayidx148 = getelementptr %struct.em28xx, ptr %dev, i32 0, i32 19, i32 %29
  %call149 = tail call ptr %cond1431906(ptr noundef nonnull @em28xx_zl10353_xc3028_no_i2c_gate, ptr noundef %arrayidx148) #9
  %cmp150 = icmp eq ptr %call149, null
  br i1 %cmp150, label %if.then151, label %if.then145.if.end159_crit_edge

if.then145.if.end159_crit_edge:                   ; preds = %if.then145
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end159

if.then151:                                       ; preds = %if.then145
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__symbol_put(ptr noundef nonnull @.str.23) #9
  br label %if.end159

do.end156:                                        ; preds = %cond.end142
  call void @__sanitizer_cov_trace_pc() #11
  %call158 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26) #12
  br label %if.end159

if.end159:                                        ; preds = %do.end156, %if.then151, %if.then145.if.end159_crit_edge
  %__r134.0 = phi ptr [ null, %if.then151 ], [ %call149, %if.then145.if.end159_crit_edge ], [ null, %do.end156 ]
  %30 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %__r134.0, ptr %call7.i.i, align 8
  %call163 = tail call fastcc i32 @em28xx_attach_xc3028(ptr noundef %dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call163)
  %cmp164 = icmp slt i32 %call163, 0
  br i1 %cmp164, label %if.end159.out_free_crit_edge, label %if.end159.sw.epilogthread-pre-split_crit_edge

if.end159.sw.epilogthread-pre-split_crit_edge:    ; preds = %if.end159
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilogthread-pre-split

if.end159.out_free_crit_edge:                     ; preds = %if.end159
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_free

sw.bb167:                                         ; preds = %if.end39.sw.bb167_crit_edge, %if.end39.sw.bb167_crit_edge2084, %if.end39.sw.bb167_crit_edge2085, %if.end39.sw.bb167_crit_edge2086, %if.end39.sw.bb167_crit_edge2087
  %call170 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.23) #9
  %tobool171.not = icmp eq ptr %call170, null
  br i1 %tobool171.not, label %cond.end176, label %sw.bb167.if.then179_crit_edge

sw.bb167.if.then179_crit_edge:                    ; preds = %sw.bb167
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then179

cond.end176:                                      ; preds = %sw.bb167
  %call174 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.24) #9
  %call175 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.23) #9
  %tobool178.not = icmp eq ptr %call175, null
  br i1 %tobool178.not, label %do.end190, label %cond.end176.if.then179_crit_edge

cond.end176.if.then179_crit_edge:                 ; preds = %cond.end176
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then179

if.then179:                                       ; preds = %cond.end176.if.then179_crit_edge, %sw.bb167.if.then179_crit_edge
  %cond1771909 = phi ptr [ %call175, %cond.end176.if.then179_crit_edge ], [ %call170, %sw.bb167.if.then179_crit_edge ]
  %def_i2c_bus181 = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 23
  %31 = ptrtoint ptr %def_i2c_bus181 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %def_i2c_bus181, align 4
  %arrayidx182 = getelementptr %struct.em28xx, ptr %dev, i32 0, i32 19, i32 %32
  %call183 = tail call ptr %cond1771909(ptr noundef nonnull @em28xx_zl10353_xc3028_no_i2c_gate, ptr noundef %arrayidx182) #9
  %cmp184 = icmp eq ptr %call183, null
  br i1 %cmp184, label %if.then185, label %if.then179.if.end230_crit_edge

if.then179.if.end230_crit_edge:                   ; preds = %if.then179
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end230

if.then185:                                       ; preds = %if.then179
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__symbol_put(ptr noundef nonnull @.str.23) #9
  br label %if.then200

do.end190:                                        ; preds = %cond.end176
  call void @__sanitizer_cov_trace_pc() #11
  %call192 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26) #12
  br label %if.then200

if.then200:                                       ; preds = %do.end190, %if.then185
  %33 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr null, ptr %call7.i.i, align 8
  %call203 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.32) #9
  %tobool204.not = icmp eq ptr %call203, null
  br i1 %tobool204.not, label %cond.end209, label %if.then200.if.then212_crit_edge

if.then200.if.then212_crit_edge:                  ; preds = %if.then200
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then212

cond.end209:                                      ; preds = %if.then200
  %call207 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.33) #9
  %call208 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.32) #9
  %tobool211.not = icmp eq ptr %call208, null
  br i1 %tobool211.not, label %do.end223, label %cond.end209.if.then212_crit_edge

cond.end209.if.then212_crit_edge:                 ; preds = %cond.end209
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then212

if.then212:                                       ; preds = %cond.end209.if.then212_crit_edge, %if.then200.if.then212_crit_edge
  %cond2101914 = phi ptr [ %call208, %cond.end209.if.then212_crit_edge ], [ %call203, %if.then200.if.then212_crit_edge ]
  %def_i2c_bus214 = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 23
  %34 = ptrtoint ptr %def_i2c_bus214 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %def_i2c_bus214, align 4
  %arrayidx215 = getelementptr %struct.em28xx, ptr %dev, i32 0, i32 19, i32 %35
  %call216 = tail call ptr %cond2101914(ptr noundef nonnull @terratec_xs_mt352_cfg, ptr noundef %arrayidx215) #9
  %cmp217 = icmp eq ptr %call216, null
  br i1 %cmp217, label %if.then218, label %if.then212.if.end230_crit_edge

if.then212.if.end230_crit_edge:                   ; preds = %if.then212
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end230

if.then218:                                       ; preds = %if.then212
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__symbol_put(ptr noundef nonnull @.str.32) #9
  br label %if.end230

do.end223:                                        ; preds = %cond.end209
  call void @__sanitizer_cov_trace_pc() #11
  %call225 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35) #12
  br label %if.end230

if.end230:                                        ; preds = %do.end223, %if.then218, %if.then212.if.end230_crit_edge, %if.then179.if.end230_crit_edge
  %storemerge = phi ptr [ %call183, %if.then179.if.end230_crit_edge ], [ null, %if.then218 ], [ %call216, %if.then212.if.end230_crit_edge ], [ null, %do.end223 ]
  %36 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %storemerge, ptr %call7.i.i, align 8
  %call231 = tail call fastcc i32 @em28xx_attach_xc3028(ptr noundef %dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call231)
  %cmp232 = icmp slt i32 %call231, 0
  br i1 %cmp232, label %if.end230.out_free_crit_edge, label %if.end230.sw.epilogthread-pre-split_crit_edge

if.end230.sw.epilogthread-pre-split_crit_edge:    ; preds = %if.end230
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilogthread-pre-split

if.end230.out_free_crit_edge:                     ; preds = %if.end230
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_free

sw.bb235:                                         ; preds = %if.end39
  %call238 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.23) #9
  %tobool239.not = icmp eq ptr %call238, null
  br i1 %tobool239.not, label %cond.end244, label %sw.bb235.if.then247_crit_edge

sw.bb235.if.then247_crit_edge:                    ; preds = %sw.bb235
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then247

cond.end244:                                      ; preds = %sw.bb235
  %call242 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.24) #9
  %call243 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.23) #9
  %tobool246.not = icmp eq ptr %call243, null
  br i1 %tobool246.not, label %do.end258, label %cond.end244.if.then247_crit_edge

cond.end244.if.then247_crit_edge:                 ; preds = %cond.end244
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then247

if.then247:                                       ; preds = %cond.end244.if.then247_crit_edge, %sw.bb235.if.then247_crit_edge
  %cond2451917 = phi ptr [ %call243, %cond.end244.if.then247_crit_edge ], [ %call238, %sw.bb235.if.then247_crit_edge ]
  %def_i2c_bus249 = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 23
  %37 = ptrtoint ptr %def_i2c_bus249 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %def_i2c_bus249, align 4
  %arrayidx250 = getelementptr %struct.em28xx, ptr %dev, i32 0, i32 19, i32 %38
  %call251 = tail call ptr %cond2451917(ptr noundef nonnull @em28xx_zl10353_no_i2c_gate_dev, ptr noundef %arrayidx250) #9
  %cmp252 = icmp eq ptr %call251, null
  br i1 %cmp252, label %if.then253, label %if.then268

if.then253:                                       ; preds = %if.then247
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__symbol_put(ptr noundef nonnull @.str.23) #9
  br label %do.end1515.sink.split

do.end258:                                        ; preds = %cond.end244
  call void @__sanitizer_cov_trace_pc() #11
  %call260 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26) #12
  br label %do.end1515.sink.split

if.then268:                                       ; preds = %if.then247
  %39 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call251, ptr %call7.i.i, align 8
  %call271 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.39) #9
  %tobool272.not = icmp eq ptr %call271, null
  br i1 %tobool272.not, label %cond.end277, label %if.then268.if.then280_crit_edge

if.then268.if.then280_crit_edge:                  ; preds = %if.then268
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then280

cond.end277:                                      ; preds = %if.then268
  %call275 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.40) #9
  %call276 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.39) #9
  %tobool279.not = icmp eq ptr %call276, null
  br i1 %tobool279.not, label %do.end293, label %cond.end277.if.then280_crit_edge

cond.end277.if.then280_crit_edge:                 ; preds = %cond.end277
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then280

if.then280:                                       ; preds = %cond.end277.if.then280_crit_edge, %if.then268.if.then280_crit_edge
  %cond2781922 = phi ptr [ %call276, %cond.end277.if.then280_crit_edge ], [ %call271, %if.then268.if.then280_crit_edge ]
  %40 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %call7.i.i, align 8
  %42 = ptrtoint ptr %def_i2c_bus249 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %def_i2c_bus249, align 4
  %arrayidx285 = getelementptr %struct.em28xx, ptr %dev, i32 0, i32 19, i32 %43
  %call286 = tail call ptr %cond2781922(ptr noundef %41, ptr noundef %arrayidx285, ptr noundef nonnull @em28xx_mt2060_config, i16 noundef zeroext 1220) #9
  %cmp287 = icmp eq ptr %call286, null
  br i1 %cmp287, label %if.then288, label %if.then280.sw.epilogthread-pre-split_crit_edge

if.then280.sw.epilogthread-pre-split_crit_edge:   ; preds = %if.then280
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilogthread-pre-split

if.then288:                                       ; preds = %if.then280
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__symbol_put(ptr noundef nonnull @.str.39) #9
  br label %sw.epilogthread-pre-split

do.end293:                                        ; preds = %cond.end277
  call void @__sanitizer_cov_trace_pc() #11
  %call295 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42) #12
  br label %sw.epilogthread-pre-split

sw.bb299:                                         ; preds = %if.end39
  %call302 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.23) #9
  %tobool303.not = icmp eq ptr %call302, null
  br i1 %tobool303.not, label %cond.end308, label %sw.bb299.if.then311_crit_edge

sw.bb299.if.then311_crit_edge:                    ; preds = %sw.bb299
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then311

cond.end308:                                      ; preds = %sw.bb299
  %call306 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.24) #9
  %call307 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.23) #9
  %tobool310.not = icmp eq ptr %call307, null
  br i1 %tobool310.not, label %do.end322, label %cond.end308.if.then311_crit_edge

cond.end308.if.then311_crit_edge:                 ; preds = %cond.end308
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then311

if.then311:                                       ; preds = %cond.end308.if.then311_crit_edge, %sw.bb299.if.then311_crit_edge
  %cond3091925 = phi ptr [ %call307, %cond.end308.if.then311_crit_edge ], [ %call302, %sw.bb299.if.then311_crit_edge ]
  %def_i2c_bus313 = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 23
  %44 = ptrtoint ptr %def_i2c_bus313 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %def_i2c_bus313, align 4
  %arrayidx314 = getelementptr %struct.em28xx, ptr %dev, i32 0, i32 19, i32 %45
  %call315 = tail call ptr %cond3091925(ptr noundef nonnull @em28xx_zl10353_no_i2c_gate_dev, ptr noundef %arrayidx314) #9
  %cmp316 = icmp eq ptr %call315, null
  br i1 %cmp316, label %if.then317, label %if.then332

if.then317:                                       ; preds = %if.then311
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__symbol_put(ptr noundef nonnull @.str.23) #9
  br label %do.end1515.sink.split

do.end322:                                        ; preds = %cond.end308
  call void @__sanitizer_cov_trace_pc() #11
  %call324 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26) #12
  br label %do.end1515.sink.split

if.then332:                                       ; preds = %if.then311
  %46 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %call315, ptr %call7.i.i, align 8
  %call335 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.46) #9
  %tobool336.not = icmp eq ptr %call335, null
  br i1 %tobool336.not, label %cond.end341, label %if.then332.if.then344_crit_edge

if.then332.if.then344_crit_edge:                  ; preds = %if.then332
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then344

cond.end341:                                      ; preds = %if.then332
  %call339 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.47) #9
  %call340 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.46) #9
  %tobool343.not = icmp eq ptr %call340, null
  br i1 %tobool343.not, label %do.end357, label %cond.end341.if.then344_crit_edge

cond.end341.if.then344_crit_edge:                 ; preds = %cond.end341
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then344

if.then344:                                       ; preds = %cond.end341.if.then344_crit_edge, %if.then332.if.then344_crit_edge
  %cond3421930 = phi ptr [ %call340, %cond.end341.if.then344_crit_edge ], [ %call335, %if.then332.if.then344_crit_edge ]
  %47 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %call7.i.i, align 8
  %49 = ptrtoint ptr %def_i2c_bus313 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %def_i2c_bus313, align 4
  %arrayidx349 = getelementptr %struct.em28xx, ptr %dev, i32 0, i32 19, i32 %50
  %call350 = tail call ptr %cond3421930(ptr noundef %48, ptr noundef %arrayidx349, ptr noundef nonnull @em28xx_qt1010_config) #9
  %cmp351 = icmp eq ptr %call350, null
  br i1 %cmp351, label %if.then352, label %if.then344.sw.epilogthread-pre-split_crit_edge

if.then344.sw.epilogthread-pre-split_crit_edge:   ; preds = %if.then344
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilogthread-pre-split

if.then352:                                       ; preds = %if.then344
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__symbol_put(ptr noundef nonnull @.str.46) #9
  br label %sw.epilogthread-pre-split

do.end357:                                        ; preds = %cond.end341
  call void @__sanitizer_cov_trace_pc() #11
  %call359 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49) #12
  br label %sw.epilogthread-pre-split

sw.bb363:                                         ; preds = %if.end39.sw.bb363_crit_edge, %if.end39.sw.bb363_crit_edge2088
  %call366 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.51) #9
  %tobool367.not = icmp eq ptr %call366, null
  br i1 %tobool367.not, label %cond.end372, label %sw.bb363.if.then375_crit_edge

sw.bb363.if.then375_crit_edge:                    ; preds = %sw.bb363
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then375

cond.end372:                                      ; preds = %sw.bb363
  %call370 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.52) #9
  %call371 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.51) #9
  %tobool374.not = icmp eq ptr %call371, null
  br i1 %tobool374.not, label %do.end386, label %cond.end372.if.then375_crit_edge

cond.end372.if.then375_crit_edge:                 ; preds = %cond.end372
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then375

if.then375:                                       ; preds = %cond.end372.if.then375_crit_edge, %sw.bb363.if.then375_crit_edge
  %cond3731933 = phi ptr [ %call371, %cond.end372.if.then375_crit_edge ], [ %call366, %sw.bb363.if.then375_crit_edge ]
  %def_i2c_bus377 = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 23
  %51 = ptrtoint ptr %def_i2c_bus377 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %def_i2c_bus377, align 4
  %arrayidx378 = getelementptr %struct.em28xx, ptr %dev, i32 0, i32 19, i32 %52
  %call379 = tail call ptr %cond3731933(ptr noundef nonnull @em28xx_s5h1409_with_xc3028, ptr noundef %arrayidx378) #9
  %cmp380 = icmp eq ptr %call379, null
  br i1 %cmp380, label %if.then381, label %if.then375.if.end389_crit_edge

if.then375.if.end389_crit_edge:                   ; preds = %if.then375
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end389

if.then381:                                       ; preds = %if.then375
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__symbol_put(ptr noundef nonnull @.str.51) #9
  br label %if.end389

do.end386:                                        ; preds = %cond.end372
  call void @__sanitizer_cov_trace_pc() #11
  %call388 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54) #12
  br label %if.end389

if.end389:                                        ; preds = %do.end386, %if.then381, %if.then375.if.end389_crit_edge
  %__r364.0 = phi ptr [ null, %if.then381 ], [ %call379, %if.then375.if.end389_crit_edge ], [ null, %do.end386 ]
  %53 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %__r364.0, ptr %call7.i.i, align 8
  %call393 = tail call fastcc i32 @em28xx_attach_xc3028(ptr noundef %dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call393)
  %cmp394 = icmp slt i32 %call393, 0
  br i1 %cmp394, label %if.end389.out_free_crit_edge, label %if.end389.sw.epilogthread-pre-split_crit_edge

if.end389.sw.epilogthread-pre-split_crit_edge:    ; preds = %if.end389
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilogthread-pre-split

if.end389.out_free_crit_edge:                     ; preds = %if.end389
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_free

sw.bb397:                                         ; preds = %if.end39
  %call400 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.18) #9
  %tobool401.not = icmp eq ptr %call400, null
  br i1 %tobool401.not, label %cond.end406, label %sw.bb397.if.then409_crit_edge

sw.bb397.if.then409_crit_edge:                    ; preds = %sw.bb397
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then409

cond.end406:                                      ; preds = %sw.bb397
  %call404 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.19) #9
  %call405 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.18) #9
  %tobool408.not = icmp eq ptr %call405, null
  br i1 %tobool408.not, label %do.end420, label %cond.end406.if.then409_crit_edge

cond.end406.if.then409_crit_edge:                 ; preds = %cond.end406
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then409

if.then409:                                       ; preds = %cond.end406.if.then409_crit_edge, %sw.bb397.if.then409_crit_edge
  %cond4071936 = phi ptr [ %call405, %cond.end406.if.then409_crit_edge ], [ %call400, %sw.bb397.if.then409_crit_edge ]
  %def_i2c_bus411 = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 23
  %54 = ptrtoint ptr %def_i2c_bus411 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %def_i2c_bus411, align 4
  %arrayidx412 = getelementptr %struct.em28xx, ptr %dev, i32 0, i32 19, i32 %55
  %call413 = tail call ptr %cond4071936(ptr noundef nonnull @em2880_lgdt3303_dev, i8 noundef zeroext 14, ptr noundef %arrayidx412) #9
  %cmp414 = icmp eq ptr %call413, null
  br i1 %cmp414, label %if.then415, label %if.then430

if.then415:                                       ; preds = %if.then409
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__symbol_put(ptr noundef nonnull @.str.18) #9
  br label %do.end1515.sink.split

do.end420:                                        ; preds = %cond.end406
  call void @__sanitizer_cov_trace_pc() #11
  %call422 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21) #12
  br label %do.end1515.sink.split

if.then430:                                       ; preds = %if.then409
  %56 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %call413, ptr %call7.i.i, align 8
  %call433 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.58) #9
  %tobool434.not = icmp eq ptr %call433, null
  br i1 %tobool434.not, label %cond.end439, label %if.then430.if.then442_crit_edge

if.then430.if.then442_crit_edge:                  ; preds = %if.then430
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then442

cond.end439:                                      ; preds = %if.then430
  %call437 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.59) #9
  %call438 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.58) #9
  %tobool441.not = icmp eq ptr %call438, null
  br i1 %tobool441.not, label %do.end455, label %cond.end439.if.then442_crit_edge

cond.end439.if.then442_crit_edge:                 ; preds = %cond.end439
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then442

if.then442:                                       ; preds = %cond.end439.if.then442_crit_edge, %if.then430.if.then442_crit_edge
  %cond4401941 = phi ptr [ %call438, %cond.end439.if.then442_crit_edge ], [ %call433, %if.then430.if.then442_crit_edge ]
  %57 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %call7.i.i, align 8
  %59 = ptrtoint ptr %def_i2c_bus411 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %def_i2c_bus411, align 4
  %arrayidx447 = getelementptr %struct.em28xx, ptr %dev, i32 0, i32 19, i32 %60
  %call448 = tail call ptr %cond4401941(ptr noundef %58, ptr noundef %arrayidx447, i8 noundef zeroext 97, i32 noundef 60) #9
  %cmp449 = icmp eq ptr %call448, null
  br i1 %cmp449, label %if.then450, label %if.then442.sw.epilogthread-pre-split_crit_edge

if.then442.sw.epilogthread-pre-split_crit_edge:   ; preds = %if.then442
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilogthread-pre-split

if.then450:                                       ; preds = %if.then442
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__symbol_put(ptr noundef nonnull @.str.58) #9
  br label %out_free

do.end455:                                        ; preds = %cond.end439
  call void @__sanitizer_cov_trace_pc() #11
  %call457 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.61) #12
  br label %out_free

sw.bb464:                                         ; preds = %if.end39.sw.bb464_crit_edge, %if.end39.sw.bb464_crit_edge2089
  %call467 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.63) #9
  %tobool468.not = icmp eq ptr %call467, null
  br i1 %tobool468.not, label %cond.end473, label %sw.bb464.if.then476_crit_edge

sw.bb464.if.then476_crit_edge:                    ; preds = %sw.bb464
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then476

cond.end473:                                      ; preds = %sw.bb464
  %call471 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.64) #9
  %call472 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.63) #9
  %tobool475.not = icmp eq ptr %call472, null
  br i1 %tobool475.not, label %do.end489, label %cond.end473.if.then476_crit_edge

cond.end473.if.then476_crit_edge:                 ; preds = %cond.end473
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then476

if.then476:                                       ; preds = %cond.end473.if.then476_crit_edge, %sw.bb464.if.then476_crit_edge
  %cond4741946 = phi ptr [ %call472, %cond.end473.if.then476_crit_edge ], [ %call467, %sw.bb464.if.then476_crit_edge ]
  %def_i2c_bus478 = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 23
  %61 = ptrtoint ptr %def_i2c_bus478 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %def_i2c_bus478, align 4
  %arrayidx479 = getelementptr %struct.em28xx, ptr %dev, i32 0, i32 19, i32 %62
  %63 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %intf, align 4
  %dev481 = getelementptr inbounds %struct.usb_interface, ptr %64, i32 0, i32 7
  %call482 = tail call ptr %cond4741946(ptr noundef nonnull @em28xx_drxd, ptr noundef null, ptr noundef %arrayidx479, ptr noundef %dev481) #9
  %cmp483 = icmp eq ptr %call482, null
  br i1 %cmp483, label %if.then484, label %if.then476.if.end492_crit_edge

if.then476.if.end492_crit_edge:                   ; preds = %if.then476
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end492

if.then484:                                       ; preds = %if.then476
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__symbol_put(ptr noundef nonnull @.str.63) #9
  br label %if.end492

do.end489:                                        ; preds = %cond.end473
  call void @__sanitizer_cov_trace_pc() #11
  %call491 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.66) #12
  br label %if.end492

if.end492:                                        ; preds = %do.end489, %if.then484, %if.then476.if.end492_crit_edge
  %__r465.0 = phi ptr [ null, %if.then484 ], [ %call482, %if.then476.if.end492_crit_edge ], [ null, %do.end489 ]
  %65 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %__r465.0, ptr %call7.i.i, align 8
  %call496 = tail call fastcc i32 @em28xx_attach_xc3028(ptr noundef %dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call496)
  %cmp497 = icmp slt i32 %call496, 0
  br i1 %cmp497, label %if.end492.out_free_crit_edge, label %if.end492.sw.epilogthread-pre-split_crit_edge

if.end492.sw.epilogthread-pre-split_crit_edge:    ; preds = %if.end492
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilogthread-pre-split

if.end492.out_free_crit_edge:                     ; preds = %if.end492
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_free

sw.bb500:                                         ; preds = %if.end39
  %call503 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.68) #9
  %tobool504.not = icmp eq ptr %call503, null
  br i1 %tobool504.not, label %cond.end509, label %sw.bb500.if.then512_crit_edge

sw.bb500.if.then512_crit_edge:                    ; preds = %sw.bb500
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then512

cond.end509:                                      ; preds = %sw.bb500
  %call507 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.69) #9
  %call508 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.68) #9
  %tobool511.not = icmp eq ptr %call508, null
  br i1 %tobool511.not, label %do.end523, label %cond.end509.if.then512_crit_edge

cond.end509.if.then512_crit_edge:                 ; preds = %cond.end509
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then512

if.then512:                                       ; preds = %cond.end509.if.then512_crit_edge, %sw.bb500.if.then512_crit_edge
  %cond5101949 = phi ptr [ %call508, %cond.end509.if.then512_crit_edge ], [ %call503, %sw.bb500.if.then512_crit_edge ]
  %def_i2c_bus514 = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 23
  %66 = ptrtoint ptr %def_i2c_bus514 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %def_i2c_bus514, align 4
  %arrayidx515 = getelementptr %struct.em28xx, ptr %dev, i32 0, i32 19, i32 %67
  %call516 = tail call ptr %cond5101949(ptr noundef nonnull @em28xx_tda10023_config, ptr noundef %arrayidx515, i8 noundef zeroext 72) #9
  %cmp517 = icmp eq ptr %call516, null
  br i1 %cmp517, label %if.then518, label %if.then533

if.then518:                                       ; preds = %if.then512
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__symbol_put(ptr noundef nonnull @.str.68) #9
  br label %do.end1515.sink.split

do.end523:                                        ; preds = %cond.end509
  call void @__sanitizer_cov_trace_pc() #11
  %call525 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.71) #12
  br label %do.end1515.sink.split

if.then533:                                       ; preds = %if.then512
  %68 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %call516, ptr %call7.i.i, align 8
  %call536 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.58) #9
  %tobool537.not = icmp eq ptr %call536, null
  br i1 %tobool537.not, label %cond.end542, label %if.then533.if.then545_crit_edge

if.then533.if.then545_crit_edge:                  ; preds = %if.then533
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then545

cond.end542:                                      ; preds = %if.then533
  %call540 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.59) #9
  %call541 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.58) #9
  %tobool544.not = icmp eq ptr %call541, null
  br i1 %tobool544.not, label %do.end558, label %cond.end542.if.then545_crit_edge

cond.end542.if.then545_crit_edge:                 ; preds = %cond.end542
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then545

if.then545:                                       ; preds = %cond.end542.if.then545_crit_edge, %if.then533.if.then545_crit_edge
  %cond5431954 = phi ptr [ %call541, %cond.end542.if.then545_crit_edge ], [ %call536, %if.then533.if.then545_crit_edge ]
  %69 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %call7.i.i, align 8
  %71 = ptrtoint ptr %def_i2c_bus514 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %def_i2c_bus514, align 4
  %arrayidx550 = getelementptr %struct.em28xx, ptr %dev, i32 0, i32 19, i32 %72
  %call551 = tail call ptr %cond5431954(ptr noundef %70, ptr noundef %arrayidx550, i8 noundef zeroext 96, i32 noundef 82) #9
  %cmp552 = icmp eq ptr %call551, null
  br i1 %cmp552, label %if.then553, label %if.then545.sw.epilogthread-pre-split_crit_edge

if.then545.sw.epilogthread-pre-split_crit_edge:   ; preds = %if.then545
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilogthread-pre-split

if.then553:                                       ; preds = %if.then545
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__symbol_put(ptr noundef nonnull @.str.58) #9
  br label %out_free

do.end558:                                        ; preds = %cond.end542
  call void @__sanitizer_cov_trace_pc() #11
  %call560 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.61) #12
  br label %out_free

sw.bb567:                                         ; preds = %if.end39
  %call570 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.75) #9
  %tobool571.not = icmp eq ptr %call570, null
  br i1 %tobool571.not, label %cond.end576, label %sw.bb567.if.then579_crit_edge

sw.bb567.if.then579_crit_edge:                    ; preds = %sw.bb567
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then579

cond.end576:                                      ; preds = %sw.bb567
  %call574 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.76) #9
  %call575 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.75) #9
  %tobool578.not = icmp eq ptr %call575, null
  br i1 %tobool578.not, label %do.end590, label %cond.end576.if.then579_crit_edge

cond.end576.if.then579_crit_edge:                 ; preds = %cond.end576
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then579

if.then579:                                       ; preds = %cond.end576.if.then579_crit_edge, %sw.bb567.if.then579_crit_edge
  %cond5771959 = phi ptr [ %call575, %cond.end576.if.then579_crit_edge ], [ %call570, %sw.bb567.if.then579_crit_edge ]
  %def_i2c_bus581 = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 23
  %73 = ptrtoint ptr %def_i2c_bus581 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %def_i2c_bus581, align 4
  %arrayidx582 = getelementptr %struct.em28xx, ptr %dev, i32 0, i32 19, i32 %74
  %call583 = tail call ptr %cond5771959(ptr noundef nonnull @em2870_lgdt3304_dev, ptr noundef %arrayidx582) #9
  %cmp584 = icmp eq ptr %call583, null
  br i1 %cmp584, label %if.then585, label %if.end601

if.then585:                                       ; preds = %if.then579
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__symbol_put(ptr noundef nonnull @.str.75) #9
  br label %if.end593.thread

do.end590:                                        ; preds = %cond.end576
  call void @__sanitizer_cov_trace_pc() #11
  %call592 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.78) #12
  br label %if.end593.thread

if.end593.thread:                                 ; preds = %do.end590, %if.then585
  %75 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr null, ptr %call7.i.i, align 8
  br label %out_free

if.end601:                                        ; preds = %if.then579
  %76 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %call583, ptr %call7.i.i, align 8
  %call604 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.80) #9
  %tobool605.not = icmp eq ptr %call604, null
  br i1 %tobool605.not, label %cond.end610, label %if.end601.if.then613_crit_edge

if.end601.if.then613_crit_edge:                   ; preds = %if.end601
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then613

cond.end610:                                      ; preds = %if.end601
  %call608 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.81) #9
  %call609 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.80) #9
  %tobool612.not = icmp eq ptr %call609, null
  br i1 %tobool612.not, label %do.end626, label %cond.end610.if.then613_crit_edge

cond.end610.if.then613_crit_edge:                 ; preds = %cond.end610
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then613

if.then613:                                       ; preds = %cond.end610.if.then613_crit_edge, %if.end601.if.then613_crit_edge
  %cond6111964 = phi ptr [ %call609, %cond.end610.if.then613_crit_edge ], [ %call604, %if.end601.if.then613_crit_edge ]
  %77 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %call7.i.i, align 8
  %79 = ptrtoint ptr %def_i2c_bus581 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %def_i2c_bus581, align 4
  %arrayidx618 = getelementptr %struct.em28xx, ptr %dev, i32 0, i32 19, i32 %80
  %call619 = tail call ptr %cond6111964(ptr noundef %78, i8 noundef zeroext 96, ptr noundef %arrayidx618, ptr noundef nonnull @kworld_a340_config) #9
  %cmp620 = icmp eq ptr %call619, null
  br i1 %cmp620, label %if.then621, label %if.then613.sw.epilogthread-pre-split_crit_edge

if.then613.sw.epilogthread-pre-split_crit_edge:   ; preds = %if.then613
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilogthread-pre-split

if.then621:                                       ; preds = %if.then613
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__symbol_put(ptr noundef nonnull @.str.80) #9
  br label %if.then632

do.end626:                                        ; preds = %cond.end610
  call void @__sanitizer_cov_trace_pc() #11
  %call628 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.83) #12
  br label %if.then632

if.then632:                                       ; preds = %do.end626, %if.then621
  %81 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %call7.i.i, align 8
  tail call void @dvb_frontend_detach(ptr noundef %82) #9
  br label %out_free

sw.bb636:                                         ; preds = %if.end39
  %lna_gpio = getelementptr inbounds %struct.em28xx_dvb, ptr %call7.i.i, i32 0, i32 12
  %83 = ptrtoint ptr %lna_gpio to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 1, ptr %lna_gpio, align 8
  %call639 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.85) #9
  %tobool640.not = icmp eq ptr %call639, null
  br i1 %tobool640.not, label %cond.end645, label %sw.bb636.if.then648_crit_edge

sw.bb636.if.then648_crit_edge:                    ; preds = %sw.bb636
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then648

cond.end645:                                      ; preds = %sw.bb636
  %call643 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.86) #9
  %call644 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.85) #9
  %tobool647.not = icmp eq ptr %call644, null
  br i1 %tobool647.not, label %do.end660, label %cond.end645.if.then648_crit_edge

cond.end645.if.then648_crit_edge:                 ; preds = %cond.end645
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then648

if.then648:                                       ; preds = %cond.end645.if.then648_crit_edge, %sw.bb636.if.then648_crit_edge
  %cond6461969 = phi ptr [ %call644, %cond.end645.if.then648_crit_edge ], [ %call639, %sw.bb636.if.then648_crit_edge ]
  %def_i2c_bus650 = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 23
  %84 = ptrtoint ptr %def_i2c_bus650 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %def_i2c_bus650, align 4
  %arrayidx651 = getelementptr %struct.em28xx, ptr %dev, i32 0, i32 19, i32 %85
  %call653 = tail call ptr %cond6461969(ptr noundef nonnull @em28xx_cxd2820r_config, ptr noundef %arrayidx651, ptr noundef %lna_gpio) #9
  %cmp654 = icmp eq ptr %call653, null
  br i1 %cmp654, label %if.then655, label %if.then670

if.then655:                                       ; preds = %if.then648
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__symbol_put(ptr noundef nonnull @.str.85) #9
  br label %do.end1515.sink.split

do.end660:                                        ; preds = %cond.end645
  call void @__sanitizer_cov_trace_pc() #11
  %call662 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.88) #12
  br label %do.end1515.sink.split

if.then670:                                       ; preds = %if.then648
  %86 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %call653, ptr %call7.i.i, align 8
  %call673 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.80) #9
  %tobool674.not = icmp eq ptr %call673, null
  br i1 %tobool674.not, label %cond.end679, label %if.then670.if.then682_crit_edge

if.then670.if.then682_crit_edge:                  ; preds = %if.then670
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then682

cond.end679:                                      ; preds = %if.then670
  %call677 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.81) #9
  %call678 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.80) #9
  %tobool681.not = icmp eq ptr %call678, null
  br i1 %tobool681.not, label %do.end695, label %cond.end679.if.then682_crit_edge

cond.end679.if.then682_crit_edge:                 ; preds = %cond.end679
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then682

if.then682:                                       ; preds = %cond.end679.if.then682_crit_edge, %if.then670.if.then682_crit_edge
  %cond6801974 = phi ptr [ %call678, %cond.end679.if.then682_crit_edge ], [ %call673, %if.then670.if.then682_crit_edge ]
  %87 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %call7.i.i, align 8
  %89 = ptrtoint ptr %def_i2c_bus650 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %def_i2c_bus650, align 4
  %arrayidx687 = getelementptr %struct.em28xx, ptr %dev, i32 0, i32 19, i32 %90
  %call688 = tail call ptr %cond6801974(ptr noundef %88, i8 noundef zeroext 96, ptr noundef %arrayidx687, ptr noundef nonnull @em28xx_cxd2820r_tda18271_config) #9
  %cmp689 = icmp eq ptr %call688, null
  br i1 %cmp689, label %if.then690, label %if.end704

if.then690:                                       ; preds = %if.then682
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__symbol_put(ptr noundef nonnull @.str.80) #9
  br label %if.then701

do.end695:                                        ; preds = %cond.end679
  call void @__sanitizer_cov_trace_pc() #11
  %call697 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.83) #12
  br label %if.then701

if.then701:                                       ; preds = %do.end695, %if.then690
  %91 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %call7.i.i, align 8
  tail call void @dvb_frontend_detach(ptr noundef %92) #9
  br label %out_free

if.end704:                                        ; preds = %if.then682
  %93 = ptrtoint ptr %lna_gpio to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %lna_gpio, align 8
  %call706 = tail call i32 @gpio_request_one(i32 noundef %94, i32 noundef 0, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call706)
  %tobool707.not = icmp eq i32 %call706, 0
  br i1 %tobool707.not, label %if.else714, label %do.end711

do.end711:                                        ; preds = %if.end704
  call void @__sanitizer_cov_trace_pc() #11
  %95 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %intf, align 4
  %dev713 = getelementptr inbounds %struct.usb_interface, ptr %96, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev713, ptr noundef nonnull @.str.93, i32 noundef %call706) #12
  br label %if.end716

if.else714:                                       ; preds = %if.end704
  call void @__sanitizer_cov_trace_pc() #11
  %97 = ptrtoint ptr %lna_gpio to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %lna_gpio, align 8
  tail call void @gpio_free(i32 noundef %98) #9
  br label %if.end716

if.end716:                                        ; preds = %if.else714, %do.end711
  %99 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %call7.i.i, align 8
  %set_lna = getelementptr inbounds %struct.dvb_frontend, ptr %100, i32 0, i32 1, i32 30
  %101 = ptrtoint ptr %set_lna to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr @em28xx_pctv_290e_set_lna, ptr %set_lna, align 4
  br label %sw.epilogthread-pre-split

sw.bb720:                                         ; preds = %if.end39
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %cfg) #9
  %102 = call ptr @memset(ptr %cfg, i32 0, i32 20)
  tail call fastcc void @hauppauge_hvr930c_init(ptr noundef %dev)
  %call723 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.95) #9
  %tobool724.not = icmp eq ptr %call723, null
  br i1 %tobool724.not, label %cond.end729, label %sw.bb720.if.then732_crit_edge

sw.bb720.if.then732_crit_edge:                    ; preds = %sw.bb720
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then732

cond.end729:                                      ; preds = %sw.bb720
  %call727 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.96) #9
  %call728 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.95) #9
  %tobool731.not = icmp eq ptr %call728, null
  br i1 %tobool731.not, label %do.end743, label %cond.end729.if.then732_crit_edge

cond.end729.if.then732_crit_edge:                 ; preds = %cond.end729
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then732

if.then732:                                       ; preds = %cond.end729.if.then732_crit_edge, %sw.bb720.if.then732_crit_edge
  %cond7301979 = phi ptr [ %call728, %cond.end729.if.then732_crit_edge ], [ %call723, %sw.bb720.if.then732_crit_edge ]
  %def_i2c_bus734 = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 23
  %103 = ptrtoint ptr %def_i2c_bus734 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %def_i2c_bus734, align 4
  %arrayidx735 = getelementptr %struct.em28xx, ptr %dev, i32 0, i32 19, i32 %104
  %call736 = tail call ptr %cond7301979(ptr noundef nonnull @hauppauge_930c_drxk, ptr noundef %arrayidx735) #9
  %cmp737 = icmp eq ptr %call736, null
  br i1 %cmp737, label %if.then738, label %if.end754

if.then738:                                       ; preds = %if.then732
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__symbol_put(ptr noundef nonnull @.str.95) #9
  br label %if.end746.thread

do.end743:                                        ; preds = %cond.end729
  call void @__sanitizer_cov_trace_pc() #11
  %call745 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.98) #12
  br label %if.end746.thread

if.end746.thread:                                 ; preds = %do.end743, %if.then738
  %105 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr null, ptr %call7.i.i, align 8
  br label %cleanup

if.end754:                                        ; preds = %if.then732
  %106 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr %call736, ptr %call7.i.i, align 8
  %sec_priv = getelementptr inbounds %struct.dvb_frontend, ptr %call736, i32 0, i32 6
  %107 = ptrtoint ptr %sec_priv to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr %call7.i.i, ptr %sec_priv, align 4
  %pll_mutex = getelementptr inbounds %struct.em28xx_dvb, ptr %call7.i.i, i32 0, i32 10
  tail call fastcc void @sema_init(ptr noundef %pll_mutex)
  %108 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %call7.i.i, align 8
  %i2c_gate_ctrl = getelementptr inbounds %struct.dvb_frontend, ptr %109, i32 0, i32 1, i32 28
  %110 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %i2c_gate_ctrl, align 4
  %gate_ctrl = getelementptr inbounds %struct.em28xx_dvb, ptr %call7.i.i, i32 0, i32 9
  %112 = ptrtoint ptr %gate_ctrl to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr %111, ptr %gate_ctrl, align 8
  store ptr @drxk_gate_ctrl, ptr %i2c_gate_ctrl, align 4
  %113 = ptrtoint ptr %cfg to i32
  call void @__asan_store1_noabort(i32 %113)
  store i8 97, ptr %cfg, align 4
  %if_khz = getelementptr inbounds %struct.xc5000_config, ptr %cfg, i32 0, i32 1
  %114 = ptrtoint ptr %if_khz to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 4000, ptr %if_khz, align 4
  %115 = load ptr, ptr %call7.i.i, align 8
  %i2c_gate_ctrl767 = getelementptr inbounds %struct.dvb_frontend, ptr %115, i32 0, i32 1, i32 28
  %116 = ptrtoint ptr %i2c_gate_ctrl767 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %i2c_gate_ctrl767, align 4
  %tobool768.not = icmp eq ptr %117, null
  br i1 %tobool768.not, label %if.end754.if.end777_crit_edge, label %if.then769

if.end754.if.end777_crit_edge:                    ; preds = %if.end754
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end777

if.then769:                                       ; preds = %if.end754
  call void @__sanitizer_cov_trace_pc() #11
  %call776 = tail call i32 %117(ptr noundef %115, i32 noundef 1) #9
  br label %if.end777

if.end777:                                        ; preds = %if.then769, %if.end754.if.end777_crit_edge
  %call780 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.100) #9
  %tobool781.not = icmp eq ptr %call780, null
  br i1 %tobool781.not, label %cond.end786, label %if.end777.if.then789_crit_edge

if.end777.if.then789_crit_edge:                   ; preds = %if.end777
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then789

cond.end786:                                      ; preds = %if.end777
  %call784 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.101) #9
  %call785 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.100) #9
  %tobool788.not = icmp eq ptr %call785, null
  br i1 %tobool788.not, label %do.end802, label %cond.end786.if.then789_crit_edge

cond.end786.if.then789_crit_edge:                 ; preds = %cond.end786
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then789

if.then789:                                       ; preds = %cond.end786.if.then789_crit_edge, %if.end777.if.then789_crit_edge
  %cond7871984 = phi ptr [ %call785, %cond.end786.if.then789_crit_edge ], [ %call780, %if.end777.if.then789_crit_edge ]
  %118 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %call7.i.i, align 8
  %120 = ptrtoint ptr %def_i2c_bus734 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %def_i2c_bus734, align 4
  %arrayidx794 = getelementptr %struct.em28xx, ptr %dev, i32 0, i32 19, i32 %121
  %call795 = call ptr %cond7871984(ptr noundef %119, ptr noundef %arrayidx794, ptr noundef nonnull %cfg) #9
  %cmp796 = icmp eq ptr %call795, null
  br i1 %cmp796, label %if.then797, label %if.end809

if.then797:                                       ; preds = %if.then789
  call void @__sanitizer_cov_trace_pc() #11
  call void @__symbol_put(ptr noundef nonnull @.str.100) #9
  br label %cleanup

do.end802:                                        ; preds = %cond.end786
  call void @__sanitizer_cov_trace_pc() #11
  %call804 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.103) #12
  br label %cleanup

if.end809:                                        ; preds = %if.then789
  %122 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %call7.i.i, align 8
  %i2c_gate_ctrl813 = getelementptr inbounds %struct.dvb_frontend, ptr %123, i32 0, i32 1, i32 28
  %124 = ptrtoint ptr %i2c_gate_ctrl813 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %i2c_gate_ctrl813, align 4
  %tobool814.not = icmp eq ptr %125, null
  br i1 %tobool814.not, label %if.end809.cleanup.thread_crit_edge, label %if.then815

if.end809.cleanup.thread_crit_edge:               ; preds = %if.end809
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.thread

if.then815:                                       ; preds = %if.end809
  call void @__sanitizer_cov_trace_pc() #11
  %call822 = call i32 %125(ptr noundef %123, i32 noundef 0) #9
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.then815, %if.end809.cleanup.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %cfg) #9
  br label %sw.epilogthread-pre-split

cleanup:                                          ; preds = %do.end802, %if.then797, %if.end746.thread
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %cfg) #9
  br label %out_free

sw.bb824:                                         ; preds = %if.end39
  tail call fastcc void @terratec_h5_init(ptr noundef %dev)
  %call827 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.95) #9
  %tobool828.not = icmp eq ptr %call827, null
  br i1 %tobool828.not, label %cond.end833, label %sw.bb824.if.then836_crit_edge

sw.bb824.if.then836_crit_edge:                    ; preds = %sw.bb824
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then836

cond.end833:                                      ; preds = %sw.bb824
  %call831 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.96) #9
  %call832 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.95) #9
  %tobool835.not = icmp eq ptr %call832, null
  br i1 %tobool835.not, label %do.end847, label %cond.end833.if.then836_crit_edge

cond.end833.if.then836_crit_edge:                 ; preds = %cond.end833
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then836

if.then836:                                       ; preds = %cond.end833.if.then836_crit_edge, %sw.bb824.if.then836_crit_edge
  %cond8341991 = phi ptr [ %call832, %cond.end833.if.then836_crit_edge ], [ %call827, %sw.bb824.if.then836_crit_edge ]
  %def_i2c_bus838 = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 23
  %126 = ptrtoint ptr %def_i2c_bus838 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %def_i2c_bus838, align 4
  %arrayidx839 = getelementptr %struct.em28xx, ptr %dev, i32 0, i32 19, i32 %127
  %call840 = tail call ptr %cond8341991(ptr noundef nonnull @terratec_h5_drxk, ptr noundef %arrayidx839) #9
  %cmp841 = icmp eq ptr %call840, null
  br i1 %cmp841, label %if.then842, label %if.end858

if.then842:                                       ; preds = %if.then836
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__symbol_put(ptr noundef nonnull @.str.95) #9
  br label %if.end850.thread

do.end847:                                        ; preds = %cond.end833
  call void @__sanitizer_cov_trace_pc() #11
  %call849 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.98) #12
  br label %if.end850.thread

if.end850.thread:                                 ; preds = %do.end847, %if.then842
  %128 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store ptr null, ptr %call7.i.i, align 8
  br label %out_free

if.end858:                                        ; preds = %if.then836
  %129 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %129)
  store ptr %call840, ptr %call7.i.i, align 8
  %sec_priv861 = getelementptr inbounds %struct.dvb_frontend, ptr %call840, i32 0, i32 6
  %130 = ptrtoint ptr %sec_priv861 to i32
  call void @__asan_store4_noabort(i32 %130)
  store ptr %call7.i.i, ptr %sec_priv861, align 4
  %pll_mutex862 = getelementptr inbounds %struct.em28xx_dvb, ptr %call7.i.i, i32 0, i32 10
  tail call fastcc void @sema_init(ptr noundef %pll_mutex862)
  %131 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %call7.i.i, align 8
  %i2c_gate_ctrl866 = getelementptr inbounds %struct.dvb_frontend, ptr %132, i32 0, i32 1, i32 28
  %133 = ptrtoint ptr %i2c_gate_ctrl866 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %i2c_gate_ctrl866, align 4
  %gate_ctrl867 = getelementptr inbounds %struct.em28xx_dvb, ptr %call7.i.i, i32 0, i32 9
  %135 = ptrtoint ptr %gate_ctrl867 to i32
  call void @__asan_store4_noabort(i32 %135)
  store ptr %134, ptr %gate_ctrl867, align 8
  store ptr @drxk_gate_ctrl, ptr %i2c_gate_ctrl866, align 4
  %136 = load ptr, ptr %call7.i.i, align 8
  %i2c_gate_ctrl875 = getelementptr inbounds %struct.dvb_frontend, ptr %136, i32 0, i32 1, i32 28
  %137 = ptrtoint ptr %i2c_gate_ctrl875 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %i2c_gate_ctrl875, align 4
  %tobool876.not = icmp eq ptr %138, null
  br i1 %tobool876.not, label %if.end858.if.end885_crit_edge, label %if.then877

if.end858.if.end885_crit_edge:                    ; preds = %if.end858
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end885

if.then877:                                       ; preds = %if.end858
  call void @__sanitizer_cov_trace_pc() #11
  %call884 = tail call i32 %138(ptr noundef %136, i32 noundef 1) #9
  br label %if.end885

if.end885:                                        ; preds = %if.then877, %if.end858.if.end885_crit_edge
  %call888 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.107) #9
  %tobool889.not = icmp eq ptr %call888, null
  br i1 %tobool889.not, label %cond.end894, label %if.end885.if.then897_crit_edge

if.end885.if.then897_crit_edge:                   ; preds = %if.end885
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then897

cond.end894:                                      ; preds = %if.end885
  %call892 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.108) #9
  %call893 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.107) #9
  %tobool896.not = icmp eq ptr %call893, null
  br i1 %tobool896.not, label %do.end910, label %cond.end894.if.then897_crit_edge

cond.end894.if.then897_crit_edge:                 ; preds = %cond.end894
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then897

if.then897:                                       ; preds = %cond.end894.if.then897_crit_edge, %if.end885.if.then897_crit_edge
  %cond8951996 = phi ptr [ %call893, %cond.end894.if.then897_crit_edge ], [ %call888, %if.end885.if.then897_crit_edge ]
  %139 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %call7.i.i, align 8
  %141 = ptrtoint ptr %def_i2c_bus838 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %def_i2c_bus838, align 4
  %arrayidx902 = getelementptr %struct.em28xx, ptr %dev, i32 0, i32 19, i32 %142
  %call903 = tail call ptr %cond8951996(ptr noundef %140, ptr noundef %arrayidx902, i8 noundef zeroext 96) #9
  %cmp904 = icmp eq ptr %call903, null
  br i1 %cmp904, label %if.then905, label %if.end917

if.then905:                                       ; preds = %if.then897
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__symbol_put(ptr noundef nonnull @.str.107) #9
  br label %out_free

do.end910:                                        ; preds = %cond.end894
  call void @__sanitizer_cov_trace_pc() #11
  %call912 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.110) #12
  br label %out_free

if.end917:                                        ; preds = %if.then897
  %143 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %call7.i.i, align 8
  %i2c_gate_ctrl921 = getelementptr inbounds %struct.dvb_frontend, ptr %144, i32 0, i32 1, i32 28
  %145 = ptrtoint ptr %i2c_gate_ctrl921 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %i2c_gate_ctrl921, align 4
  %tobool922.not = icmp eq ptr %146, null
  br i1 %tobool922.not, label %if.end917.sw.epilog_crit_edge, label %if.then923

if.end917.sw.epilog_crit_edge:                    ; preds = %if.end917
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.then923:                                       ; preds = %if.end917
  call void @__sanitizer_cov_trace_pc() #11
  %call930 = tail call i32 %146(ptr noundef %144, i32 noundef 0) #9
  br label %sw.epilogthread-pre-split

sw.bb932:                                         ; preds = %if.end39
  %call935 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.112) #9
  %tobool936.not = icmp eq ptr %call935, null
  br i1 %tobool936.not, label %cond.end941, label %sw.bb932.if.then944_crit_edge

sw.bb932.if.then944_crit_edge:                    ; preds = %sw.bb932
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then944

cond.end941:                                      ; preds = %sw.bb932
  %call939 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.113) #9
  %call940 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.112) #9
  %tobool943.not = icmp eq ptr %call940, null
  br i1 %tobool943.not, label %do.end955, label %cond.end941.if.then944_crit_edge

cond.end941.if.then944_crit_edge:                 ; preds = %cond.end941
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then944

if.then944:                                       ; preds = %cond.end941.if.then944_crit_edge, %sw.bb932.if.then944_crit_edge
  %cond9422001 = phi ptr [ %call940, %cond.end941.if.then944_crit_edge ], [ %call935, %sw.bb932.if.then944_crit_edge ]
  %def_i2c_bus946 = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 23
  %147 = ptrtoint ptr %def_i2c_bus946 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %def_i2c_bus946, align 4
  %arrayidx947 = getelementptr %struct.em28xx, ptr %dev, i32 0, i32 19, i32 %148
  %call948 = tail call ptr %cond9422001(ptr noundef nonnull @c3tech_duo_mb86a20s_config, ptr noundef %arrayidx947) #9
  %cmp949 = icmp eq ptr %call948, null
  br i1 %cmp949, label %if.then950, label %if.then965

if.then950:                                       ; preds = %if.then944
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__symbol_put(ptr noundef nonnull @.str.112) #9
  br label %do.end1515.sink.split

do.end955:                                        ; preds = %cond.end941
  call void @__sanitizer_cov_trace_pc() #11
  %call957 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.115) #12
  br label %do.end1515.sink.split

if.then965:                                       ; preds = %if.then944
  %149 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %149)
  store ptr %call948, ptr %call7.i.i, align 8
  %call968 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.80) #9
  %tobool969.not = icmp eq ptr %call968, null
  br i1 %tobool969.not, label %cond.end974, label %if.then965.if.then977_crit_edge

if.then965.if.then977_crit_edge:                  ; preds = %if.then965
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then977

cond.end974:                                      ; preds = %if.then965
  %call972 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.81) #9
  %call973 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.80) #9
  %tobool976.not = icmp eq ptr %call973, null
  br i1 %tobool976.not, label %do.end990, label %cond.end974.if.then977_crit_edge

cond.end974.if.then977_crit_edge:                 ; preds = %cond.end974
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then977

if.then977:                                       ; preds = %cond.end974.if.then977_crit_edge, %if.then965.if.then977_crit_edge
  %cond9752006 = phi ptr [ %call973, %cond.end974.if.then977_crit_edge ], [ %call968, %if.then965.if.then977_crit_edge ]
  %150 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %call7.i.i, align 8
  %152 = ptrtoint ptr %def_i2c_bus946 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %def_i2c_bus946, align 4
  %arrayidx982 = getelementptr %struct.em28xx, ptr %dev, i32 0, i32 19, i32 %153
  %call983 = tail call ptr %cond9752006(ptr noundef %151, i8 noundef zeroext 96, ptr noundef %arrayidx982, ptr noundef nonnull @c3tech_duo_tda18271_config) #9
  %cmp984 = icmp eq ptr %call983, null
  br i1 %cmp984, label %if.then985, label %if.then977.sw.epilogthread-pre-split_crit_edge

if.then977.sw.epilogthread-pre-split_crit_edge:   ; preds = %if.then977
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilogthread-pre-split

if.then985:                                       ; preds = %if.then977
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__symbol_put(ptr noundef nonnull @.str.80) #9
  br label %sw.epilogthread-pre-split

do.end990:                                        ; preds = %cond.end974
  call void @__sanitizer_cov_trace_pc() #11
  %call992 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.83) #12
  br label %sw.epilogthread-pre-split

sw.bb996:                                         ; preds = %if.end39
  %call997 = tail call fastcc i32 @em28174_dvb_init_pctv_460e(ptr noundef %dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call997)
  %tobool998.not = icmp eq i32 %call997, 0
  br i1 %tobool998.not, label %sw.bb996.sw.epilogthread-pre-split_crit_edge, label %sw.bb996.out_free_crit_edge

sw.bb996.out_free_crit_edge:                      ; preds = %sw.bb996
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_free

sw.bb996.sw.epilogthread-pre-split_crit_edge:     ; preds = %sw.bb996
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilogthread-pre-split

sw.bb1001:                                        ; preds = %if.end39.sw.bb1001_crit_edge, %if.end39.sw.bb1001_crit_edge2090
  %call1004 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.95) #9
  %tobool1005.not = icmp eq ptr %call1004, null
  br i1 %tobool1005.not, label %cond.end1010, label %sw.bb1001.if.then1013_crit_edge

sw.bb1001.if.then1013_crit_edge:                  ; preds = %sw.bb1001
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then1013

cond.end1010:                                     ; preds = %sw.bb1001
  %call1008 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.96) #9
  %call1009 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.95) #9
  %tobool1012.not = icmp eq ptr %call1009, null
  br i1 %tobool1012.not, label %do.end1024, label %cond.end1010.if.then1013_crit_edge

cond.end1010.if.then1013_crit_edge:               ; preds = %cond.end1010
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then1013

if.then1013:                                      ; preds = %cond.end1010.if.then1013_crit_edge, %sw.bb1001.if.then1013_crit_edge
  %cond10112009 = phi ptr [ %call1009, %cond.end1010.if.then1013_crit_edge ], [ %call1004, %sw.bb1001.if.then1013_crit_edge ]
  %def_i2c_bus1015 = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 23
  %154 = ptrtoint ptr %def_i2c_bus1015 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %def_i2c_bus1015, align 4
  %arrayidx1016 = getelementptr %struct.em28xx, ptr %dev, i32 0, i32 19, i32 %155
  %call1017 = tail call ptr %cond10112009(ptr noundef nonnull @maxmedia_ub425_tc_drxk, ptr noundef %arrayidx1016) #9
  %cmp1018 = icmp eq ptr %call1017, null
  br i1 %cmp1018, label %if.then1019, label %if.then1034

if.then1019:                                      ; preds = %if.then1013
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__symbol_put(ptr noundef nonnull @.str.95) #9
  br label %do.end1515.sink.split

do.end1024:                                       ; preds = %cond.end1010
  call void @__sanitizer_cov_trace_pc() #11
  %call1026 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.98) #12
  br label %do.end1515.sink.split

if.then1034:                                      ; preds = %if.then1013
  %156 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %156)
  store ptr %call1017, ptr %call7.i.i, align 8
  %i2c_gate_ctrl1038 = getelementptr inbounds %struct.dvb_frontend, ptr %call1017, i32 0, i32 1, i32 28
  %157 = ptrtoint ptr %i2c_gate_ctrl1038 to i32
  call void @__asan_store4_noabort(i32 %157)
  store ptr null, ptr %i2c_gate_ctrl1038, align 4
  %call1041 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.80) #9
  %tobool1042.not = icmp eq ptr %call1041, null
  br i1 %tobool1042.not, label %cond.end1047, label %if.then1034.if.then1050_crit_edge

if.then1034.if.then1050_crit_edge:                ; preds = %if.then1034
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then1050

cond.end1047:                                     ; preds = %if.then1034
  %call1045 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.81) #9
  %call1046 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.80) #9
  %tobool1049.not = icmp eq ptr %call1046, null
  br i1 %tobool1049.not, label %do.end1063, label %cond.end1047.if.then1050_crit_edge

cond.end1047.if.then1050_crit_edge:               ; preds = %cond.end1047
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then1050

if.then1050:                                      ; preds = %cond.end1047.if.then1050_crit_edge, %if.then1034.if.then1050_crit_edge
  %cond10482014 = phi ptr [ %call1046, %cond.end1047.if.then1050_crit_edge ], [ %call1041, %if.then1034.if.then1050_crit_edge ]
  %158 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %call7.i.i, align 8
  %160 = ptrtoint ptr %def_i2c_bus1015 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %def_i2c_bus1015, align 4
  %arrayidx1055 = getelementptr %struct.em28xx, ptr %dev, i32 0, i32 19, i32 %161
  %call1056 = tail call ptr %cond10482014(ptr noundef %159, i8 noundef zeroext 96, ptr noundef %arrayidx1055, ptr noundef nonnull @em28xx_cxd2820r_tda18271_config) #9
  %cmp1057 = icmp eq ptr %call1056, null
  br i1 %cmp1057, label %if.then1058, label %if.then1050.sw.epilogthread-pre-split_crit_edge

if.then1050.sw.epilogthread-pre-split_crit_edge:  ; preds = %if.then1050
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilogthread-pre-split

if.then1058:                                      ; preds = %if.then1050
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__symbol_put(ptr noundef nonnull @.str.80) #9
  br label %if.then1069

do.end1063:                                       ; preds = %cond.end1047
  call void @__sanitizer_cov_trace_pc() #11
  %call1065 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.83) #12
  br label %if.then1069

if.then1069:                                      ; preds = %do.end1063, %if.then1058
  %162 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %call7.i.i, align 8
  tail call void @dvb_frontend_detach(ptr noundef %163) #9
  br label %out_free

sw.bb1074:                                        ; preds = %if.end39.sw.bb1074_crit_edge, %if.end39.sw.bb1074_crit_edge2091
  tail call fastcc void @pctv_520e_init(ptr noundef %dev)
  %call1077 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.95) #9
  %tobool1078.not = icmp eq ptr %call1077, null
  br i1 %tobool1078.not, label %cond.end1083, label %sw.bb1074.if.then1086_crit_edge

sw.bb1074.if.then1086_crit_edge:                  ; preds = %sw.bb1074
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then1086

cond.end1083:                                     ; preds = %sw.bb1074
  %call1081 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.96) #9
  %call1082 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.95) #9
  %tobool1085.not = icmp eq ptr %call1082, null
  br i1 %tobool1085.not, label %do.end1097, label %cond.end1083.if.then1086_crit_edge

cond.end1083.if.then1086_crit_edge:               ; preds = %cond.end1083
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then1086

if.then1086:                                      ; preds = %cond.end1083.if.then1086_crit_edge, %sw.bb1074.if.then1086_crit_edge
  %cond10842019 = phi ptr [ %call1082, %cond.end1083.if.then1086_crit_edge ], [ %call1077, %sw.bb1074.if.then1086_crit_edge ]
  %def_i2c_bus1088 = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 23
  %164 = ptrtoint ptr %def_i2c_bus1088 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %def_i2c_bus1088, align 4
  %arrayidx1089 = getelementptr %struct.em28xx, ptr %dev, i32 0, i32 19, i32 %165
  %call1090 = tail call ptr %cond10842019(ptr noundef nonnull @pctv_520e_drxk, ptr noundef %arrayidx1089) #9
  %cmp1091 = icmp eq ptr %call1090, null
  br i1 %cmp1091, label %if.then1092, label %if.then1107

if.then1092:                                      ; preds = %if.then1086
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__symbol_put(ptr noundef nonnull @.str.95) #9
  br label %do.end1515.sink.split

do.end1097:                                       ; preds = %cond.end1083
  call void @__sanitizer_cov_trace_pc() #11
  %call1099 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.98) #12
  br label %do.end1515.sink.split

if.then1107:                                      ; preds = %if.then1086
  %166 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %166)
  store ptr %call1090, ptr %call7.i.i, align 8
  %call1110 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.80) #9
  %tobool1111.not = icmp eq ptr %call1110, null
  br i1 %tobool1111.not, label %cond.end1116, label %if.then1107.if.then1119_crit_edge

if.then1107.if.then1119_crit_edge:                ; preds = %if.then1107
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then1119

cond.end1116:                                     ; preds = %if.then1107
  %call1114 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.81) #9
  %call1115 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.80) #9
  %tobool1118.not = icmp eq ptr %call1115, null
  br i1 %tobool1118.not, label %do.end1132, label %cond.end1116.if.then1119_crit_edge

cond.end1116.if.then1119_crit_edge:               ; preds = %cond.end1116
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then1119

if.then1119:                                      ; preds = %cond.end1116.if.then1119_crit_edge, %if.then1107.if.then1119_crit_edge
  %cond11172024 = phi ptr [ %call1115, %cond.end1116.if.then1119_crit_edge ], [ %call1110, %if.then1107.if.then1119_crit_edge ]
  %167 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %call7.i.i, align 8
  %169 = ptrtoint ptr %def_i2c_bus1088 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %def_i2c_bus1088, align 4
  %arrayidx1124 = getelementptr %struct.em28xx, ptr %dev, i32 0, i32 19, i32 %170
  %call1125 = tail call ptr %cond11172024(ptr noundef %168, i8 noundef zeroext 96, ptr noundef %arrayidx1124, ptr noundef nonnull @em28xx_cxd2820r_tda18271_config) #9
  %cmp1126 = icmp eq ptr %call1125, null
  br i1 %cmp1126, label %if.then1127, label %if.then1119.sw.epilogthread-pre-split_crit_edge

if.then1119.sw.epilogthread-pre-split_crit_edge:  ; preds = %if.then1119
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilogthread-pre-split

if.then1127:                                      ; preds = %if.then1119
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__symbol_put(ptr noundef nonnull @.str.80) #9
  br label %if.then1138

do.end1132:                                       ; preds = %cond.end1116
  call void @__sanitizer_cov_trace_pc() #11
  %call1134 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.83) #12
  br label %if.then1138

if.then1138:                                      ; preds = %do.end1132, %if.then1127
  %171 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %call7.i.i, align 8
  tail call void @dvb_frontend_detach(ptr noundef %172) #9
  br label %out_free

sw.bb1143:                                        ; preds = %if.end39.sw.bb1143_crit_edge, %if.end39.sw.bb1143_crit_edge2092, %if.end39.sw.bb1143_crit_edge2093
  tail call fastcc void @terratec_htc_stick_init(ptr noundef %dev)
  %call1146 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.95) #9
  %tobool1147.not = icmp eq ptr %call1146, null
  br i1 %tobool1147.not, label %cond.end1152, label %sw.bb1143.if.then1155_crit_edge

sw.bb1143.if.then1155_crit_edge:                  ; preds = %sw.bb1143
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then1155

cond.end1152:                                     ; preds = %sw.bb1143
  %call1150 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.96) #9
  %call1151 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.95) #9
  %tobool1154.not = icmp eq ptr %call1151, null
  br i1 %tobool1154.not, label %do.end1166, label %cond.end1152.if.then1155_crit_edge

cond.end1152.if.then1155_crit_edge:               ; preds = %cond.end1152
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then1155

if.then1155:                                      ; preds = %cond.end1152.if.then1155_crit_edge, %sw.bb1143.if.then1155_crit_edge
  %cond11532029 = phi ptr [ %call1151, %cond.end1152.if.then1155_crit_edge ], [ %call1146, %sw.bb1143.if.then1155_crit_edge ]
  %def_i2c_bus1157 = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 23
  %173 = ptrtoint ptr %def_i2c_bus1157 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %def_i2c_bus1157, align 4
  %arrayidx1158 = getelementptr %struct.em28xx, ptr %dev, i32 0, i32 19, i32 %174
  %call1159 = tail call ptr %cond11532029(ptr noundef nonnull @terratec_htc_stick_drxk, ptr noundef %arrayidx1158) #9
  %cmp1160 = icmp eq ptr %call1159, null
  br i1 %cmp1160, label %if.then1161, label %if.end1177

if.then1161:                                      ; preds = %if.then1155
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__symbol_put(ptr noundef nonnull @.str.95) #9
  br label %if.end1169.thread

do.end1166:                                       ; preds = %cond.end1152
  call void @__sanitizer_cov_trace_pc() #11
  %call1168 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.98) #12
  br label %if.end1169.thread

if.end1169.thread:                                ; preds = %do.end1166, %if.then1161
  %175 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %175)
  store ptr null, ptr %call7.i.i, align 8
  br label %out_free

if.end1177:                                       ; preds = %if.then1155
  %176 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %176)
  store ptr %call1159, ptr %call7.i.i, align 8
  %call1180 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.80) #9
  %tobool1181.not = icmp eq ptr %call1180, null
  br i1 %tobool1181.not, label %cond.end1186, label %if.end1177.if.then1189_crit_edge

if.end1177.if.then1189_crit_edge:                 ; preds = %if.end1177
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then1189

cond.end1186:                                     ; preds = %if.end1177
  %call1184 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.81) #9
  %call1185 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.80) #9
  %tobool1188.not = icmp eq ptr %call1185, null
  br i1 %tobool1188.not, label %do.end1202, label %cond.end1186.if.then1189_crit_edge

cond.end1186.if.then1189_crit_edge:               ; preds = %cond.end1186
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then1189

if.then1189:                                      ; preds = %cond.end1186.if.then1189_crit_edge, %if.end1177.if.then1189_crit_edge
  %cond11872034 = phi ptr [ %call1185, %cond.end1186.if.then1189_crit_edge ], [ %call1180, %if.end1177.if.then1189_crit_edge ]
  %177 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %call7.i.i, align 8
  %179 = ptrtoint ptr %def_i2c_bus1157 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %def_i2c_bus1157, align 4
  %arrayidx1194 = getelementptr %struct.em28xx, ptr %dev, i32 0, i32 19, i32 %180
  %call1195 = tail call ptr %cond11872034(ptr noundef %178, i8 noundef zeroext 96, ptr noundef %arrayidx1194, ptr noundef nonnull @em28xx_cxd2820r_tda18271_config) #9
  %cmp1196 = icmp eq ptr %call1195, null
  br i1 %cmp1196, label %if.then1197, label %if.then1189.sw.epilogthread-pre-split_crit_edge

if.then1189.sw.epilogthread-pre-split_crit_edge:  ; preds = %if.then1189
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilogthread-pre-split

if.then1197:                                      ; preds = %if.then1189
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__symbol_put(ptr noundef nonnull @.str.80) #9
  br label %out_free

do.end1202:                                       ; preds = %cond.end1186
  call void @__sanitizer_cov_trace_pc() #11
  %call1204 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.83) #12
  br label %out_free

sw.bb1210:                                        ; preds = %if.end39
  tail call fastcc void @terratec_htc_usb_xs_init(ptr noundef %dev)
  %call1213 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.95) #9
  %tobool1214.not = icmp eq ptr %call1213, null
  br i1 %tobool1214.not, label %cond.end1219, label %sw.bb1210.if.then1222_crit_edge

sw.bb1210.if.then1222_crit_edge:                  ; preds = %sw.bb1210
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then1222

cond.end1219:                                     ; preds = %sw.bb1210
  %call1217 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.96) #9
  %call1218 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.95) #9
  %tobool1221.not = icmp eq ptr %call1218, null
  br i1 %tobool1221.not, label %do.end1233, label %cond.end1219.if.then1222_crit_edge

cond.end1219.if.then1222_crit_edge:               ; preds = %cond.end1219
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then1222

if.then1222:                                      ; preds = %cond.end1219.if.then1222_crit_edge, %sw.bb1210.if.then1222_crit_edge
  %cond12202039 = phi ptr [ %call1218, %cond.end1219.if.then1222_crit_edge ], [ %call1213, %sw.bb1210.if.then1222_crit_edge ]
  %def_i2c_bus1224 = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 23
  %181 = ptrtoint ptr %def_i2c_bus1224 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %def_i2c_bus1224, align 4
  %arrayidx1225 = getelementptr %struct.em28xx, ptr %dev, i32 0, i32 19, i32 %182
  %call1226 = tail call ptr %cond12202039(ptr noundef nonnull @terratec_htc_stick_drxk, ptr noundef %arrayidx1225) #9
  %cmp1227 = icmp eq ptr %call1226, null
  br i1 %cmp1227, label %if.then1228, label %if.end1244

if.then1228:                                      ; preds = %if.then1222
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__symbol_put(ptr noundef nonnull @.str.95) #9
  br label %if.end1236.thread

do.end1233:                                       ; preds = %cond.end1219
  call void @__sanitizer_cov_trace_pc() #11
  %call1235 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.98) #12
  br label %if.end1236.thread

if.end1236.thread:                                ; preds = %do.end1233, %if.then1228
  %183 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %183)
  store ptr null, ptr %call7.i.i, align 8
  br label %out_free

if.end1244:                                       ; preds = %if.then1222
  %184 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %184)
  store ptr %call1226, ptr %call7.i.i, align 8
  %call1247 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.80) #9
  %tobool1248.not = icmp eq ptr %call1247, null
  br i1 %tobool1248.not, label %cond.end1253, label %if.end1244.if.then1256_crit_edge

if.end1244.if.then1256_crit_edge:                 ; preds = %if.end1244
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then1256

cond.end1253:                                     ; preds = %if.end1244
  %call1251 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.81) #9
  %call1252 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.80) #9
  %tobool1255.not = icmp eq ptr %call1252, null
  br i1 %tobool1255.not, label %do.end1269, label %cond.end1253.if.then1256_crit_edge

cond.end1253.if.then1256_crit_edge:               ; preds = %cond.end1253
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then1256

if.then1256:                                      ; preds = %cond.end1253.if.then1256_crit_edge, %if.end1244.if.then1256_crit_edge
  %cond12542044 = phi ptr [ %call1252, %cond.end1253.if.then1256_crit_edge ], [ %call1247, %if.end1244.if.then1256_crit_edge ]
  %185 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %call7.i.i, align 8
  %187 = ptrtoint ptr %def_i2c_bus1224 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %def_i2c_bus1224, align 4
  %arrayidx1261 = getelementptr %struct.em28xx, ptr %dev, i32 0, i32 19, i32 %188
  %call1262 = tail call ptr %cond12542044(ptr noundef %186, i8 noundef zeroext 96, ptr noundef %arrayidx1261, ptr noundef nonnull @em28xx_cxd2820r_tda18271_config) #9
  %cmp1263 = icmp eq ptr %call1262, null
  br i1 %cmp1263, label %if.then1264, label %if.then1256.sw.epilogthread-pre-split_crit_edge

if.then1256.sw.epilogthread-pre-split_crit_edge:  ; preds = %if.then1256
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilogthread-pre-split

if.then1264:                                      ; preds = %if.then1256
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__symbol_put(ptr noundef nonnull @.str.80) #9
  br label %out_free

do.end1269:                                       ; preds = %cond.end1253
  call void @__sanitizer_cov_trace_pc() #11
  %call1271 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.83) #12
  br label %out_free

sw.bb1277:                                        ; preds = %if.end39
  %call1280 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.75) #9
  %tobool1281.not = icmp eq ptr %call1280, null
  br i1 %tobool1281.not, label %cond.end1286, label %sw.bb1277.if.then1289_crit_edge

sw.bb1277.if.then1289_crit_edge:                  ; preds = %sw.bb1277
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then1289

cond.end1286:                                     ; preds = %sw.bb1277
  %call1284 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.76) #9
  %call1285 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.75) #9
  %tobool1288.not = icmp eq ptr %call1285, null
  br i1 %tobool1288.not, label %do.end1300, label %cond.end1286.if.then1289_crit_edge

cond.end1286.if.then1289_crit_edge:               ; preds = %cond.end1286
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then1289

if.then1289:                                      ; preds = %cond.end1286.if.then1289_crit_edge, %sw.bb1277.if.then1289_crit_edge
  %cond12872049 = phi ptr [ %call1285, %cond.end1286.if.then1289_crit_edge ], [ %call1280, %sw.bb1277.if.then1289_crit_edge ]
  %def_i2c_bus1291 = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 23
  %189 = ptrtoint ptr %def_i2c_bus1291 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %def_i2c_bus1291, align 4
  %arrayidx1292 = getelementptr %struct.em28xx, ptr %dev, i32 0, i32 19, i32 %190
  %call1293 = tail call ptr %cond12872049(ptr noundef nonnull @em2874_lgdt3305_dev, ptr noundef %arrayidx1292) #9
  %cmp1294 = icmp eq ptr %call1293, null
  br i1 %cmp1294, label %if.then1295, label %if.end1311

if.then1295:                                      ; preds = %if.then1289
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__symbol_put(ptr noundef nonnull @.str.75) #9
  br label %if.end1303.thread

do.end1300:                                       ; preds = %cond.end1286
  call void @__sanitizer_cov_trace_pc() #11
  %call1302 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.78) #12
  br label %if.end1303.thread

if.end1303.thread:                                ; preds = %do.end1300, %if.then1295
  %191 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %191)
  store ptr null, ptr %call7.i.i, align 8
  br label %out_free

if.end1311:                                       ; preds = %if.then1289
  %192 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %192)
  store ptr %call1293, ptr %call7.i.i, align 8
  %call1314 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.80) #9
  %tobool1315.not = icmp eq ptr %call1314, null
  br i1 %tobool1315.not, label %cond.end1320, label %if.end1311.if.then1323_crit_edge

if.end1311.if.then1323_crit_edge:                 ; preds = %if.end1311
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then1323

cond.end1320:                                     ; preds = %if.end1311
  %call1318 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.81) #9
  %call1319 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.80) #9
  %tobool1322.not = icmp eq ptr %call1319, null
  br i1 %tobool1322.not, label %do.end1336, label %cond.end1320.if.then1323_crit_edge

cond.end1320.if.then1323_crit_edge:               ; preds = %cond.end1320
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then1323

if.then1323:                                      ; preds = %cond.end1320.if.then1323_crit_edge, %if.end1311.if.then1323_crit_edge
  %cond13212054 = phi ptr [ %call1319, %cond.end1320.if.then1323_crit_edge ], [ %call1314, %if.end1311.if.then1323_crit_edge ]
  %193 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %call7.i.i, align 8
  %195 = ptrtoint ptr %def_i2c_bus1291 to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %def_i2c_bus1291, align 4
  %arrayidx1328 = getelementptr %struct.em28xx, ptr %dev, i32 0, i32 19, i32 %196
  %call1329 = tail call ptr %cond13212054(ptr noundef %194, i8 noundef zeroext 96, ptr noundef %arrayidx1328, ptr noundef nonnull @kworld_ub435q_v2_config) #9
  %cmp1330 = icmp eq ptr %call1329, null
  br i1 %cmp1330, label %if.then1331, label %if.then1323.sw.epilogthread-pre-split_crit_edge

if.then1323.sw.epilogthread-pre-split_crit_edge:  ; preds = %if.then1323
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilogthread-pre-split

if.then1331:                                      ; preds = %if.then1323
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__symbol_put(ptr noundef nonnull @.str.80) #9
  br label %out_free

do.end1336:                                       ; preds = %cond.end1320
  call void @__sanitizer_cov_trace_pc() #11
  %call1338 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.83) #12
  br label %out_free

sw.bb1344:                                        ; preds = %if.end39
  %def_i2c_bus1346 = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 23
  %197 = ptrtoint ptr %def_i2c_bus1346 to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %def_i2c_bus1346, align 4
  %arrayidx1347 = getelementptr %struct.em28xx, ptr %dev, i32 0, i32 19, i32 %198
  %call1350 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.75) #9
  %tobool1351.not = icmp eq ptr %call1350, null
  br i1 %tobool1351.not, label %cond.end1356, label %sw.bb1344.if.then1359_crit_edge

sw.bb1344.if.then1359_crit_edge:                  ; preds = %sw.bb1344
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then1359

cond.end1356:                                     ; preds = %sw.bb1344
  %call1354 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.76) #9
  %call1355 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.75) #9
  %tobool1358.not = icmp eq ptr %call1355, null
  br i1 %tobool1358.not, label %do.end1370, label %cond.end1356.if.then1359_crit_edge

cond.end1356.if.then1359_crit_edge:               ; preds = %cond.end1356
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then1359

if.then1359:                                      ; preds = %cond.end1356.if.then1359_crit_edge, %sw.bb1344.if.then1359_crit_edge
  %cond13572059 = phi ptr [ %call1355, %cond.end1356.if.then1359_crit_edge ], [ %call1350, %sw.bb1344.if.then1359_crit_edge ]
  %199 = ptrtoint ptr %def_i2c_bus1346 to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %def_i2c_bus1346, align 4
  %arrayidx1362 = getelementptr %struct.em28xx, ptr %dev, i32 0, i32 19, i32 %200
  %call1363 = tail call ptr %cond13572059(ptr noundef nonnull @em2874_lgdt3305_nogate_dev, ptr noundef %arrayidx1362) #9
  %cmp1364 = icmp eq ptr %call1363, null
  br i1 %cmp1364, label %if.then1365, label %if.end1381

if.then1365:                                      ; preds = %if.then1359
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__symbol_put(ptr noundef nonnull @.str.75) #9
  br label %if.end1373.thread

do.end1370:                                       ; preds = %cond.end1356
  call void @__sanitizer_cov_trace_pc() #11
  %call1372 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.78) #12
  br label %if.end1373.thread

if.end1373.thread:                                ; preds = %do.end1370, %if.then1365
  %201 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %201)
  store ptr null, ptr %call7.i.i, align 8
  br label %out_free

if.end1381:                                       ; preds = %if.then1359
  %202 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %202)
  store ptr %call1363, ptr %call7.i.i, align 8
  store ptr %call1363, ptr getelementptr inbounds (%struct.tda18212_config, ptr @kworld_ub435q_v3_config, i32 0, i32 10), align 4
  %call1384 = tail call ptr @dvb_module_probe(ptr noundef nonnull @.str.141, ptr noundef null, ptr noundef %arrayidx1347, i8 noundef zeroext 96, ptr noundef nonnull @kworld_ub435q_v3_config) #9
  %i2c_client_tuner = getelementptr inbounds %struct.em28xx_dvb, ptr %call7.i.i, i32 0, i32 14
  %203 = ptrtoint ptr %i2c_client_tuner to i32
  call void @__asan_store4_noabort(i32 %203)
  store ptr %call1384, ptr %i2c_client_tuner, align 8
  %tobool1386.not = icmp eq ptr %call1384, null
  br i1 %tobool1386.not, label %if.then1387, label %if.end1381.sw.epilogthread-pre-split_crit_edge

if.end1381.sw.epilogthread-pre-split_crit_edge:   ; preds = %if.end1381
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilogthread-pre-split

if.then1387:                                      ; preds = %if.end1381
  call void @__sanitizer_cov_trace_pc() #11
  %204 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %call7.i.i, align 8
  tail call void @dvb_frontend_detach(ptr noundef %205) #9
  br label %out_free

sw.bb1393:                                        ; preds = %if.end39
  %call1396 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.142) #9
  %tobool1397.not = icmp eq ptr %call1396, null
  br i1 %tobool1397.not, label %cond.end1402, label %sw.bb1393.if.then1405_crit_edge

sw.bb1393.if.then1405_crit_edge:                  ; preds = %sw.bb1393
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then1405

cond.end1402:                                     ; preds = %sw.bb1393
  %call1400 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.143) #9
  %call1401 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.142) #9
  %tobool1404.not = icmp eq ptr %call1401, null
  br i1 %tobool1404.not, label %do.end1416, label %cond.end1402.if.then1405_crit_edge

cond.end1402.if.then1405_crit_edge:               ; preds = %cond.end1402
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then1405

if.then1405:                                      ; preds = %cond.end1402.if.then1405_crit_edge, %sw.bb1393.if.then1405_crit_edge
  %cond14032066 = phi ptr [ %call1401, %cond.end1402.if.then1405_crit_edge ], [ %call1396, %sw.bb1393.if.then1405_crit_edge ]
  %def_i2c_bus1407 = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 23
  %206 = ptrtoint ptr %def_i2c_bus1407 to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %def_i2c_bus1407, align 4
  %arrayidx1408 = getelementptr %struct.em28xx, ptr %dev, i32 0, i32 19, i32 %207
  %call1409 = tail call ptr %cond14032066(ptr noundef %arrayidx1408) #9
  %cmp1410 = icmp eq ptr %call1409, null
  br i1 %cmp1410, label %if.then1411, label %if.then1426

if.then1411:                                      ; preds = %if.then1405
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__symbol_put(ptr noundef nonnull @.str.142) #9
  br label %do.end1515.sink.split

do.end1416:                                       ; preds = %cond.end1402
  call void @__sanitizer_cov_trace_pc() #11
  %call1418 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.145) #12
  br label %do.end1515.sink.split

if.then1426:                                      ; preds = %if.then1405
  %208 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %208)
  store ptr %call1409, ptr %call7.i.i, align 8
  %call1429 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.80) #9
  %tobool1430.not = icmp eq ptr %call1429, null
  br i1 %tobool1430.not, label %cond.end1435, label %if.then1426.if.then1438_crit_edge

if.then1426.if.then1438_crit_edge:                ; preds = %if.then1426
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then1438

cond.end1435:                                     ; preds = %if.then1426
  %call1433 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.81) #9
  %call1434 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.80) #9
  %tobool1437.not = icmp eq ptr %call1434, null
  br i1 %tobool1437.not, label %do.end1451, label %cond.end1435.if.then1438_crit_edge

cond.end1435.if.then1438_crit_edge:               ; preds = %cond.end1435
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then1438

if.then1438:                                      ; preds = %cond.end1435.if.then1438_crit_edge, %if.then1426.if.then1438_crit_edge
  %cond14362071 = phi ptr [ %call1434, %cond.end1435.if.then1438_crit_edge ], [ %call1429, %if.then1426.if.then1438_crit_edge ]
  %209 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %call7.i.i, align 8
  %211 = ptrtoint ptr %def_i2c_bus1407 to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load i32, ptr %def_i2c_bus1407, align 4
  %arrayidx1443 = getelementptr %struct.em28xx, ptr %dev, i32 0, i32 19, i32 %212
  %call1444 = tail call ptr %cond14362071(ptr noundef %210, i8 noundef zeroext 96, ptr noundef %arrayidx1443, ptr noundef nonnull @pinnacle_80e_dvb_config) #9
  %cmp1445 = icmp eq ptr %call1444, null
  br i1 %cmp1445, label %if.then1446, label %if.then1438.if.end1518.sink.split_crit_edge

if.then1438.if.end1518.sink.split_crit_edge:      ; preds = %if.then1438
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end1518.sink.split

if.then1446:                                      ; preds = %if.then1438
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__symbol_put(ptr noundef nonnull @.str.80) #9
  br label %if.end1454.thread

do.end1451:                                       ; preds = %cond.end1435
  call void @__sanitizer_cov_trace_pc() #11
  %call1453 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.83) #12
  br label %if.end1454.thread

if.end1454.thread:                                ; preds = %do.end1451, %if.then1446
  %213 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %213)
  store ptr null, ptr %call7.i.i, align 8
  br label %out_free

sw.bb1464:                                        ; preds = %if.end39
  %call1465 = tail call fastcc i32 @em28178_dvb_init_pctv_461e(ptr noundef %dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1465)
  %tobool1466.not = icmp eq i32 %call1465, 0
  br i1 %tobool1466.not, label %sw.bb1464.sw.epilogthread-pre-split_crit_edge, label %sw.bb1464.out_free_crit_edge

sw.bb1464.out_free_crit_edge:                     ; preds = %sw.bb1464
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_free

sw.bb1464.sw.epilogthread-pre-split_crit_edge:    ; preds = %sw.bb1464
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilogthread-pre-split

sw.bb1469:                                        ; preds = %if.end39
  %call1470 = tail call fastcc i32 @em28178_dvb_init_pctv_461e_v2(ptr noundef %dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1470)
  %tobool1471.not = icmp eq i32 %call1470, 0
  br i1 %tobool1471.not, label %sw.bb1469.sw.epilogthread-pre-split_crit_edge, label %sw.bb1469.out_free_crit_edge

sw.bb1469.out_free_crit_edge:                     ; preds = %sw.bb1469
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_free

sw.bb1469.sw.epilogthread-pre-split_crit_edge:    ; preds = %sw.bb1469
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilogthread-pre-split

sw.bb1474:                                        ; preds = %if.end39
  %call1475 = tail call fastcc i32 @em28178_dvb_init_pctv_292e(ptr noundef %dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1475)
  %tobool1476.not = icmp eq i32 %call1475, 0
  br i1 %tobool1476.not, label %sw.bb1474.sw.epilogthread-pre-split_crit_edge, label %sw.bb1474.out_free_crit_edge

sw.bb1474.out_free_crit_edge:                     ; preds = %sw.bb1474
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_free

sw.bb1474.sw.epilogthread-pre-split_crit_edge:    ; preds = %sw.bb1474
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilogthread-pre-split

sw.bb1479:                                        ; preds = %if.end39
  %call1480 = tail call fastcc i32 @em28178_dvb_init_terratec_t2_stick_hd(ptr noundef %dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1480)
  %tobool1481.not = icmp eq i32 %call1480, 0
  br i1 %tobool1481.not, label %sw.bb1479.sw.epilogthread-pre-split_crit_edge, label %sw.bb1479.out_free_crit_edge

sw.bb1479.out_free_crit_edge:                     ; preds = %sw.bb1479
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_free

sw.bb1479.sw.epilogthread-pre-split_crit_edge:    ; preds = %sw.bb1479
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilogthread-pre-split

sw.bb1484:                                        ; preds = %if.end39
  %call1485 = tail call fastcc i32 @em28178_dvb_init_plex_px_bcud(ptr noundef %dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1485)
  %tobool1486.not = icmp eq i32 %call1485, 0
  br i1 %tobool1486.not, label %sw.bb1484.sw.epilogthread-pre-split_crit_edge, label %sw.bb1484.out_free_crit_edge

sw.bb1484.out_free_crit_edge:                     ; preds = %sw.bb1484
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_free

sw.bb1484.sw.epilogthread-pre-split_crit_edge:    ; preds = %sw.bb1484
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilogthread-pre-split

sw.bb1489:                                        ; preds = %if.end39
  %call1490 = tail call fastcc i32 @em28174_dvb_init_hauppauge_wintv_dualhd_dvb(ptr noundef %dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1490)
  %tobool1491.not = icmp eq i32 %call1490, 0
  br i1 %tobool1491.not, label %sw.bb1489.sw.epilogthread-pre-split_crit_edge, label %sw.bb1489.out_free_crit_edge

sw.bb1489.out_free_crit_edge:                     ; preds = %sw.bb1489
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_free

sw.bb1489.sw.epilogthread-pre-split_crit_edge:    ; preds = %sw.bb1489
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilogthread-pre-split

sw.bb1494:                                        ; preds = %if.end39
  %call1495 = tail call fastcc i32 @em28174_dvb_init_hauppauge_wintv_dualhd_01595(ptr noundef %dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1495)
  %tobool1496.not = icmp eq i32 %call1495, 0
  br i1 %tobool1496.not, label %sw.bb1494.sw.epilogthread-pre-split_crit_edge, label %sw.bb1494.out_free_crit_edge

sw.bb1494.out_free_crit_edge:                     ; preds = %sw.bb1494
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_free

sw.bb1494.sw.epilogthread-pre-split_crit_edge:    ; preds = %sw.bb1494
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilogthread-pre-split

sw.bb1499:                                        ; preds = %if.end39
  %call1500 = tail call fastcc i32 @em2874_dvb_init_hauppauge_usb_quadhd(ptr noundef %dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1500)
  %tobool1501.not = icmp eq i32 %call1500, 0
  br i1 %tobool1501.not, label %sw.bb1499.sw.epilogthread-pre-split_crit_edge, label %sw.bb1499.out_free_crit_edge

sw.bb1499.out_free_crit_edge:                     ; preds = %sw.bb1499
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_free

sw.bb1499.sw.epilogthread-pre-split_crit_edge:    ; preds = %sw.bb1499
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilogthread-pre-split

do.end1506:                                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #11
  %214 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %intf, align 4
  %dev1508 = getelementptr inbounds %struct.usb_interface, ptr %215, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1508, ptr noundef nonnull @.str.150) #12
  br label %sw.epilogthread-pre-split

sw.epilogthread-pre-split:                        ; preds = %do.end1506, %sw.bb1499.sw.epilogthread-pre-split_crit_edge, %sw.bb1494.sw.epilogthread-pre-split_crit_edge, %sw.bb1489.sw.epilogthread-pre-split_crit_edge, %sw.bb1484.sw.epilogthread-pre-split_crit_edge, %sw.bb1479.sw.epilogthread-pre-split_crit_edge, %sw.bb1474.sw.epilogthread-pre-split_crit_edge, %sw.bb1469.sw.epilogthread-pre-split_crit_edge, %sw.bb1464.sw.epilogthread-pre-split_crit_edge, %if.end1381.sw.epilogthread-pre-split_crit_edge, %if.then1323.sw.epilogthread-pre-split_crit_edge, %if.then1256.sw.epilogthread-pre-split_crit_edge, %if.then1189.sw.epilogthread-pre-split_crit_edge, %if.then1119.sw.epilogthread-pre-split_crit_edge, %if.then1050.sw.epilogthread-pre-split_crit_edge, %sw.bb996.sw.epilogthread-pre-split_crit_edge, %do.end990, %if.then985, %if.then977.sw.epilogthread-pre-split_crit_edge, %if.then923, %cleanup.thread, %if.end716, %if.then613.sw.epilogthread-pre-split_crit_edge, %if.then545.sw.epilogthread-pre-split_crit_edge, %if.end492.sw.epilogthread-pre-split_crit_edge, %if.then442.sw.epilogthread-pre-split_crit_edge, %if.end389.sw.epilogthread-pre-split_crit_edge, %do.end357, %if.then352, %if.then344.sw.epilogthread-pre-split_crit_edge, %do.end293, %if.then288, %if.then280.sw.epilogthread-pre-split_crit_edge, %if.end230.sw.epilogthread-pre-split_crit_edge, %if.end159.sw.epilogthread-pre-split_crit_edge, %if.end125.sw.epilogthread-pre-split_crit_edge, %if.end91.sw.epilogthread-pre-split_crit_edge
  %216 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %.pr = load ptr, ptr %call7.i.i, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilogthread-pre-split, %if.end917.sw.epilog_crit_edge
  %217 = phi ptr [ %.pr, %sw.epilogthread-pre-split ], [ %144, %if.end917.sw.epilog_crit_edge ]
  %tobool1511.not = icmp eq ptr %217, null
  br i1 %tobool1511.not, label %sw.epilog.do.end1515_crit_edge, label %sw.epilog.if.end1518_crit_edge

sw.epilog.if.end1518_crit_edge:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end1518

sw.epilog.do.end1515_crit_edge:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end1515

do.end1515.sink.split:                            ; preds = %do.end1416, %if.then1411, %do.end1097, %if.then1092, %do.end1024, %if.then1019, %do.end955, %if.then950, %do.end660, %if.then655, %do.end523, %if.then518, %do.end420, %if.then415, %do.end322, %if.then317, %do.end258, %if.then253
  %218 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %218)
  store ptr null, ptr %call7.i.i, align 8
  br label %do.end1515

do.end1515:                                       ; preds = %do.end1515.sink.split, %sw.epilog.do.end1515_crit_edge
  %219 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %intf, align 4
  %dev1517 = getelementptr inbounds %struct.usb_interface, ptr %220, i32 0, i32 7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1517, ptr noundef nonnull @.str.153) #12
  br label %out_free

if.end1518.sink.split:                            ; preds = %if.then1438.if.end1518.sink.split_crit_edge, %if.then46.if.end1518.sink.split_crit_edge
  %call48.sink = phi ptr [ %call48, %if.then46.if.end1518.sink.split_crit_edge ], [ %call1444, %if.then1438.if.end1518.sink.split_crit_edge ]
  %221 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %221)
  store ptr %call48.sink, ptr %call7.i.i, align 8
  br label %if.end1518

if.end1518:                                       ; preds = %if.end1518.sink.split, %sw.epilog.if.end1518_crit_edge
  %222 = phi ptr [ %217, %sw.epilog.if.end1518_crit_edge ], [ %call48.sink, %if.end1518.sink.split ]
  %callback = getelementptr inbounds %struct.dvb_frontend, ptr %222, i32 0, i32 9
  %223 = ptrtoint ptr %callback to i32
  call void @__asan_store4_noabort(i32 %223)
  store ptr @em28xx_tuner_callback, ptr %callback, align 4
  %224 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %arrayidx14, align 4
  %tobool1523.not = icmp eq ptr %225, null
  br i1 %tobool1523.not, label %if.end1518.if.end1528_crit_edge, label %if.then1524

if.end1518.if.end1528_crit_edge:                  ; preds = %if.end1518
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end1528

if.then1524:                                      ; preds = %if.end1518
  call void @__sanitizer_cov_trace_pc() #11
  %callback1527 = getelementptr inbounds %struct.dvb_frontend, ptr %225, i32 0, i32 9
  %226 = ptrtoint ptr %callback1527 to i32
  call void @__asan_store4_noabort(i32 %226)
  store ptr @em28xx_tuner_callback, ptr %callback1527, align 4
  br label %if.end1528

if.end1528:                                       ; preds = %if.then1524, %if.end1518.if.end1528_crit_edge
  %227 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %intf, align 4
  %dev1530 = getelementptr inbounds %struct.usb_interface, ptr %228, i32 0, i32 7
  %call1531 = call fastcc i32 @em28xx_register_dvb(ptr noundef nonnull %call7.i.i, ptr noundef %dev, ptr noundef %dev1530)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1531)
  %cmp1532 = icmp slt i32 %call1531, 0
  br i1 %cmp1532, label %if.end1528.out_free_crit_edge, label %if.end1534

if.end1528.out_free_crit_edge:                    ; preds = %if.end1528
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_free

if.end1534:                                       ; preds = %if.end1528
  %229 = ptrtoint ptr %dvb_xfer_bulk to i32
  call void @__asan_load1_noabort(i32 %229)
  %bf.load1536 = load i8, ptr %dvb_xfer_bulk, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load1536)
  %tobool1539.not = icmp sgt i8 %bf.load1536, -1
  br i1 %tobool1539.not, label %if.else1541, label %if.end1534.if.end1542_crit_edge

if.end1534.if.end1542_crit_edge:                  ; preds = %if.end1534
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end1542

if.else1541:                                      ; preds = %if.end1534
  call void @__sanitizer_cov_trace_pc() #11
  %dvb_alt_isoc = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 58
  %230 = ptrtoint ptr %dvb_alt_isoc to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load i32, ptr %dvb_alt_isoc, align 8
  br label %if.end1542

if.end1542:                                       ; preds = %if.else1541, %if.end1534.if.end1542_crit_edge
  %dvb_alt.0 = phi i32 [ %231, %if.else1541 ], [ 0, %if.end1534.if.end1542_crit_edge ]
  %232 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %intf, align 4
  %parent.i = getelementptr inbounds %struct.usb_interface, ptr %233, i32 0, i32 7, i32 1
  %234 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %parent.i, align 8
  %add.ptr.i = getelementptr i8, ptr %235, i32 -128
  %ifnum = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 45
  %236 = ptrtoint ptr %ifnum to i32
  call void @__asan_load1_noabort(i32 %236)
  %237 = load i8, ptr %ifnum, align 8
  %conv = zext i8 %237 to i32
  %call1545 = call i32 @usb_set_interface(ptr noundef %add.ptr.i, i32 noundef %conv, i32 noundef %dvb_alt.0) #9
  %238 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %intf, align 4
  %dev1550 = getelementptr inbounds %struct.usb_interface, ptr %239, i32 0, i32 7
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1550, ptr noundef nonnull @.str.156) #12
  call fastcc void @kref_get(ptr noundef %dev)
  br label %ret

ret:                                              ; preds = %out_free, %if.end1542
  %result.3 = phi i32 [ %result.4, %out_free ], [ %call1531, %if.end1542 ]
  %call1551 = call i32 @em28xx_set_mode(ptr noundef %dev, i32 noundef 0) #9
  call void @mutex_unlock(ptr noundef %lock) #9
  br label %cleanup1554

out_free:                                         ; preds = %if.end1528.out_free_crit_edge, %do.end1515, %sw.bb1499.out_free_crit_edge, %sw.bb1494.out_free_crit_edge, %sw.bb1489.out_free_crit_edge, %sw.bb1484.out_free_crit_edge, %sw.bb1479.out_free_crit_edge, %sw.bb1474.out_free_crit_edge, %sw.bb1469.out_free_crit_edge, %sw.bb1464.out_free_crit_edge, %if.end1454.thread, %if.then1387, %if.end1373.thread, %do.end1336, %if.then1331, %if.end1303.thread, %do.end1269, %if.then1264, %if.end1236.thread, %do.end1202, %if.then1197, %if.end1169.thread, %if.then1138, %if.then1069, %sw.bb996.out_free_crit_edge, %do.end910, %if.then905, %if.end850.thread, %cleanup, %if.then701, %if.then632, %if.end593.thread, %do.end558, %if.then553, %if.end492.out_free_crit_edge, %do.end455, %if.then450, %if.end389.out_free_crit_edge, %if.end230.out_free_crit_edge, %if.end159.out_free_crit_edge, %if.end125.out_free_crit_edge, %if.end91.out_free_crit_edge, %if.end56.thread
  %result.4 = phi i32 [ %call1531, %if.end1528.out_free_crit_edge ], [ -22, %do.end1515 ], [ %call1500, %sw.bb1499.out_free_crit_edge ], [ %call1495, %sw.bb1494.out_free_crit_edge ], [ %call1490, %sw.bb1489.out_free_crit_edge ], [ %call1485, %sw.bb1484.out_free_crit_edge ], [ %call1480, %sw.bb1479.out_free_crit_edge ], [ %call1475, %sw.bb1474.out_free_crit_edge ], [ %call1470, %sw.bb1469.out_free_crit_edge ], [ %call1465, %sw.bb1464.out_free_crit_edge ], [ -22, %if.then1138 ], [ -22, %if.then1069 ], [ %call997, %sw.bb996.out_free_crit_edge ], [ -22, %cleanup ], [ -22, %if.then701 ], [ -22, %if.then632 ], [ -22, %if.end91.out_free_crit_edge ], [ -22, %if.end125.out_free_crit_edge ], [ -22, %if.end159.out_free_crit_edge ], [ -22, %if.end230.out_free_crit_edge ], [ -22, %if.end389.out_free_crit_edge ], [ -22, %if.end492.out_free_crit_edge ], [ -22, %if.end56.thread ], [ -22, %if.end593.thread ], [ -22, %if.end850.thread ], [ -22, %if.end1169.thread ], [ -22, %if.end1236.thread ], [ -22, %if.end1303.thread ], [ -22, %if.end1454.thread ], [ -22, %if.then450 ], [ -22, %do.end455 ], [ -22, %if.then553 ], [ -22, %do.end558 ], [ -22, %if.then905 ], [ -22, %do.end910 ], [ -22, %if.then1197 ], [ -22, %do.end1202 ], [ -22, %if.then1264 ], [ -22, %do.end1269 ], [ -22, %if.then1331 ], [ -22, %do.end1336 ], [ -22, %if.end1373.thread ], [ -19, %if.then1387 ]
  call void @em28xx_uninit_usb_xfer(ptr noundef %dev, i32 noundef 2) #9
  call void @kfree(ptr noundef nonnull %call7.i.i) #9
  %240 = ptrtoint ptr %dvb12 to i32
  call void @__asan_store4_noabort(i32 %240)
  store ptr null, ptr %dvb12, align 8
  br label %ret

cleanup1554:                                      ; preds = %ret, %do.end35, %do.end.cleanup1554_crit_edge, %if.end.cleanup1554_crit_edge, %entry.cleanup1554_crit_edge
  %retval.0 = phi i32 [ %result.0, %do.end35 ], [ %result.3, %ret ], [ 0, %entry.cleanup1554_crit_edge ], [ 0, %if.end.cleanup1554_crit_edge ], [ -12, %do.end.cleanup1554_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @em28xx_dvb_fini(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %is_audio_only = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %is_audio_only to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %is_audio_only, align 4
  %1 = and i8 %bf.load, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %has_dvb = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 12, i32 10
  %2 = ptrtoint ptr %has_dvb to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load1 = load i16, ptr %has_dvb, align 8
  %3 = and i16 %bf.load1, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool5.not = icmp eq i16 %3, 0
  br i1 %tobool5.not, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %dvb8 = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 2
  %4 = ptrtoint ptr %dvb8 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dvb8, align 8
  %tobool9.not = icmp eq ptr %5, null
  br i1 %tobool9.not, label %if.end7.cleanup_crit_edge, label %do.end

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end:                                           ; preds = %if.end7
  %intf = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 44
  %6 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %intf, align 4
  %dev12 = getelementptr inbounds %struct.usb_interface, ptr %7, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev12, ptr noundef nonnull @.str.239) #12
  %8 = ptrtoint ptr %dvb8 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dvb8, align 8
  tail call void @em28xx_uninit_usb_xfer(ptr noundef %dev, i32 noundef 2) #9
  %10 = ptrtoint ptr %is_audio_only to i32
  call void @__asan_load1_noabort(i32 %10)
  %bf.load14 = load i8, ptr %is_audio_only, align 4
  %11 = and i8 %bf.load14, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool18.not = icmp eq i8 %11, 0
  br i1 %tobool18.not, label %do.end.if.end38_crit_edge, label %if.then19

do.end.if.end38_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end38

if.then19:                                        ; preds = %do.end
  %12 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %9, align 8
  %tobool20.not = icmp eq ptr %13, null
  br i1 %tobool20.not, label %if.then19.if.end26_crit_edge, label %if.then21

if.then19.if.end26_crit_edge:                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26

if.then21:                                        ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #11
  %set_voltage.i = getelementptr inbounds %struct.dvb_frontend, ptr %13, i32 0, i32 1, i32 25
  %14 = ptrtoint ptr %set_voltage.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %set_voltage.i, align 4
  %sleep.i = getelementptr inbounds %struct.dvb_frontend, ptr %13, i32 0, i32 1, i32 6
  %15 = ptrtoint ptr %sleep.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %sleep.i, align 4
  %sleep1.i = getelementptr inbounds %struct.dvb_frontend, ptr %13, i32 0, i32 1, i32 32, i32 3
  %16 = ptrtoint ptr %sleep1.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %sleep1.i, align 4
  %17 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %9, align 8
  %exit = getelementptr inbounds %struct.dvb_frontend, ptr %18, i32 0, i32 11
  %19 = ptrtoint ptr %exit to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 2, ptr %exit, align 4
  br label %if.end26

if.end26:                                         ; preds = %if.then21, %if.then19.if.end26_crit_edge
  %arrayidx28 = getelementptr [2 x ptr], ptr %9, i32 0, i32 1
  %20 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx28, align 4
  %tobool29.not = icmp eq ptr %21, null
  br i1 %tobool29.not, label %if.end26.if.end38_crit_edge, label %if.then30

if.end26.if.end38_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end38

if.then30:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  %set_voltage.i59 = getelementptr inbounds %struct.dvb_frontend, ptr %21, i32 0, i32 1, i32 25
  %22 = ptrtoint ptr %set_voltage.i59 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %set_voltage.i59, align 4
  %sleep.i60 = getelementptr inbounds %struct.dvb_frontend, ptr %21, i32 0, i32 1, i32 6
  %23 = ptrtoint ptr %sleep.i60 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %sleep.i60, align 4
  %sleep1.i61 = getelementptr inbounds %struct.dvb_frontend, ptr %21, i32 0, i32 1, i32 32, i32 3
  %24 = ptrtoint ptr %sleep1.i61 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %sleep1.i61, align 4
  %25 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx28, align 4
  %exit36 = getelementptr inbounds %struct.dvb_frontend, ptr %26, i32 0, i32 11
  %27 = ptrtoint ptr %exit36 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 2, ptr %exit36, align 4
  br label %if.end38

if.end38:                                         ; preds = %if.then30, %if.end26.if.end38_crit_edge, %do.end.if.end38_crit_edge
  tail call fastcc void @em28xx_unregister_dvb(ptr noundef %9)
  %i2c_client_sec = getelementptr inbounds %struct.em28xx_dvb, ptr %9, i32 0, i32 15
  %28 = ptrtoint ptr %i2c_client_sec to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %i2c_client_sec, align 4
  tail call void @dvb_module_release(ptr noundef %29) #9
  %i2c_client_tuner = getelementptr inbounds %struct.em28xx_dvb, ptr %9, i32 0, i32 14
  %30 = ptrtoint ptr %i2c_client_tuner to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %i2c_client_tuner, align 8
  tail call void @dvb_module_release(ptr noundef %31) #9
  %i2c_client_demod = getelementptr inbounds %struct.em28xx_dvb, ptr %9, i32 0, i32 13
  %32 = ptrtoint ptr %i2c_client_demod to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %i2c_client_demod, align 4
  tail call void @dvb_module_release(ptr noundef %33) #9
  tail call void @kfree(ptr noundef %9) #9
  %34 = ptrtoint ptr %dvb8 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr null, ptr %dvb8, align 8
  tail call fastcc void @kref_put(ptr noundef %dev)
  br label %cleanup

cleanup:                                          ; preds = %if.end38, %if.end7.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @em28xx_dvb_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %is_audio_only = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %is_audio_only to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %is_audio_only, align 4
  %1 = and i8 %bf.load, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %has_dvb = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 12, i32 10
  %2 = ptrtoint ptr %has_dvb to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load1 = load i16, ptr %has_dvb, align 8
  %3 = and i16 %bf.load1, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool5.not = icmp eq i16 %3, 0
  br i1 %tobool5.not, label %if.end.cleanup_crit_edge, label %do.end

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end:                                           ; preds = %if.end
  %intf = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 44
  %4 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %intf, align 4
  %dev8 = getelementptr inbounds %struct.usb_interface, ptr %5, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev8, ptr noundef nonnull @.str.241) #12
  %dvb = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 2
  %6 = ptrtoint ptr %dvb to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dvb, align 8
  %tobool9.not = icmp eq ptr %7, null
  br i1 %tobool9.not, label %do.end.cleanup_crit_edge, label %if.then10

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then10:                                        ; preds = %do.end
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 8
  %tobool13.not = icmp eq ptr %9, null
  br i1 %tobool13.not, label %if.then10.if.end22_crit_edge, label %if.then14

if.then10.if.end22_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22

if.then14:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 @dvb_frontend_suspend(ptr noundef nonnull %9) #9
  %10 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %intf, align 4
  %dev21 = getelementptr inbounds %struct.usb_interface, ptr %11, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev21, ptr noundef nonnull @.str.244, i32 noundef %call) #12
  br label %if.end22

if.end22:                                         ; preds = %if.then14, %if.then10.if.end22_crit_edge
  %ret.0 = phi i32 [ %call, %if.then14 ], [ 0, %if.then10.if.end22_crit_edge ]
  %arrayidx24 = getelementptr [2 x ptr], ptr %7, i32 0, i32 1
  %12 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx24, align 4
  %tobool25.not = icmp eq ptr %13, null
  br i1 %tobool25.not, label %if.end22.cleanup_crit_edge, label %if.then26

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then26:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  %call29 = tail call i32 @dvb_frontend_suspend(ptr noundef nonnull %13) #9
  %14 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %intf, align 4
  %dev34 = getelementptr inbounds %struct.usb_interface, ptr %15, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev34, ptr noundef nonnull @.str.247, i32 noundef %ret.0) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then26, %if.end22.cleanup_crit_edge, %do.end.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @em28xx_dvb_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %is_audio_only = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %is_audio_only to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %is_audio_only, align 4
  %1 = and i8 %bf.load, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %has_dvb = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 12, i32 10
  %2 = ptrtoint ptr %has_dvb to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load1 = load i16, ptr %has_dvb, align 8
  %3 = and i16 %bf.load1, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool5.not = icmp eq i16 %3, 0
  br i1 %tobool5.not, label %if.end.cleanup_crit_edge, label %do.end

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end:                                           ; preds = %if.end
  %intf = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 44
  %4 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %intf, align 4
  %dev8 = getelementptr inbounds %struct.usb_interface, ptr %5, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev8, ptr noundef nonnull @.str.249) #12
  %dvb = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 2
  %6 = ptrtoint ptr %dvb to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dvb, align 8
  %tobool9.not = icmp eq ptr %7, null
  br i1 %tobool9.not, label %do.end.cleanup_crit_edge, label %if.then10

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then10:                                        ; preds = %do.end
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 8
  %tobool13.not = icmp eq ptr %9, null
  br i1 %tobool13.not, label %if.then10.if.end22_crit_edge, label %if.then14

if.then10.if.end22_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22

if.then14:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 @dvb_frontend_resume(ptr noundef nonnull %9) #9
  %10 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %intf, align 4
  %dev21 = getelementptr inbounds %struct.usb_interface, ptr %11, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev21, ptr noundef nonnull @.str.252, i32 noundef %call) #12
  br label %if.end22

if.end22:                                         ; preds = %if.then14, %if.then10.if.end22_crit_edge
  %arrayidx24 = getelementptr [2 x ptr], ptr %7, i32 0, i32 1
  %12 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx24, align 4
  %tobool25.not = icmp eq ptr %13, null
  br i1 %tobool25.not, label %if.end22.cleanup_crit_edge, label %if.then26

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then26:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  %call29 = tail call i32 @dvb_frontend_resume(ptr noundef nonnull %13) #9
  %14 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %intf, align 4
  %dev34 = getelementptr inbounds %struct.usb_interface, ptr %15, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev34, ptr noundef nonnull @.str.255, i32 noundef %call29) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then26, %if.end22.cleanup_crit_edge, %do.end.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @em28xx_alloc_urbs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @em28xx_set_mode(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__symbol_get(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__request_module(i1 noundef zeroext, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__symbol_put(ptr noundef) local_unnamed_addr #0

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @em28xx_attach_xc3028(ptr noundef %dev) unnamed_addr #5 align 64 {
entry:
  %cfg = alloca %struct.xc2028_config, align 4
  %ctl = alloca %struct.xc2028_ctrl, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %cfg) #9
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %ctl) #9
  %0 = getelementptr inbounds i8, ptr %cfg, i32 4
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %0, align 4
  %def_i2c_bus = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 23
  %2 = ptrtoint ptr %def_i2c_bus to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %def_i2c_bus, align 4
  %arrayidx = getelementptr %struct.em28xx, ptr %dev, i32 0, i32 19, i32 %3
  %4 = ptrtoint ptr %cfg to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %arrayidx, ptr %cfg, align 4
  %i2c_addr = getelementptr inbounds %struct.xc2028_config, ptr %cfg, i32 0, i32 1
  %5 = ptrtoint ptr %i2c_addr to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 97, ptr %i2c_addr, align 4
  %6 = call ptr @memset(ptr %ctl, i32 0, i32 28)
  call void @em28xx_setup_xc3028(ptr noundef %dev, ptr noundef nonnull %ctl) #9
  %ctrl = getelementptr inbounds %struct.xc2028_config, ptr %cfg, i32 0, i32 2
  %7 = ptrtoint ptr %ctrl to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %ctl, ptr %ctrl, align 4
  %dvb = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 2
  %8 = ptrtoint ptr %dvb to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dvb, align 8
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 8
  %tobool.not = icmp eq ptr %11, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %intf = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 44
  %12 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %intf, align 4
  %dev4 = getelementptr inbounds %struct.usb_interface, ptr %13, i32 0, i32 7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev4, ptr noundef nonnull @.str.158) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = call ptr @__symbol_get(ptr noundef nonnull @.str.160) #9
  %tobool5.not = icmp eq ptr %call, null
  br i1 %tobool5.not, label %cond.end, label %if.end.if.then9_crit_edge

if.end.if.then9_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then9

cond.end:                                         ; preds = %if.end
  %call6 = call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.161) #9
  %call7 = call ptr @__symbol_get(ptr noundef nonnull @.str.160) #9
  %tobool8.not = icmp eq ptr %call7, null
  br i1 %tobool8.not, label %do.end18, label %cond.end.if.then9_crit_edge

cond.end.if.then9_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then9

if.then9:                                         ; preds = %cond.end.if.then9_crit_edge, %if.end.if.then9_crit_edge
  %cond3 = phi ptr [ %call7, %cond.end.if.then9_crit_edge ], [ %call, %if.end.if.then9_crit_edge ]
  %14 = ptrtoint ptr %dvb to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dvb, align 8
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 8
  %call13 = call ptr %cond3(ptr noundef %17, ptr noundef nonnull %cfg) #9
  %cmp = icmp eq ptr %call13, null
  br i1 %cmp, label %if.then14, label %do.end38

if.then14:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #11
  call void @__symbol_put(ptr noundef nonnull @.str.160) #9
  br label %do.end26

do.end18:                                         ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  %call19 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.163) #12
  br label %do.end26

do.end26:                                         ; preds = %do.end18, %if.then14
  %intf27 = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 44
  %18 = ptrtoint ptr %intf27 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %intf27, align 4
  %dev28 = getelementptr inbounds %struct.usb_interface, ptr %19, i32 0, i32 7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev28, ptr noundef nonnull @.str.166) #12
  %20 = ptrtoint ptr %dvb to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dvb, align 8
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 8
  call void @dvb_frontend_detach(ptr noundef %23) #9
  %24 = ptrtoint ptr %dvb to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dvb, align 8
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %25, align 8
  br label %cleanup

do.end38:                                         ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #11
  %intf39 = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 44
  %27 = ptrtoint ptr %intf39 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %intf39, align 4
  %dev40 = getelementptr inbounds %struct.usb_interface, ptr %28, i32 0, i32 7
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev40, ptr noundef nonnull @.str.169) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end38, %do.end26, %do.end
  %retval.0 = phi i32 [ 0, %do.end38 ], [ -22, %do.end26 ], [ -22, %do.end ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %ctl) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %cfg) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dvb_frontend_detach(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpio_request_one(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpio_free(i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @em28xx_pctv_290e_set_lna(ptr nocapture noundef readonly %fe) #2 align 64 {
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
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %dvb3 = getelementptr inbounds %struct.em28xx, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %dvb3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dvb3, align 8
  %lna = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 41
  %8 = ptrtoint ptr %lna to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %lna, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp = icmp eq i32 %9, 1
  %. = select i1 %cmp, i32 2, i32 0
  %lna_gpio = getelementptr inbounds %struct.em28xx_dvb, ptr %7, i32 0, i32 12
  %10 = ptrtoint ptr %lna_gpio to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %lna_gpio, align 8
  %call = tail call i32 @gpio_request_one(i32 noundef %11, i32 noundef %., ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.else6, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %intf = getelementptr inbounds %struct.em28xx, ptr %5, i32 0, i32 44
  %12 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %intf, align 4
  %dev5 = getelementptr inbounds %struct.usb_interface, ptr %13, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev5, ptr noundef nonnull @.str.93, i32 noundef %call) #12
  br label %if.end8

if.else6:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %14 = ptrtoint ptr %lna_gpio to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %lna_gpio, align 8
  tail call void @gpio_free(i32 noundef %15) #9
  br label %if.end8

if.end8:                                          ; preds = %if.else6, %do.end
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @hauppauge_hvr930c_init(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @em28xx_gpio_set(ptr noundef %dev, ptr noundef nonnull @hauppauge_hvr930c_init.hauppauge_hvr930c_init) #9
  %call1 = tail call i32 @em28xx_write_reg(ptr noundef %dev, i16 noundef zeroext 6, i8 noundef zeroext 64) #9
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 11000, i32 noundef 2) #9
  %call2 = tail call i32 @em28xx_write_reg(ptr noundef %dev, i16 noundef zeroext 6, i8 noundef zeroext 68) #9
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 11000, i32 noundef 2) #9
  %def_i2c_bus = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 23
  %0 = ptrtoint ptr %def_i2c_bus to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %def_i2c_bus, align 4
  %addr = getelementptr %struct.em28xx, ptr %dev, i32 0, i32 20, i32 %1, i32 1
  %2 = ptrtoint ptr %addr to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 65, ptr %addr, align 2
  %arrayidx5 = getelementptr %struct.em28xx, ptr %dev, i32 0, i32 20, i32 %1
  %call.i = tail call i32 @i2c_transfer_buffer_flags(ptr noundef %arrayidx5, ptr noundef nonnull @hauppauge_hvr930c_init.regs, i32 noundef 4, i16 noundef zeroext 0) #9
  %3 = ptrtoint ptr %def_i2c_bus to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %def_i2c_bus, align 4
  %arrayidx5.1 = getelementptr %struct.em28xx, ptr %dev, i32 0, i32 20, i32 %4
  %call.i.1 = tail call i32 @i2c_transfer_buffer_flags(ptr noundef %arrayidx5.1, ptr noundef getelementptr inbounds ([13 x %struct.anon.149], ptr @hauppauge_hvr930c_init.regs, i32 0, i32 1), i32 noundef 2, i16 noundef zeroext 0) #9
  %5 = ptrtoint ptr %def_i2c_bus to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %def_i2c_bus, align 4
  %arrayidx5.2 = getelementptr %struct.em28xx, ptr %dev, i32 0, i32 20, i32 %6
  %call.i.2 = tail call i32 @i2c_transfer_buffer_flags(ptr noundef %arrayidx5.2, ptr noundef getelementptr inbounds ([13 x %struct.anon.149], ptr @hauppauge_hvr930c_init.regs, i32 0, i32 2), i32 noundef 4, i16 noundef zeroext 0) #9
  %7 = ptrtoint ptr %def_i2c_bus to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %def_i2c_bus, align 4
  %arrayidx5.3 = getelementptr %struct.em28xx, ptr %dev, i32 0, i32 20, i32 %8
  %call.i.3 = tail call i32 @i2c_transfer_buffer_flags(ptr noundef %arrayidx5.3, ptr noundef getelementptr inbounds ([13 x %struct.anon.149], ptr @hauppauge_hvr930c_init.regs, i32 0, i32 3), i32 noundef 2, i16 noundef zeroext 0) #9
  %9 = ptrtoint ptr %def_i2c_bus to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %def_i2c_bus, align 4
  %arrayidx5.4 = getelementptr %struct.em28xx, ptr %dev, i32 0, i32 20, i32 %10
  %call.i.4 = tail call i32 @i2c_transfer_buffer_flags(ptr noundef %arrayidx5.4, ptr noundef getelementptr inbounds ([13 x %struct.anon.149], ptr @hauppauge_hvr930c_init.regs, i32 0, i32 4), i32 noundef 4, i16 noundef zeroext 0) #9
  %11 = ptrtoint ptr %def_i2c_bus to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %def_i2c_bus, align 4
  %arrayidx5.5 = getelementptr %struct.em28xx, ptr %dev, i32 0, i32 20, i32 %12
  %call.i.5 = tail call i32 @i2c_transfer_buffer_flags(ptr noundef %arrayidx5.5, ptr noundef getelementptr inbounds ([13 x %struct.anon.149], ptr @hauppauge_hvr930c_init.regs, i32 0, i32 5), i32 noundef 4, i16 noundef zeroext 0) #9
  %13 = ptrtoint ptr %def_i2c_bus to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %def_i2c_bus, align 4
  %arrayidx5.6 = getelementptr %struct.em28xx, ptr %dev, i32 0, i32 20, i32 %14
  %call.i.6 = tail call i32 @i2c_transfer_buffer_flags(ptr noundef %arrayidx5.6, ptr noundef getelementptr inbounds ([13 x %struct.anon.149], ptr @hauppauge_hvr930c_init.regs, i32 0, i32 6), i32 noundef 2, i16 noundef zeroext 0) #9
  %15 = ptrtoint ptr %def_i2c_bus to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %def_i2c_bus, align 4
  %arrayidx5.7 = getelementptr %struct.em28xx, ptr %dev, i32 0, i32 20, i32 %16
  %call.i.7 = tail call i32 @i2c_transfer_buffer_flags(ptr noundef %arrayidx5.7, ptr noundef getelementptr inbounds ([13 x %struct.anon.149], ptr @hauppauge_hvr930c_init.regs, i32 0, i32 7), i32 noundef 4, i16 noundef zeroext 0) #9
  %17 = ptrtoint ptr %def_i2c_bus to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %def_i2c_bus, align 4
  %arrayidx5.8 = getelementptr %struct.em28xx, ptr %dev, i32 0, i32 20, i32 %18
  %call.i.8 = tail call i32 @i2c_transfer_buffer_flags(ptr noundef %arrayidx5.8, ptr noundef getelementptr inbounds ([13 x %struct.anon.149], ptr @hauppauge_hvr930c_init.regs, i32 0, i32 8), i32 noundef 2, i16 noundef zeroext 0) #9
  %19 = ptrtoint ptr %def_i2c_bus to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %def_i2c_bus, align 4
  %arrayidx5.9 = getelementptr %struct.em28xx, ptr %dev, i32 0, i32 20, i32 %20
  %call.i.9 = tail call i32 @i2c_transfer_buffer_flags(ptr noundef %arrayidx5.9, ptr noundef getelementptr inbounds ([13 x %struct.anon.149], ptr @hauppauge_hvr930c_init.regs, i32 0, i32 9), i32 noundef 2, i16 noundef zeroext 0) #9
  %21 = ptrtoint ptr %def_i2c_bus to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %def_i2c_bus, align 4
  %arrayidx5.10 = getelementptr %struct.em28xx, ptr %dev, i32 0, i32 20, i32 %22
  %call.i.10 = tail call i32 @i2c_transfer_buffer_flags(ptr noundef %arrayidx5.10, ptr noundef getelementptr inbounds ([13 x %struct.anon.149], ptr @hauppauge_hvr930c_init.regs, i32 0, i32 10), i32 noundef 4, i16 noundef zeroext 0) #9
  %23 = ptrtoint ptr %def_i2c_bus to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %def_i2c_bus, align 4
  %arrayidx5.11 = getelementptr %struct.em28xx, ptr %dev, i32 0, i32 20, i32 %24
  %call.i.11 = tail call i32 @i2c_transfer_buffer_flags(ptr noundef %arrayidx5.11, ptr noundef getelementptr inbounds ([13 x %struct.anon.149], ptr @hauppauge_hvr930c_init.regs, i32 0, i32 11), i32 noundef 2, i16 noundef zeroext 0) #9
  %25 = ptrtoint ptr %def_i2c_bus to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %def_i2c_bus, align 4
  %arrayidx5.12 = getelementptr %struct.em28xx, ptr %dev, i32 0, i32 20, i32 %26
  %call.i.12 = tail call i32 @i2c_transfer_buffer_flags(ptr noundef %arrayidx5.12, ptr noundef getelementptr inbounds ([13 x %struct.anon.149], ptr @hauppauge_hvr930c_init.regs, i32 0, i32 12), i32 noundef 4, i16 noundef zeroext 0) #9
  %call9 = tail call i32 @em28xx_gpio_set(ptr noundef %dev, ptr noundef nonnull @hauppauge_hvr930c_init.hauppauge_hvr930c_end) #9
  tail call void @msleep(i32 noundef 100) #9
  %call10 = tail call i32 @em28xx_write_reg(ptr noundef %dev, i16 noundef zeroext 6, i8 noundef zeroext 68) #9
  tail call void @msleep(i32 noundef 30) #9
  %call11 = tail call i32 @em28xx_write_reg(ptr noundef %dev, i16 noundef zeroext 6, i8 noundef zeroext 69) #9
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 11000, i32 noundef 2) #9
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sema_init(ptr noundef %sem) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %wait_list1 = getelementptr inbounds %struct.semaphore, ptr %sem, i32 0, i32 2
  %0 = ptrtoint ptr %sem to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %sem, align 4
  %.compoundliteral.sroa.2.0..sroa_idx = getelementptr inbounds i8, ptr %sem, i32 4
  %1 = ptrtoint ptr %.compoundliteral.sroa.2.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -559067475, ptr %.compoundliteral.sroa.2.0..sroa_idx, align 4
  %.compoundliteral.sroa.3.0..sroa_idx = getelementptr inbounds i8, ptr %sem, i32 8
  %2 = ptrtoint ptr %.compoundliteral.sroa.3.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %.compoundliteral.sroa.3.0..sroa_idx, align 4
  %.compoundliteral.sroa.4.0..sroa_idx = getelementptr inbounds i8, ptr %sem, i32 12
  %3 = ptrtoint ptr %.compoundliteral.sroa.4.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr inttoptr (i32 -1 to ptr), ptr %.compoundliteral.sroa.4.0..sroa_idx, align 4
  %.compoundliteral.sroa.5.0..sroa_idx = getelementptr inbounds i8, ptr %sem, i32 16
  %4 = call ptr @memset(ptr %.compoundliteral.sroa.5.0..sroa_idx, i32 0, i32 12)
  %.compoundliteral.sroa.6.0..sroa_idx = getelementptr inbounds i8, ptr %sem, i32 28
  %5 = ptrtoint ptr %.compoundliteral.sroa.6.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @.str.174, ptr %.compoundliteral.sroa.6.0..sroa_idx, align 4
  %.compoundliteral.sroa.7.0..sroa_idx = getelementptr inbounds i8, ptr %sem, i32 32
  %6 = ptrtoint ptr %.compoundliteral.sroa.7.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %.compoundliteral.sroa.7.0..sroa_idx, align 4
  %.compoundliteral.sroa.75.0..sroa_idx = getelementptr inbounds i8, ptr %sem, i32 33
  %7 = ptrtoint ptr %.compoundliteral.sroa.75.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 2, ptr %.compoundliteral.sroa.75.0..sroa_idx, align 1
  %.compoundliteral.sroa.8.0..sroa_idx = getelementptr inbounds i8, ptr %sem, i32 34
  %8 = call ptr @memset(ptr %.compoundliteral.sroa.8.0..sroa_idx, i32 0, i32 10)
  %.compoundliteral.sroa.86.0..sroa_idx = getelementptr inbounds i8, ptr %sem, i32 44
  %9 = ptrtoint ptr %.compoundliteral.sroa.86.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %.compoundliteral.sroa.86.0..sroa_idx, align 4
  %10 = ptrtoint ptr %wait_list1 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %wait_list1, ptr %wait_list1, align 4
  %.compoundliteral.sroa.10.0..sroa_idx = getelementptr inbounds i8, ptr %sem, i32 52
  %11 = ptrtoint ptr %.compoundliteral.sroa.10.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %wait_list1, ptr %.compoundliteral.sroa.10.0..sroa_idx, align 4
  tail call void @lockdep_init_map_type(ptr noundef %.compoundliteral.sroa.5.0..sroa_idx, ptr noundef nonnull @.str.175, ptr noundef nonnull @sema_init.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @drxk_gate_ctrl(ptr noundef %fe, i32 noundef %enable) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %sec_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 6
  %0 = ptrtoint ptr %sec_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sec_priv, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable)
  %tobool1.not = icmp eq i32 %enable, 0
  br i1 %tobool1.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %pll_mutex = getelementptr inbounds %struct.em28xx_dvb, ptr %1, i32 0, i32 10
  tail call void @down(ptr noundef %pll_mutex) #9
  %gate_ctrl = getelementptr inbounds %struct.em28xx_dvb, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %gate_ctrl, align 8
  %call = tail call i32 %3(ptr noundef %fe, i32 noundef 1) #9
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %gate_ctrl3 = getelementptr inbounds %struct.em28xx_dvb, ptr %1, i32 0, i32 9
  %4 = ptrtoint ptr %gate_ctrl3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %gate_ctrl3, align 8
  %call4 = tail call i32 %5(ptr noundef %fe, i32 noundef 0) #9
  %pll_mutex5 = getelementptr inbounds %struct.em28xx_dvb, ptr %1, i32 0, i32 10
  tail call void @up(ptr noundef %pll_mutex5) #9
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then2, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %call, %if.then2 ], [ %call4, %if.else ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @terratec_h5_init(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @em28xx_gpio_set(ptr noundef %dev, ptr noundef nonnull @terratec_h5_init.terratec_h5_init) #9
  %call1 = tail call i32 @em28xx_write_reg(ptr noundef %dev, i16 noundef zeroext 6, i8 noundef zeroext 64) #9
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 11000, i32 noundef 2) #9
  %call2 = tail call i32 @em28xx_write_reg(ptr noundef %dev, i16 noundef zeroext 6, i8 noundef zeroext 69) #9
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 11000, i32 noundef 2) #9
  %def_i2c_bus = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 23
  %0 = ptrtoint ptr %def_i2c_bus to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %def_i2c_bus, align 4
  %addr = getelementptr %struct.em28xx, ptr %dev, i32 0, i32 20, i32 %1, i32 1
  %2 = ptrtoint ptr %addr to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 65, ptr %addr, align 2
  %arrayidx5 = getelementptr %struct.em28xx, ptr %dev, i32 0, i32 20, i32 %1
  %call.i = tail call i32 @i2c_transfer_buffer_flags(ptr noundef %arrayidx5, ptr noundef nonnull @terratec_h5_init.regs, i32 noundef 4, i16 noundef zeroext 0) #9
  %3 = ptrtoint ptr %def_i2c_bus to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %def_i2c_bus, align 4
  %arrayidx5.1 = getelementptr %struct.em28xx, ptr %dev, i32 0, i32 20, i32 %4
  %call.i.1 = tail call i32 @i2c_transfer_buffer_flags(ptr noundef %arrayidx5.1, ptr noundef getelementptr inbounds ([13 x %struct.anon.150], ptr @terratec_h5_init.regs, i32 0, i32 1), i32 noundef 2, i16 noundef zeroext 0) #9
  %5 = ptrtoint ptr %def_i2c_bus to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %def_i2c_bus, align 4
  %arrayidx5.2 = getelementptr %struct.em28xx, ptr %dev, i32 0, i32 20, i32 %6
  %call.i.2 = tail call i32 @i2c_transfer_buffer_flags(ptr noundef %arrayidx5.2, ptr noundef getelementptr inbounds ([13 x %struct.anon.150], ptr @terratec_h5_init.regs, i32 0, i32 2), i32 noundef 4, i16 noundef zeroext 0) #9
  %7 = ptrtoint ptr %def_i2c_bus to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %def_i2c_bus, align 4
  %arrayidx5.3 = getelementptr %struct.em28xx, ptr %dev, i32 0, i32 20, i32 %8
  %call.i.3 = tail call i32 @i2c_transfer_buffer_flags(ptr noundef %arrayidx5.3, ptr noundef getelementptr inbounds ([13 x %struct.anon.150], ptr @terratec_h5_init.regs, i32 0, i32 3), i32 noundef 2, i16 noundef zeroext 0) #9
  %9 = ptrtoint ptr %def_i2c_bus to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %def_i2c_bus, align 4
  %arrayidx5.4 = getelementptr %struct.em28xx, ptr %dev, i32 0, i32 20, i32 %10
  %call.i.4 = tail call i32 @i2c_transfer_buffer_flags(ptr noundef %arrayidx5.4, ptr noundef getelementptr inbounds ([13 x %struct.anon.150], ptr @terratec_h5_init.regs, i32 0, i32 4), i32 noundef 4, i16 noundef zeroext 0) #9
  %11 = ptrtoint ptr %def_i2c_bus to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %def_i2c_bus, align 4
  %arrayidx5.5 = getelementptr %struct.em28xx, ptr %dev, i32 0, i32 20, i32 %12
  %call.i.5 = tail call i32 @i2c_transfer_buffer_flags(ptr noundef %arrayidx5.5, ptr noundef getelementptr inbounds ([13 x %struct.anon.150], ptr @terratec_h5_init.regs, i32 0, i32 5), i32 noundef 4, i16 noundef zeroext 0) #9
  %13 = ptrtoint ptr %def_i2c_bus to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %def_i2c_bus, align 4
  %arrayidx5.6 = getelementptr %struct.em28xx, ptr %dev, i32 0, i32 20, i32 %14
  %call.i.6 = tail call i32 @i2c_transfer_buffer_flags(ptr noundef %arrayidx5.6, ptr noundef getelementptr inbounds ([13 x %struct.anon.150], ptr @terratec_h5_init.regs, i32 0, i32 6), i32 noundef 2, i16 noundef zeroext 0) #9
  %15 = ptrtoint ptr %def_i2c_bus to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %def_i2c_bus, align 4
  %arrayidx5.7 = getelementptr %struct.em28xx, ptr %dev, i32 0, i32 20, i32 %16
  %call.i.7 = tail call i32 @i2c_transfer_buffer_flags(ptr noundef %arrayidx5.7, ptr noundef getelementptr inbounds ([13 x %struct.anon.150], ptr @terratec_h5_init.regs, i32 0, i32 7), i32 noundef 4, i16 noundef zeroext 0) #9
  %17 = ptrtoint ptr %def_i2c_bus to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %def_i2c_bus, align 4
  %arrayidx5.8 = getelementptr %struct.em28xx, ptr %dev, i32 0, i32 20, i32 %18
  %call.i.8 = tail call i32 @i2c_transfer_buffer_flags(ptr noundef %arrayidx5.8, ptr noundef getelementptr inbounds ([13 x %struct.anon.150], ptr @terratec_h5_init.regs, i32 0, i32 8), i32 noundef 2, i16 noundef zeroext 0) #9
  %19 = ptrtoint ptr %def_i2c_bus to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %def_i2c_bus, align 4
  %arrayidx5.9 = getelementptr %struct.em28xx, ptr %dev, i32 0, i32 20, i32 %20
  %call.i.9 = tail call i32 @i2c_transfer_buffer_flags(ptr noundef %arrayidx5.9, ptr noundef getelementptr inbounds ([13 x %struct.anon.150], ptr @terratec_h5_init.regs, i32 0, i32 9), i32 noundef 2, i16 noundef zeroext 0) #9
  %21 = ptrtoint ptr %def_i2c_bus to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %def_i2c_bus, align 4
  %arrayidx5.10 = getelementptr %struct.em28xx, ptr %dev, i32 0, i32 20, i32 %22
  %call.i.10 = tail call i32 @i2c_transfer_buffer_flags(ptr noundef %arrayidx5.10, ptr noundef getelementptr inbounds ([13 x %struct.anon.150], ptr @terratec_h5_init.regs, i32 0, i32 10), i32 noundef 4, i16 noundef zeroext 0) #9
  %23 = ptrtoint ptr %def_i2c_bus to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %def_i2c_bus, align 4
  %arrayidx5.11 = getelementptr %struct.em28xx, ptr %dev, i32 0, i32 20, i32 %24
  %call.i.11 = tail call i32 @i2c_transfer_buffer_flags(ptr noundef %arrayidx5.11, ptr noundef getelementptr inbounds ([13 x %struct.anon.150], ptr @terratec_h5_init.regs, i32 0, i32 11), i32 noundef 2, i16 noundef zeroext 0) #9
  %25 = ptrtoint ptr %def_i2c_bus to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %def_i2c_bus, align 4
  %arrayidx5.12 = getelementptr %struct.em28xx, ptr %dev, i32 0, i32 20, i32 %26
  %call.i.12 = tail call i32 @i2c_transfer_buffer_flags(ptr noundef %arrayidx5.12, ptr noundef getelementptr inbounds ([13 x %struct.anon.150], ptr @terratec_h5_init.regs, i32 0, i32 12), i32 noundef 4, i16 noundef zeroext 0) #9
  %call9 = tail call i32 @em28xx_gpio_set(ptr noundef %dev, ptr noundef nonnull @terratec_h5_init.terratec_h5_end) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @em28174_dvb_init_pctv_460e(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  %tda10071_pdata = alloca %struct.tda10071_platform_data, align 4
  %a8293_pdata = alloca %struct.a8293_platform_data, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dvb1 = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 2
  %0 = ptrtoint ptr %dvb1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dvb1, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tda10071_pdata) #9
  %2 = getelementptr inbounds i8, ptr %tda10071_pdata, i32 4
  %3 = call ptr @memset(ptr %2, i32 0, i32 12)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %a8293_pdata) #9
  %4 = ptrtoint ptr %tda10071_pdata to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 40444000, ptr %tda10071_pdata, align 4
  %i2c_wr_max = getelementptr inbounds %struct.tda10071_platform_data, ptr %tda10071_pdata, i32 0, i32 1
  %5 = ptrtoint ptr %i2c_wr_max to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 64, ptr %i2c_wr_max, align 4
  %ts_mode = getelementptr inbounds %struct.tda10071_platform_data, ptr %tda10071_pdata, i32 0, i32 2
  %6 = ptrtoint ptr %ts_mode to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %ts_mode, align 2
  %pll_multiplier = getelementptr inbounds %struct.tda10071_platform_data, ptr %tda10071_pdata, i32 0, i32 4
  %7 = ptrtoint ptr %pll_multiplier to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 20, ptr %pll_multiplier, align 4
  %tuner_i2c_addr = getelementptr inbounds %struct.tda10071_platform_data, ptr %tda10071_pdata, i32 0, i32 5
  %8 = ptrtoint ptr %tuner_i2c_addr to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 20, ptr %tuner_i2c_addr, align 1
  %def_i2c_bus = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 23
  %9 = ptrtoint ptr %def_i2c_bus to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %def_i2c_bus, align 4
  %arrayidx = getelementptr %struct.em28xx, ptr %dev, i32 0, i32 19, i32 %10
  %call = call ptr @dvb_module_probe(ptr noundef nonnull @.str.178, ptr noundef nonnull @.str.179, ptr noundef %arrayidx, i8 noundef zeroext 85, ptr noundef nonnull %tda10071_pdata) #9
  %i2c_client_demod = getelementptr inbounds %struct.em28xx_dvb, ptr %1, i32 0, i32 13
  %11 = ptrtoint ptr %i2c_client_demod to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call, ptr %i2c_client_demod, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %get_dvb_frontend = getelementptr inbounds %struct.tda10071_platform_data, ptr %tda10071_pdata, i32 0, i32 6
  %12 = ptrtoint ptr %get_dvb_frontend to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %get_dvb_frontend, align 4
  %call4 = call ptr %13(ptr noundef nonnull %call) #9
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call4, ptr %1, align 8
  %15 = ptrtoint ptr %a8293_pdata to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call4, ptr %a8293_pdata, align 4
  %16 = ptrtoint ptr %def_i2c_bus to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %def_i2c_bus, align 4
  %arrayidx10 = getelementptr %struct.em28xx, ptr %dev, i32 0, i32 19, i32 %17
  %call11 = call ptr @dvb_module_probe(ptr noundef nonnull @.str.180, ptr noundef null, ptr noundef %arrayidx10, i8 noundef zeroext 8, ptr noundef nonnull %a8293_pdata) #9
  %i2c_client_sec = getelementptr inbounds %struct.em28xx_dvb, ptr %1, i32 0, i32 15
  %18 = ptrtoint ptr %i2c_client_sec to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call11, ptr %i2c_client_sec, align 4
  %tobool13.not = icmp eq ptr %call11, null
  br i1 %tobool13.not, label %if.then14, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then14:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %19 = ptrtoint ptr %i2c_client_demod to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %i2c_client_demod, align 4
  call void @dvb_module_release(ptr noundef %20) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then14, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %if.then14 ], [ -19, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %a8293_pdata) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tda10071_pdata) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pctv_520e_init(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %def_i2c_bus = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 23
  %0 = ptrtoint ptr %def_i2c_bus to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %def_i2c_bus, align 4
  %addr = getelementptr %struct.em28xx, ptr %dev, i32 0, i32 20, i32 %1, i32 1
  %2 = ptrtoint ptr %addr to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 65, ptr %addr, align 2
  %arrayidx3 = getelementptr %struct.em28xx, ptr %dev, i32 0, i32 20, i32 %1
  %call.i = tail call i32 @i2c_transfer_buffer_flags(ptr noundef %arrayidx3, ptr noundef nonnull @pctv_520e_init.regs, i32 noundef 4, i16 noundef zeroext 0) #9
  %3 = ptrtoint ptr %def_i2c_bus to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %def_i2c_bus, align 4
  %arrayidx3.1 = getelementptr %struct.em28xx, ptr %dev, i32 0, i32 20, i32 %4
  %call.i.1 = tail call i32 @i2c_transfer_buffer_flags(ptr noundef %arrayidx3.1, ptr noundef getelementptr inbounds ([8 x %struct.anon.151], ptr @pctv_520e_init.regs, i32 0, i32 1), i32 noundef 2, i16 noundef zeroext 0) #9
  %5 = ptrtoint ptr %def_i2c_bus to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %def_i2c_bus, align 4
  %arrayidx3.2 = getelementptr %struct.em28xx, ptr %dev, i32 0, i32 20, i32 %6
  %call.i.2 = tail call i32 @i2c_transfer_buffer_flags(ptr noundef %arrayidx3.2, ptr noundef getelementptr inbounds ([8 x %struct.anon.151], ptr @pctv_520e_init.regs, i32 0, i32 2), i32 noundef 4, i16 noundef zeroext 0) #9
  %7 = ptrtoint ptr %def_i2c_bus to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %def_i2c_bus, align 4
  %arrayidx3.3 = getelementptr %struct.em28xx, ptr %dev, i32 0, i32 20, i32 %8
  %call.i.3 = tail call i32 @i2c_transfer_buffer_flags(ptr noundef %arrayidx3.3, ptr noundef getelementptr inbounds ([8 x %struct.anon.151], ptr @pctv_520e_init.regs, i32 0, i32 3), i32 noundef 2, i16 noundef zeroext 0) #9
  %9 = ptrtoint ptr %def_i2c_bus to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %def_i2c_bus, align 4
  %arrayidx3.4 = getelementptr %struct.em28xx, ptr %dev, i32 0, i32 20, i32 %10
  %call.i.4 = tail call i32 @i2c_transfer_buffer_flags(ptr noundef %arrayidx3.4, ptr noundef getelementptr inbounds ([8 x %struct.anon.151], ptr @pctv_520e_init.regs, i32 0, i32 4), i32 noundef 4, i16 noundef zeroext 0) #9
  %11 = ptrtoint ptr %def_i2c_bus to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %def_i2c_bus, align 4
  %arrayidx3.5 = getelementptr %struct.em28xx, ptr %dev, i32 0, i32 20, i32 %12
  %call.i.5 = tail call i32 @i2c_transfer_buffer_flags(ptr noundef %arrayidx3.5, ptr noundef getelementptr inbounds ([8 x %struct.anon.151], ptr @pctv_520e_init.regs, i32 0, i32 5), i32 noundef 4, i16 noundef zeroext 0) #9
  %13 = ptrtoint ptr %def_i2c_bus to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %def_i2c_bus, align 4
  %arrayidx3.6 = getelementptr %struct.em28xx, ptr %dev, i32 0, i32 20, i32 %14
  %call.i.6 = tail call i32 @i2c_transfer_buffer_flags(ptr noundef %arrayidx3.6, ptr noundef getelementptr inbounds ([8 x %struct.anon.151], ptr @pctv_520e_init.regs, i32 0, i32 6), i32 noundef 2, i16 noundef zeroext 0) #9
  %15 = ptrtoint ptr %def_i2c_bus to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %def_i2c_bus, align 4
  %arrayidx3.7 = getelementptr %struct.em28xx, ptr %dev, i32 0, i32 20, i32 %16
  %call.i.7 = tail call i32 @i2c_transfer_buffer_flags(ptr noundef %arrayidx3.7, ptr noundef getelementptr inbounds ([8 x %struct.anon.151], ptr @pctv_520e_init.regs, i32 0, i32 7), i32 noundef 4, i16 noundef zeroext 0) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @terratec_htc_stick_init(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @em28xx_gpio_set(ptr noundef %dev, ptr noundef nonnull @terratec_htc_stick_init.terratec_htc_stick_init) #9
  %call1 = tail call i32 @em28xx_write_reg(ptr noundef %dev, i16 noundef zeroext 6, i8 noundef zeroext 64) #9
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 11000, i32 noundef 2) #9
  %call2 = tail call i32 @em28xx_write_reg(ptr noundef %dev, i16 noundef zeroext 6, i8 noundef zeroext 68) #9
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 11000, i32 noundef 2) #9
  %def_i2c_bus = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 23
  %0 = ptrtoint ptr %def_i2c_bus to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %def_i2c_bus, align 4
  %addr = getelementptr %struct.em28xx, ptr %dev, i32 0, i32 20, i32 %1, i32 1
  %2 = ptrtoint ptr %addr to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 65, ptr %addr, align 2
  %arrayidx5 = getelementptr %struct.em28xx, ptr %dev, i32 0, i32 20, i32 %1
  %call.i = tail call i32 @i2c_transfer_buffer_flags(ptr noundef %arrayidx5, ptr noundef nonnull @terratec_htc_stick_init.regs, i32 noundef 4, i16 noundef zeroext 0) #9
  %3 = ptrtoint ptr %def_i2c_bus to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %def_i2c_bus, align 4
  %arrayidx5.1 = getelementptr %struct.em28xx, ptr %dev, i32 0, i32 20, i32 %4
  %call.i.1 = tail call i32 @i2c_transfer_buffer_flags(ptr noundef %arrayidx5.1, ptr noundef getelementptr inbounds ([5 x %struct.anon.152], ptr @terratec_htc_stick_init.regs, i32 0, i32 1), i32 noundef 2, i16 noundef zeroext 0) #9
  %5 = ptrtoint ptr %def_i2c_bus to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %def_i2c_bus, align 4
  %arrayidx5.2 = getelementptr %struct.em28xx, ptr %dev, i32 0, i32 20, i32 %6
  %call.i.2 = tail call i32 @i2c_transfer_buffer_flags(ptr noundef %arrayidx5.2, ptr noundef getelementptr inbounds ([5 x %struct.anon.152], ptr @terratec_htc_stick_init.regs, i32 0, i32 2), i32 noundef 4, i16 noundef zeroext 0) #9
  %7 = ptrtoint ptr %def_i2c_bus to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %def_i2c_bus, align 4
  %arrayidx5.3 = getelementptr %struct.em28xx, ptr %dev, i32 0, i32 20, i32 %8
  %call.i.3 = tail call i32 @i2c_transfer_buffer_flags(ptr noundef %arrayidx5.3, ptr noundef getelementptr inbounds ([5 x %struct.anon.152], ptr @terratec_htc_stick_init.regs, i32 0, i32 3), i32 noundef 2, i16 noundef zeroext 0) #9
  %9 = ptrtoint ptr %def_i2c_bus to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %def_i2c_bus, align 4
  %arrayidx5.4 = getelementptr %struct.em28xx, ptr %dev, i32 0, i32 20, i32 %10
  %call.i.4 = tail call i32 @i2c_transfer_buffer_flags(ptr noundef %arrayidx5.4, ptr noundef getelementptr inbounds ([5 x %struct.anon.152], ptr @terratec_htc_stick_init.regs, i32 0, i32 4), i32 noundef 4, i16 noundef zeroext 0) #9
  %call9 = tail call i32 @em28xx_gpio_set(ptr noundef %dev, ptr noundef nonnull @terratec_htc_stick_init.terratec_htc_stick_end) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @terratec_htc_usb_xs_init(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @em28xx_write_reg(ptr noundef %dev, i16 noundef zeroext 6, i8 noundef zeroext 64) #9
  %call1 = tail call i32 @em28xx_gpio_set(ptr noundef %dev, ptr noundef nonnull @terratec_htc_usb_xs_init.terratec_htc_usb_xs_init) #9
  %call2 = tail call i32 @em28xx_write_reg(ptr noundef %dev, i16 noundef zeroext 6, i8 noundef zeroext 64) #9
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 11000, i32 noundef 2) #9
  %call3 = tail call i32 @em28xx_write_reg(ptr noundef %dev, i16 noundef zeroext 6, i8 noundef zeroext 68) #9
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 11000, i32 noundef 2) #9
  %def_i2c_bus = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 23
  %0 = ptrtoint ptr %def_i2c_bus to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %def_i2c_bus, align 4
  %addr = getelementptr %struct.em28xx, ptr %dev, i32 0, i32 20, i32 %1, i32 1
  %2 = ptrtoint ptr %addr to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 65, ptr %addr, align 2
  %arrayidx6 = getelementptr %struct.em28xx, ptr %dev, i32 0, i32 20, i32 %1
  %call.i = tail call i32 @i2c_transfer_buffer_flags(ptr noundef %arrayidx6, ptr noundef nonnull @terratec_htc_usb_xs_init.regs, i32 noundef 4, i16 noundef zeroext 0) #9
  %3 = ptrtoint ptr %def_i2c_bus to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %def_i2c_bus, align 4
  %arrayidx6.1 = getelementptr %struct.em28xx, ptr %dev, i32 0, i32 20, i32 %4
  %call.i.1 = tail call i32 @i2c_transfer_buffer_flags(ptr noundef %arrayidx6.1, ptr noundef getelementptr inbounds ([13 x %struct.anon.153], ptr @terratec_htc_usb_xs_init.regs, i32 0, i32 1), i32 noundef 2, i16 noundef zeroext 0) #9
  %5 = ptrtoint ptr %def_i2c_bus to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %def_i2c_bus, align 4
  %arrayidx6.2 = getelementptr %struct.em28xx, ptr %dev, i32 0, i32 20, i32 %6
  %call.i.2 = tail call i32 @i2c_transfer_buffer_flags(ptr noundef %arrayidx6.2, ptr noundef getelementptr inbounds ([13 x %struct.anon.153], ptr @terratec_htc_usb_xs_init.regs, i32 0, i32 2), i32 noundef 4, i16 noundef zeroext 0) #9
  %7 = ptrtoint ptr %def_i2c_bus to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %def_i2c_bus, align 4
  %arrayidx6.3 = getelementptr %struct.em28xx, ptr %dev, i32 0, i32 20, i32 %8
  %call.i.3 = tail call i32 @i2c_transfer_buffer_flags(ptr noundef %arrayidx6.3, ptr noundef getelementptr inbounds ([13 x %struct.anon.153], ptr @terratec_htc_usb_xs_init.regs, i32 0, i32 3), i32 noundef 2, i16 noundef zeroext 0) #9
  %9 = ptrtoint ptr %def_i2c_bus to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %def_i2c_bus, align 4
  %arrayidx6.4 = getelementptr %struct.em28xx, ptr %dev, i32 0, i32 20, i32 %10
  %call.i.4 = tail call i32 @i2c_transfer_buffer_flags(ptr noundef %arrayidx6.4, ptr noundef getelementptr inbounds ([13 x %struct.anon.153], ptr @terratec_htc_usb_xs_init.regs, i32 0, i32 4), i32 noundef 4, i16 noundef zeroext 0) #9
  %11 = ptrtoint ptr %def_i2c_bus to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %def_i2c_bus, align 4
  %arrayidx6.5 = getelementptr %struct.em28xx, ptr %dev, i32 0, i32 20, i32 %12
  %call.i.5 = tail call i32 @i2c_transfer_buffer_flags(ptr noundef %arrayidx6.5, ptr noundef getelementptr inbounds ([13 x %struct.anon.153], ptr @terratec_htc_usb_xs_init.regs, i32 0, i32 5), i32 noundef 4, i16 noundef zeroext 0) #9
  %13 = ptrtoint ptr %def_i2c_bus to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %def_i2c_bus, align 4
  %arrayidx6.6 = getelementptr %struct.em28xx, ptr %dev, i32 0, i32 20, i32 %14
  %call.i.6 = tail call i32 @i2c_transfer_buffer_flags(ptr noundef %arrayidx6.6, ptr noundef getelementptr inbounds ([13 x %struct.anon.153], ptr @terratec_htc_usb_xs_init.regs, i32 0, i32 6), i32 noundef 2, i16 noundef zeroext 0) #9
  %15 = ptrtoint ptr %def_i2c_bus to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %def_i2c_bus, align 4
  %arrayidx6.7 = getelementptr %struct.em28xx, ptr %dev, i32 0, i32 20, i32 %16
  %call.i.7 = tail call i32 @i2c_transfer_buffer_flags(ptr noundef %arrayidx6.7, ptr noundef getelementptr inbounds ([13 x %struct.anon.153], ptr @terratec_htc_usb_xs_init.regs, i32 0, i32 7), i32 noundef 4, i16 noundef zeroext 0) #9
  %17 = ptrtoint ptr %def_i2c_bus to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %def_i2c_bus, align 4
  %arrayidx6.8 = getelementptr %struct.em28xx, ptr %dev, i32 0, i32 20, i32 %18
  %call.i.8 = tail call i32 @i2c_transfer_buffer_flags(ptr noundef %arrayidx6.8, ptr noundef getelementptr inbounds ([13 x %struct.anon.153], ptr @terratec_htc_usb_xs_init.regs, i32 0, i32 8), i32 noundef 2, i16 noundef zeroext 0) #9
  %19 = ptrtoint ptr %def_i2c_bus to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %def_i2c_bus, align 4
  %arrayidx6.9 = getelementptr %struct.em28xx, ptr %dev, i32 0, i32 20, i32 %20
  %call.i.9 = tail call i32 @i2c_transfer_buffer_flags(ptr noundef %arrayidx6.9, ptr noundef getelementptr inbounds ([13 x %struct.anon.153], ptr @terratec_htc_usb_xs_init.regs, i32 0, i32 9), i32 noundef 2, i16 noundef zeroext 0) #9
  %21 = ptrtoint ptr %def_i2c_bus to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %def_i2c_bus, align 4
  %arrayidx6.10 = getelementptr %struct.em28xx, ptr %dev, i32 0, i32 20, i32 %22
  %call.i.10 = tail call i32 @i2c_transfer_buffer_flags(ptr noundef %arrayidx6.10, ptr noundef getelementptr inbounds ([13 x %struct.anon.153], ptr @terratec_htc_usb_xs_init.regs, i32 0, i32 10), i32 noundef 4, i16 noundef zeroext 0) #9
  %23 = ptrtoint ptr %def_i2c_bus to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %def_i2c_bus, align 4
  %arrayidx6.11 = getelementptr %struct.em28xx, ptr %dev, i32 0, i32 20, i32 %24
  %call.i.11 = tail call i32 @i2c_transfer_buffer_flags(ptr noundef %arrayidx6.11, ptr noundef getelementptr inbounds ([13 x %struct.anon.153], ptr @terratec_htc_usb_xs_init.regs, i32 0, i32 11), i32 noundef 2, i16 noundef zeroext 0) #9
  %25 = ptrtoint ptr %def_i2c_bus to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %def_i2c_bus, align 4
  %arrayidx6.12 = getelementptr %struct.em28xx, ptr %dev, i32 0, i32 20, i32 %26
  %call.i.12 = tail call i32 @i2c_transfer_buffer_flags(ptr noundef %arrayidx6.12, ptr noundef getelementptr inbounds ([13 x %struct.anon.153], ptr @terratec_htc_usb_xs_init.regs, i32 0, i32 12), i32 noundef 4, i16 noundef zeroext 0) #9
  %call10 = tail call i32 @em28xx_gpio_set(ptr noundef %dev, ptr noundef nonnull @terratec_htc_usb_xs_init.terratec_htc_usb_xs_end) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dvb_module_probe(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @em28178_dvb_init_pctv_461e(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  %m88ds3103_pdata = alloca %struct.m88ds3103_platform_data, align 4
  %ts2020_config = alloca %struct.ts2020_config, align 4
  %a8293_pdata = alloca %struct.a8293_platform_data, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dvb1 = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 2
  %0 = ptrtoint ptr %dvb1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dvb1, align 8
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %m88ds3103_pdata) #9
  %2 = getelementptr inbounds i8, ptr %m88ds3103_pdata, i32 4
  %3 = call ptr @memset(ptr %2, i32 0, i32 32)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %ts2020_config) #9
  %4 = call ptr @memset(ptr %ts2020_config, i32 0, i32 24)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %a8293_pdata) #9
  %5 = ptrtoint ptr %m88ds3103_pdata to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 27000000, ptr %m88ds3103_pdata, align 4
  %i2c_wr_max = getelementptr inbounds %struct.m88ds3103_platform_data, ptr %m88ds3103_pdata, i32 0, i32 1
  %6 = ptrtoint ptr %i2c_wr_max to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 33, ptr %i2c_wr_max, align 4
  %ts_mode = getelementptr inbounds %struct.m88ds3103_platform_data, ptr %m88ds3103_pdata, i32 0, i32 2
  %7 = ptrtoint ptr %ts_mode to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 2, ptr %ts_mode, align 4
  %ts_clk = getelementptr inbounds %struct.m88ds3103_platform_data, ptr %m88ds3103_pdata, i32 0, i32 3
  %8 = ptrtoint ptr %ts_clk to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 16000, ptr %ts_clk, align 4
  %ts_clk_pol = getelementptr inbounds %struct.m88ds3103_platform_data, ptr %m88ds3103_pdata, i32 0, i32 5
  %9 = ptrtoint ptr %ts_clk_pol to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 -128, ptr %ts_clk_pol, align 4
  %agc = getelementptr inbounds %struct.m88ds3103_platform_data, ptr %m88ds3103_pdata, i32 0, i32 6
  %10 = ptrtoint ptr %agc to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 -103, ptr %agc, align 1
  %def_i2c_bus = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 23
  %11 = ptrtoint ptr %def_i2c_bus to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %def_i2c_bus, align 4
  %arrayidx = getelementptr %struct.em28xx, ptr %dev, i32 0, i32 19, i32 %12
  %call = call ptr @dvb_module_probe(ptr noundef nonnull @.str.185, ptr noundef null, ptr noundef %arrayidx, i8 noundef zeroext 104, ptr noundef nonnull %m88ds3103_pdata) #9
  %i2c_client_demod = getelementptr inbounds %struct.em28xx_dvb, ptr %1, i32 0, i32 13
  %13 = ptrtoint ptr %i2c_client_demod to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call, ptr %i2c_client_demod, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %get_dvb_frontend = getelementptr inbounds %struct.m88ds3103_platform_data, ptr %m88ds3103_pdata, i32 0, i32 8
  %14 = ptrtoint ptr %get_dvb_frontend to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %get_dvb_frontend, align 4
  %call4 = call ptr %15(ptr noundef nonnull %call) #9
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call4, ptr %1, align 8
  %get_i2c_adapter = getelementptr inbounds %struct.m88ds3103_platform_data, ptr %m88ds3103_pdata, i32 0, i32 9
  %17 = ptrtoint ptr %get_i2c_adapter to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %get_i2c_adapter, align 4
  %19 = ptrtoint ptr %i2c_client_demod to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %i2c_client_demod, align 4
  %call7 = call ptr %18(ptr noundef %20) #9
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %1, align 8
  %fe10 = getelementptr inbounds %struct.ts2020_config, ptr %ts2020_config, i32 0, i32 3
  %23 = ptrtoint ptr %fe10 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %22, ptr %fe10, align 4
  %call11 = call ptr @dvb_module_probe(ptr noundef nonnull @.str.186, ptr noundef nonnull @.str.187, ptr noundef %call7, i8 noundef zeroext 96, ptr noundef nonnull %ts2020_config) #9
  %i2c_client_tuner = getelementptr inbounds %struct.em28xx_dvb, ptr %1, i32 0, i32 14
  %24 = ptrtoint ptr %i2c_client_tuner to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call11, ptr %i2c_client_tuner, align 8
  %tobool13.not = icmp eq ptr %call11, null
  br i1 %tobool13.not, label %if.end.cleanup.sink.split_crit_edge, label %if.end16

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

if.end16:                                         ; preds = %if.end
  %25 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %1, align 8
  %get_rf_strength = getelementptr inbounds %struct.dvb_frontend, ptr %26, i32 0, i32 1, i32 32, i32 13
  %27 = ptrtoint ptr %get_rf_strength to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %get_rf_strength, align 4
  %read_signal_strength = getelementptr inbounds %struct.dvb_frontend, ptr %26, i32 0, i32 1, i32 17
  %29 = ptrtoint ptr %read_signal_strength to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %28, ptr %read_signal_strength, align 4
  %30 = load ptr, ptr %1, align 8
  %31 = ptrtoint ptr %a8293_pdata to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %30, ptr %a8293_pdata, align 4
  %32 = ptrtoint ptr %def_i2c_bus to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %def_i2c_bus, align 4
  %arrayidx26 = getelementptr %struct.em28xx, ptr %dev, i32 0, i32 19, i32 %33
  %call27 = call ptr @dvb_module_probe(ptr noundef nonnull @.str.180, ptr noundef null, ptr noundef %arrayidx26, i8 noundef zeroext 8, ptr noundef nonnull %a8293_pdata) #9
  %i2c_client_sec = getelementptr inbounds %struct.em28xx_dvb, ptr %1, i32 0, i32 15
  %34 = ptrtoint ptr %i2c_client_sec to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call27, ptr %i2c_client_sec, align 4
  %tobool29.not = icmp eq ptr %call27, null
  br i1 %tobool29.not, label %if.then30, label %if.end16.cleanup_crit_edge

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then30:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  %35 = ptrtoint ptr %i2c_client_tuner to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %i2c_client_tuner, align 8
  call void @dvb_module_release(ptr noundef %36) #9
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then30, %if.end.cleanup.sink.split_crit_edge
  %37 = ptrtoint ptr %i2c_client_demod to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %i2c_client_demod, align 4
  call void @dvb_module_release(ptr noundef %38) #9
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end16.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %entry.cleanup_crit_edge ], [ 0, %if.end16.cleanup_crit_edge ], [ -19, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %a8293_pdata) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %ts2020_config) #9
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %m88ds3103_pdata) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @em28178_dvb_init_pctv_461e_v2(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  %m88ds3103_pdata = alloca %struct.m88ds3103_platform_data, align 4
  %ts2020_config = alloca %struct.ts2020_config, align 4
  %a8293_pdata = alloca %struct.a8293_platform_data, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dvb1 = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 2
  %0 = ptrtoint ptr %dvb1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dvb1, align 8
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %m88ds3103_pdata) #9
  %2 = getelementptr inbounds i8, ptr %m88ds3103_pdata, i32 4
  %3 = call ptr @memset(ptr %2, i32 0, i32 32)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %ts2020_config) #9
  %4 = call ptr @memset(ptr %ts2020_config, i32 0, i32 24)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %a8293_pdata) #9
  %5 = ptrtoint ptr %m88ds3103_pdata to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 27000000, ptr %m88ds3103_pdata, align 4
  %i2c_wr_max = getelementptr inbounds %struct.m88ds3103_platform_data, ptr %m88ds3103_pdata, i32 0, i32 1
  %6 = ptrtoint ptr %i2c_wr_max to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 33, ptr %i2c_wr_max, align 4
  %ts_mode = getelementptr inbounds %struct.m88ds3103_platform_data, ptr %m88ds3103_pdata, i32 0, i32 2
  %7 = ptrtoint ptr %ts_mode to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 2, ptr %ts_mode, align 4
  %ts_clk = getelementptr inbounds %struct.m88ds3103_platform_data, ptr %m88ds3103_pdata, i32 0, i32 3
  %8 = ptrtoint ptr %ts_clk to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 16000, ptr %ts_clk, align 4
  %ts_clk_pol = getelementptr inbounds %struct.m88ds3103_platform_data, ptr %m88ds3103_pdata, i32 0, i32 5
  %agc = getelementptr inbounds %struct.m88ds3103_platform_data, ptr %m88ds3103_pdata, i32 0, i32 6
  %9 = ptrtoint ptr %agc to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 -103, ptr %agc, align 1
  %agc_inv = getelementptr inbounds %struct.m88ds3103_platform_data, ptr %m88ds3103_pdata, i32 0, i32 7
  %10 = ptrtoint ptr %agc_inv to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %agc_inv, align 2
  %11 = ptrtoint ptr %ts_clk_pol to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %ts_clk_pol, align 4
  %def_i2c_bus = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 23
  %12 = ptrtoint ptr %def_i2c_bus to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %def_i2c_bus, align 4
  %arrayidx = getelementptr %struct.em28xx, ptr %dev, i32 0, i32 19, i32 %13
  %call = call ptr @dvb_module_probe(ptr noundef nonnull @.str.185, ptr noundef nonnull @.str.188, ptr noundef %arrayidx, i8 noundef zeroext 106, ptr noundef nonnull %m88ds3103_pdata) #9
  %i2c_client_demod = getelementptr inbounds %struct.em28xx_dvb, ptr %1, i32 0, i32 13
  %14 = ptrtoint ptr %i2c_client_demod to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call, ptr %i2c_client_demod, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %get_dvb_frontend = getelementptr inbounds %struct.m88ds3103_platform_data, ptr %m88ds3103_pdata, i32 0, i32 8
  %15 = ptrtoint ptr %get_dvb_frontend to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %get_dvb_frontend, align 4
  %call10 = call ptr %16(ptr noundef nonnull %call) #9
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call10, ptr %1, align 8
  %get_i2c_adapter = getelementptr inbounds %struct.m88ds3103_platform_data, ptr %m88ds3103_pdata, i32 0, i32 9
  %18 = ptrtoint ptr %get_i2c_adapter to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %get_i2c_adapter, align 4
  %20 = ptrtoint ptr %i2c_client_demod to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %i2c_client_demod, align 4
  %call13 = call ptr %19(ptr noundef %21) #9
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %1, align 8
  %fe16 = getelementptr inbounds %struct.ts2020_config, ptr %ts2020_config, i32 0, i32 3
  %24 = ptrtoint ptr %fe16 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %23, ptr %fe16, align 4
  %call17 = call ptr @dvb_module_probe(ptr noundef nonnull @.str.186, ptr noundef nonnull @.str.187, ptr noundef %call13, i8 noundef zeroext 96, ptr noundef nonnull %ts2020_config) #9
  %i2c_client_tuner = getelementptr inbounds %struct.em28xx_dvb, ptr %1, i32 0, i32 14
  %25 = ptrtoint ptr %i2c_client_tuner to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call17, ptr %i2c_client_tuner, align 8
  %tobool19.not = icmp eq ptr %call17, null
  br i1 %tobool19.not, label %if.end.cleanup.sink.split_crit_edge, label %if.end22

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

if.end22:                                         ; preds = %if.end
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %1, align 8
  %get_rf_strength = getelementptr inbounds %struct.dvb_frontend, ptr %27, i32 0, i32 1, i32 32, i32 13
  %28 = ptrtoint ptr %get_rf_strength to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %get_rf_strength, align 4
  %read_signal_strength = getelementptr inbounds %struct.dvb_frontend, ptr %27, i32 0, i32 1, i32 17
  %30 = ptrtoint ptr %read_signal_strength to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %29, ptr %read_signal_strength, align 4
  %31 = load ptr, ptr %1, align 8
  %32 = ptrtoint ptr %a8293_pdata to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %31, ptr %a8293_pdata, align 4
  %33 = ptrtoint ptr %def_i2c_bus to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %def_i2c_bus, align 4
  %arrayidx32 = getelementptr %struct.em28xx, ptr %dev, i32 0, i32 19, i32 %34
  %call33 = call ptr @dvb_module_probe(ptr noundef nonnull @.str.180, ptr noundef null, ptr noundef %arrayidx32, i8 noundef zeroext 8, ptr noundef nonnull %a8293_pdata) #9
  %i2c_client_sec = getelementptr inbounds %struct.em28xx_dvb, ptr %1, i32 0, i32 15
  %35 = ptrtoint ptr %i2c_client_sec to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call33, ptr %i2c_client_sec, align 4
  %tobool35.not = icmp eq ptr %call33, null
  br i1 %tobool35.not, label %if.then36, label %if.end22.cleanup_crit_edge

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then36:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  %36 = ptrtoint ptr %i2c_client_tuner to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %i2c_client_tuner, align 8
  call void @dvb_module_release(ptr noundef %37) #9
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then36, %if.end.cleanup.sink.split_crit_edge
  %38 = ptrtoint ptr %i2c_client_demod to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %i2c_client_demod, align 4
  call void @dvb_module_release(ptr noundef %39) #9
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end22.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %entry.cleanup_crit_edge ], [ 0, %if.end22.cleanup_crit_edge ], [ -19, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %a8293_pdata) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %ts2020_config) #9
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %m88ds3103_pdata) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @em28178_dvb_init_pctv_292e(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  %adapter = alloca ptr, align 4
  %si2168_config = alloca %struct.si2168_config, align 4
  %si2157_config = alloca %struct.si2157_config, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dvb1 = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 2
  %0 = ptrtoint ptr %dvb1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dvb1, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %adapter) #9
  %2 = ptrtoint ptr %adapter to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %adapter, align 4, !annotation !531
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %si2168_config) #9
  %3 = getelementptr inbounds i8, ptr %si2168_config, i32 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %si2157_config) #9
  %5 = getelementptr inbounds i8, ptr %si2157_config, i32 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %5, align 4
  %i2c_adapter = getelementptr inbounds %struct.si2168_config, ptr %si2168_config, i32 0, i32 1
  %7 = ptrtoint ptr %i2c_adapter to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %adapter, ptr %i2c_adapter, align 4
  %8 = ptrtoint ptr %si2168_config to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %1, ptr %si2168_config, align 4
  %ts_mode = getelementptr inbounds %struct.si2168_config, ptr %si2168_config, i32 0, i32 2
  %9 = ptrtoint ptr %ts_mode to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 6, ptr %ts_mode, align 4
  %spectral_inversion = getelementptr inbounds %struct.si2168_config, ptr %si2168_config, i32 0, i32 3
  %10 = ptrtoint ptr %spectral_inversion to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 32, ptr %spectral_inversion, align 1
  %def_i2c_bus = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 23
  %11 = ptrtoint ptr %def_i2c_bus to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %def_i2c_bus, align 4
  %arrayidx3 = getelementptr %struct.em28xx, ptr %dev, i32 0, i32 19, i32 %12
  %call = call ptr @dvb_module_probe(ptr noundef nonnull @.str.189, ptr noundef null, ptr noundef %arrayidx3, i8 noundef zeroext 100, ptr noundef nonnull %si2168_config) #9
  %i2c_client_demod = getelementptr inbounds %struct.em28xx_dvb, ptr %1, i32 0, i32 13
  %13 = ptrtoint ptr %i2c_client_demod to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call, ptr %i2c_client_demod, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 8
  %16 = ptrtoint ptr %si2157_config to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %15, ptr %si2157_config, align 4
  %if_port = getelementptr inbounds %struct.si2157_config, ptr %si2157_config, i32 0, i32 3
  %17 = ptrtoint ptr %if_port to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 1, ptr %if_port, align 1
  %media_dev = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 76
  %18 = ptrtoint ptr %media_dev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %media_dev, align 4
  %mdev = getelementptr inbounds %struct.si2157_config, ptr %si2157_config, i32 0, i32 1
  %20 = ptrtoint ptr %mdev to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %19, ptr %mdev, align 4
  %21 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %adapter, align 4
  %call8 = call ptr @dvb_module_probe(ptr noundef nonnull @.str.190, ptr noundef null, ptr noundef %22, i8 noundef zeroext 96, ptr noundef nonnull %si2157_config) #9
  %i2c_client_tuner = getelementptr inbounds %struct.em28xx_dvb, ptr %1, i32 0, i32 14
  %23 = ptrtoint ptr %i2c_client_tuner to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call8, ptr %i2c_client_tuner, align 8
  %tobool10.not = icmp eq ptr %call8, null
  br i1 %tobool10.not, label %if.then11, label %if.end13

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %24 = ptrtoint ptr %i2c_client_demod to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %i2c_client_demod, align 4
  call void @dvb_module_release(ptr noundef %25) #9
  br label %cleanup

if.end13:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %1, align 8
  %set_lna = getelementptr inbounds %struct.dvb_frontend, ptr %27, i32 0, i32 1, i32 30
  %28 = ptrtoint ptr %set_lna to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @em28xx_pctv_292e_set_lna, ptr %set_lna, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %if.then11, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end13 ], [ -19, %if.then11 ], [ -19, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %si2157_config) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %si2168_config) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %adapter) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @em28178_dvb_init_terratec_t2_stick_hd(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  %adapter = alloca ptr, align 4
  %si2168_config = alloca %struct.si2168_config, align 4
  %si2157_config = alloca %struct.si2157_config, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dvb1 = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 2
  %0 = ptrtoint ptr %dvb1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dvb1, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %adapter) #9
  %2 = ptrtoint ptr %adapter to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %adapter, align 4, !annotation !531
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %si2168_config) #9
  %3 = getelementptr inbounds i8, ptr %si2168_config, i32 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %si2157_config) #9
  %i2c_adapter = getelementptr inbounds %struct.si2168_config, ptr %si2168_config, i32 0, i32 1
  %5 = ptrtoint ptr %i2c_adapter to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %adapter, ptr %i2c_adapter, align 4
  %6 = ptrtoint ptr %si2168_config to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %1, ptr %si2168_config, align 4
  %ts_mode = getelementptr inbounds %struct.si2168_config, ptr %si2168_config, i32 0, i32 2
  %7 = ptrtoint ptr %ts_mode to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 6, ptr %ts_mode, align 4
  %def_i2c_bus = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 23
  %8 = ptrtoint ptr %def_i2c_bus to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %def_i2c_bus, align 4
  %arrayidx3 = getelementptr %struct.em28xx, ptr %dev, i32 0, i32 19, i32 %9
  %call = call ptr @dvb_module_probe(ptr noundef nonnull @.str.189, ptr noundef null, ptr noundef %arrayidx3, i8 noundef zeroext 100, ptr noundef nonnull %si2168_config) #9
  %i2c_client_demod = getelementptr inbounds %struct.em28xx_dvb, ptr %1, i32 0, i32 13
  %10 = ptrtoint ptr %i2c_client_demod to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call, ptr %i2c_client_demod, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %11 = getelementptr inbounds i8, ptr %si2157_config, i32 8
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %11, align 4
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 8
  %15 = ptrtoint ptr %si2157_config to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %14, ptr %si2157_config, align 4
  %media_dev = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 76
  %16 = ptrtoint ptr %media_dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %media_dev, align 4
  %mdev = getelementptr inbounds %struct.si2157_config, ptr %si2157_config, i32 0, i32 1
  %18 = ptrtoint ptr %mdev to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %17, ptr %mdev, align 4
  %19 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %adapter, align 4
  %call8 = call ptr @dvb_module_probe(ptr noundef nonnull @.str.190, ptr noundef nonnull @.str.191, ptr noundef %20, i8 noundef zeroext 96, ptr noundef nonnull %si2157_config) #9
  %i2c_client_tuner = getelementptr inbounds %struct.em28xx_dvb, ptr %1, i32 0, i32 14
  %21 = ptrtoint ptr %i2c_client_tuner to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call8, ptr %i2c_client_tuner, align 8
  %tobool10.not = icmp eq ptr %call8, null
  br i1 %tobool10.not, label %if.then11, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %22 = ptrtoint ptr %i2c_client_demod to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %i2c_client_demod, align 4
  call void @dvb_module_release(ptr noundef %23) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then11, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %if.then11 ], [ -19, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %si2157_config) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %si2168_config) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %adapter) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @em28178_dvb_init_plex_px_bcud(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  %tc90522_config = alloca %struct.tc90522_config, align 4
  %qm1d1c0042_config = alloca %struct.qm1d1c0042_config, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dvb1 = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 2
  %0 = ptrtoint ptr %dvb1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dvb1, align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %tc90522_config) #9
  %2 = call ptr @memset(ptr %tc90522_config, i32 0, i32 12)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %qm1d1c0042_config) #9
  %3 = getelementptr inbounds i8, ptr %qm1d1c0042_config, i32 4
  %4 = call ptr @memset(ptr %3, i32 0, i32 20)
  %def_i2c_bus = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 23
  %5 = ptrtoint ptr %def_i2c_bus to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %def_i2c_bus, align 4
  %arrayidx = getelementptr %struct.em28xx, ptr %dev, i32 0, i32 19, i32 %6
  %call = call ptr @dvb_module_probe(ptr noundef nonnull @.str.192, ptr noundef nonnull @.str.193, ptr noundef %arrayidx, i8 noundef zeroext 21, ptr noundef nonnull %tc90522_config) #9
  %i2c_client_demod = getelementptr inbounds %struct.em28xx_dvb, ptr %1, i32 0, i32 13
  %7 = ptrtoint ptr %i2c_client_demod to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call, ptr %i2c_client_demod, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = ptrtoint ptr %tc90522_config to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tc90522_config, align 4
  %10 = ptrtoint ptr %qm1d1c0042_config to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %qm1d1c0042_config, align 4
  %lpf = getelementptr inbounds %struct.qm1d1c0042_config, ptr %qm1d1c0042_config, i32 0, i32 2
  %11 = ptrtoint ptr %lpf to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %lpf, align 4
  %tuner_i2c = getelementptr inbounds %struct.tc90522_config, ptr %tc90522_config, i32 0, i32 1
  %12 = ptrtoint ptr %tuner_i2c to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %tuner_i2c, align 4
  %call4 = call ptr @dvb_module_probe(ptr noundef nonnull @.str.194, ptr noundef null, ptr noundef %13, i8 noundef zeroext 97, ptr noundef nonnull %qm1d1c0042_config) #9
  %i2c_client_tuner = getelementptr inbounds %struct.em28xx_dvb, ptr %1, i32 0, i32 14
  %14 = ptrtoint ptr %i2c_client_tuner to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call4, ptr %i2c_client_tuner, align 8
  %tobool6.not = icmp eq ptr %call4, null
  br i1 %tobool6.not, label %if.then7, label %if.end9

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %15 = ptrtoint ptr %i2c_client_demod to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %i2c_client_demod, align 4
  call void @dvb_module_release(ptr noundef %16) #9
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %17 = ptrtoint ptr %tc90522_config to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %tc90522_config, align 4
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %18, ptr %1, align 8
  %call.i = call i32 @em28xx_write_reg(ptr noundef %dev, i16 noundef zeroext 6, i8 noundef zeroext 70) #9
  %20 = ptrtoint ptr %dvb1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dvb1, align 8
  %i2c_client_demod.i = getelementptr inbounds %struct.em28xx_dvb, ptr %21, i32 0, i32 13
  %22 = ptrtoint ptr %i2c_client_demod.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %i2c_client_demod.i, align 4
  %addr.i = getelementptr inbounds %struct.i2c_client, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %addr.i to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 20, ptr %addr.i, align 2
  %25 = load ptr, ptr %dvb1, align 8
  %i2c_client_demod2.i = getelementptr inbounds %struct.em28xx_dvb, ptr %25, i32 0, i32 13
  %26 = ptrtoint ptr %i2c_client_demod2.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %i2c_client_demod2.i, align 4
  %call.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %27, ptr noundef nonnull @px_bcud_init.regs1, i32 noundef 2, i16 noundef zeroext 0) #9
  %28 = ptrtoint ptr %dvb1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dvb1, align 8
  %i2c_client_demod2.1.i = getelementptr inbounds %struct.em28xx_dvb, ptr %29, i32 0, i32 13
  %30 = ptrtoint ptr %i2c_client_demod2.1.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %i2c_client_demod2.1.i, align 4
  %call.i.1.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %31, ptr noundef getelementptr inbounds ([3 x %struct.anon.154], ptr @px_bcud_init.regs1, i32 0, i32 1), i32 noundef 2, i16 noundef zeroext 0) #9
  %32 = ptrtoint ptr %dvb1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dvb1, align 8
  %i2c_client_demod2.2.i = getelementptr inbounds %struct.em28xx_dvb, ptr %33, i32 0, i32 13
  %34 = ptrtoint ptr %i2c_client_demod2.2.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %i2c_client_demod2.2.i, align 4
  %call.i.2.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %35, ptr noundef getelementptr inbounds ([3 x %struct.anon.154], ptr @px_bcud_init.regs1, i32 0, i32 2), i32 noundef 2, i16 noundef zeroext 0) #9
  %36 = ptrtoint ptr %dvb1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dvb1, align 8
  %i2c_client_demod6.i = getelementptr inbounds %struct.em28xx_dvb, ptr %37, i32 0, i32 13
  %38 = ptrtoint ptr %i2c_client_demod6.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %i2c_client_demod6.i, align 4
  %addr7.i = getelementptr inbounds %struct.i2c_client, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %addr7.i to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 21, ptr %addr7.i, align 2
  %41 = load ptr, ptr %dvb1, align 8
  %i2c_client_demod12.i = getelementptr inbounds %struct.em28xx_dvb, ptr %41, i32 0, i32 13
  %42 = ptrtoint ptr %i2c_client_demod12.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %i2c_client_demod12.i, align 4
  %call.i56.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %43, ptr noundef nonnull @px_bcud_init.regs2, i32 noundef 2, i16 noundef zeroext 0) #9
  %44 = ptrtoint ptr %dvb1 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dvb1, align 8
  %i2c_client_demod12.1.i = getelementptr inbounds %struct.em28xx_dvb, ptr %45, i32 0, i32 13
  %46 = ptrtoint ptr %i2c_client_demod12.1.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %i2c_client_demod12.1.i, align 4
  %call.i56.1.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %47, ptr noundef getelementptr inbounds ([9 x %struct.anon.154], ptr @px_bcud_init.regs2, i32 0, i32 1), i32 noundef 2, i16 noundef zeroext 0) #9
  %48 = ptrtoint ptr %dvb1 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dvb1, align 8
  %i2c_client_demod12.2.i = getelementptr inbounds %struct.em28xx_dvb, ptr %49, i32 0, i32 13
  %50 = ptrtoint ptr %i2c_client_demod12.2.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %i2c_client_demod12.2.i, align 4
  %call.i56.2.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %51, ptr noundef getelementptr inbounds ([9 x %struct.anon.154], ptr @px_bcud_init.regs2, i32 0, i32 2), i32 noundef 2, i16 noundef zeroext 0) #9
  %52 = ptrtoint ptr %dvb1 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dvb1, align 8
  %i2c_client_demod12.3.i = getelementptr inbounds %struct.em28xx_dvb, ptr %53, i32 0, i32 13
  %54 = ptrtoint ptr %i2c_client_demod12.3.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %i2c_client_demod12.3.i, align 4
  %call.i56.3.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %55, ptr noundef getelementptr inbounds ([9 x %struct.anon.154], ptr @px_bcud_init.regs2, i32 0, i32 3), i32 noundef 2, i16 noundef zeroext 0) #9
  %56 = ptrtoint ptr %dvb1 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dvb1, align 8
  %i2c_client_demod12.4.i = getelementptr inbounds %struct.em28xx_dvb, ptr %57, i32 0, i32 13
  %58 = ptrtoint ptr %i2c_client_demod12.4.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %i2c_client_demod12.4.i, align 4
  %call.i56.4.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %59, ptr noundef getelementptr inbounds ([9 x %struct.anon.154], ptr @px_bcud_init.regs2, i32 0, i32 4), i32 noundef 2, i16 noundef zeroext 0) #9
  %60 = ptrtoint ptr %dvb1 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %dvb1, align 8
  %i2c_client_demod12.5.i = getelementptr inbounds %struct.em28xx_dvb, ptr %61, i32 0, i32 13
  %62 = ptrtoint ptr %i2c_client_demod12.5.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %i2c_client_demod12.5.i, align 4
  %call.i56.5.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %63, ptr noundef getelementptr inbounds ([9 x %struct.anon.154], ptr @px_bcud_init.regs2, i32 0, i32 5), i32 noundef 2, i16 noundef zeroext 0) #9
  %64 = ptrtoint ptr %dvb1 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %dvb1, align 8
  %i2c_client_demod12.6.i = getelementptr inbounds %struct.em28xx_dvb, ptr %65, i32 0, i32 13
  %66 = ptrtoint ptr %i2c_client_demod12.6.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %i2c_client_demod12.6.i, align 4
  %call.i56.6.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %67, ptr noundef getelementptr inbounds ([9 x %struct.anon.154], ptr @px_bcud_init.regs2, i32 0, i32 6), i32 noundef 2, i16 noundef zeroext 0) #9
  %68 = ptrtoint ptr %dvb1 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %dvb1, align 8
  %i2c_client_demod12.7.i = getelementptr inbounds %struct.em28xx_dvb, ptr %69, i32 0, i32 13
  %70 = ptrtoint ptr %i2c_client_demod12.7.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %i2c_client_demod12.7.i, align 4
  %call.i56.7.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %71, ptr noundef getelementptr inbounds ([9 x %struct.anon.154], ptr @px_bcud_init.regs2, i32 0, i32 7), i32 noundef 2, i16 noundef zeroext 0) #9
  %72 = ptrtoint ptr %dvb1 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %dvb1, align 8
  %i2c_client_demod12.8.i = getelementptr inbounds %struct.em28xx_dvb, ptr %73, i32 0, i32 13
  %74 = ptrtoint ptr %i2c_client_demod12.8.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %i2c_client_demod12.8.i, align 4
  %call.i56.8.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %75, ptr noundef getelementptr inbounds ([9 x %struct.anon.154], ptr @px_bcud_init.regs2, i32 0, i32 8), i32 noundef 2, i16 noundef zeroext 0) #9
  br label %for.body24.i

for.body24.i:                                     ; preds = %for.inc34.i.for.body24.i_crit_edge, %if.end9
  %i.259.i = phi i32 [ %inc35.i, %for.inc34.i.for.body24.i_crit_edge ], [ 0, %if.end9 ]
  %arrayidx25.i = getelementptr [20 x %struct.em28xx_reg_seq], ptr @px_bcud_init.gpio, i32 0, i32 %i.259.i
  %76 = ptrtoint ptr %arrayidx25.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %arrayidx25.i, align 4
  %conv.i = trunc i32 %77 to i16
  %val.i = getelementptr [20 x %struct.em28xx_reg_seq], ptr @px_bcud_init.gpio, i32 0, i32 %i.259.i, i32 1
  %78 = ptrtoint ptr %val.i to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %val.i, align 4
  %mask.i = getelementptr [20 x %struct.em28xx_reg_seq], ptr @px_bcud_init.gpio, i32 0, i32 %i.259.i, i32 2
  %80 = ptrtoint ptr %mask.i to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %mask.i, align 1
  %call28.i = call i32 @em28xx_write_reg_bits(ptr noundef %dev, i16 noundef zeroext %conv.i, i8 noundef zeroext %79, i8 noundef zeroext %81) #9
  %82 = and i32 %i.259.i, 1073741822
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %82)
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %if.then.i, label %for.body24.i.for.inc34.i_crit_edge

for.body24.i.for.inc34.i_crit_edge:               ; preds = %for.body24.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc34.i

if.then.i:                                        ; preds = %for.body24.i
  call void @__sanitizer_cov_trace_pc() #11
  %sleep.i = getelementptr [20 x %struct.em28xx_reg_seq], ptr @px_bcud_init.gpio, i32 0, i32 %i.259.i, i32 3
  %84 = ptrtoint ptr %sleep.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %sleep.i, align 4
  call void @msleep(i32 noundef %85) #9
  br label %for.inc34.i

for.inc34.i:                                      ; preds = %if.then.i, %for.body24.i.for.inc34.i_crit_edge
  %inc35.i = add nuw nsw i32 %i.259.i, 1
  %exitcond.not.i = icmp eq i32 %inc35.i, 20
  br i1 %exitcond.not.i, label %for.inc34.i.cleanup_crit_edge, label %for.inc34.i.for.body24.i_crit_edge

for.inc34.i.for.body24.i_crit_edge:               ; preds = %for.inc34.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body24.i

for.inc34.i.cleanup_crit_edge:                    ; preds = %for.inc34.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup:                                          ; preds = %for.inc34.i.cleanup_crit_edge, %if.then7, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %if.then7 ], [ -19, %entry.cleanup_crit_edge ], [ 0, %for.inc34.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %qm1d1c0042_config) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %tc90522_config) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @em28174_dvb_init_hauppauge_wintv_dualhd_dvb(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  %adapter = alloca ptr, align 4
  %si2168_config = alloca %struct.si2168_config, align 4
  %si2157_config = alloca %struct.si2157_config, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dvb1 = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 2
  %0 = ptrtoint ptr %dvb1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dvb1, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %adapter) #9
  %2 = ptrtoint ptr %adapter to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %adapter, align 4, !annotation !531
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %si2168_config) #9
  %3 = getelementptr inbounds i8, ptr %si2168_config, i32 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %si2157_config) #9
  %i2c_adapter = getelementptr inbounds %struct.si2168_config, ptr %si2168_config, i32 0, i32 1
  %5 = ptrtoint ptr %i2c_adapter to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %adapter, ptr %i2c_adapter, align 4
  %6 = ptrtoint ptr %si2168_config to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %1, ptr %si2168_config, align 4
  %ts_mode = getelementptr inbounds %struct.si2168_config, ptr %si2168_config, i32 0, i32 2
  %7 = ptrtoint ptr %ts_mode to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 3, ptr %ts_mode, align 4
  %spectral_inversion = getelementptr inbounds %struct.si2168_config, ptr %si2168_config, i32 0, i32 3
  %8 = ptrtoint ptr %spectral_inversion to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 32, ptr %spectral_inversion, align 1
  %ts = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 80
  %9 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %ts, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp = icmp eq i32 %10, 0
  %conv = select i1 %cmp, i8 100, i8 103
  %def_i2c_bus = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 23
  %11 = ptrtoint ptr %def_i2c_bus to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %def_i2c_bus, align 4
  %arrayidx3 = getelementptr %struct.em28xx, ptr %dev, i32 0, i32 19, i32 %12
  %call = call ptr @dvb_module_probe(ptr noundef nonnull @.str.189, ptr noundef null, ptr noundef %arrayidx3, i8 noundef zeroext %conv, ptr noundef nonnull %si2168_config) #9
  %i2c_client_demod = getelementptr inbounds %struct.em28xx_dvb, ptr %1, i32 0, i32 13
  %13 = ptrtoint ptr %i2c_client_demod to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call, ptr %i2c_client_demod, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %14 = getelementptr inbounds i8, ptr %si2157_config, i32 8
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %14, align 4
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 8
  %18 = ptrtoint ptr %si2157_config to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %17, ptr %si2157_config, align 4
  %if_port = getelementptr inbounds %struct.si2157_config, ptr %si2157_config, i32 0, i32 3
  %19 = ptrtoint ptr %if_port to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 1, ptr %if_port, align 1
  %media_dev = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 76
  %20 = ptrtoint ptr %media_dev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %media_dev, align 4
  %mdev = getelementptr inbounds %struct.si2157_config, ptr %si2157_config, i32 0, i32 1
  %22 = ptrtoint ptr %mdev to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %21, ptr %mdev, align 4
  %23 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %ts, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp9 = icmp eq i32 %24, 0
  %conv12 = select i1 %cmp9, i8 96, i8 99
  %25 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %adapter, align 4
  %call13 = call ptr @dvb_module_probe(ptr noundef nonnull @.str.190, ptr noundef null, ptr noundef %26, i8 noundef zeroext %conv12, ptr noundef nonnull %si2157_config) #9
  %i2c_client_tuner = getelementptr inbounds %struct.em28xx_dvb, ptr %1, i32 0, i32 14
  %27 = ptrtoint ptr %i2c_client_tuner to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call13, ptr %i2c_client_tuner, align 8
  %tobool15.not = icmp eq ptr %call13, null
  br i1 %tobool15.not, label %if.then16, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then16:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %28 = ptrtoint ptr %i2c_client_demod to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %i2c_client_demod, align 4
  call void @dvb_module_release(ptr noundef %29) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then16, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %if.then16 ], [ -19, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %si2157_config) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %si2168_config) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %adapter) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @em28174_dvb_init_hauppauge_wintv_dualhd_01595(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  %adapter = alloca ptr, align 4
  %lgdt3306a_config = alloca %struct.lgdt3306a_config, align 4
  %si2157_config = alloca %struct.si2157_config, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dvb1 = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 2
  %0 = ptrtoint ptr %dvb1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dvb1, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %adapter) #9
  %2 = ptrtoint ptr %adapter to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %adapter, align 4, !annotation !531
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %lgdt3306a_config) #9
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %si2157_config) #9
  %3 = getelementptr inbounds i8, ptr %si2157_config, i32 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_storeN_noabort(i32 %4, i32 8)
  store i64 0, ptr %3, align 4
  %5 = call ptr @memcpy(ptr %lgdt3306a_config, ptr @hauppauge_01595_lgdt3306a_config, i32 24)
  %fe2 = getelementptr inbounds %struct.lgdt3306a_config, ptr %lgdt3306a_config, i32 0, i32 8
  %6 = ptrtoint ptr %fe2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %1, ptr %fe2, align 4
  %i2c_adapter = getelementptr inbounds %struct.lgdt3306a_config, ptr %lgdt3306a_config, i32 0, i32 9
  %7 = ptrtoint ptr %i2c_adapter to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %adapter, ptr %i2c_adapter, align 4
  %ts = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 80
  %8 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ts, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp = icmp eq i32 %9, 0
  %conv = select i1 %cmp, i8 89, i8 14
  %def_i2c_bus = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 23
  %10 = ptrtoint ptr %def_i2c_bus to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %def_i2c_bus, align 4
  %arrayidx3 = getelementptr %struct.em28xx, ptr %dev, i32 0, i32 19, i32 %11
  %call = call ptr @dvb_module_probe(ptr noundef nonnull @.str.195, ptr noundef null, ptr noundef %arrayidx3, i8 noundef zeroext %conv, ptr noundef nonnull %lgdt3306a_config) #9
  %i2c_client_demod = getelementptr inbounds %struct.em28xx_dvb, ptr %1, i32 0, i32 13
  %12 = ptrtoint ptr %i2c_client_demod to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call, ptr %i2c_client_demod, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 8
  %15 = ptrtoint ptr %si2157_config to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %14, ptr %si2157_config, align 4
  %if_port = getelementptr inbounds %struct.si2157_config, ptr %si2157_config, i32 0, i32 3
  %16 = ptrtoint ptr %if_port to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 1, ptr %if_port, align 1
  %inversion = getelementptr inbounds %struct.si2157_config, ptr %si2157_config, i32 0, i32 2
  %17 = ptrtoint ptr %inversion to i32
  call void @__asan_load1_noabort(i32 %17)
  %bf.load = load i8, ptr %inversion, align 4
  %bf.set = or i8 %bf.load, -128
  store i8 %bf.set, ptr %inversion, align 4
  %media_dev = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 76
  %18 = ptrtoint ptr %media_dev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %media_dev, align 4
  %mdev = getelementptr inbounds %struct.si2157_config, ptr %si2157_config, i32 0, i32 1
  %20 = ptrtoint ptr %mdev to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %19, ptr %mdev, align 4
  %21 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %ts, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp9 = icmp eq i32 %22, 0
  %conv12 = select i1 %cmp9, i8 96, i8 98
  %23 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %adapter, align 4
  %call13 = call ptr @dvb_module_probe(ptr noundef nonnull @.str.190, ptr noundef null, ptr noundef %24, i8 noundef zeroext %conv12, ptr noundef nonnull %si2157_config) #9
  %i2c_client_tuner = getelementptr inbounds %struct.em28xx_dvb, ptr %1, i32 0, i32 14
  %25 = ptrtoint ptr %i2c_client_tuner to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call13, ptr %i2c_client_tuner, align 8
  %tobool15.not = icmp eq ptr %call13, null
  br i1 %tobool15.not, label %if.then16, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then16:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %26 = ptrtoint ptr %i2c_client_demod to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %i2c_client_demod, align 4
  call void @dvb_module_release(ptr noundef %27) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then16, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %if.then16 ], [ -19, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %si2157_config) #9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %lgdt3306a_config) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %adapter) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @em2874_dvb_init_hauppauge_usb_quadhd(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  %mxl692_config = alloca %struct.mxl692_config, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dvb1 = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 2
  %0 = ptrtoint ptr %dvb1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dvb1, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %mxl692_config) #9
  %2 = ptrtoint ptr %mxl692_config to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 0, ptr %mxl692_config, align 8
  %ts = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 80
  %3 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %ts, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp = icmp ne i32 %4, 0
  %conv = zext i1 %cmp to i8
  %5 = ptrtoint ptr %mxl692_config to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv, ptr %mxl692_config, align 8
  %fe2 = getelementptr inbounds %struct.mxl692_config, ptr %mxl692_config, i32 0, i32 2
  %6 = ptrtoint ptr %fe2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %1, ptr %fe2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp4 = icmp eq i32 %4, 0
  %conv7 = select i1 %cmp4, i8 96, i8 99
  %def_i2c_bus = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 23
  %7 = ptrtoint ptr %def_i2c_bus to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %def_i2c_bus, align 4
  %arrayidx8 = getelementptr %struct.em28xx, ptr %dev, i32 0, i32 19, i32 %8
  %call = call ptr @dvb_module_probe(ptr noundef nonnull @.str.196, ptr noundef null, ptr noundef %arrayidx8, i8 noundef zeroext %conv7, ptr noundef nonnull %mxl692_config) #9
  %i2c_client_demod = getelementptr inbounds %struct.em28xx_dvb, ptr %1, i32 0, i32 13
  %9 = ptrtoint ptr %i2c_client_demod to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call, ptr %i2c_client_demod, align 4
  %tobool.not = icmp eq ptr %call, null
  %. = select i1 %tobool.not, i32 -19, i32 0
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %mxl692_config) #9
  ret i32 %.
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @em28xx_tuner_callback(ptr noundef, i32 noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @em28xx_register_dvb(ptr noundef %dvb, ptr noundef %dev, ptr noundef %device) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.em28xx_dvb, ptr %dvb, i32 0, i32 1
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.197, ptr noundef nonnull @em28xx_register_dvb.__key) #9
  %adapter = getelementptr inbounds %struct.em28xx_dvb, ptr %dvb, i32 0, i32 3
  %intf = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 44
  %0 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %intf, align 4
  %init_name.i = getelementptr inbounds %struct.usb_interface, ptr %1, i32 0, i32 7, i32 3
  %2 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.end.i, label %entry.dev_name.exit_crit_edge

entry.dev_name.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev1 = getelementptr inbounds %struct.usb_interface, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev1, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %entry.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %5, %if.end.i ], [ %3, %entry.dev_name.exit_crit_edge ]
  %call2 = tail call i32 @dvb_register_adapter(ptr noundef %adapter, ptr noundef %retval.0.i, ptr noundef null, ptr noundef %device, ptr noundef nonnull @adapter_nr) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %do.end5, label %if.end

do.end5:                                          ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %intf, align 4
  %dev7 = getelementptr inbounds %struct.usb_interface, ptr %7, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev7, ptr noundef nonnull @.str.198, i32 noundef %call2) #12
  br label %cleanup

if.end:                                           ; preds = %dev_name.exit
  %media_dev = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 76
  %8 = ptrtoint ptr %media_dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %media_dev, align 4
  %mdev = getelementptr inbounds %struct.em28xx_dvb, ptr %dvb, i32 0, i32 3, i32 12
  %10 = ptrtoint ptr %mdev to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %mdev, align 4
  %11 = ptrtoint ptr %dvb to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dvb, align 8
  %ts_bus_ctrl = getelementptr inbounds %struct.dvb_frontend, ptr %12, i32 0, i32 1, i32 29
  %13 = ptrtoint ptr %ts_bus_ctrl to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @em28xx_dvb_bus_ctrl, ptr %ts_bus_ctrl, align 4
  %arrayidx10 = getelementptr [2 x ptr], ptr %dvb, i32 0, i32 1
  %14 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx10, align 4
  %tobool.not = icmp eq ptr %15, null
  br i1 %tobool.not, label %if.end.if.end16_crit_edge, label %if.then11

if.end.if.end16_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %ts_bus_ctrl15 = getelementptr inbounds %struct.dvb_frontend, ptr %15, i32 0, i32 1, i32 29
  %16 = ptrtoint ptr %ts_bus_ctrl15 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @em28xx_dvb_bus_ctrl, ptr %ts_bus_ctrl15, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.then11, %if.end.if.end16_crit_edge
  %def_i2c_bus = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 23
  %17 = ptrtoint ptr %def_i2c_bus to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %def_i2c_bus, align 4
  %arrayidx17 = getelementptr %struct.em28xx, ptr %dev, i32 0, i32 21, i32 %18
  %priv = getelementptr inbounds %struct.em28xx_dvb, ptr %dvb, i32 0, i32 3, i32 5
  %19 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %arrayidx17, ptr %priv, align 8
  %20 = ptrtoint ptr %dvb to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dvb, align 8
  %call22 = tail call i32 @dvb_register_frontend(ptr noundef %adapter, ptr noundef %21) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %cmp23 = icmp slt i32 %call22, 0
  br i1 %cmp23, label %do.end27, label %if.end30

do.end27:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  %22 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %intf, align 4
  %dev29 = getelementptr inbounds %struct.usb_interface, ptr %23, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev29, ptr noundef nonnull @.str.202, i32 noundef %call22) #12
  br label %fail_frontend0

if.end30:                                         ; preds = %if.end16
  %24 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx10, align 4
  %tobool33.not = icmp eq ptr %25, null
  br i1 %tobool33.not, label %if.end30.if.end47_crit_edge, label %if.then34

if.end30.if.end47_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end47

if.then34:                                        ; preds = %if.end30
  %call38 = tail call i32 @dvb_register_frontend(ptr noundef %adapter, ptr noundef nonnull %25) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %cmp39 = icmp slt i32 %call38, 0
  br i1 %cmp39, label %do.end43, label %if.then34.if.end47_crit_edge

if.then34.if.end47_crit_edge:                     ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end47

do.end43:                                         ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #11
  %26 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %intf, align 4
  %dev45 = getelementptr inbounds %struct.usb_interface, ptr %27, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev45, ptr noundef nonnull @.str.205, i32 noundef %call38) #12
  br label %fail_frontend1

if.end47:                                         ; preds = %if.then34.if.end47_crit_edge, %if.end30.if.end47_crit_edge
  %demux = getelementptr inbounds %struct.em28xx_dvb, ptr %dvb, i32 0, i32 4
  %28 = ptrtoint ptr %demux to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 13, ptr %demux, align 8
  %priv49 = getelementptr inbounds %struct.em28xx_dvb, ptr %dvb, i32 0, i32 4, i32 1
  %29 = ptrtoint ptr %priv49 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %dvb, ptr %priv49, align 4
  %filternum = getelementptr inbounds %struct.em28xx_dvb, ptr %dvb, i32 0, i32 4, i32 2
  %30 = ptrtoint ptr %filternum to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 256, ptr %filternum, align 8
  %feednum = getelementptr inbounds %struct.em28xx_dvb, ptr %dvb, i32 0, i32 4, i32 3
  %31 = ptrtoint ptr %feednum to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 256, ptr %feednum, align 4
  %start_feed = getelementptr inbounds %struct.em28xx_dvb, ptr %dvb, i32 0, i32 4, i32 4
  %32 = ptrtoint ptr %start_feed to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @em28xx_start_feed, ptr %start_feed, align 8
  %stop_feed = getelementptr inbounds %struct.em28xx_dvb, ptr %dvb, i32 0, i32 4, i32 5
  %33 = ptrtoint ptr %stop_feed to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @em28xx_stop_feed, ptr %stop_feed, align 4
  %call55 = tail call i32 @dvb_dmx_init(ptr noundef %demux) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %cmp56 = icmp slt i32 %call55, 0
  br i1 %cmp56, label %do.end60, label %if.end63

do.end60:                                         ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #11
  %34 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %intf, align 4
  %dev62 = getelementptr inbounds %struct.usb_interface, ptr %35, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev62, ptr noundef nonnull @.str.208, i32 noundef %call55) #12
  br label %fail_dmx

if.end63:                                         ; preds = %if.end47
  %dmxdev = getelementptr inbounds %struct.em28xx_dvb, ptr %dvb, i32 0, i32 5
  %filternum64 = getelementptr inbounds %struct.em28xx_dvb, ptr %dvb, i32 0, i32 5, i32 4
  %36 = ptrtoint ptr %filternum64 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 256, ptr %filternum64, align 8
  %demux68 = getelementptr inbounds %struct.em28xx_dvb, ptr %dvb, i32 0, i32 5, i32 3
  %37 = ptrtoint ptr %demux68 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %demux, ptr %demux68, align 4
  %capabilities70 = getelementptr inbounds %struct.em28xx_dvb, ptr %dvb, i32 0, i32 5, i32 5
  %38 = ptrtoint ptr %capabilities70 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %capabilities70, align 4
  %call73 = tail call i32 @dvb_dmxdev_init(ptr noundef %dmxdev, ptr noundef %adapter) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73)
  %cmp74 = icmp slt i32 %call73, 0
  br i1 %cmp74, label %do.end78, label %if.end81

do.end78:                                         ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #11
  %39 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %intf, align 4
  %dev80 = getelementptr inbounds %struct.usb_interface, ptr %40, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev80, ptr noundef nonnull @.str.211, i32 noundef %call73) #12
  br label %fail_dmxdev

if.end81:                                         ; preds = %if.end63
  %fe_hw = getelementptr inbounds %struct.em28xx_dvb, ptr %dvb, i32 0, i32 6
  %source = getelementptr inbounds %struct.em28xx_dvb, ptr %dvb, i32 0, i32 6, i32 1
  %41 = ptrtoint ptr %source to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 1, ptr %source, align 8
  %add_frontend = getelementptr inbounds %struct.em28xx_dvb, ptr %dvb, i32 0, i32 4, i32 0, i32 10
  %42 = ptrtoint ptr %add_frontend to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %add_frontend, align 8
  %call87 = tail call i32 %43(ptr noundef %demux, ptr noundef %fe_hw) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call87)
  %cmp88 = icmp slt i32 %call87, 0
  br i1 %cmp88, label %do.end92, label %if.end95

do.end92:                                         ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #11
  %44 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %intf, align 4
  %dev94 = getelementptr inbounds %struct.usb_interface, ptr %45, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev94, ptr noundef nonnull @.str.214, i32 noundef %call87) #12
  br label %fail_fe_hw

if.end95:                                         ; preds = %if.end81
  %fe_mem = getelementptr inbounds %struct.em28xx_dvb, ptr %dvb, i32 0, i32 7
  %source96 = getelementptr inbounds %struct.em28xx_dvb, ptr %dvb, i32 0, i32 7, i32 1
  %46 = ptrtoint ptr %source96 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 0, ptr %source96, align 4
  %47 = ptrtoint ptr %add_frontend to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %add_frontend, align 8
  %call103 = tail call i32 %48(ptr noundef %demux, ptr noundef %fe_mem) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call103)
  %cmp104 = icmp slt i32 %call103, 0
  br i1 %cmp104, label %do.end108, label %if.end111

do.end108:                                        ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #11
  %49 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %intf, align 4
  %dev110 = getelementptr inbounds %struct.usb_interface, ptr %50, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev110, ptr noundef nonnull @.str.217, i32 noundef %call103) #12
  br label %fail_fe_mem

if.end111:                                        ; preds = %if.end95
  %connect_frontend = getelementptr inbounds %struct.em28xx_dvb, ptr %dvb, i32 0, i32 4, i32 0, i32 13
  %51 = ptrtoint ptr %connect_frontend to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %connect_frontend, align 4
  %call117 = tail call i32 %52(ptr noundef %demux, ptr noundef %fe_hw) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call117)
  %cmp118 = icmp slt i32 %call117, 0
  br i1 %cmp118, label %do.end122, label %if.end125

do.end122:                                        ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #11
  %53 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %intf, align 4
  %dev124 = getelementptr inbounds %struct.usb_interface, ptr %54, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev124, ptr noundef nonnull @.str.220, i32 noundef %call117) #12
  br label %fail_fe_conn

if.end125:                                        ; preds = %if.end111
  %net = getelementptr inbounds %struct.em28xx_dvb, ptr %dvb, i32 0, i32 8
  %call129 = tail call i32 @dvb_net_init(ptr noundef %adapter, ptr noundef %net, ptr noundef %demux) #9
  %has_video = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 8
  %55 = ptrtoint ptr %has_video to i32
  call void @__asan_load1_noabort(i32 %55)
  %bf.load = load i8, ptr %has_video, align 4
  %56 = and i8 %bf.load, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %tobool130.not = icmp eq i8 %56, 0
  br i1 %tobool130.not, label %if.end125.if.then132_crit_edge, label %lor.lhs.false

if.end125.if.then132_crit_edge:                   ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then132

lor.lhs.false:                                    ; preds = %if.end125
  %tuner_type = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 18
  %57 = ptrtoint ptr %tuner_type to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %tuner_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %58)
  %cmp131 = icmp eq i32 %58, 4
  br i1 %cmp131, label %lor.lhs.false.if.then132_crit_edge, label %lor.lhs.false.if.end133_crit_edge

lor.lhs.false.if.end133_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end133

lor.lhs.false.if.then132_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then132

if.then132:                                       ; preds = %lor.lhs.false.if.then132_crit_edge, %if.end125.if.then132_crit_edge
  br label %if.end133

if.end133:                                        ; preds = %if.then132, %lor.lhs.false.if.end133_crit_edge
  %create_rf_connector.0.off0 = phi i1 [ true, %if.then132 ], [ false, %lor.lhs.false.if.end133_crit_edge ]
  %call136 = tail call i32 @dvb_create_media_graph(ptr noundef %adapter, i1 noundef zeroext %create_rf_connector.0.off0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call136)
  %cmp137 = icmp slt i32 %call136, 0
  br i1 %cmp137, label %fail_create_graph, label %if.end133.cleanup_crit_edge

if.end133.cleanup_crit_edge:                      ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

fail_create_graph:                                ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dvb_net_release(ptr noundef %net) #9
  br label %fail_fe_conn

fail_fe_conn:                                     ; preds = %fail_create_graph, %do.end122
  %result.0 = phi i32 [ %call117, %do.end122 ], [ %call136, %fail_create_graph ]
  %remove_frontend = getelementptr inbounds %struct.em28xx_dvb, ptr %dvb, i32 0, i32 4, i32 0, i32 11
  %59 = ptrtoint ptr %remove_frontend to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %remove_frontend, align 4
  %call146 = tail call i32 %60(ptr noundef %demux, ptr noundef %fe_mem) #9
  br label %fail_fe_mem

fail_fe_mem:                                      ; preds = %fail_fe_conn, %do.end108
  %result.1 = phi i32 [ %call103, %do.end108 ], [ %result.0, %fail_fe_conn ]
  %remove_frontend149 = getelementptr inbounds %struct.em28xx_dvb, ptr %dvb, i32 0, i32 4, i32 0, i32 11
  %61 = ptrtoint ptr %remove_frontend149 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %remove_frontend149, align 4
  %call153 = tail call i32 %62(ptr noundef %demux, ptr noundef %fe_hw) #9
  br label %fail_fe_hw

fail_fe_hw:                                       ; preds = %fail_fe_mem, %do.end92
  %result.2 = phi i32 [ %call87, %do.end92 ], [ %result.1, %fail_fe_mem ]
  tail call void @dvb_dmxdev_release(ptr noundef %dmxdev) #9
  br label %fail_dmxdev

fail_dmxdev:                                      ; preds = %fail_fe_hw, %do.end78
  %result.3 = phi i32 [ %call73, %do.end78 ], [ %result.2, %fail_fe_hw ]
  tail call void @dvb_dmx_release(ptr noundef %demux) #9
  br label %fail_dmx

fail_dmx:                                         ; preds = %fail_dmxdev, %do.end60
  %result.4 = phi i32 [ %call55, %do.end60 ], [ %result.3, %fail_dmxdev ]
  %63 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %arrayidx10, align 4
  %tobool158.not = icmp eq ptr %64, null
  br i1 %tobool158.not, label %fail_dmx.if.end163_crit_edge, label %if.then159

fail_dmx.if.end163_crit_edge:                     ; preds = %fail_dmx
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end163

if.then159:                                       ; preds = %fail_dmx
  call void @__sanitizer_cov_trace_pc() #11
  %call162 = tail call i32 @dvb_unregister_frontend(ptr noundef nonnull %64) #9
  br label %if.end163

if.end163:                                        ; preds = %if.then159, %fail_dmx.if.end163_crit_edge
  %65 = ptrtoint ptr %dvb to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %dvb, align 8
  %call166 = tail call i32 @dvb_unregister_frontend(ptr noundef %66) #9
  br label %fail_frontend1

fail_frontend1:                                   ; preds = %if.end163, %do.end43
  %result.5 = phi i32 [ %call38, %do.end43 ], [ %result.4, %if.end163 ]
  %67 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %arrayidx10, align 4
  %tobool169.not = icmp eq ptr %68, null
  br i1 %tobool169.not, label %fail_frontend1.fail_frontend0_crit_edge, label %if.then170

fail_frontend1.fail_frontend0_crit_edge:          ; preds = %fail_frontend1
  call void @__sanitizer_cov_trace_pc() #11
  br label %fail_frontend0

if.then170:                                       ; preds = %fail_frontend1
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dvb_frontend_detach(ptr noundef nonnull %68) #9
  br label %fail_frontend0

fail_frontend0:                                   ; preds = %if.then170, %fail_frontend1.fail_frontend0_crit_edge, %do.end27
  %result.6 = phi i32 [ %call22, %do.end27 ], [ %result.5, %if.then170 ], [ %result.5, %fail_frontend1.fail_frontend0_crit_edge ]
  %69 = ptrtoint ptr %dvb to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %dvb, align 8
  tail call void @dvb_frontend_detach(ptr noundef %70) #9
  %call177 = tail call i32 @dvb_unregister_adapter(ptr noundef %adapter) #9
  br label %cleanup

cleanup:                                          ; preds = %fail_frontend0, %if.end133.cleanup_crit_edge, %do.end5
  %retval.0 = phi i32 [ 0, %if.end133.cleanup_crit_edge ], [ %call2, %do.end5 ], [ %result.6, %fail_frontend0 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_set_interface(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @kref_get(ptr noundef %kref) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %kref, i32 1, i32 3, i32 1) #9
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref, ptr %kref, i32 1, ptr elementtype(i32) %kref) #9, !srcloc !532
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %entry.if.end15.sink.split.i.i.i_crit_edge, label %if.else.i.i.i, !prof !533

entry.if.end15.sink.split.i.i.i_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i:                                    ; preds = %entry
  %add.i.i.i = add i32 %asmresult.i.i.i.i.i, 1
  %1 = or i32 %add.i.i.i, %asmresult.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %.not.i.i.i = icmp sgt i32 %1, -1
  br i1 %.not.i.i.i, label %if.else.i.i.i.refcount_inc.exit_crit_edge, label %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, !prof !534

if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i.refcount_inc.exit_crit_edge:        ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %refcount_inc.exit

if.end15.sink.split.i.i.i:                        ; preds = %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, %entry.if.end15.sink.split.i.i.i_crit_edge
  %.sink.i.i.i = phi i32 [ 2, %entry.if.end15.sink.split.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %kref, i32 noundef %.sink.i.i.i) #9
  br label %refcount_inc.exit

refcount_inc.exit:                                ; preds = %if.end15.sink.split.i.i.i, %if.else.i.i.i.refcount_inc.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @em28xx_uninit_usb_xfer(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @em28xx_setup_xc3028(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @em28xx_mt352_terratec_xs_init(ptr noundef %fe) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %write.i = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 9
  %0 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %write.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.mt352_write.exit_crit_edge, label %if.then.i

entry.mt352_write.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %mt352_write.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call.i = tail call i32 %1(ptr noundef %fe, ptr noundef nonnull @em28xx_mt352_terratec_xs_init.clock_config, i32 noundef 3) #9
  br label %mt352_write.exit

mt352_write.exit:                                 ; preds = %if.then.i, %entry.mt352_write.exit_crit_edge
  tail call void @usleep_range_state(i32 noundef 200, i32 noundef 250, i32 noundef 2) #9
  %2 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %write.i, align 4
  %tobool.not.i20 = icmp eq ptr %3, null
  br i1 %tobool.not.i20, label %mt352_write.exit.mt352_write.exit63_crit_edge, label %mt352_write.exit23

mt352_write.exit.mt352_write.exit63_crit_edge:    ; preds = %mt352_write.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %mt352_write.exit63

mt352_write.exit23:                               ; preds = %mt352_write.exit
  %call.i21 = tail call i32 %3(ptr noundef %fe, ptr noundef nonnull @em28xx_mt352_terratec_xs_init.reset, i32 noundef 2) #9
  %4 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pr = load ptr, ptr %write.i, align 4
  %tobool.not.i25 = icmp eq ptr %.pr, null
  br i1 %tobool.not.i25, label %mt352_write.exit23.mt352_write.exit63_crit_edge, label %mt352_write.exit28

mt352_write.exit23.mt352_write.exit63_crit_edge:  ; preds = %mt352_write.exit23
  call void @__sanitizer_cov_trace_pc() #11
  br label %mt352_write.exit63

mt352_write.exit28:                               ; preds = %mt352_write.exit23
  %call.i26 = tail call i32 %.pr(ptr noundef %fe, ptr noundef nonnull @em28xx_mt352_terratec_xs_init.adc_ctl_1_cfg, i32 noundef 2) #9
  %5 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %.pr65 = load ptr, ptr %write.i, align 4
  %tobool.not.i30 = icmp eq ptr %.pr65, null
  br i1 %tobool.not.i30, label %mt352_write.exit28.mt352_write.exit63_crit_edge, label %mt352_write.exit33

mt352_write.exit28.mt352_write.exit63_crit_edge:  ; preds = %mt352_write.exit28
  call void @__sanitizer_cov_trace_pc() #11
  br label %mt352_write.exit63

mt352_write.exit33:                               ; preds = %mt352_write.exit28
  %call.i31 = tail call i32 %.pr65(ptr noundef %fe, ptr noundef nonnull @em28xx_mt352_terratec_xs_init.agc_cfg, i32 noundef 3) #9
  %6 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pr67.pr = load ptr, ptr %write.i, align 4
  %tobool.not.i35 = icmp eq ptr %.pr67.pr, null
  br i1 %tobool.not.i35, label %mt352_write.exit33.mt352_write.exit63_crit_edge, label %mt352_write.exit38

mt352_write.exit33.mt352_write.exit63_crit_edge:  ; preds = %mt352_write.exit33
  call void @__sanitizer_cov_trace_pc() #11
  br label %mt352_write.exit63

mt352_write.exit38:                               ; preds = %mt352_write.exit33
  %call.i36 = tail call i32 %.pr67.pr(ptr noundef %fe, ptr noundef nonnull @em28xx_mt352_terratec_xs_init.input_freq_cfg, i32 noundef 3) #9
  %7 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %.pr69 = load ptr, ptr %write.i, align 4
  %tobool.not.i40 = icmp eq ptr %.pr69, null
  br i1 %tobool.not.i40, label %mt352_write.exit38.mt352_write.exit63_crit_edge, label %mt352_write.exit43

mt352_write.exit38.mt352_write.exit63_crit_edge:  ; preds = %mt352_write.exit38
  call void @__sanitizer_cov_trace_pc() #11
  br label %mt352_write.exit63

mt352_write.exit43:                               ; preds = %mt352_write.exit38
  %call.i41 = tail call i32 %.pr69(ptr noundef %fe, ptr noundef nonnull @em28xx_mt352_terratec_xs_init.rs_err_cfg, i32 noundef 3) #9
  %8 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pr71.pr.pr = load ptr, ptr %write.i, align 4
  %tobool.not.i45 = icmp eq ptr %.pr71.pr.pr, null
  br i1 %tobool.not.i45, label %mt352_write.exit43.mt352_write.exit63_crit_edge, label %mt352_write.exit48

mt352_write.exit43.mt352_write.exit63_crit_edge:  ; preds = %mt352_write.exit43
  call void @__sanitizer_cov_trace_pc() #11
  br label %mt352_write.exit63

mt352_write.exit48:                               ; preds = %mt352_write.exit43
  %call.i46 = tail call i32 %.pr71.pr.pr(ptr noundef %fe, ptr noundef nonnull @em28xx_mt352_terratec_xs_init.capt_range_cfg, i32 noundef 2) #9
  %9 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %.pr73 = load ptr, ptr %write.i, align 4
  %tobool.not.i50 = icmp eq ptr %.pr73, null
  br i1 %tobool.not.i50, label %mt352_write.exit48.mt352_write.exit63_crit_edge, label %mt352_write.exit53

mt352_write.exit48.mt352_write.exit63_crit_edge:  ; preds = %mt352_write.exit48
  call void @__sanitizer_cov_trace_pc() #11
  br label %mt352_write.exit63

mt352_write.exit53:                               ; preds = %mt352_write.exit48
  %call.i51 = tail call i32 %.pr73(ptr noundef %fe, ptr noundef nonnull @em28xx_mt352_terratec_xs_init.trl_nom_cfg, i32 noundef 3) #9
  %10 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pr75.pr.pr = load ptr, ptr %write.i, align 4
  %tobool.not.i55 = icmp eq ptr %.pr75.pr.pr, null
  br i1 %tobool.not.i55, label %mt352_write.exit53.mt352_write.exit63_crit_edge, label %mt352_write.exit58

mt352_write.exit53.mt352_write.exit63_crit_edge:  ; preds = %mt352_write.exit53
  call void @__sanitizer_cov_trace_pc() #11
  br label %mt352_write.exit63

mt352_write.exit58:                               ; preds = %mt352_write.exit53
  %call.i56 = tail call i32 %.pr75.pr.pr(ptr noundef %fe, ptr noundef nonnull @em28xx_mt352_terratec_xs_init.tps_given_cfg, i32 noundef 4) #9
  %11 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %.pr77 = load ptr, ptr %write.i, align 4
  %tobool.not.i60 = icmp eq ptr %.pr77, null
  br i1 %tobool.not.i60, label %mt352_write.exit58.mt352_write.exit63_crit_edge, label %if.then.i62

mt352_write.exit58.mt352_write.exit63_crit_edge:  ; preds = %mt352_write.exit58
  call void @__sanitizer_cov_trace_pc() #11
  br label %mt352_write.exit63

if.then.i62:                                      ; preds = %mt352_write.exit58
  call void @__sanitizer_cov_trace_pc() #11
  %call.i61 = tail call i32 %.pr77(ptr noundef %fe, ptr noundef nonnull @em28xx_mt352_terratec_xs_init.tuner_go, i32 noundef 2) #9
  br label %mt352_write.exit63

mt352_write.exit63:                               ; preds = %if.then.i62, %mt352_write.exit58.mt352_write.exit63_crit_edge, %mt352_write.exit53.mt352_write.exit63_crit_edge, %mt352_write.exit48.mt352_write.exit63_crit_edge, %mt352_write.exit43.mt352_write.exit63_crit_edge, %mt352_write.exit38.mt352_write.exit63_crit_edge, %mt352_write.exit33.mt352_write.exit63_crit_edge, %mt352_write.exit28.mt352_write.exit63_crit_edge, %mt352_write.exit23.mt352_write.exit63_crit_edge, %mt352_write.exit.mt352_write.exit63_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @em28xx_gpio_set(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @em28xx_write_reg(ptr noundef, i16 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer_buffer_flags(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @down(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @up(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @dvb_module_release(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @em28xx_pctv_292e_set_lna(ptr nocapture noundef readonly %fe) #2 align 64 {
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
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %lna2 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 41
  %6 = ptrtoint ptr %lna2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %lna2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp = icmp eq i32 %7, 1
  %. = zext i1 %cmp to i8
  %call = tail call i32 @em28xx_write_reg_bits(ptr noundef %5, i16 noundef zeroext 128, i8 noundef zeroext %., i8 noundef zeroext 1) #9
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @em28xx_write_reg_bits(ptr noundef, i16 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_register_adapter(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @em28xx_dvb_bus_ctrl(ptr nocapture noundef readonly %fe, i32 noundef %acquire) #2 align 64 {
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
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %acquire)
  %tobool.not = icmp eq i32 %acquire, 0
  %. = select i1 %tobool.not, i32 0, i32 2
  %call2 = tail call i32 @em28xx_set_mode(ptr noundef %5, i32 noundef %.) #9
  ret i32 %call2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_register_frontend(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @em28xx_start_feed(ptr nocapture noundef readonly %feed) #2 align 64 {
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
  %frontend = getelementptr inbounds %struct.dmx_demux, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %frontend to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %frontend, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %lock = getelementptr inbounds %struct.em28xx_dvb, ptr %3, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #9
  %nfeeds = getelementptr inbounds %struct.em28xx_dvb, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %nfeeds to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nfeeds, align 4
  %inc = add i32 %7, 1
  store i32 %inc, ptr %nfeeds, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp = icmp eq i32 %7, 0
  br i1 %cmp, label %if.then4, label %if.end.if.end8_crit_edge

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

if.then4:                                         ; preds = %if.end
  %priv.i = getelementptr inbounds %struct.em28xx_dvb, ptr %3, i32 0, i32 3, i32 5
  %8 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %priv.i, align 8
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %intf.i = getelementptr inbounds %struct.em28xx, ptr %11, i32 0, i32 44
  %12 = ptrtoint ptr %intf.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %intf.i, align 4
  %parent.i.i = getelementptr inbounds %struct.usb_interface, ptr %13, i32 0, i32 7, i32 1
  %14 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %parent.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %15, i32 -128
  %dvb_xfer_bulk.i = getelementptr inbounds %struct.em28xx, ptr %11, i32 0, i32 61
  %16 = ptrtoint ptr %dvb_xfer_bulk.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %bf.load.i = load i8, ptr %dvb_xfer_bulk.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.then4
  %dvb_ep_bulk.i = getelementptr inbounds %struct.em28xx, ptr %11, i32 0, i32 51
  %17 = ptrtoint ptr %dvb_ep_bulk.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %dvb_ep_bulk.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool2.not.i = icmp eq i8 %18, 0
  br i1 %tobool2.not.i, label %if.then.i.em28xx_start_streaming.exit.thread_crit_edge, label %if.then.i.if.end9.i_crit_edge

if.then.i.if.end9.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9.i

if.then.i.em28xx_start_streaming.exit.thread_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %em28xx_start_streaming.exit.thread

if.else.i:                                        ; preds = %if.then4
  %dvb_ep_isoc.i = getelementptr inbounds %struct.em28xx, ptr %11, i32 0, i32 50
  %19 = ptrtoint ptr %dvb_ep_isoc.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %dvb_ep_isoc.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool4.not.i = icmp eq i8 %20, 0
  br i1 %tobool4.not.i, label %if.else.i.em28xx_start_streaming.exit.thread_crit_edge, label %if.end6.i

if.else.i.em28xx_start_streaming.exit.thread_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %em28xx_start_streaming.exit.thread

if.end6.i:                                        ; preds = %if.else.i
  %dvb_max_pkt_size_isoc.i = getelementptr inbounds %struct.em28xx, ptr %11, i32 0, i32 59
  %21 = ptrtoint ptr %dvb_max_pkt_size_isoc.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %dvb_max_pkt_size_isoc.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp.i = icmp slt i32 %22, 0
  br i1 %cmp.i, label %if.end6.i.em28xx_start_streaming.exit.thread_crit_edge, label %if.end8.i

if.end6.i.em28xx_start_streaming.exit.thread_crit_edge: ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %em28xx_start_streaming.exit.thread

if.end8.i:                                        ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #11
  %dvb_alt_isoc.i = getelementptr inbounds %struct.em28xx, ptr %11, i32 0, i32 58
  %23 = ptrtoint ptr %dvb_alt_isoc.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %dvb_alt_isoc.i, align 8
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.end8.i, %if.then.i.if.end9.i_crit_edge
  %dvb_max_packet_size.0.i = phi i32 [ %22, %if.end8.i ], [ 512, %if.then.i.if.end9.i_crit_edge ]
  %packet_multiplier.0.i = phi i32 [ 64, %if.end8.i ], [ 94, %if.then.i.if.end9.i_crit_edge ]
  %dvb_alt.0.i = phi i32 [ %24, %if.end8.i ], [ 0, %if.then.i.if.end9.i_crit_edge ]
  %has_dual_ts.i = getelementptr inbounds %struct.em28xx, ptr %11, i32 0, i32 12, i32 10
  %25 = ptrtoint ptr %has_dual_ts.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %bf.load10.i = load i16, ptr %has_dual_ts.i, align 8
  %26 = and i16 %bf.load10.i, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %26)
  %tobool13.not.i = icmp eq i16 %26, 0
  br i1 %tobool13.not.i, label %if.then14.i, label %if.end9.i.if.end16.i_crit_edge

if.end9.i.if.end16.i_crit_edge:                   ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16.i

if.then14.i:                                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #11
  %ifnum.i = getelementptr inbounds %struct.em28xx, ptr %11, i32 0, i32 45
  %27 = ptrtoint ptr %ifnum.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %ifnum.i, align 8
  %conv.i = zext i8 %28 to i32
  %call15.i = tail call i32 @usb_set_interface(ptr noundef %add.ptr.i.i, i32 noundef %conv.i, i32 noundef %dvb_alt.0.i) #9
  br label %if.end16.i

if.end16.i:                                       ; preds = %if.then14.i, %if.end9.i.if.end16.i_crit_edge
  %call17.i = tail call i32 @em28xx_set_mode(ptr noundef %11, i32 noundef 2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i)
  %cmp18.i = icmp slt i32 %call17.i, 0
  br i1 %cmp18.i, label %if.end16.i.em28xx_start_streaming.exit.thread_crit_edge, label %do.body.i

if.end16.i.em28xx_start_streaming.exit.thread_crit_edge: ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %em28xx_start_streaming.exit.thread

do.body.i:                                        ; preds = %if.end16.i
  %29 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp22.not.i = icmp eq i32 %29, 0
  br i1 %cmp22.not.i, label %do.body.i.em28xx_start_streaming.exit_crit_edge, label %do.end.i

do.body.i.em28xx_start_streaming.exit_crit_edge:  ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %em28xx_start_streaming.exit

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %30 = ptrtoint ptr %intf.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %intf.i, align 4
  %dev27.i = getelementptr inbounds %struct.usb_interface, ptr %31, i32 0, i32 7
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.224, ptr noundef %dev27.i, ptr noundef nonnull @.str.222, i32 noundef 5, i32 noundef %packet_multiplier.0.i, i32 noundef %dvb_max_packet_size.0.i, i32 noundef %dvb_alt.0.i) #12
  br label %em28xx_start_streaming.exit

em28xx_start_streaming.exit:                      ; preds = %do.end.i, %do.body.i.em28xx_start_streaming.exit_crit_edge
  %32 = ptrtoint ptr %dvb_xfer_bulk.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %bf.load32.i = load i8, ptr %dvb_xfer_bulk.i, align 4
  %bf.lshr33.i = lshr i8 %bf.load32.i, 7
  %bf.cast34.i = zext i8 %bf.lshr33.i to i32
  %call35.i = tail call i32 @em28xx_init_usb_xfer(ptr noundef %11, i32 noundef 2, i32 noundef %bf.cast34.i, i32 noundef 5, i32 noundef %dvb_max_packet_size.0.i, i32 noundef %packet_multiplier.0.i, ptr noundef nonnull @em28xx_dvb_urb_data_copy) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35.i)
  %cmp5 = icmp slt i32 %call35.i, 0
  br i1 %cmp5, label %em28xx_start_streaming.exit.em28xx_start_streaming.exit.thread_crit_edge, label %em28xx_start_streaming.exit.if.end8_crit_edge

em28xx_start_streaming.exit.if.end8_crit_edge:    ; preds = %em28xx_start_streaming.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

em28xx_start_streaming.exit.em28xx_start_streaming.exit.thread_crit_edge: ; preds = %em28xx_start_streaming.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %em28xx_start_streaming.exit.thread

em28xx_start_streaming.exit.thread:               ; preds = %em28xx_start_streaming.exit.em28xx_start_streaming.exit.thread_crit_edge, %if.end16.i.em28xx_start_streaming.exit.thread_crit_edge, %if.end6.i.em28xx_start_streaming.exit.thread_crit_edge, %if.else.i.em28xx_start_streaming.exit.thread_crit_edge, %if.then.i.em28xx_start_streaming.exit.thread_crit_edge
  %retval.0.i22 = phi i32 [ %call35.i, %em28xx_start_streaming.exit.em28xx_start_streaming.exit.thread_crit_edge ], [ %call17.i, %if.end16.i.em28xx_start_streaming.exit.thread_crit_edge ], [ %22, %if.end6.i.em28xx_start_streaming.exit.thread_crit_edge ], [ -19, %if.else.i.em28xx_start_streaming.exit.thread_crit_edge ], [ -19, %if.then.i.em28xx_start_streaming.exit.thread_crit_edge ]
  br label %if.end8

if.end8:                                          ; preds = %em28xx_start_streaming.exit.thread, %em28xx_start_streaming.exit.if.end8_crit_edge, %if.end.if.end8_crit_edge
  %rc.0 = phi i32 [ %inc, %if.end.if.end8_crit_edge ], [ %retval.0.i22, %em28xx_start_streaming.exit.thread ], [ 1, %em28xx_start_streaming.exit.if.end8_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.0, %if.end8 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @em28xx_stop_feed(ptr nocapture noundef readonly %feed) #2 align 64 {
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
  %lock = getelementptr inbounds %struct.em28xx_dvb, ptr %3, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #9
  %nfeeds = getelementptr inbounds %struct.em28xx_dvb, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %nfeeds to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nfeeds, align 4
  %dec = add i32 %5, -1
  store i32 %dec, ptr %nfeeds, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %priv.i = getelementptr inbounds %struct.em28xx_dvb, ptr %3, i32 0, i32 3, i32 5
  %6 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %priv.i, align 8
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  tail call void @em28xx_stop_urbs(ptr noundef %9) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock) #9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_dmx_init(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_dmxdev_init(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_net_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_create_media_graph(ptr noundef, i1 noundef zeroext) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @dvb_net_release(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @dvb_dmxdev_release(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @dvb_dmx_release(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_unregister_frontend(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_unregister_adapter(ptr noundef) local_unnamed_addr #0

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @em28xx_init_usb_xfer(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @em28xx_dvb_urb_data_copy(ptr noundef readonly %dev, ptr nocapture noundef readonly %urb) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %tobool.not = icmp eq ptr %dev, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %disconnected = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %disconnected to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %disconnected, align 4
  %1 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool1.not = icmp eq i8 %1, 0
  br i1 %tobool1.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %status = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %2 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp slt i32 %3, 0
  br i1 %cmp, label %if.then4, label %if.end3.if.end6_crit_edge

if.end3.if.end6_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

if.then4:                                         ; preds = %if.end3
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.257)
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i

sw.bb.i:                                          ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i

sw.bb1.i:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i

sw.bb2.i:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i

sw.bb3.i:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i

sw.bb4.i:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i

sw.bb5.i:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i

sw.bb6.i:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i

sw.bb7.i:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb7.i, %sw.bb6.i, %sw.bb5.i, %sw.bb4.i, %sw.bb3.i, %sw.bb2.i, %sw.bb1.i, %sw.bb.i, %if.then4.sw.epilog.i_crit_edge
  %errmsg.0.i = phi ptr [ @.str.225, %if.then4.sw.epilog.i_crit_edge ], [ @.str.233, %sw.bb7.i ], [ @.str.232, %sw.bb6.i ], [ @.str.231, %sw.bb5.i ], [ @.str.230, %sw.bb4.i ], [ @.str.229, %sw.bb3.i ], [ @.str.228, %sw.bb2.i ], [ @.str.227, %sw.bb1.i ], [ @.str.226, %sw.bb.i ]
  %5 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp8.not.i = icmp eq i32 %5, 0
  br i1 %cmp8.not.i, label %sw.epilog.i.if.end6_crit_edge, label %do.end.i

sw.epilog.i.if.end6_crit_edge:                    ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

do.end.i:                                         ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #11
  %intf.i = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 44
  %6 = ptrtoint ptr %intf.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %intf.i, align 4
  %dev11.i = getelementptr inbounds %struct.usb_interface, ptr %7, i32 0, i32 7
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.224, ptr noundef %dev11.i, ptr noundef nonnull @.str.234, i32 noundef %3, ptr noundef nonnull %errmsg.0.i) #12
  br label %if.end6

if.end6:                                          ; preds = %do.end.i, %sw.epilog.i.if.end6_crit_edge, %if.end3.if.end6_crit_edge
  %pipe = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 10
  %8 = ptrtoint ptr %pipe to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pipe, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1073741825, i32 %9)
  %cmp7 = icmp ugt i32 %9, -1073741825
  br i1 %cmp7, label %if.end6.for.body.lr.ph_crit_edge, label %if.end10

if.end6.for.body.lr.ph_crit_edge:                 ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.lr.ph

if.end10:                                         ; preds = %if.end6
  %number_of_packets = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 24
  %10 = ptrtoint ptr %number_of_packets to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %number_of_packets, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp11135 = icmp sgt i32 %11, 0
  br i1 %cmp11135, label %if.end10.for.body.lr.ph_crit_edge, label %if.end10.cleanup_crit_edge

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end10.for.body.lr.ph_crit_edge:                ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %if.end10.for.body.lr.ph_crit_edge, %if.end6.for.body.lr.ph_crit_edge
  %num_packets.0144 = phi i32 [ %11, %if.end10.for.body.lr.ph_crit_edge ], [ 1, %if.end6.for.body.lr.ph_crit_edge ]
  %intf20.i131 = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 44
  %dvb52 = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 2
  %transfer_buffer54 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 14
  %actual_length = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 20
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0136 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  br i1 %cmp7, label %if.then14, label %if.else30

if.then14:                                        ; preds = %for.body
  %12 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp16 = icmp slt i32 %13, 0
  br i1 %cmp16, label %if.then18, label %if.then14.if.end25_crit_edge

if.then14.if.end25_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25

if.then18:                                        ; preds = %if.then14
  %14 = zext i32 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.258)
  switch i32 %13, label %if.then18.do.body14.i_crit_edge [
    i32 -2, label %sw.bb.i99
    i32 -104, label %sw.bb1.i100
    i32 -63, label %sw.bb2.i101
    i32 -32, label %sw.bb3.i102
    i32 -75, label %sw.bb4.i103
    i32 -71, label %sw.bb5.i104
    i32 -84, label %sw.bb6.i105
    i32 -62, label %sw.bb7.i106
  ]

if.then18.do.body14.i_crit_edge:                  ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body14.i

sw.bb.i99:                                        ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body14.i

sw.bb1.i100:                                      ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body14.i

sw.bb2.i101:                                      ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body14.i

sw.bb3.i102:                                      ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body14.i

sw.bb4.i103:                                      ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body14.i

sw.bb5.i104:                                      ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body14.i

sw.bb6.i105:                                      ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body14.i

sw.bb7.i106:                                      ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body14.i

do.body14.i:                                      ; preds = %sw.bb7.i106, %sw.bb6.i105, %sw.bb5.i104, %sw.bb4.i103, %sw.bb3.i102, %sw.bb2.i101, %sw.bb1.i100, %sw.bb.i99, %if.then18.do.body14.i_crit_edge
  %errmsg.0.i107 = phi ptr [ @.str.225, %if.then18.do.body14.i_crit_edge ], [ @.str.233, %sw.bb7.i106 ], [ @.str.232, %sw.bb6.i105 ], [ @.str.231, %sw.bb5.i104 ], [ @.str.230, %sw.bb4.i103 ], [ @.str.229, %sw.bb3.i102 ], [ @.str.228, %sw.bb2.i101 ], [ @.str.227, %sw.bb1.i100 ], [ @.str.226, %sw.bb.i99 ]
  %15 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp8.not.i108 = icmp eq i32 %15, 0
  br i1 %cmp8.not.i108, label %do.body14.i.print_err_status.exit113_crit_edge, label %do.end19.i

do.body14.i.print_err_status.exit113_crit_edge:   ; preds = %do.body14.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %print_err_status.exit113

do.end19.i:                                       ; preds = %do.body14.i
  call void @__sanitizer_cov_trace_pc() #11
  %16 = ptrtoint ptr %intf20.i131 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %intf20.i131, align 4
  %dev21.i = getelementptr inbounds %struct.usb_interface, ptr %17, i32 0, i32 7
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.224, ptr noundef %dev21.i, ptr noundef nonnull @.str.237, i32 noundef %i.0136, i32 noundef %13, ptr noundef nonnull %errmsg.0.i107) #12
  br label %print_err_status.exit113

print_err_status.exit113:                         ; preds = %do.end19.i, %do.body14.i.print_err_status.exit113_crit_edge
  %18 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -71, i32 %19)
  %cmp21.not = icmp eq i32 %19, -71
  br i1 %cmp21.not, label %print_err_status.exit113.if.end25_crit_edge, label %print_err_status.exit113.for.inc_crit_edge

print_err_status.exit113.for.inc_crit_edge:       ; preds = %print_err_status.exit113
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

print_err_status.exit113.if.end25_crit_edge:      ; preds = %print_err_status.exit113
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25

if.end25:                                         ; preds = %print_err_status.exit113.if.end25_crit_edge, %if.then14.if.end25_crit_edge
  %20 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %actual_length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool26.not = icmp eq i32 %21, 0
  br i1 %tobool26.not, label %if.end25.for.inc_crit_edge, label %if.end28

if.end25.for.inc_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end28:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  %22 = ptrtoint ptr %dvb52 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dvb52, align 8
  %demux = getelementptr inbounds %struct.em28xx_dvb, ptr %23, i32 0, i32 4
  %24 = ptrtoint ptr %transfer_buffer54 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %transfer_buffer54, align 4
  tail call void @dvb_dmx_swfilter(ptr noundef %demux, ptr noundef %25, i32 noundef %21) #9
  br label %for.inc

if.else30:                                        ; preds = %for.body
  %arrayidx = getelementptr %struct.urb, ptr %urb, i32 0, i32 29, i32 %i.0136
  %status31 = getelementptr %struct.urb, ptr %urb, i32 0, i32 29, i32 %i.0136, i32 3
  %26 = ptrtoint ptr %status31 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %status31, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp32 = icmp slt i32 %27, 0
  br i1 %cmp32, label %if.then34, label %if.else30.if.end45_crit_edge

if.else30.if.end45_crit_edge:                     ; preds = %if.else30
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end45

if.then34:                                        ; preds = %if.else30
  %28 = zext i32 %27 to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.259)
  switch i32 %27, label %if.then34.do.body14.i130_crit_edge [
    i32 -2, label %sw.bb.i114
    i32 -104, label %sw.bb1.i115
    i32 -63, label %sw.bb2.i116
    i32 -32, label %sw.bb3.i117
    i32 -75, label %sw.bb4.i118
    i32 -71, label %sw.bb5.i119
    i32 -84, label %sw.bb6.i120
    i32 -62, label %sw.bb7.i121
  ]

if.then34.do.body14.i130_crit_edge:               ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body14.i130

sw.bb.i114:                                       ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body14.i130

sw.bb1.i115:                                      ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body14.i130

sw.bb2.i116:                                      ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body14.i130

sw.bb3.i117:                                      ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body14.i130

sw.bb4.i118:                                      ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body14.i130

sw.bb5.i119:                                      ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body14.i130

sw.bb6.i120:                                      ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body14.i130

sw.bb7.i121:                                      ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body14.i130

do.body14.i130:                                   ; preds = %sw.bb7.i121, %sw.bb6.i120, %sw.bb5.i119, %sw.bb4.i118, %sw.bb3.i117, %sw.bb2.i116, %sw.bb1.i115, %sw.bb.i114, %if.then34.do.body14.i130_crit_edge
  %errmsg.0.i122 = phi ptr [ @.str.225, %if.then34.do.body14.i130_crit_edge ], [ @.str.233, %sw.bb7.i121 ], [ @.str.232, %sw.bb6.i120 ], [ @.str.231, %sw.bb5.i119 ], [ @.str.230, %sw.bb4.i118 ], [ @.str.229, %sw.bb3.i117 ], [ @.str.228, %sw.bb2.i116 ], [ @.str.227, %sw.bb1.i115 ], [ @.str.226, %sw.bb.i114 ]
  %29 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp8.not.i124 = icmp eq i32 %29, 0
  br i1 %cmp8.not.i124, label %do.body14.i130.print_err_status.exit134_crit_edge, label %do.end19.i133

do.body14.i130.print_err_status.exit134_crit_edge: ; preds = %do.body14.i130
  call void @__sanitizer_cov_trace_pc() #11
  br label %print_err_status.exit134

do.end19.i133:                                    ; preds = %do.body14.i130
  call void @__sanitizer_cov_trace_pc() #11
  %30 = ptrtoint ptr %intf20.i131 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %intf20.i131, align 4
  %dev21.i132 = getelementptr inbounds %struct.usb_interface, ptr %31, i32 0, i32 7
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.224, ptr noundef %dev21.i132, ptr noundef nonnull @.str.237, i32 noundef %i.0136, i32 noundef %27, ptr noundef nonnull %errmsg.0.i122) #12
  br label %print_err_status.exit134

print_err_status.exit134:                         ; preds = %do.end19.i133, %do.body14.i130.print_err_status.exit134_crit_edge
  %32 = ptrtoint ptr %status31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %status31, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -71, i32 %33)
  %cmp41.not = icmp eq i32 %33, -71
  br i1 %cmp41.not, label %print_err_status.exit134.if.end45_crit_edge, label %print_err_status.exit134.for.inc_crit_edge

print_err_status.exit134.for.inc_crit_edge:       ; preds = %print_err_status.exit134
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

print_err_status.exit134.if.end45_crit_edge:      ; preds = %print_err_status.exit134
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end45

if.end45:                                         ; preds = %print_err_status.exit134.if.end45_crit_edge, %if.else30.if.end45_crit_edge
  %actual_length48 = getelementptr %struct.urb, ptr %urb, i32 0, i32 29, i32 %i.0136, i32 2
  %34 = ptrtoint ptr %actual_length48 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %actual_length48, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool49.not = icmp eq i32 %35, 0
  br i1 %tobool49.not, label %if.end45.for.inc_crit_edge, label %if.end51

if.end45.for.inc_crit_edge:                       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end51:                                         ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #11
  %36 = ptrtoint ptr %dvb52 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dvb52, align 8
  %demux53 = getelementptr inbounds %struct.em28xx_dvb, ptr %37, i32 0, i32 4
  %38 = ptrtoint ptr %transfer_buffer54 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %transfer_buffer54, align 4
  %40 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx, align 4
  %add.ptr = getelementptr i8, ptr %39, i32 %41
  tail call void @dvb_dmx_swfilter(ptr noundef %demux53, ptr noundef %add.ptr, i32 noundef %35) #9
  br label %for.inc

for.inc:                                          ; preds = %if.end51, %if.end45.for.inc_crit_edge, %print_err_status.exit134.for.inc_crit_edge, %if.end28, %if.end25.for.inc_crit_edge, %print_err_status.exit113.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0136, 1
  %exitcond.not = icmp eq i32 %inc, %num_packets.0144
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dvb_dmx_swfilter(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @em28xx_stop_urbs(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @em28xx_unregister_dvb(ptr noundef %dvb) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %net = getelementptr inbounds %struct.em28xx_dvb, ptr %dvb, i32 0, i32 8
  tail call void @dvb_net_release(ptr noundef %net) #9
  %demux = getelementptr inbounds %struct.em28xx_dvb, ptr %dvb, i32 0, i32 4
  %remove_frontend = getelementptr inbounds %struct.em28xx_dvb, ptr %dvb, i32 0, i32 4, i32 0, i32 11
  %0 = ptrtoint ptr %remove_frontend to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %remove_frontend, align 4
  %fe_mem = getelementptr inbounds %struct.em28xx_dvb, ptr %dvb, i32 0, i32 7
  %call = tail call i32 %1(ptr noundef %demux, ptr noundef %fe_mem) #9
  %2 = ptrtoint ptr %remove_frontend to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %remove_frontend, align 4
  %fe_hw = getelementptr inbounds %struct.em28xx_dvb, ptr %dvb, i32 0, i32 6
  %call8 = tail call i32 %3(ptr noundef %demux, ptr noundef %fe_hw) #9
  %dmxdev = getelementptr inbounds %struct.em28xx_dvb, ptr %dvb, i32 0, i32 5
  tail call void @dvb_dmxdev_release(ptr noundef %dmxdev) #9
  tail call void @dvb_dmx_release(ptr noundef %demux) #9
  %arrayidx = getelementptr [2 x ptr], ptr %dvb, i32 0, i32 1
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call12 = tail call i32 @dvb_unregister_frontend(ptr noundef nonnull %5) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %6 = ptrtoint ptr %dvb to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dvb, align 8
  %call15 = tail call i32 @dvb_unregister_frontend(ptr noundef %7) #9
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %tobool18.not = icmp eq ptr %9, null
  br i1 %tobool18.not, label %if.end.if.end23_crit_edge, label %land.lhs.true

if.end.if.end23_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23

land.lhs.true:                                    ; preds = %if.end
  %dont_attach_fe1 = getelementptr inbounds %struct.em28xx_dvb, ptr %dvb, i32 0, i32 11
  %10 = ptrtoint ptr %dont_attach_fe1 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %dont_attach_fe1, align 4, !range !535
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool19.not = icmp eq i8 %11, 0
  br i1 %tobool19.not, label %if.then20, label %land.lhs.true.if.end23_crit_edge

land.lhs.true.if.end23_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23

if.then20:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dvb_frontend_detach(ptr noundef nonnull %9) #9
  br label %if.end23

if.end23:                                         ; preds = %if.then20, %land.lhs.true.if.end23_crit_edge, %if.end.if.end23_crit_edge
  %12 = ptrtoint ptr %dvb to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dvb, align 8
  tail call void @dvb_frontend_detach(ptr noundef %13) #9
  %adapter = getelementptr inbounds %struct.em28xx_dvb, ptr %dvb, i32 0, i32 3
  %call26 = tail call i32 @dvb_unregister_adapter(ptr noundef %adapter) #9
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @kref_put(ptr noundef %kref) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !536
  tail call void @llvm.prefetch.p0(ptr %kref, i32 1, i32 3, i32 1) #9
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref, ptr %kref, i32 1, ptr elementtype(i32) %kref) #9, !srcloc !537
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i, label %if.then, label %if.end5.i.i.i

if.end5.i.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %.not.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i, label %if.end5.i.i.i.return_crit_edge, label %if.then10.i.i.i, !prof !534

if.end5.i.i.i.return_crit_edge:                   ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.then10.i.i.i:                                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @refcount_warn_saturate(ptr noundef %kref, i32 noundef 3) #9
  br label %return

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !538
  tail call void @em28xx_free_device(ptr noundef %kref) #9
  br label %return

return:                                           ; preds = %if.then, %if.then10.i.i.i, %if.end5.i.i.i.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @em28xx_free_device(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_frontend_suspend(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_frontend_resume(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @em28xx_register_extension(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 266)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 266)
  ret void
}

attributes #0 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9, !10, !11, !12, !13, !15, !16, !18, !20, !21, !22, !24, !26, !28, !29, !30, !31, !32, !34, !36, !38, !39, !40, !41, !42, !43, !44, !46, !47, !48, !49, !51, !52, !53, !54, !55, !57, !58, !59, !60, !61, !63, !64, !65, !66, !67, !69, !70, !72, !73, !75, !76, !77, !78, !79, !81, !82, !84, !85, !86, !87, !88, !90, !91, !93, !94, !95, !96, !97, !99, !100, !101, !102, !103, !105, !106, !108, !109, !110, !111, !112, !114, !115, !116, !117, !118, !120, !121, !122, !123, !124, !126, !127, !129, !130, !131, !132, !133, !135, !136, !137, !138, !139, !141, !142, !143, !144, !145, !147, !148, !150, !151, !152, !154, !155, !156, !157, !158, !160, !161, !162, !163, !164, !166, !167, !169, !170, !171, !172, !173, !175, !176, !177, !178, !179, !181, !182, !184, !185, !187, !188, !190, !191, !193, !194, !196, !197, !199, !200, !202, !203, !205, !206, !208, !209, !211, !212, !214, !215, !217, !219, !220, !221, !222, !223, !225, !226, !228, !229, !230, !232, !233, !234, !236, !237, !238, !240, !242, !244, !245, !246, !247, !249, !250, !251, !252, !253, !255, !256, !257, !259, !260, !261, !263, !265, !267, !269, !271, !273, !275, !277, !279, !281, !283, !285, !287, !289, !291, !293, !295, !297, !299, !301, !303, !305, !307, !309, !311, !312, !313, !315, !317, !319, !321, !323, !325, !327, !329, !331, !333, !335, !337, !339, !341, !343, !345, !347, !349, !351, !353, !355, !357, !359, !361, !363, !365, !367, !369, !371, !373, !375, !377, !379, !381, !383, !385, !387, !389, !391, !393, !395, !397, !399, !401, !403, !405, !407, !409, !411, !413, !415, !417, !419, !421, !423, !424, !426, !427, !428, !429, !430, !432, !433, !434, !436, !437, !438, !440, !441, !442, !444, !445, !446, !448, !449, !450, !452, !453, !454, !456, !457, !458, !460, !461, !462, !463, !464, !466, !468, !470, !472, !474, !476, !478, !480, !482, !484, !485, !486, !487, !489, !490, !491, !493, !494, !495, !496, !498, !499, !500, !501, !503, !504, !505, !507, !508, !509, !511, !512, !513, !514, !516, !517, !518, !520, !521}
!llvm.module.flags = !{!522, !523, !524, !525, !526, !527, !528, !529}
!llvm.ident = !{!530}

!0 = !{ptr @__UNIQUE_ID_author388, !1, !"__UNIQUE_ID_author388", i1 false, i1 false}
!1 = !{!"../drivers/media/usb/em28xx/em28xx-dvb.c", i32 67, i32 1}
!2 = !{ptr @__UNIQUE_ID_file389, !3, !"__UNIQUE_ID_file389", i1 false, i1 false}
!3 = !{!"../drivers/media/usb/em28xx/em28xx-dvb.c", i32 68, i32 1}
!4 = !{ptr @__UNIQUE_ID_license390, !3, !"__UNIQUE_ID_license390", i1 false, i1 false}
!5 = !{ptr @__UNIQUE_ID_description391, !6, !"__UNIQUE_ID_description391", i1 false, i1 false}
!6 = !{!"../drivers/media/usb/em28xx/em28xx-dvb.c", i32 69, i32 1}
!7 = !{ptr @__UNIQUE_ID_version392, !8, !"__UNIQUE_ID_version392", i1 false, i1 false}
!8 = !{!"../drivers/media/usb/em28xx/em28xx-dvb.c", i32 70, i32 1}
!9 = !{ptr @.str, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.1, !8, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.2, !8, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @__modver_attr, !8, !"__modver_attr", i1 false, i1 false}
!13 = !{ptr @__param_debug, !14, !"__param_debug", i1 false, i1 false}
!14 = !{!"../drivers/media/usb/em28xx/em28xx-dvb.c", i32 73, i32 1}
!15 = !{ptr @__UNIQUE_ID_debugtype393, !14, !"__UNIQUE_ID_debugtype393", i1 false, i1 false}
!16 = !{ptr @__UNIQUE_ID_debug394, !17, !"__UNIQUE_ID_debug394", i1 false, i1 false}
!17 = !{!"../drivers/media/usb/em28xx/em28xx-dvb.c", i32 74, i32 1}
!18 = !{ptr @__param_adapter_nr, !19, !"__param_adapter_nr", i1 false, i1 false}
!19 = !{!"../drivers/media/usb/em28xx/em28xx-dvb.c", i32 76, i32 1}
!20 = !{ptr @__UNIQUE_ID_adapter_nrtype395, !19, !"__UNIQUE_ID_adapter_nrtype395", i1 false, i1 false}
!21 = !{ptr @__UNIQUE_ID_adapter_nr396, !19, !"__UNIQUE_ID_adapter_nr396", i1 false, i1 false}
!22 = !{ptr @__initcall__kmod_em28xx_dvb__397_2152_em28xx_dvb_register6, !23, !"__initcall__kmod_em28xx_dvb__397_2152_em28xx_dvb_register6", i1 false, i1 false}
!23 = !{!"../drivers/media/usb/em28xx/em28xx-dvb.c", i32 2152, i32 1}
!24 = !{ptr @__exitcall_em28xx_dvb_unregister, !25, !"__exitcall_em28xx_dvb_unregister", i1 false, i1 false}
!25 = !{!"../drivers/media/usb/em28xx/em28xx-dvb.c", i32 2153, i32 1}
!26 = !{ptr @debug, !27, !"debug", i1 false, i1 false}
!27 = !{!"../drivers/media/usb/em28xx/em28xx-dvb.c", i32 72, i32 21}
!28 = !{ptr @__param_str_debug, !14, !"__param_str_debug", i1 false, i1 false}
!29 = !{ptr @__param_str_adapter_nr, !19, !"__param_str_adapter_nr", i1 false, i1 false}
!30 = !{ptr @__param_arr_adapter_nr, !19, !"__param_arr_adapter_nr", i1 false, i1 false}
!31 = !{ptr @adapter_nr, !19, !"adapter_nr", i1 false, i1 false}
!32 = !{ptr @.str.3, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/media/usb/em28xx/em28xx-dvb.c", i32 2135, i32 10}
!34 = !{ptr @dvb_ops, !35, !"dvb_ops", i1 false, i1 false}
!35 = !{!"../drivers/media/usb/em28xx/em28xx-dvb.c", i32 2133, i32 26}
!36 = !{ptr @.str.4, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/media/usb/em28xx/em28xx-dvb.c", i32 1499, i32 2}
!38 = !{ptr @.str.5, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @.str.6, !37, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.7, !37, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.8, !37, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @em28xx_dvb_init._entry, !37, !"_entry", i1 false, i1 false}
!43 = !{ptr @em28xx_dvb_init._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.10, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/media/usb/em28xx/em28xx-dvb.c", i32 1524, i32 3}
!46 = !{ptr @.str.11, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @em28xx_dvb_init._entry.9, !45, !"_entry", i1 false, i1 false}
!48 = !{ptr @em28xx_dvb_init._entry_ptr.12, !45, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.13, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/media/usb/em28xx/em28xx-dvb.c", i32 1536, i32 16}
!51 = !{ptr @.str.14, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @.str.16, !50, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @em28xx_dvb_init._entry.15, !50, !"_entry", i1 false, i1 false}
!54 = !{ptr @em28xx_dvb_init._entry_ptr.17, !50, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.18, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/media/usb/em28xx/em28xx-dvb.c", i32 1550, i32 16}
!57 = !{ptr @.str.19, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @.str.21, !56, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @em28xx_dvb_init._entry.20, !56, !"_entry", i1 false, i1 false}
!60 = !{ptr @em28xx_dvb_init._entry_ptr.22, !56, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.23, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/media/usb/em28xx/em28xx-dvb.c", i32 1560, i32 16}
!63 = !{ptr @.str.24, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @.str.26, !62, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @em28xx_dvb_init._entry.25, !62, !"_entry", i1 false, i1 false}
!66 = !{ptr @em28xx_dvb_init._entry_ptr.27, !62, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @em28xx_dvb_init._entry.28, !68, !"_entry", i1 false, i1 false}
!68 = !{!"../drivers/media/usb/em28xx/em28xx-dvb.c", i32 1572, i32 16}
!69 = !{ptr @em28xx_dvb_init._entry_ptr.29, !68, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @em28xx_dvb_init._entry.30, !71, !"_entry", i1 false, i1 false}
!71 = !{!"../drivers/media/usb/em28xx/em28xx-dvb.c", i32 1589, i32 16}
!72 = !{ptr @em28xx_dvb_init._entry_ptr.31, !71, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.32, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/media/usb/em28xx/em28xx-dvb.c", i32 1593, i32 17}
!75 = !{ptr @.str.33, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @.str.35, !74, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @em28xx_dvb_init._entry.34, !74, !"_entry", i1 false, i1 false}
!78 = !{ptr @em28xx_dvb_init._entry_ptr.36, !74, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @em28xx_dvb_init._entry.37, !80, !"_entry", i1 false, i1 false}
!80 = !{!"../drivers/media/usb/em28xx/em28xx-dvb.c", i32 1603, i32 16}
!81 = !{ptr @em28xx_dvb_init._entry_ptr.38, !80, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.39, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/media/usb/em28xx/em28xx-dvb.c", i32 1607, i32 4}
!84 = !{ptr @.str.40, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @.str.42, !83, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @em28xx_dvb_init._entry.41, !83, !"_entry", i1 false, i1 false}
!87 = !{ptr @em28xx_dvb_init._entry_ptr.43, !83, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @em28xx_dvb_init._entry.44, !89, !"_entry", i1 false, i1 false}
!89 = !{!"../drivers/media/usb/em28xx/em28xx-dvb.c", i32 1613, i32 16}
!90 = !{ptr @em28xx_dvb_init._entry_ptr.45, !89, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.46, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/media/usb/em28xx/em28xx-dvb.c", i32 1617, i32 4}
!93 = !{ptr @.str.47, !92, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @.str.49, !92, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @em28xx_dvb_init._entry.48, !92, !"_entry", i1 false, i1 false}
!96 = !{ptr @em28xx_dvb_init._entry_ptr.50, !92, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.51, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/media/usb/em28xx/em28xx-dvb.c", i32 1623, i32 16}
!99 = !{ptr @.str.52, !98, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @.str.54, !98, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @em28xx_dvb_init._entry.53, !98, !"_entry", i1 false, i1 false}
!102 = !{ptr @em28xx_dvb_init._entry_ptr.55, !98, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @em28xx_dvb_init._entry.56, !104, !"_entry", i1 false, i1 false}
!104 = !{!"../drivers/media/usb/em28xx/em28xx-dvb.c", i32 1632, i32 16}
!105 = !{ptr @em28xx_dvb_init._entry_ptr.57, !104, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @.str.58, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/media/usb/em28xx/em28xx-dvb.c", i32 1637, i32 9}
!108 = !{ptr @.str.59, !107, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @.str.61, !107, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @em28xx_dvb_init._entry.60, !107, !"_entry", i1 false, i1 false}
!111 = !{ptr @em28xx_dvb_init._entry_ptr.62, !107, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @.str.63, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/media/usb/em28xx/em28xx-dvb.c", i32 1647, i32 16}
!114 = !{ptr @.str.64, !113, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @.str.66, !113, !"<string literal>", i1 false, i1 false}
!116 = !{ptr @em28xx_dvb_init._entry.65, !113, !"_entry", i1 false, i1 false}
!117 = !{ptr @em28xx_dvb_init._entry_ptr.67, !113, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @.str.68, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/media/usb/em28xx/em28xx-dvb.c", i32 1657, i32 16}
!120 = !{ptr @.str.69, !119, !"<string literal>", i1 false, i1 false}
!121 = !{ptr @.str.71, !119, !"<string literal>", i1 false, i1 false}
!122 = !{ptr @em28xx_dvb_init._entry.70, !119, !"_entry", i1 false, i1 false}
!123 = !{ptr @em28xx_dvb_init._entry_ptr.72, !119, !"_entry_ptr", i1 false, i1 false}
!124 = !{ptr @em28xx_dvb_init._entry.73, !125, !"_entry", i1 false, i1 false}
!125 = !{!"../drivers/media/usb/em28xx/em28xx-dvb.c", i32 1662, i32 9}
!126 = !{ptr @em28xx_dvb_init._entry_ptr.74, !125, !"_entry_ptr", i1 false, i1 false}
!127 = !{ptr @.str.75, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/media/usb/em28xx/em28xx-dvb.c", i32 1671, i32 16}
!129 = !{ptr @.str.76, !128, !"<string literal>", i1 false, i1 false}
!130 = !{ptr @.str.78, !128, !"<string literal>", i1 false, i1 false}
!131 = !{ptr @em28xx_dvb_init._entry.77, !128, !"_entry", i1 false, i1 false}
!132 = !{ptr @em28xx_dvb_init._entry_ptr.79, !128, !"_entry_ptr", i1 false, i1 false}
!133 = !{ptr @.str.80, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/media/usb/em28xx/em28xx-dvb.c", i32 1678, i32 8}
!135 = !{ptr @.str.81, !134, !"<string literal>", i1 false, i1 false}
!136 = !{ptr @.str.83, !134, !"<string literal>", i1 false, i1 false}
!137 = !{ptr @em28xx_dvb_init._entry.82, !134, !"_entry", i1 false, i1 false}
!138 = !{ptr @em28xx_dvb_init._entry_ptr.84, !134, !"_entry_ptr", i1 false, i1 false}
!139 = !{ptr @.str.85, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/media/usb/em28xx/em28xx-dvb.c", i32 1690, i32 16}
!141 = !{ptr @.str.86, !140, !"<string literal>", i1 false, i1 false}
!142 = !{ptr @.str.88, !140, !"<string literal>", i1 false, i1 false}
!143 = !{ptr @em28xx_dvb_init._entry.87, !140, !"_entry", i1 false, i1 false}
!144 = !{ptr @em28xx_dvb_init._entry_ptr.89, !140, !"_entry_ptr", i1 false, i1 false}
!145 = !{ptr @em28xx_dvb_init._entry.90, !146, !"_entry", i1 false, i1 false}
!146 = !{!"../drivers/media/usb/em28xx/em28xx-dvb.c", i32 1696, i32 9}
!147 = !{ptr @em28xx_dvb_init._entry_ptr.91, !146, !"_entry_ptr", i1 false, i1 false}
!148 = !{ptr @.str.93, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/media/usb/em28xx/em28xx-dvb.c", i32 1711, i32 5}
!150 = !{ptr @em28xx_dvb_init._entry.92, !149, !"_entry", i1 false, i1 false}
!151 = !{ptr @em28xx_dvb_init._entry_ptr.94, !149, !"_entry_ptr", i1 false, i1 false}
!152 = !{ptr @.str.95, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/media/usb/em28xx/em28xx-dvb.c", i32 1729, i32 16}
!154 = !{ptr @.str.96, !153, !"<string literal>", i1 false, i1 false}
!155 = !{ptr @.str.98, !153, !"<string literal>", i1 false, i1 false}
!156 = !{ptr @em28xx_dvb_init._entry.97, !153, !"_entry", i1 false, i1 false}
!157 = !{ptr @em28xx_dvb_init._entry_ptr.99, !153, !"_entry_ptr", i1 false, i1 false}
!158 = !{ptr @.str.100, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/media/usb/em28xx/em28xx-dvb.c", i32 1748, i32 8}
!160 = !{ptr @.str.101, !159, !"<string literal>", i1 false, i1 false}
!161 = !{ptr @.str.103, !159, !"<string literal>", i1 false, i1 false}
!162 = !{ptr @em28xx_dvb_init._entry.102, !159, !"_entry", i1 false, i1 false}
!163 = !{ptr @em28xx_dvb_init._entry_ptr.104, !159, !"_entry_ptr", i1 false, i1 false}
!164 = !{ptr @em28xx_dvb_init._entry.105, !165, !"_entry", i1 false, i1 false}
!165 = !{!"../drivers/media/usb/em28xx/em28xx-dvb.c", i32 1761, i32 16}
!166 = !{ptr @em28xx_dvb_init._entry_ptr.106, !165, !"_entry_ptr", i1 false, i1 false}
!167 = !{ptr @.str.107, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/media/usb/em28xx/em28xx-dvb.c", i32 1776, i32 8}
!169 = !{ptr @.str.108, !168, !"<string literal>", i1 false, i1 false}
!170 = !{ptr @.str.110, !168, !"<string literal>", i1 false, i1 false}
!171 = !{ptr @em28xx_dvb_init._entry.109, !168, !"_entry", i1 false, i1 false}
!172 = !{ptr @em28xx_dvb_init._entry_ptr.111, !168, !"_entry_ptr", i1 false, i1 false}
!173 = !{ptr @.str.112, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/media/usb/em28xx/em28xx-dvb.c", i32 1786, i32 16}
!175 = !{ptr @.str.113, !174, !"<string literal>", i1 false, i1 false}
!176 = !{ptr @.str.115, !174, !"<string literal>", i1 false, i1 false}
!177 = !{ptr @em28xx_dvb_init._entry.114, !174, !"_entry", i1 false, i1 false}
!178 = !{ptr @em28xx_dvb_init._entry_ptr.116, !174, !"_entry_ptr", i1 false, i1 false}
!179 = !{ptr @em28xx_dvb_init._entry.117, !180, !"_entry", i1 false, i1 false}
!180 = !{!"../drivers/media/usb/em28xx/em28xx-dvb.c", i32 1790, i32 4}
!181 = !{ptr @em28xx_dvb_init._entry_ptr.118, !180, !"_entry_ptr", i1 false, i1 false}
!182 = !{ptr @em28xx_dvb_init._entry.119, !183, !"_entry", i1 false, i1 false}
!183 = !{!"../drivers/media/usb/em28xx/em28xx-dvb.c", i32 1802, i32 16}
!184 = !{ptr @em28xx_dvb_init._entry_ptr.120, !183, !"_entry_ptr", i1 false, i1 false}
!185 = !{ptr @em28xx_dvb_init._entry.121, !186, !"_entry", i1 false, i1 false}
!186 = !{!"../drivers/media/usb/em28xx/em28xx-dvb.c", i32 1810, i32 9}
!187 = !{ptr @em28xx_dvb_init._entry_ptr.122, !186, !"_entry_ptr", i1 false, i1 false}
!188 = !{ptr @em28xx_dvb_init._entry.123, !189, !"_entry", i1 false, i1 false}
!189 = !{!"../drivers/media/usb/em28xx/em28xx-dvb.c", i32 1824, i32 16}
!190 = !{ptr @em28xx_dvb_init._entry_ptr.124, !189, !"_entry_ptr", i1 false, i1 false}
!191 = !{ptr @em28xx_dvb_init._entry.125, !192, !"_entry", i1 false, i1 false}
!192 = !{!"../drivers/media/usb/em28xx/em28xx-dvb.c", i32 1829, i32 9}
!193 = !{ptr @em28xx_dvb_init._entry_ptr.126, !192, !"_entry_ptr", i1 false, i1 false}
!194 = !{ptr @em28xx_dvb_init._entry.127, !195, !"_entry", i1 false, i1 false}
!195 = !{!"../drivers/media/usb/em28xx/em28xx-dvb.c", i32 1844, i32 16}
!196 = !{ptr @em28xx_dvb_init._entry_ptr.128, !195, !"_entry_ptr", i1 false, i1 false}
!197 = !{ptr @em28xx_dvb_init._entry.129, !198, !"_entry", i1 false, i1 false}
!198 = !{!"../drivers/media/usb/em28xx/em28xx-dvb.c", i32 1852, i32 8}
!199 = !{ptr @em28xx_dvb_init._entry_ptr.130, !198, !"_entry_ptr", i1 false, i1 false}
!200 = !{ptr @em28xx_dvb_init._entry.131, !201, !"_entry", i1 false, i1 false}
!201 = !{!"../drivers/media/usb/em28xx/em28xx-dvb.c", i32 1863, i32 16}
!202 = !{ptr @em28xx_dvb_init._entry_ptr.132, !201, !"_entry_ptr", i1 false, i1 false}
!203 = !{ptr @em28xx_dvb_init._entry.133, !204, !"_entry", i1 false, i1 false}
!204 = !{!"../drivers/media/usb/em28xx/em28xx-dvb.c", i32 1871, i32 8}
!205 = !{ptr @em28xx_dvb_init._entry_ptr.134, !204, !"_entry_ptr", i1 false, i1 false}
!206 = !{ptr @em28xx_dvb_init._entry.135, !207, !"_entry", i1 false, i1 false}
!207 = !{!"../drivers/media/usb/em28xx/em28xx-dvb.c", i32 1879, i32 16}
!208 = !{ptr @em28xx_dvb_init._entry_ptr.136, !207, !"_entry_ptr", i1 false, i1 false}
!209 = !{ptr @em28xx_dvb_init._entry.137, !210, !"_entry", i1 false, i1 false}
!210 = !{!"../drivers/media/usb/em28xx/em28xx-dvb.c", i32 1888, i32 8}
!211 = !{ptr @em28xx_dvb_init._entry_ptr.138, !210, !"_entry_ptr", i1 false, i1 false}
!212 = !{ptr @em28xx_dvb_init._entry.139, !213, !"_entry", i1 false, i1 false}
!213 = !{!"../drivers/media/usb/em28xx/em28xx-dvb.c", i32 1899, i32 16}
!214 = !{ptr @em28xx_dvb_init._entry_ptr.140, !213, !"_entry_ptr", i1 false, i1 false}
!215 = !{ptr @.str.141, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../drivers/media/usb/em28xx/em28xx-dvb.c", i32 1910, i32 44}
!217 = !{ptr @.str.142, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/media/usb/em28xx/em28xx-dvb.c", i32 1921, i32 16}
!219 = !{ptr @.str.143, !218, !"<string literal>", i1 false, i1 false}
!220 = !{ptr @.str.145, !218, !"<string literal>", i1 false, i1 false}
!221 = !{ptr @em28xx_dvb_init._entry.144, !218, !"_entry", i1 false, i1 false}
!222 = !{ptr @em28xx_dvb_init._entry_ptr.146, !218, !"_entry_ptr", i1 false, i1 false}
!223 = !{ptr @em28xx_dvb_init._entry.147, !224, !"_entry", i1 false, i1 false}
!224 = !{!"../drivers/media/usb/em28xx/em28xx-dvb.c", i32 1924, i32 17}
!225 = !{ptr @em28xx_dvb_init._entry_ptr.148, !224, !"_entry_ptr", i1 false, i1 false}
!226 = !{ptr @.str.150, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../drivers/media/usb/em28xx/em28xx-dvb.c", i32 1975, i32 3}
!228 = !{ptr @em28xx_dvb_init._entry.149, !227, !"_entry", i1 false, i1 false}
!229 = !{ptr @em28xx_dvb_init._entry_ptr.151, !227, !"_entry_ptr", i1 false, i1 false}
!230 = !{ptr @.str.153, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../drivers/media/usb/em28xx/em28xx-dvb.c", i32 1980, i32 3}
!232 = !{ptr @em28xx_dvb_init._entry.152, !231, !"_entry", i1 false, i1 false}
!233 = !{ptr @em28xx_dvb_init._entry_ptr.154, !231, !"_entry_ptr", i1 false, i1 false}
!234 = !{ptr @.str.156, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../drivers/media/usb/em28xx/em28xx-dvb.c", i32 2003, i32 2}
!236 = !{ptr @em28xx_dvb_init._entry.155, !235, !"_entry", i1 false, i1 false}
!237 = !{ptr @em28xx_dvb_init._entry_ptr.157, !235, !"_entry_ptr", i1 false, i1 false}
!238 = !{ptr @sharp_isdbt, !239, !"sharp_isdbt", i1 false, i1 false}
!239 = !{!"../drivers/media/usb/em28xx/em28xx-dvb.c", i32 345, i32 27}
!240 = !{ptr @em2880_lgdt3303_dev, !241, !"em2880_lgdt3303_dev", i1 false, i1 false}
!241 = !{!"../drivers/media/usb/em28xx/em28xx-dvb.c", i32 305, i32 31}
!242 = !{ptr @.str.158, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../drivers/media/usb/em28xx/em28xx-dvb.c", i32 957, i32 3}
!244 = !{ptr @.str.159, !243, !"<string literal>", i1 false, i1 false}
!245 = !{ptr @em28xx_attach_xc3028._entry, !243, !"_entry", i1 false, i1 false}
!246 = !{ptr @em28xx_attach_xc3028._entry_ptr, !243, !"_entry_ptr", i1 false, i1 false}
!247 = !{ptr @.str.160, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../drivers/media/usb/em28xx/em28xx-dvb.c", i32 962, i32 7}
!249 = !{ptr @.str.161, !248, !"<string literal>", i1 false, i1 false}
!250 = !{ptr @.str.163, !248, !"<string literal>", i1 false, i1 false}
!251 = !{ptr @em28xx_attach_xc3028._entry.162, !248, !"_entry", i1 false, i1 false}
!252 = !{ptr @em28xx_attach_xc3028._entry_ptr.164, !248, !"_entry_ptr", i1 false, i1 false}
!253 = !{ptr @.str.166, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../drivers/media/usb/em28xx/em28xx-dvb.c", i32 964, i32 3}
!255 = !{ptr @em28xx_attach_xc3028._entry.165, !254, !"_entry", i1 false, i1 false}
!256 = !{ptr @em28xx_attach_xc3028._entry_ptr.167, !254, !"_entry_ptr", i1 false, i1 false}
!257 = !{ptr @.str.169, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../drivers/media/usb/em28xx/em28xx-dvb.c", i32 970, i32 2}
!259 = !{ptr @em28xx_attach_xc3028._entry.168, !258, !"_entry", i1 false, i1 false}
!260 = !{ptr @em28xx_attach_xc3028._entry_ptr.170, !258, !"_entry_ptr", i1 false, i1 false}
!261 = !{ptr @em28xx_zl10353_with_xc3028, !262, !"em28xx_zl10353_with_xc3028", i1 false, i1 false}
!262 = !{!"../drivers/media/usb/em28xx/em28xx-dvb.c", i32 349, i32 30}
!263 = !{ptr @em28xx_zl10353_xc3028_no_i2c_gate, !264, !"em28xx_zl10353_xc3028_no_i2c_gate", i1 false, i1 false}
!264 = !{!"../drivers/media/usb/em28xx/em28xx-dvb.c", i32 386, i32 30}
!265 = !{ptr @terratec_xs_mt352_cfg, !266, !"terratec_xs_mt352_cfg", i1 false, i1 false}
!266 = !{!"../drivers/media/usb/em28xx/em28xx-dvb.c", i32 863, i32 28}
!267 = !{ptr @em28xx_mt352_terratec_xs_init.clock_config, !268, !"clock_config", i1 false, i1 false}
!268 = !{!"../drivers/media/usb/em28xx/em28xx-dvb.c", i32 776, i32 12}
!269 = !{ptr @em28xx_mt352_terratec_xs_init.reset, !270, !"reset", i1 false, i1 false}
!270 = !{!"../drivers/media/usb/em28xx/em28xx-dvb.c", i32 777, i32 12}
!271 = !{ptr @em28xx_mt352_terratec_xs_init.adc_ctl_1_cfg, !272, !"adc_ctl_1_cfg", i1 false, i1 false}
!272 = !{!"../drivers/media/usb/em28xx/em28xx-dvb.c", i32 778, i32 12}
!273 = !{ptr @em28xx_mt352_terratec_xs_init.agc_cfg, !274, !"agc_cfg", i1 false, i1 false}
!274 = !{!"../drivers/media/usb/em28xx/em28xx-dvb.c", i32 779, i32 12}
!275 = !{ptr @em28xx_mt352_terratec_xs_init.input_freq_cfg, !276, !"input_freq_cfg", i1 false, i1 false}
!276 = !{!"../drivers/media/usb/em28xx/em28xx-dvb.c", i32 780, i32 12}
!277 = !{ptr @em28xx_mt352_terratec_xs_init.rs_err_cfg, !278, !"rs_err_cfg", i1 false, i1 false}
!278 = !{!"../drivers/media/usb/em28xx/em28xx-dvb.c", i32 781, i32 12}
!279 = !{ptr @em28xx_mt352_terratec_xs_init.capt_range_cfg, !280, !"capt_range_cfg", i1 false, i1 false}
!280 = !{!"../drivers/media/usb/em28xx/em28xx-dvb.c", i32 782, i32 12}
!281 = !{ptr @em28xx_mt352_terratec_xs_init.trl_nom_cfg, !282, !"trl_nom_cfg", i1 false, i1 false}
!282 = !{!"../drivers/media/usb/em28xx/em28xx-dvb.c", i32 783, i32 12}
!283 = !{ptr @em28xx_mt352_terratec_xs_init.tps_given_cfg, !284, !"tps_given_cfg", i1 false, i1 false}
!284 = !{!"../drivers/media/usb/em28xx/em28xx-dvb.c", i32 784, i32 12}
!285 = !{ptr @em28xx_mt352_terratec_xs_init.tuner_go, !286, !"tuner_go", i1 false, i1 false}
!286 = !{!"../drivers/media/usb/em28xx/em28xx-dvb.c", i32 785, i32 12}
!287 = !{ptr @em28xx_zl10353_no_i2c_gate_dev, !288, !"em28xx_zl10353_no_i2c_gate_dev", i1 false, i1 false}
!288 = !{!"../drivers/media/usb/em28xx/em28xx-dvb.c", i32 885, i32 30}
!289 = !{ptr @em28xx_mt2060_config, !290, !"em28xx_mt2060_config", i1 false, i1 false}
!290 = !{!"../drivers/media/usb/em28xx/em28xx-dvb.c", i32 892, i32 29}
!291 = !{ptr @em28xx_qt1010_config, !292, !"em28xx_qt1010_config", i1 false, i1 false}
!292 = !{!"../drivers/media/usb/em28xx/em28xx-dvb.c", i32 896, i32 29}
!293 = !{ptr @em28xx_s5h1409_with_xc3028, !294, !"em28xx_s5h1409_with_xc3028", i1 false, i1 false}
!294 = !{!"../drivers/media/usb/em28xx/em28xx-dvb.c", i32 356, i32 30}
!295 = !{ptr @em28xx_drxd, !296, !"em28xx_drxd", i1 false, i1 false}
!296 = !{!"../drivers/media/usb/em28xx/em28xx-dvb.c", i32 394, i32 27}
!297 = !{ptr @em28xx_tda10023_config, !298, !"em28xx_tda10023_config", i1 false, i1 false}
!298 = !{!"../drivers/media/usb/em28xx/em28xx-dvb.c", i32 870, i32 31}
!299 = !{ptr @em2870_lgdt3304_dev, !300, !"em2870_lgdt3304_dev", i1 false, i1 false}
!300 = !{!"../drivers/media/usb/em28xx/em28xx-dvb.c", i32 309, i32 31}
!301 = !{ptr @kworld_a340_config, !302, !"kworld_a340_config", i1 false, i1 false}
!302 = !{!"../drivers/media/usb/em28xx/em28xx-dvb.c", i32 372, i32 31}
!303 = !{ptr @kworld_a340_std_map, !304, !"kworld_a340_std_map", i1 false, i1 false}
!304 = !{!"../drivers/media/usb/em28xx/em28xx-dvb.c", i32 365, i32 32}
!305 = !{ptr @em28xx_cxd2820r_config, !306, !"em28xx_cxd2820r_config", i1 false, i1 false}
!306 = !{!"../drivers/media/usb/em28xx/em28xx-dvb.c", i32 875, i32 31}
!307 = !{ptr @em28xx_cxd2820r_tda18271_config, !308, !"em28xx_cxd2820r_tda18271_config", i1 false, i1 false}
!308 = !{!"../drivers/media/usb/em28xx/em28xx-dvb.c", i32 880, i32 31}
!309 = !{ptr @.str.172, !310, !"<string literal>", i1 false, i1 false}
!310 = !{!"../drivers/media/usb/em28xx/em28xx-dvb.c", i32 746, i32 3}
!311 = !{ptr @em28xx_pctv_290e_set_lna._entry, !310, !"_entry", i1 false, i1 false}
!312 = !{ptr @em28xx_pctv_290e_set_lna._entry_ptr, !310, !"_entry_ptr", i1 false, i1 false}
!313 = !{ptr @hauppauge_hvr930c_init.hauppauge_hvr930c_init, !314, !"hauppauge_hvr930c_init", i1 false, i1 false}
!314 = !{!"../drivers/media/usb/em28xx/em28xx-dvb.c", i32 475, i32 37}
!315 = !{ptr @hauppauge_hvr930c_init.hauppauge_hvr930c_end, !316, !"hauppauge_hvr930c_end", i1 false, i1 false}
!316 = !{!"../drivers/media/usb/em28xx/em28xx-dvb.c", i32 481, i32 37}
!317 = !{ptr @hauppauge_hvr930c_init.regs, !318, !"regs", i1 false, i1 false}
!318 = !{!"../drivers/media/usb/em28xx/em28xx-dvb.c", i32 500, i32 4}
!319 = !{ptr @.str.173, !320, !"<string literal>", i1 false, i1 false}
!320 = !{!"../drivers/media/usb/em28xx/em28xx-dvb.c", i32 416, i32 20}
!321 = !{ptr @hauppauge_930c_drxk, !322, !"hauppauge_930c_drxk", i1 false, i1 false}
!322 = !{!"../drivers/media/usb/em28xx/em28xx-dvb.c", i32 412, i32 27}
!323 = !{ptr @sema_init.__key, !324, !"__key", i1 false, i1 false}
!324 = !{!"../include/linux/semaphore.h", i32 33, i32 31}
!325 = !{ptr @.str.174, !326, !"<string literal>", i1 false, i1 false}
!326 = !{!"../include/linux/semaphore.h", i32 34, i32 28}
!327 = !{ptr @.str.175, !328, !"<string literal>", i1 false, i1 false}
!328 = !{!"../include/linux/semaphore.h", i32 35, i32 39}
!329 = !{ptr @terratec_h5_init.terratec_h5_init, !330, !"terratec_h5_init", i1 false, i1 false}
!330 = !{!"../drivers/media/usb/em28xx/em28xx-dvb.c", i32 541, i32 37}
!331 = !{ptr @terratec_h5_init.terratec_h5_end, !332, !"terratec_h5_end", i1 false, i1 false}
!332 = !{!"../drivers/media/usb/em28xx/em28xx-dvb.c", i32 548, i32 37}
!333 = !{ptr @terratec_h5_init.regs, !334, !"regs", i1 false, i1 false}
!334 = !{!"../drivers/media/usb/em28xx/em28xx-dvb.c", i32 557, i32 4}
!335 = !{ptr @.str.176, !336, !"<string literal>", i1 false, i1 false}
!336 = !{!"../drivers/media/usb/em28xx/em28xx-dvb.c", i32 408, i32 20}
!337 = !{ptr @terratec_h5_drxk, !338, !"terratec_h5_drxk", i1 false, i1 false}
!338 = !{!"../drivers/media/usb/em28xx/em28xx-dvb.c", i32 404, i32 27}
!339 = !{ptr @c3tech_duo_mb86a20s_config, !340, !"c3tech_duo_mb86a20s_config", i1 false, i1 false}
!340 = !{!"../drivers/media/usb/em28xx/em28xx-dvb.c", i32 900, i32 37}
!341 = !{ptr @c3tech_duo_tda18271_config, !342, !"c3tech_duo_tda18271_config", i1 false, i1 false}
!342 = !{!"../drivers/media/usb/em28xx/em28xx-dvb.c", i32 910, i32 31}
!343 = !{ptr @mb86a20s_tda18271_config, !344, !"mb86a20s_tda18271_config", i1 false, i1 false}
!344 = !{!"../drivers/media/usb/em28xx/em28xx-dvb.c", i32 905, i32 32}
!345 = !{ptr @.str.178, !346, !"<string literal>", i1 false, i1 false}
!346 = !{!"../drivers/media/usb/em28xx/em28xx-dvb.c", i32 1147, i32 43}
!347 = !{ptr @.str.179, !348, !"<string literal>", i1 false, i1 false}
!348 = !{!"../drivers/media/usb/em28xx/em28xx-dvb.c", i32 1147, i32 55}
!349 = !{ptr @.str.180, !350, !"<string literal>", i1 false, i1 false}
!350 = !{!"../drivers/media/usb/em28xx/em28xx-dvb.c", i32 1158, i32 41}
!351 = !{ptr @.str.181, !352, !"<string literal>", i1 false, i1 false}
!352 = !{!"../drivers/media/usb/em28xx/em28xx-dvb.c", i32 438, i32 20}
!353 = !{ptr @maxmedia_ub425_tc_drxk, !354, !"maxmedia_ub425_tc_drxk", i1 false, i1 false}
!354 = !{!"../drivers/media/usb/em28xx/em28xx-dvb.c", i32 434, i32 27}
!355 = !{ptr @pctv_520e_init.regs, !356, !"regs", i1 false, i1 false}
!356 = !{!"../drivers/media/usb/em28xx/em28xx-dvb.c", i32 711, i32 4}
!357 = !{ptr @.str.182, !358, !"<string literal>", i1 false, i1 false}
!358 = !{!"../drivers/media/usb/em28xx/em28xx-dvb.c", i32 446, i32 20}
!359 = !{ptr @pctv_520e_drxk, !360, !"pctv_520e_drxk", i1 false, i1 false}
!360 = !{!"../drivers/media/usb/em28xx/em28xx-dvb.c", i32 443, i32 27}
!361 = !{ptr @terratec_htc_stick_init.terratec_htc_stick_init, !362, !"terratec_htc_stick_init", i1 false, i1 false}
!362 = !{!"../drivers/media/usb/em28xx/em28xx-dvb.c", i32 598, i32 37}
!363 = !{ptr @terratec_htc_stick_init.terratec_htc_stick_end, !364, !"terratec_htc_stick_end", i1 false, i1 false}
!364 = !{!"../drivers/media/usb/em28xx/em28xx-dvb.c", i32 605, i32 37}
!365 = !{ptr @terratec_htc_stick_init.regs, !366, !"regs", i1 false, i1 false}
!366 = !{!"../drivers/media/usb/em28xx/em28xx-dvb.c", i32 618, i32 4}
!367 = !{ptr @.str.183, !368, !"<string literal>", i1 false, i1 false}
!368 = !{!"../drivers/media/usb/em28xx/em28xx-dvb.c", i32 425, i32 20}
!369 = !{ptr @terratec_htc_stick_drxk, !370, !"terratec_htc_stick_drxk", i1 false, i1 false}
!370 = !{!"../drivers/media/usb/em28xx/em28xx-dvb.c", i32 421, i32 27}
!371 = !{ptr @terratec_htc_usb_xs_init.terratec_htc_usb_xs_init, !372, !"terratec_htc_usb_xs_init", i1 false, i1 false}
!372 = !{!"../drivers/media/usb/em28xx/em28xx-dvb.c", i32 646, i32 37}
!373 = !{ptr @terratec_htc_usb_xs_init.terratec_htc_usb_xs_end, !374, !"terratec_htc_usb_xs_end", i1 false, i1 false}
!374 = !{!"../drivers/media/usb/em28xx/em28xx-dvb.c", i32 653, i32 37}
!375 = !{ptr @terratec_htc_usb_xs_init.regs, !376, !"regs", i1 false, i1 false}
!376 = !{!"../drivers/media/usb/em28xx/em28xx-dvb.c", i32 667, i32 4}
!377 = !{ptr @em2874_lgdt3305_dev, !378, !"em2874_lgdt3305_dev", i1 false, i1 false}
!378 = !{!"../drivers/media/usb/em28xx/em28xx-dvb.c", i32 321, i32 31}
!379 = !{ptr @kworld_ub435q_v2_config, !380, !"kworld_ub435q_v2_config", i1 false, i1 false}
!380 = !{!"../drivers/media/usb/em28xx/em28xx-dvb.c", i32 376, i32 31}
!381 = !{ptr @em2874_lgdt3305_nogate_dev, !382, !"em2874_lgdt3305_nogate_dev", i1 false, i1 false}
!382 = !{!"../drivers/media/usb/em28xx/em28xx-dvb.c", i32 333, i32 31}
!383 = !{ptr @kworld_ub435q_v3_config, !384, !"kworld_ub435q_v3_config", i1 false, i1 false}
!384 = !{!"../drivers/media/usb/em28xx/em28xx-dvb.c", i32 381, i32 31}
!385 = !{ptr @pinnacle_80e_dvb_config, !386, !"pinnacle_80e_dvb_config", i1 false, i1 false}
!386 = !{!"../drivers/media/usb/em28xx/em28xx-dvb.c", i32 923, i32 31}
!387 = !{ptr @drx_j_std_map, !388, !"drx_j_std_map", i1 false, i1 false}
!388 = !{!"../drivers/media/usb/em28xx/em28xx-dvb.c", i32 916, i32 32}
!389 = !{ptr @.str.185, !390, !"<string literal>", i1 false, i1 false}
!390 = !{!"../drivers/media/usb/em28xx/em28xx-dvb.c", i32 1185, i32 43}
!391 = !{ptr @.str.186, !392, !"<string literal>", i1 false, i1 false}
!392 = !{!"../drivers/media/usb/em28xx/em28xx-dvb.c", i32 1197, i32 43}
!393 = !{ptr @.str.187, !394, !"<string literal>", i1 false, i1 false}
!394 = !{!"../drivers/media/usb/em28xx/em28xx-dvb.c", i32 1197, i32 53}
!395 = !{ptr @.str.188, !396, !"<string literal>", i1 false, i1 false}
!396 = !{!"../drivers/media/usb/em28xx/em28xx-dvb.c", i32 1240, i32 56}
!397 = !{ptr @.str.189, !398, !"<string literal>", i1 false, i1 false}
!398 = !{!"../drivers/media/usb/em28xx/em28xx-dvb.c", i32 1291, i32 43}
!399 = !{ptr @.str.190, !400, !"<string literal>", i1 false, i1 false}
!400 = !{!"../drivers/media/usb/em28xx/em28xx-dvb.c", i32 1303, i32 43}
!401 = !{ptr @.str.191, !402, !"<string literal>", i1 false, i1 false}
!402 = !{!"../drivers/media/usb/em28xx/em28xx-dvb.c", i32 1340, i32 53}
!403 = !{ptr @.str.192, !404, !"<string literal>", i1 false, i1 false}
!404 = !{!"../drivers/media/usb/em28xx/em28xx-dvb.c", i32 1358, i32 43}
!405 = !{ptr @.str.193, !406, !"<string literal>", i1 false, i1 false}
!406 = !{!"../drivers/media/usb/em28xx/em28xx-dvb.c", i32 1358, i32 54}
!407 = !{ptr @.str.194, !408, !"<string literal>", i1 false, i1 false}
!408 = !{!"../drivers/media/usb/em28xx/em28xx-dvb.c", i32 1368, i32 43}
!409 = !{ptr @px_bcud_init.regs1, !410, !"regs1", i1 false, i1 false}
!410 = !{!"../drivers/media/usb/em28xx/em28xx-dvb.c", i32 807, i32 4}
!411 = !{ptr @px_bcud_init.regs2, !412, !"regs2", i1 false, i1 false}
!412 = !{!"../drivers/media/usb/em28xx/em28xx-dvb.c", i32 811, i32 5}
!413 = !{ptr @px_bcud_init.gpio, !414, !"gpio", i1 false, i1 false}
!414 = !{!"../drivers/media/usb/em28xx/em28xx-dvb.c", i32 822, i32 37}
!415 = !{ptr @.str.195, !416, !"<string literal>", i1 false, i1 false}
!416 = !{!"../drivers/media/usb/em28xx/em28xx-dvb.c", i32 1437, i32 43}
!417 = !{ptr @hauppauge_01595_lgdt3306a_config, !418, !"hauppauge_01595_lgdt3306a_config", i1 false, i1 false}
!418 = !{!"../drivers/media/usb/em28xx/em28xx-dvb.c", i32 929, i32 32}
!419 = !{ptr @.str.196, !420, !"<string literal>", i1 false, i1 false}
!420 = !{!"../drivers/media/usb/em28xx/em28xx-dvb.c", i32 1474, i32 43}
!421 = !{ptr @em28xx_register_dvb.__key, !422, !"__key", i1 false, i1 false}
!422 = !{!"../drivers/media/usb/em28xx/em28xx-dvb.c", i32 983, i32 2}
!423 = !{ptr @.str.197, !422, !"<string literal>", i1 false, i1 false}
!424 = !{ptr @.str.198, !425, !"<string literal>", i1 false, i1 false}
!425 = !{!"../drivers/media/usb/em28xx/em28xx-dvb.c", i32 990, i32 3}
!426 = !{ptr @.str.199, !425, !"<string literal>", i1 false, i1 false}
!427 = !{ptr @.str.200, !425, !"<string literal>", i1 false, i1 false}
!428 = !{ptr @em28xx_register_dvb._entry, !425, !"_entry", i1 false, i1 false}
!429 = !{ptr @em28xx_register_dvb._entry_ptr, !425, !"_entry_ptr", i1 false, i1 false}
!430 = !{ptr @.str.202, !431, !"<string literal>", i1 false, i1 false}
!431 = !{!"../drivers/media/usb/em28xx/em28xx-dvb.c", i32 1009, i32 3}
!432 = !{ptr @em28xx_register_dvb._entry.201, !431, !"_entry", i1 false, i1 false}
!433 = !{ptr @em28xx_register_dvb._entry_ptr.203, !431, !"_entry_ptr", i1 false, i1 false}
!434 = !{ptr @.str.205, !435, !"<string literal>", i1 false, i1 false}
!435 = !{!"../drivers/media/usb/em28xx/em28xx-dvb.c", i32 1019, i32 4}
!436 = !{ptr @em28xx_register_dvb._entry.204, !435, !"_entry", i1 false, i1 false}
!437 = !{ptr @em28xx_register_dvb._entry_ptr.206, !435, !"_entry_ptr", i1 false, i1 false}
!438 = !{ptr @.str.208, !439, !"<string literal>", i1 false, i1 false}
!439 = !{!"../drivers/media/usb/em28xx/em28xx-dvb.c", i32 1038, i32 3}
!440 = !{ptr @em28xx_register_dvb._entry.207, !439, !"_entry", i1 false, i1 false}
!441 = !{ptr @em28xx_register_dvb._entry_ptr.209, !439, !"_entry_ptr", i1 false, i1 false}
!442 = !{ptr @.str.211, !443, !"<string literal>", i1 false, i1 false}
!443 = !{!"../drivers/media/usb/em28xx/em28xx-dvb.c", i32 1049, i32 3}
!444 = !{ptr @em28xx_register_dvb._entry.210, !443, !"_entry", i1 false, i1 false}
!445 = !{ptr @em28xx_register_dvb._entry_ptr.212, !443, !"_entry_ptr", i1 false, i1 false}
!446 = !{ptr @.str.214, !447, !"<string literal>", i1 false, i1 false}
!447 = !{!"../drivers/media/usb/em28xx/em28xx-dvb.c", i32 1058, i32 3}
!448 = !{ptr @em28xx_register_dvb._entry.213, !447, !"_entry", i1 false, i1 false}
!449 = !{ptr @em28xx_register_dvb._entry_ptr.215, !447, !"_entry_ptr", i1 false, i1 false}
!450 = !{ptr @.str.217, !451, !"<string literal>", i1 false, i1 false}
!451 = !{!"../drivers/media/usb/em28xx/em28xx-dvb.c", i32 1067, i32 3}
!452 = !{ptr @em28xx_register_dvb._entry.216, !451, !"_entry", i1 false, i1 false}
!453 = !{ptr @em28xx_register_dvb._entry_ptr.218, !451, !"_entry_ptr", i1 false, i1 false}
!454 = !{ptr @.str.220, !455, !"<string literal>", i1 false, i1 false}
!455 = !{!"../drivers/media/usb/em28xx/em28xx-dvb.c", i32 1075, i32 3}
!456 = !{ptr @em28xx_register_dvb._entry.219, !455, !"_entry", i1 false, i1 false}
!457 = !{ptr @em28xx_register_dvb._entry_ptr.221, !455, !"_entry_ptr", i1 false, i1 false}
!458 = !{ptr @.str.222, !459, !"<string literal>", i1 false, i1 false}
!459 = !{!"../drivers/media/usb/em28xx/em28xx-dvb.c", i32 229, i32 2}
!460 = !{ptr @.str.223, !459, !"<string literal>", i1 false, i1 false}
!461 = !{ptr @.str.224, !459, !"<string literal>", i1 false, i1 false}
!462 = !{ptr @em28xx_start_streaming._entry, !459, !"_entry", i1 false, i1 false}
!463 = !{ptr @em28xx_start_streaming._entry_ptr, !459, !"_entry_ptr", i1 false, i1 false}
!464 = !{ptr @.str.225, !465, !"<string literal>", i1 false, i1 false}
!465 = !{!"../drivers/media/usb/em28xx/em28xx-dvb.c", i32 112, i32 17}
!466 = !{ptr @.str.226, !467, !"<string literal>", i1 false, i1 false}
!467 = !{!"../drivers/media/usb/em28xx/em28xx-dvb.c", i32 116, i32 12}
!468 = !{ptr @.str.227, !469, !"<string literal>", i1 false, i1 false}
!469 = !{!"../drivers/media/usb/em28xx/em28xx-dvb.c", i32 119, i32 12}
!470 = !{ptr @.str.228, !471, !"<string literal>", i1 false, i1 false}
!471 = !{!"../drivers/media/usb/em28xx/em28xx-dvb.c", i32 122, i32 12}
!472 = !{ptr @.str.229, !473, !"<string literal>", i1 false, i1 false}
!473 = !{!"../drivers/media/usb/em28xx/em28xx-dvb.c", i32 125, i32 12}
!474 = !{ptr @.str.230, !475, !"<string literal>", i1 false, i1 false}
!475 = !{!"../drivers/media/usb/em28xx/em28xx-dvb.c", i32 128, i32 12}
!476 = !{ptr @.str.231, !477, !"<string literal>", i1 false, i1 false}
!477 = !{!"../drivers/media/usb/em28xx/em28xx-dvb.c", i32 131, i32 12}
!478 = !{ptr @.str.232, !479, !"<string literal>", i1 false, i1 false}
!479 = !{!"../drivers/media/usb/em28xx/em28xx-dvb.c", i32 134, i32 12}
!480 = !{ptr @.str.233, !481, !"<string literal>", i1 false, i1 false}
!481 = !{!"../drivers/media/usb/em28xx/em28xx-dvb.c", i32 137, i32 12}
!482 = !{ptr @.str.234, !483, !"<string literal>", i1 false, i1 false}
!483 = !{!"../drivers/media/usb/em28xx/em28xx-dvb.c", i32 141, i32 3}
!484 = !{ptr @.str.235, !483, !"<string literal>", i1 false, i1 false}
!485 = !{ptr @print_err_status._entry, !483, !"_entry", i1 false, i1 false}
!486 = !{ptr @print_err_status._entry_ptr, !483, !"_entry_ptr", i1 false, i1 false}
!487 = !{ptr @.str.237, !488, !"<string literal>", i1 false, i1 false}
!488 = !{!"../drivers/media/usb/em28xx/em28xx-dvb.c", i32 143, i32 3}
!489 = !{ptr @print_err_status._entry.236, !488, !"_entry", i1 false, i1 false}
!490 = !{ptr @print_err_status._entry_ptr.238, !488, !"_entry_ptr", i1 false, i1 false}
!491 = !{ptr @.str.239, !492, !"<string literal>", i1 false, i1 false}
!492 = !{!"../drivers/media/usb/em28xx/em28xx-dvb.c", i32 2043, i32 2}
!493 = !{ptr @.str.240, !492, !"<string literal>", i1 false, i1 false}
!494 = !{ptr @em28xx_dvb_fini._entry, !492, !"_entry", i1 false, i1 false}
!495 = !{ptr @em28xx_dvb_fini._entry_ptr, !492, !"_entry_ptr", i1 false, i1 false}
!496 = !{ptr @.str.241, !497, !"<string literal>", i1 false, i1 false}
!497 = !{!"../drivers/media/usb/em28xx/em28xx-dvb.c", i32 2088, i32 2}
!498 = !{ptr @.str.242, !497, !"<string literal>", i1 false, i1 false}
!499 = !{ptr @em28xx_dvb_suspend._entry, !497, !"_entry", i1 false, i1 false}
!500 = !{ptr @em28xx_dvb_suspend._entry_ptr, !497, !"_entry_ptr", i1 false, i1 false}
!501 = !{ptr @.str.244, !502, !"<string literal>", i1 false, i1 false}
!502 = !{!"../drivers/media/usb/em28xx/em28xx-dvb.c", i32 2094, i32 4}
!503 = !{ptr @em28xx_dvb_suspend._entry.243, !502, !"_entry", i1 false, i1 false}
!504 = !{ptr @em28xx_dvb_suspend._entry_ptr.245, !502, !"_entry_ptr", i1 false, i1 false}
!505 = !{ptr @.str.247, !506, !"<string literal>", i1 false, i1 false}
!506 = !{!"../drivers/media/usb/em28xx/em28xx-dvb.c", i32 2098, i32 4}
!507 = !{ptr @em28xx_dvb_suspend._entry.246, !506, !"_entry", i1 false, i1 false}
!508 = !{ptr @em28xx_dvb_suspend._entry_ptr.248, !506, !"_entry_ptr", i1 false, i1 false}
!509 = !{ptr @.str.249, !510, !"<string literal>", i1 false, i1 false}
!510 = !{!"../drivers/media/usb/em28xx/em28xx-dvb.c", i32 2115, i32 2}
!511 = !{ptr @.str.250, !510, !"<string literal>", i1 false, i1 false}
!512 = !{ptr @em28xx_dvb_resume._entry, !510, !"_entry", i1 false, i1 false}
!513 = !{ptr @em28xx_dvb_resume._entry_ptr, !510, !"_entry_ptr", i1 false, i1 false}
!514 = !{ptr @.str.252, !515, !"<string literal>", i1 false, i1 false}
!515 = !{!"../drivers/media/usb/em28xx/em28xx-dvb.c", i32 2121, i32 4}
!516 = !{ptr @em28xx_dvb_resume._entry.251, !515, !"_entry", i1 false, i1 false}
!517 = !{ptr @em28xx_dvb_resume._entry_ptr.253, !515, !"_entry_ptr", i1 false, i1 false}
!518 = !{ptr @.str.255, !519, !"<string literal>", i1 false, i1 false}
!519 = !{!"../drivers/media/usb/em28xx/em28xx-dvb.c", i32 2126, i32 4}
!520 = !{ptr @em28xx_dvb_resume._entry.254, !519, !"_entry", i1 false, i1 false}
!521 = !{ptr @em28xx_dvb_resume._entry_ptr.256, !519, !"_entry_ptr", i1 false, i1 false}
!522 = !{i32 1, !"wchar_size", i32 2}
!523 = !{i32 1, !"min_enum_size", i32 4}
!524 = !{i32 8, !"branch-target-enforcement", i32 0}
!525 = !{i32 8, !"sign-return-address", i32 0}
!526 = !{i32 8, !"sign-return-address-all", i32 0}
!527 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!528 = !{i32 7, !"uwtable", i32 1}
!529 = !{i32 7, !"frame-pointer", i32 2}
!530 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!531 = !{!"auto-init"}
!532 = !{i64 2148481437, i64 2148481469, i64 2148481498, i64 2148481532, i64 2148481563, i64 2148481586}
!533 = !{!"branch_weights", i32 1, i32 2000}
!534 = !{!"branch_weights", i32 2000, i32 1}
!535 = !{i8 0, i8 2}
!536 = !{i64 2148573523}
!537 = !{i64 2148483902, i64 2148483934, i64 2148483963, i64 2148483997, i64 2148484028, i64 2148484051}
!538 = !{i64 2150355934}
