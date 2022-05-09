; ModuleID = '/llk/IR_all_yes/drivers/media/pci/saa7164/saa7164-dvb.c_pt.bc'
source_filename = "../drivers/media/pci/saa7164/saa7164-dvb.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kparam_array = type { i32, i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.101 }
%union.anon.101 = type { ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.tda10048_config = type { i8, i8, i8, i8, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8 }
%struct.tda18271_config = type { ptr, i32, i32, i32, i32, i8, i32 }
%struct.s5h1411_config = type { i8, i8, i16, i16, i16, i8, i8 }
%struct.lgdt3306a_config = type { i8, i16, i16, i8, i32, i32, i32, i32, ptr, ptr }
%struct.si2157_config = type { ptr, ptr, i8, i8 }
%struct.tda18271_std_map_item = type { i16, i16 }
%struct.saa7164_dev = type { %struct.list_head, %struct.atomic_t, %struct.v4l2_device, ptr, i8, i8, i32, i32, ptr, ptr, ptr, ptr, i32, i32, i32, i32, [16 x i8], %struct.saa7164_fw_status, i32, %struct.tmComResHWDescr, %struct.tmComResInterfaceDescr, %struct.tmComResBusDescr, %struct.tmComResBusInfo, i32, i32, i8, [256 x %struct.cmd], %struct.mutex, [3 x %struct.saa7164_i2c], [6 x %struct.saa7164_port], %struct.work_struct, ptr }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
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
%struct.saa7164_fw_status = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.tmComResHWDescr = type <{ i8, i8, i8, i16, i32, i32, i8, i32, i32, i32, i32, i32 }>
%struct.tmComResInterfaceDescr = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [3 x i8] }
%struct.tmComResBusDescr = type { i64, i64, i32, i32, i32, i32 }
%struct.tmComResBusInfo = type { i32, i16, ptr, i32, ptr, i32, i32, i32, i32, i32, %struct.mutex }
%struct.cmd = type { i8, i32, i32, i32, %struct.mutex, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.saa7164_i2c = type { ptr, i32, %struct.i2c_adapter, %struct.i2c_client, i32 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
%struct.saa7164_port = type { ptr, i32, i32, %struct.tmHWStreamParameters, %struct.tmComResDMATermDescrHeader, i32, i32, i32, i32, i32, i32, i64, i32, %struct.mutex, %struct.saa7164_buffer, i64, i64, i64, i64, i32, i32, i64, i64, i64, i64, i64, %struct.saa7164_histogram, %struct.saa7164_histogram, %struct.saa7164_histogram, %struct.saa7164_histogram, %struct.saa7164_histogram, %struct.saa7164_dvb, ptr, ptr, %struct.saa7164_tvnorm, %struct.v4l2_ctrl_handler, i64, i32, i32, i32, i8, i8, i8, i8, i8, i16, i16, i16, i16, i16, i8, %struct.tmComResAFeatureDescrHeader, %struct.tmComResEncoderDescrHeader, %struct.tmComResProcDescrHeader, %struct.tmComResExtDevDescrHeader, %struct.tmComResTunerDescrHeader, %struct.work_struct, %struct.saa7164_encoder_params, ptr, %struct.atomic_t, %struct.saa7164_buffer, %struct.saa7164_buffer, %struct.wait_queue_head, %struct.tmComResVBIFormatDescrHeader, %struct.saa7164_vbi_params, ptr, i32, i32, i32, i8, i8, i32 }
%struct.tmHWStreamParameters = type { i32, i32, i32, i32, i32, ptr, ptr, i32, i32 }
%struct.tmComResDMATermDescrHeader = type <{ i8, i8, i8, i8, i16, i8, i8, i8, i32, i8, i8, i8, i8, i8, i8 }>
%struct.saa7164_histogram = type { [32 x i8], [64 x %struct.saa7164_histogram_bucket] }
%struct.saa7164_histogram_bucket = type { i32, i32, i64 }
%struct.saa7164_dvb = type { %struct.mutex, %struct.dvb_adapter, ptr, %struct.dvb_demux, %struct.dmxdev, %struct.dmx_frontend, %struct.dmx_frontend, %struct.dvb_net, i32 }
%struct.dvb_adapter = type { i32, %struct.list_head, %struct.list_head, ptr, [6 x i8], ptr, ptr, ptr, i32, ptr, %struct.mutex, %struct.mutex, ptr, ptr, ptr }
%struct.dvb_demux = type { %struct.dmx_demux, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, %struct.list_head, [20 x ptr], [20 x i16], %struct.list_head, [204 x i8], i32, %struct.mutex, %struct.spinlock, ptr, i64, i32, i32, i32 }
%struct.dmx_demux = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dmxdev = type { ptr, ptr, ptr, ptr, i32, i32, i8, ptr, %struct.dvb_ringbuffer, %struct.dvb_vb2_ctx, %struct.mutex, %struct.spinlock }
%struct.dvb_ringbuffer = type { ptr, i32, i32, i32, i32, %struct.wait_queue_head, %struct.spinlock }
%struct.dvb_vb2_ctx = type { %struct.vb2_queue, %struct.mutex, %struct.spinlock, %struct.list_head, ptr, i32, i32, i32, i32, i32, i32, i32, i32, [21 x i8] }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.dmx_frontend = type { %struct.list_head, i32 }
%struct.dvb_net = type { ptr, [10 x ptr], [10 x i32], i8, ptr, %struct.mutex }
%struct.saa7164_tvnorm = type { ptr, i64 }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.tmComResAFeatureDescrHeader = type { i8, i8, i8, i8, i8, i8 }
%struct.tmComResEncoderDescrHeader = type <{ i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i8, i16, i16, i32, i8 }>
%struct.tmComResProcDescrHeader = type <{ i8, i8, i8, i8, i8, i16, i8 }>
%struct.tmComResExtDevDescrHeader = type <{ i8, i8, i8, i8, i32, i16, i32, i8, i8 }>
%struct.tmComResTunerDescrHeader = type <{ i8, i8, i8, i8, i8, i8, i32, i8, i32 }>
%struct.saa7164_encoder_params = type { %struct.saa7164_tvnorm, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.saa7164_buffer = type { %struct.list_head, i32, ptr, i32, i32, ptr, i32, i32, i32, ptr, i32, i32, i32 }
%struct.tmComResVBIFormatDescrHeader = type { i8, i8, i8, i8, i32, i8, i8, i8, i8 }
%struct.saa7164_vbi_params = type { %struct.saa7164_tvnorm, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.si2168_config = type { ptr, ptr, i8, i8 }
%struct.i2c_board_info = type { [20 x i8], i16, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32 }
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
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, [3 x %struct.anon.129], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats }
%struct.anon.129 = type { i8, i32, i32, i8 }
%struct.dtv_fe_stats = type { i8, [4 x %struct.dtv_stats] }
%struct.dtv_stats = type <{ i8, %union.anon.130 }>
%union.anon.130 = type { i64 }
%struct.dvb_demux_feed = type { %union.anon.131, %union.anon.132, ptr, ptr, i32, i32, i16, i64, ptr, i32, i32, i32, i32, i8, i16, %struct.list_head, i32 }
%union.anon.131 = type { %struct.dmx_section_feed }
%struct.dmx_section_feed = type { i32, ptr, ptr, i32, i32, ptr, [4284 x i8], i16, i16, i16, ptr, ptr, ptr, ptr, ptr }
%union.anon.132 = type { ptr }

@__param_str_adapter_nr = internal constant [19 x i8] c"saa7164.adapter_nr\00", align 1
@param_array_ops = external dso_local constant %struct.kernel_param_ops, align 4
@__param_arr_adapter_nr = internal constant %struct.kparam_array { i32 16, i32 2, ptr null, ptr @param_ops_short, ptr @adapter_nr }, align 4
@__param_adapter_nr = internal constant %struct.kernel_param { ptr @__param_str_adapter_nr, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.101 { ptr @__param_arr_adapter_nr } }, section "__param", align 4
@__UNIQUE_ID_adapter_nrtype385 = internal constant [43 x i8] c"saa7164.parmtype=adapter_nr:array of short\00", section ".modinfo", align 1
@__UNIQUE_ID_adapter_nr386 = internal constant [44 x i8] c"saa7164.parm=adapter_nr:DVB adapter numbers\00", section ".modinfo", align 1
@saa_debug = external dso_local local_unnamed_addr global i32, align 4
@saa7164_dvb_unregister._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 479, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"\017%s: %s()\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"saa7164_dvb_unregister\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/media/pci/saa7164/saa7164-dvb.c\00", [56 x i8] zeroinitializer }, align 32
@saa7164_dvb_unregister._entry_ptr = internal global ptr @saa7164_dvb_unregister._entry, section ".printk_index", align 4
@saa7164_dvb_register._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.3, ptr @.str.2, i32 536, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"saa7164_dvb_register\00", [43 x i8] zeroinitializer }, align 32
@saa7164_dvb_register._entry_ptr = internal global ptr @saa7164_dvb_register._entry, section ".printk_index", align 4
@.str.4 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"tda10048_attach\00", [16 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"symbol:tda10048_attach\00", [41 x i8] zeroinitializer }, align 32
@hauppauge_hvr2200_1_config = internal global { %struct.tda10048_config, [46 x i8] } { %struct.tda10048_config { i8 8, i8 1, i8 -56, i8 1, i16 3300, i16 3500, i16 4000, i16 16000, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0 }, [46 x i8] zeroinitializer }, align 32
@saa7164_dvb_register._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.3, ptr @.str.2, i32 550, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013DVB: Unable to find symbol tda10048_attach()\0A\00", [48 x i8] zeroinitializer }, align 32
@saa7164_dvb_register._entry_ptr.8 = internal global ptr @saa7164_dvb_register._entry.6, section ".printk_index", align 4
@.str.9 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"tda18271_attach\00", [16 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"symbol:tda18271_attach\00", [41 x i8] zeroinitializer }, align 32
@hauppauge_hvr22x0_tuner_config = internal global { %struct.tda18271_config, [36 x i8] } { %struct.tda18271_config { ptr @hauppauge_tda18271_std_map, i32 0, i32 1, i32 0, i32 0, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@saa7164_dvb_register._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.3, ptr @.str.2, i32 556, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013DVB: Unable to find symbol tda18271_attach()\0A\00", [48 x i8] zeroinitializer }, align 32
@saa7164_dvb_register._entry_ptr.13 = internal global ptr @saa7164_dvb_register._entry.11, section ".printk_index", align 4
@hauppauge_hvr2200_2_config = internal global { %struct.tda10048_config, [46 x i8] } { %struct.tda10048_config { i8 9, i8 1, i8 -56, i8 1, i16 3300, i16 3500, i16 4000, i16 16000, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0 }, [46 x i8] zeroinitializer }, align 32
@saa7164_dvb_register._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.3, ptr @.str.2, i32 563, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@saa7164_dvb_register._entry_ptr.15 = internal global ptr @saa7164_dvb_register._entry.14, section ".printk_index", align 4
@hauppauge_hvr22x0s_tuner_config = internal global { %struct.tda18271_config, [36 x i8] } { %struct.tda18271_config { ptr @hauppauge_tda18271_std_map, i32 1, i32 1, i32 1, i32 0, i8 -128, i32 0 }, [36 x i8] zeroinitializer }, align 32
@saa7164_dvb_register._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.3, ptr @.str.2, i32 569, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@saa7164_dvb_register._entry_ptr.17 = internal global ptr @saa7164_dvb_register._entry.16, section ".printk_index", align 4
@.str.18 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"s5h1411_attach\00", [17 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"symbol:s5h1411_attach\00", [42 x i8] zeroinitializer }, align 32
@hauppauge_s5h1411_config = internal global { %struct.s5h1411_config, [22 x i8] } { %struct.s5h1411_config { i8 1, i8 1, i16 1, i16 4000, i16 3250, i8 1, i8 1 }, [22 x i8] zeroinitializer }, align 32
@saa7164_dvb_register._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.3, ptr @.str.2, i32 582, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013DVB: Unable to find symbol s5h1411_attach()\0A\00", [49 x i8] zeroinitializer }, align 32
@saa7164_dvb_register._entry_ptr.22 = internal global ptr @saa7164_dvb_register._entry.20, section ".printk_index", align 4
@saa7164_dvb_register._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.3, ptr @.str.2, i32 590, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@saa7164_dvb_register._entry_ptr.24 = internal global ptr @saa7164_dvb_register._entry.23, section ".printk_index", align 4
@saa7164_dvb_register._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.3, ptr @.str.2, i32 595, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@saa7164_dvb_register._entry_ptr.26 = internal global ptr @saa7164_dvb_register._entry.25, section ".printk_index", align 4
@.str.27 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"lgdt3306a_attach\00", [47 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"symbol:lgdt3306a_attach\00", [40 x i8] zeroinitializer }, align 32
@hauppauge_hvr2255a_config = internal global { %struct.lgdt3306a_config, [32 x i8] } { %struct.lgdt3306a_config { i8 89, i16 4000, i16 3250, i8 -128, i32 1, i32 0, i32 1, i32 25, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@saa7164_dvb_register._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.3, ptr @.str.2, i32 606, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013DVB: Unable to find symbol lgdt3306a_attach()\0A\00", [47 x i8] zeroinitializer }, align 32
@saa7164_dvb_register._entry_ptr.31 = internal global ptr @saa7164_dvb_register._entry.29, section ".printk_index", align 4
@hauppauge_hvr2255b_config = internal global { %struct.lgdt3306a_config, [32 x i8] } { %struct.lgdt3306a_config { i8 14, i16 4000, i16 3250, i8 -128, i32 1, i32 0, i32 1, i32 25, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@saa7164_dvb_register._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.3, ptr @.str.2, i32 609, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@saa7164_dvb_register._entry_ptr.33 = internal global ptr @saa7164_dvb_register._entry.32, section ".printk_index", align 4
@hauppauge_hvr2255_tuner_config = internal global { %struct.si2157_config, [20 x i8] } { %struct.si2157_config { ptr null, ptr null, i8 -128, i8 1 }, [20 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"si2168\00", [25 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"si2157\00", [25 x i8] zeroinitializer }, align 32
@saa7164_dvb_register._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.3, ptr @.str.2, i32 718, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013%s: The frontend isn't supported\0A\00", [60 x i8] zeroinitializer }, align 32
@saa7164_dvb_register._entry_ptr.38 = internal global ptr @saa7164_dvb_register._entry.36, section ".printk_index", align 4
@saa7164_dvb_register._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.3, ptr @.str.2, i32 723, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013%s() Frontend initialization failed\0A\00", [57 x i8] zeroinitializer }, align 32
@saa7164_dvb_register._entry_ptr.41 = internal global ptr @saa7164_dvb_register._entry.39, section ".printk_index", align 4
@saa7164_dvb_register._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.3, ptr @.str.2, i32 738, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013%s() Frontend/I2C initialization failed\0A\00", [53 x i8] zeroinitializer }, align 32
@saa7164_dvb_register._entry_ptr.44 = internal global ptr @saa7164_dvb_register._entry.42, section ".printk_index", align 4
@param_ops_short = external dso_local constant %struct.kernel_param_ops, align 4
@adapter_nr = internal global { [16 x i16], [32 x i8] } { [16 x i16] [i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1], [32 x i8] zeroinitializer }, align 32
@hauppauge_tda18271_std_map = internal global { { %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, { i16, i8, i8 }, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, { i16, i8, i8 }, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item }, [36 x i8] } { { %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, { i16, i8, i8 }, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, { i16, i8, i8 }, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item } { %struct.tda18271_std_map_item zeroinitializer, %struct.tda18271_std_map_item zeroinitializer, %struct.tda18271_std_map_item zeroinitializer, %struct.tda18271_std_map_item zeroinitializer, %struct.tda18271_std_map_item zeroinitializer, %struct.tda18271_std_map_item zeroinitializer, %struct.tda18271_std_map_item zeroinitializer, %struct.tda18271_std_map_item zeroinitializer, { i16, i8, i8 } { i16 3250, i8 -37, i8 55 }, %struct.tda18271_std_map_item zeroinitializer, %struct.tda18271_std_map_item zeroinitializer, %struct.tda18271_std_map_item zeroinitializer, { i16, i8, i8 } { i16 4000, i8 -61, i8 55 }, %struct.tda18271_std_map_item zeroinitializer, %struct.tda18271_std_map_item zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@dvb_register._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.47, ptr @.str.2, i32 338, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"\017%s: %s(port=%d)\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"dvb_register\00", [19 x i8] zeroinitializer }, align 32
@dvb_register._entry_ptr = internal global ptr @dvb_register._entry, section ".printk_index", align 4
@dvb_register._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.47, ptr @.str.2, i32 346, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"\013%s: dvb_register_adapter failed (errno = %d), NO PCI configuration\0A\00", [58 x i8] zeroinitializer }, align 32
@dvb_register._entry_ptr.50 = internal global ptr @dvb_register._entry.48, section ".printk_index", align 4
@.str.51 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"saa7164\00", [24 x i8] zeroinitializer }, align 32
@dvb_register._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.47, ptr @.str.2, i32 374, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"\013%s: dvb_register_adapter failed (errno = %d), unable to allocate buffers\0A\00", [52 x i8] zeroinitializer }, align 32
@dvb_register._entry_ptr.54 = internal global ptr @dvb_register._entry.52, section ".printk_index", align 4
@dvb_register._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.47, ptr @.str.2, i32 388, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013%s: dvb_register_adapter failed (errno = %d)\0A\00", [48 x i8] zeroinitializer }, align 32
@dvb_register._entry_ptr.57 = internal global ptr @dvb_register._entry.55, section ".printk_index", align 4
@dvb_register._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.47, ptr @.str.2, i32 397, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013%s: dvb_register_frontend failed (errno = %d)\0A\00", [47 x i8] zeroinitializer }, align 32
@dvb_register._entry_ptr.60 = internal global ptr @dvb_register._entry.58, section ".printk_index", align 4
@dvb_register._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.47, ptr @.str.2, i32 413, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013%s: dvb_dmx_init failed (errno = %d)\0A\00", [56 x i8] zeroinitializer }, align 32
@dvb_register._entry_ptr.63 = internal global ptr @dvb_register._entry.61, section ".printk_index", align 4
@dvb_register._entry.64 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.47, ptr @.str.2, i32 423, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013%s: dvb_dmxdev_init failed (errno = %d)\0A\00", [53 x i8] zeroinitializer }, align 32
@dvb_register._entry_ptr.66 = internal global ptr @dvb_register._entry.64, section ".printk_index", align 4
@dvb_register._entry.67 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.47, ptr @.str.2, i32 431, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\013%s: add_frontend failed (DMX_FRONTEND_0, errno = %d)\0A\00", [40 x i8] zeroinitializer }, align 32
@dvb_register._entry_ptr.69 = internal global ptr @dvb_register._entry.67, section ".printk_index", align 4
@dvb_register._entry.70 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.47, ptr @.str.2, i32 439, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\013%s: add_frontend failed (DMX_MEMORY_FE, errno = %d)\0A\00", [41 x i8] zeroinitializer }, align 32
@dvb_register._entry_ptr.72 = internal global ptr @dvb_register._entry.70, section ".printk_index", align 4
@dvb_register._entry.73 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.47, ptr @.str.2, i32 446, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013%s: connect_frontend failed (errno = %d)\0A\00", [52 x i8] zeroinitializer }, align 32
@dvb_register._entry_ptr.75 = internal global ptr @dvb_register._entry.73, section ".printk_index", align 4
@saa7164_dvb_start_feed._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.76, ptr @.str.2, i32 288, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"saa7164_dvb_start_feed\00", [41 x i8] zeroinitializer }, align 32
@saa7164_dvb_start_feed._entry_ptr = internal global ptr @saa7164_dvb_start_feed._entry, section ".printk_index", align 4
@saa7164_dvb_start_feed._entry.77 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.76, ptr @.str.2, i32 301, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\017%s: %s(port=%d) now feeding = %d\0A\00", [60 x i8] zeroinitializer }, align 32
@saa7164_dvb_start_feed._entry_ptr.79 = internal global ptr @saa7164_dvb_start_feed._entry.77, section ".printk_index", align 4
@saa7164_dvb_start_port._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.80, ptr @.str.2, i32 220, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"saa7164_dvb_start_port\00", [41 x i8] zeroinitializer }, align 32
@saa7164_dvb_start_port._entry_ptr = internal global ptr @saa7164_dvb_start_port._entry, section ".printk_index", align 4
@saa7164_dvb_start_port._entry.81 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.80, ptr @.str.2, i32 228, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013%s() acquire transition failed, res = 0x%x\0A\00", [50 x i8] zeroinitializer }, align 32
@saa7164_dvb_start_port._entry_ptr.83 = internal global ptr @saa7164_dvb_start_port._entry.81, section ".printk_index", align 4
@saa7164_dvb_start_port._entry.84 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.80, ptr @.str.2, i32 234, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\013%s() acquire/forced stop transition failed, res = 0x%x\0A\00", [38 x i8] zeroinitializer }, align 32
@saa7164_dvb_start_port._entry_ptr.86 = internal global ptr @saa7164_dvb_start_port._entry.84, section ".printk_index", align 4
@saa7164_dvb_start_port._entry.87 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.88, ptr @.str.80, ptr @.str.2, i32 239, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\017%s: %s()   Acquired\0A\00", [41 x i8] zeroinitializer }, align 32
@saa7164_dvb_start_port._entry_ptr.89 = internal global ptr @saa7164_dvb_start_port._entry.87, section ".printk_index", align 4
@saa7164_dvb_start_port._entry.90 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.91, ptr @.str.80, ptr @.str.2, i32 245, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013%s() pause transition failed, res = 0x%x\0A\00", [52 x i8] zeroinitializer }, align 32
@saa7164_dvb_start_port._entry_ptr.92 = internal global ptr @saa7164_dvb_start_port._entry.90, section ".printk_index", align 4
@saa7164_dvb_start_port._entry.93 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.94, ptr @.str.80, ptr @.str.2, i32 251, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\013%s() pause/forced stop transition failed, res = 0x%x\0A\00", [40 x i8] zeroinitializer }, align 32
@saa7164_dvb_start_port._entry_ptr.95 = internal global ptr @saa7164_dvb_start_port._entry.93, section ".printk_index", align 4
@saa7164_dvb_start_port._entry.96 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.97, ptr @.str.80, ptr @.str.2, i32 257, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\017%s: %s()   Paused\0A\00", [43 x i8] zeroinitializer }, align 32
@saa7164_dvb_start_port._entry_ptr.98 = internal global ptr @saa7164_dvb_start_port._entry.96, section ".printk_index", align 4
@saa7164_dvb_start_port._entry.99 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.100, ptr @.str.80, ptr @.str.2, i32 263, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013%s() run transition failed, result = 0x%x\0A\00", [51 x i8] zeroinitializer }, align 32
@saa7164_dvb_start_port._entry_ptr.101 = internal global ptr @saa7164_dvb_start_port._entry.99, section ".printk_index", align 4
@saa7164_dvb_start_port._entry.102 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.103, ptr @.str.80, ptr @.str.2, i32 269, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\013%s() run/forced stop transition failed, res = 0x%x\0A\00", [42 x i8] zeroinitializer }, align 32
@saa7164_dvb_start_port._entry_ptr.104 = internal global ptr @saa7164_dvb_start_port._entry.102, section ".printk_index", align 4
@saa7164_dvb_start_port._entry.105 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.106, ptr @.str.80, ptr @.str.2, i32 274, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\017%s: %s()   Running\0A\00", [42 x i8] zeroinitializer }, align 32
@saa7164_dvb_start_port._entry_ptr.107 = internal global ptr @saa7164_dvb_start_port._entry.105, section ".printk_index", align 4
@saa7164_dvb_stop_feed._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.108, ptr @.str.2, i32 315, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"saa7164_dvb_stop_feed\00", [42 x i8] zeroinitializer }, align 32
@saa7164_dvb_stop_feed._entry_ptr = internal global ptr @saa7164_dvb_stop_feed._entry, section ".printk_index", align 4
@saa7164_dvb_stop_feed._entry.109 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.108, ptr @.str.2, i32 325, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@saa7164_dvb_stop_feed._entry_ptr.110 = internal global ptr @saa7164_dvb_stop_feed._entry.109, section ".printk_index", align 4
@saa7164_dvb_stop_streaming._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.111, ptr @.str.2, i32 198, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"saa7164_dvb_stop_streaming\00", [37 x i8] zeroinitializer }, align 32
@saa7164_dvb_stop_streaming._entry_ptr = internal global ptr @saa7164_dvb_stop_streaming._entry, section ".printk_index", align 4
@saa7164_dvb_pause_port._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.112, ptr @.str.113, ptr @.str.2, i32 177, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013%s() pause transition failed, ret = 0x%x\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"saa7164_dvb_pause_port\00", [41 x i8] zeroinitializer }, align 32
@saa7164_dvb_pause_port._entry_ptr = internal global ptr @saa7164_dvb_pause_port._entry, section ".printk_index", align 4
@saa7164_dvb_pause_port._entry.114 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.97, ptr @.str.113, ptr @.str.2, i32 180, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@saa7164_dvb_pause_port._entry_ptr.115 = internal global ptr @saa7164_dvb_pause_port._entry.114, section ".printk_index", align 4
@saa7164_dvb_acquire_port._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.116, ptr @.str.117, ptr @.str.2, i32 159, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013%s() acquire transition failed, ret = 0x%x\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"saa7164_dvb_acquire_port\00", [39 x i8] zeroinitializer }, align 32
@saa7164_dvb_acquire_port._entry_ptr = internal global ptr @saa7164_dvb_acquire_port._entry, section ".printk_index", align 4
@saa7164_dvb_acquire_port._entry.118 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.119, ptr @.str.117, ptr @.str.2, i32 162, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\017%s: %s() Acquired\0A\00", [43 x i8] zeroinitializer }, align 32
@saa7164_dvb_acquire_port._entry_ptr.120 = internal global ptr @saa7164_dvb_acquire_port._entry.118, section ".printk_index", align 4
@saa7164_dvb_stop_port._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.121, ptr @.str.122, ptr @.str.2, i32 141, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013%s() stop transition failed, ret = 0x%x\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"saa7164_dvb_stop_port\00", [42 x i8] zeroinitializer }, align 32
@saa7164_dvb_stop_port._entry_ptr = internal global ptr @saa7164_dvb_stop_port._entry, section ".printk_index", align 4
@saa7164_dvb_stop_port._entry.123 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.124, ptr @.str.122, ptr @.str.2, i32 144, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\017%s: %s()    Stopped\0A\00", [41 x i8] zeroinitializer }, align 32
@saa7164_dvb_stop_port._entry_ptr.125 = internal global ptr @saa7164_dvb_stop_port._entry.123, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [13 x i64] [i64 11, i64 32, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13]
@__sancov_gen_cov_switch_values.126 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.127 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 38]
@__sancov_gen_cov_switch_values.128 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 38]
@__sancov_gen_cov_switch_values.129 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 38]
@__sancov_gen_cov_switch_values.130 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 38]
@__sancov_gen_cov_switch_values.131 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 38]
@__sancov_gen_cov_switch_values.132 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 38]
@__sancov_gen_cov_switch_values.133 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 38]
@__sancov_gen_cov_switch_values.134 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 38]
@__sancov_gen_cov_switch_values.135 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 38]
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 479, i32 2 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 536, i32 2 }
@___asan_gen_.160 = private unnamed_addr constant [27 x i8] c"hauppauge_hvr2200_1_config\00", align 1
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 22, i32 31 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 548, i32 25 }
@___asan_gen_.175 = private unnamed_addr constant [31 x i8] c"hauppauge_hvr22x0_tuner_config\00", align 1
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 50, i32 31 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 554, i32 5 }
@___asan_gen_.184 = private unnamed_addr constant [27 x i8] c"hauppauge_hvr2200_2_config\00", align 1
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 32, i32 31 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 561, i32 25 }
@___asan_gen_.190 = private unnamed_addr constant [32 x i8] c"hauppauge_hvr22x0s_tuner_config\00", align 1
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 56, i32 31 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 567, i32 5 }
@___asan_gen_.202 = private unnamed_addr constant [25 x i8] c"hauppauge_s5h1411_config\00", align 1
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 64, i32 30 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 580, i32 24 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 588, i32 5 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 593, i32 5 }
@___asan_gen_.223 = private unnamed_addr constant [26 x i8] c"hauppauge_hvr2255a_config\00", align 1
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 74, i32 32 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 605, i32 25 }
@___asan_gen_.232 = private unnamed_addr constant [26 x i8] c"hauppauge_hvr2255b_config\00", align 1
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 86, i32 32 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 608, i32 25 }
@___asan_gen_.238 = private unnamed_addr constant [31 x i8] c"hauppauge_hvr2255_tuner_config\00", align 1
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 98, i32 29 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 634, i32 23 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 653, i32 23 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 717, i32 3 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 722, i32 3 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 738, i32 2 }
@___asan_gen_.265 = private unnamed_addr constant [11 x i8] c"adapter_nr\00", align 1
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 19, i32 1 }
@___asan_gen_.268 = private unnamed_addr constant [27 x i8] c"hauppauge_tda18271_std_map\00", align 1
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 43, i32 32 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 338, i32 2 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 345, i32 3 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 373, i32 4 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 387, i32 3 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 396, i32 3 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 412, i32 3 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 422, i32 3 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 430, i32 3 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 438, i32 3 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 445, i32 3 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 288, i32 2 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 300, i32 3 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 220, i32 2 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 227, i32 3 }
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 233, i32 4 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 239, i32 3 }
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 244, i32 3 }
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 250, i32 4 }
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 257, i32 3 }
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 262, i32 3 }
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 268, i32 4 }
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 274, i32 3 }
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 315, i32 2 }
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 324, i32 3 }
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 198, i32 2 }
@___asan_gen_.432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 176, i32 3 }
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 180, i32 3 }
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 158, i32 3 }
@___asan_gen_.450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 162, i32 3 }
@___asan_gen_.459 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 140, i32 3 }
@___asan_gen_.460 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.463 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.464 = private constant [43 x i8] c"../drivers/media/pci/saa7164/saa7164-dvb.c\00", align 1
@___asan_gen_.465 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 144, i32 3 }
@llvm.compiler.used = appending global [158 x ptr] [ptr @__UNIQUE_ID_adapter_nr386, ptr @__UNIQUE_ID_adapter_nrtype385, ptr @__param_adapter_nr, ptr @dvb_register._entry, ptr @dvb_register._entry.48, ptr @dvb_register._entry.52, ptr @dvb_register._entry.55, ptr @dvb_register._entry.58, ptr @dvb_register._entry.61, ptr @dvb_register._entry.64, ptr @dvb_register._entry.67, ptr @dvb_register._entry.70, ptr @dvb_register._entry.73, ptr @dvb_register._entry_ptr, ptr @dvb_register._entry_ptr.50, ptr @dvb_register._entry_ptr.54, ptr @dvb_register._entry_ptr.57, ptr @dvb_register._entry_ptr.60, ptr @dvb_register._entry_ptr.63, ptr @dvb_register._entry_ptr.66, ptr @dvb_register._entry_ptr.69, ptr @dvb_register._entry_ptr.72, ptr @dvb_register._entry_ptr.75, ptr @saa7164_dvb_acquire_port._entry, ptr @saa7164_dvb_acquire_port._entry.118, ptr @saa7164_dvb_acquire_port._entry_ptr, ptr @saa7164_dvb_acquire_port._entry_ptr.120, ptr @saa7164_dvb_pause_port._entry, ptr @saa7164_dvb_pause_port._entry.114, ptr @saa7164_dvb_pause_port._entry_ptr, ptr @saa7164_dvb_pause_port._entry_ptr.115, ptr @saa7164_dvb_register._entry, ptr @saa7164_dvb_register._entry.11, ptr @saa7164_dvb_register._entry.14, ptr @saa7164_dvb_register._entry.16, ptr @saa7164_dvb_register._entry.20, ptr @saa7164_dvb_register._entry.23, ptr @saa7164_dvb_register._entry.25, ptr @saa7164_dvb_register._entry.29, ptr @saa7164_dvb_register._entry.32, ptr @saa7164_dvb_register._entry.36, ptr @saa7164_dvb_register._entry.39, ptr @saa7164_dvb_register._entry.42, ptr @saa7164_dvb_register._entry.6, ptr @saa7164_dvb_register._entry_ptr, ptr @saa7164_dvb_register._entry_ptr.13, ptr @saa7164_dvb_register._entry_ptr.15, ptr @saa7164_dvb_register._entry_ptr.17, ptr @saa7164_dvb_register._entry_ptr.22, ptr @saa7164_dvb_register._entry_ptr.24, ptr @saa7164_dvb_register._entry_ptr.26, ptr @saa7164_dvb_register._entry_ptr.31, ptr @saa7164_dvb_register._entry_ptr.33, ptr @saa7164_dvb_register._entry_ptr.38, ptr @saa7164_dvb_register._entry_ptr.41, ptr @saa7164_dvb_register._entry_ptr.44, ptr @saa7164_dvb_register._entry_ptr.8, ptr @saa7164_dvb_start_feed._entry, ptr @saa7164_dvb_start_feed._entry.77, ptr @saa7164_dvb_start_feed._entry_ptr, ptr @saa7164_dvb_start_feed._entry_ptr.79, ptr @saa7164_dvb_start_port._entry, ptr @saa7164_dvb_start_port._entry.102, ptr @saa7164_dvb_start_port._entry.105, ptr @saa7164_dvb_start_port._entry.81, ptr @saa7164_dvb_start_port._entry.84, ptr @saa7164_dvb_start_port._entry.87, ptr @saa7164_dvb_start_port._entry.90, ptr @saa7164_dvb_start_port._entry.93, ptr @saa7164_dvb_start_port._entry.96, ptr @saa7164_dvb_start_port._entry.99, ptr @saa7164_dvb_start_port._entry_ptr, ptr @saa7164_dvb_start_port._entry_ptr.101, ptr @saa7164_dvb_start_port._entry_ptr.104, ptr @saa7164_dvb_start_port._entry_ptr.107, ptr @saa7164_dvb_start_port._entry_ptr.83, ptr @saa7164_dvb_start_port._entry_ptr.86, ptr @saa7164_dvb_start_port._entry_ptr.89, ptr @saa7164_dvb_start_port._entry_ptr.92, ptr @saa7164_dvb_start_port._entry_ptr.95, ptr @saa7164_dvb_start_port._entry_ptr.98, ptr @saa7164_dvb_stop_feed._entry, ptr @saa7164_dvb_stop_feed._entry.109, ptr @saa7164_dvb_stop_feed._entry_ptr, ptr @saa7164_dvb_stop_feed._entry_ptr.110, ptr @saa7164_dvb_stop_port._entry, ptr @saa7164_dvb_stop_port._entry.123, ptr @saa7164_dvb_stop_port._entry_ptr, ptr @saa7164_dvb_stop_port._entry_ptr.125, ptr @saa7164_dvb_stop_streaming._entry, ptr @saa7164_dvb_stop_streaming._entry_ptr, ptr @saa7164_dvb_unregister._entry, ptr @saa7164_dvb_unregister._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @hauppauge_hvr2200_1_config, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @hauppauge_hvr22x0_tuner_config, ptr @.str.12, ptr @hauppauge_hvr2200_2_config, ptr @hauppauge_hvr22x0s_tuner_config, ptr @.str.18, ptr @.str.19, ptr @hauppauge_s5h1411_config, ptr @.str.21, ptr @.str.27, ptr @.str.28, ptr @hauppauge_hvr2255a_config, ptr @.str.30, ptr @hauppauge_hvr2255b_config, ptr @hauppauge_hvr2255_tuner_config, ptr @.str.34, ptr @.str.35, ptr @.str.37, ptr @.str.40, ptr @.str.43, ptr @adapter_nr, ptr @hauppauge_tda18271_std_map, ptr @.str.46, ptr @.str.47, ptr @.str.49, ptr @.str.51, ptr @.str.53, ptr @.str.56, ptr @.str.59, ptr @.str.62, ptr @.str.65, ptr @.str.68, ptr @.str.71, ptr @.str.74, ptr @.str.76, ptr @.str.78, ptr @.str.80, ptr @.str.82, ptr @.str.85, ptr @.str.88, ptr @.str.91, ptr @.str.94, ptr @.str.97, ptr @.str.100, ptr @.str.103, ptr @.str.106, ptr @.str.108, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.116, ptr @.str.117, ptr @.str.119, ptr @.str.121, ptr @.str.122, ptr @.str.124], section "llvm.metadata"
@0 = internal global [110 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_dvb_unregister._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_dvb_register._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hauppauge_hvr2200_1_config to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_dvb_register._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hauppauge_hvr22x0_tuner_config to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_dvb_register._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hauppauge_hvr2200_2_config to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_dvb_register._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hauppauge_hvr22x0s_tuner_config to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_dvb_register._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hauppauge_s5h1411_config to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_dvb_register._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_dvb_register._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_dvb_register._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hauppauge_hvr2255a_config to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_dvb_register._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hauppauge_hvr2255b_config to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_dvb_register._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hauppauge_hvr2255_tuner_config to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_dvb_register._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_dvb_register._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_dvb_register._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adapter_nr to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hauppauge_tda18271_std_map to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_register._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_register._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_register._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_register._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_register._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_register._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_register._entry.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_register._entry.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_register._entry.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_register._entry.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_dvb_start_feed._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_dvb_start_feed._entry.77 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_dvb_start_port._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_dvb_start_port._entry.81 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_dvb_start_port._entry.84 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_dvb_start_port._entry.87 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_dvb_start_port._entry.90 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_dvb_start_port._entry.93 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_dvb_start_port._entry.96 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_dvb_start_port._entry.99 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_dvb_start_port._entry.102 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_dvb_start_port._entry.105 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_dvb_stop_feed._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_dvb_stop_feed._entry.109 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_dvb_stop_streaming._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_dvb_pause_port._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_dvb_pause_port._entry.114 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_dvb_acquire_port._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_dvb_acquire_port._entry.118 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_dvb_stop_port._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_dvb_stop_port._entry.123 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @saa7164_dvb_unregister(ptr noundef %port) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %0 = load i32, ptr @saa_debug, align 4
  %and = and i32 %0, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.body6_crit_edge, label %do.end

entry.do.body6_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body6

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %1 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %port, align 8
  %name = getelementptr inbounds %struct.saa7164_dev, ptr %2, i32 0, i32 16
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %name, ptr noundef nonnull @.str.1) #7
  br label %do.body6

do.body6:                                         ; preds = %do.end, %entry.do.body6_crit_edge
  %type = getelementptr inbounds %struct.saa7164_port, ptr %port, i32 0, i32 1
  %3 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp.not = icmp eq i32 %4, 1
  br i1 %cmp.not, label %do.end18, label %do.body10, !prof !226

do.body10:                                        ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/media/pci/saa7164/saa7164-dvb.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 481, 0\0A.popsection", ""() #4, !srcloc !227
  unreachable

do.end18:                                         ; preds = %do.body6
  %dmaqueue_lock = getelementptr inbounds %struct.saa7164_port, ptr %port, i32 0, i32 13
  tail call void @mutex_lock_nested(ptr noundef %dmaqueue_lock, i32 noundef 0) #4
  %dmaqueue = getelementptr inbounds %struct.saa7164_port, ptr %port, i32 0, i32 14
  %5 = ptrtoint ptr %dmaqueue to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dmaqueue, align 8
  %cmp.i.not93 = icmp eq ptr %6, %dmaqueue
  br i1 %cmp.i.not93, label %do.end18.for.end_crit_edge, label %do.end18.for.body_crit_edge

do.end18.for.body_crit_edge:                      ; preds = %do.end18
  br label %for.body

do.end18.for.end_crit_edge:                       ; preds = %do.end18
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body:                                         ; preds = %list_del.exit.for.body_crit_edge, %do.end18.for.body_crit_edge
  %c.094 = phi ptr [ %n.096, %list_del.exit.for.body_crit_edge ], [ %6, %do.end18.for.body_crit_edge ]
  %7 = ptrtoint ptr %c.094 to i32
  call void @__asan_load4_noabort(i32 %7)
  %n.096 = load ptr, ptr %c.094, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %c.094) #4
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del.exit_crit_edge

for.body.list_del.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %c.094, i32 0, i32 1
  %8 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %prev.i.i, align 4
  %10 = ptrtoint ptr %c.094 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %c.094, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %9, ptr %prev1.i.i.i, align 4
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %11, ptr %9, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body.list_del.exit_crit_edge
  %14 = ptrtoint ptr %c.094 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr inttoptr (i32 256 to ptr), ptr %c.094, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %c.094, i32 0, i32 1
  %15 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %call27 = tail call i32 @saa7164_buffer_dealloc(ptr noundef %c.094) #4
  %cmp.i.not = icmp eq ptr %n.096, %dmaqueue
  br i1 %cmp.i.not, label %list_del.exit.for.end_crit_edge, label %list_del.exit.for.body_crit_edge

list_del.exit.for.body_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

list_del.exit.for.end_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.end:                                          ; preds = %list_del.exit.for.end_crit_edge, %do.end18.for.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %dmaqueue_lock) #4
  %frontend = getelementptr inbounds %struct.saa7164_port, ptr %port, i32 0, i32 31, i32 2
  %16 = ptrtoint ptr %frontend to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %frontend, align 4
  %cmp30 = icmp eq ptr %17, null
  br i1 %cmp30, label %for.end.cleanup_crit_edge, label %if.end32

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end32:                                         ; preds = %for.end
  %i2c_client_tuner = getelementptr inbounds %struct.saa7164_port, ptr %port, i32 0, i32 33
  %18 = ptrtoint ptr %i2c_client_tuner to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %i2c_client_tuner, align 4
  %tobool33.not = icmp eq ptr %19, null
  br i1 %tobool33.not, label %if.end32.if.end36_crit_edge, label %if.then34

if.end32.if.end36_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end36

if.then34:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #6
  %driver = getelementptr inbounds %struct.i2c_client, ptr %19, i32 0, i32 4, i32 6
  %20 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %driver, align 4
  %owner = getelementptr inbounds %struct.device_driver, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %owner, align 4
  tail call void @module_put(ptr noundef %23) #4
  tail call void @i2c_unregister_device(ptr noundef nonnull %19) #4
  br label %if.end36

if.end36:                                         ; preds = %if.then34, %if.end32.if.end36_crit_edge
  %i2c_client_demod = getelementptr inbounds %struct.saa7164_port, ptr %port, i32 0, i32 32
  %24 = ptrtoint ptr %i2c_client_demod to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %i2c_client_demod, align 8
  %tobool37.not = icmp eq ptr %25, null
  br i1 %tobool37.not, label %if.end36.if.end42_crit_edge, label %if.then38

if.end36.if.end42_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end42

if.then38:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #6
  %driver40 = getelementptr inbounds %struct.i2c_client, ptr %25, i32 0, i32 4, i32 6
  %26 = ptrtoint ptr %driver40 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %driver40, align 4
  %owner41 = getelementptr inbounds %struct.device_driver, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %owner41 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %owner41, align 4
  tail call void @module_put(ptr noundef %29) #4
  tail call void @i2c_unregister_device(ptr noundef nonnull %25) #4
  br label %if.end42

if.end42:                                         ; preds = %if.then38, %if.end36.if.end42_crit_edge
  %net = getelementptr inbounds %struct.saa7164_port, ptr %port, i32 0, i32 31, i32 7
  tail call void @dvb_net_release(ptr noundef %net) #4
  %demux = getelementptr inbounds %struct.saa7164_port, ptr %port, i32 0, i32 31, i32 3
  %remove_frontend = getelementptr inbounds %struct.saa7164_port, ptr %port, i32 0, i32 31, i32 3, i32 0, i32 11
  %30 = ptrtoint ptr %remove_frontend to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %remove_frontend, align 4
  %fe_mem = getelementptr inbounds %struct.saa7164_port, ptr %port, i32 0, i32 31, i32 6
  %call45 = tail call i32 %31(ptr noundef %demux, ptr noundef %fe_mem) #4
  %32 = ptrtoint ptr %remove_frontend to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %remove_frontend, align 4
  %fe_hw = getelementptr inbounds %struct.saa7164_port, ptr %port, i32 0, i32 31, i32 5
  %call51 = tail call i32 %33(ptr noundef %demux, ptr noundef %fe_hw) #4
  %dmxdev = getelementptr inbounds %struct.saa7164_port, ptr %port, i32 0, i32 31, i32 4
  tail call void @dvb_dmxdev_release(ptr noundef %dmxdev) #4
  tail call void @dvb_dmx_release(ptr noundef %demux) #4
  %34 = ptrtoint ptr %frontend to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %frontend, align 4
  %call54 = tail call i32 @dvb_unregister_frontend(ptr noundef %35) #4
  %36 = ptrtoint ptr %frontend to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %frontend, align 4
  tail call void @dvb_frontend_detach(ptr noundef %37) #4
  %adapter = getelementptr inbounds %struct.saa7164_port, ptr %port, i32 0, i32 31, i32 1
  %call56 = tail call i32 @dvb_unregister_adapter(ptr noundef %adapter) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end42, %for.end.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @saa7164_buffer_dealloc(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_unregister_device(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dvb_net_release(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dvb_dmxdev_release(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dvb_dmx_release(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_unregister_frontend(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dvb_frontend_detach(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_unregister_adapter(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @saa7164_dvb_register(ptr noundef %port) local_unnamed_addr #0 align 64 {
entry:
  %si2168_config = alloca %struct.si2168_config, align 4
  %si2157_config = alloca %struct.si2157_config, align 4
  %adapter = alloca ptr, align 4
  %info = alloca %struct.i2c_board_info, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port, align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %si2168_config) #4
  %2 = call ptr @memset(ptr %si2168_config, i32 255, i32 12)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %si2157_config) #4
  %3 = call ptr @memset(ptr %si2157_config, i32 255, i32 12)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %adapter) #4
  %4 = ptrtoint ptr %adapter to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %adapter, align 4, !annotation !228
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %info) #4
  %5 = call ptr @memset(ptr %info, i32 255, i32 56)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %6 = load i32, ptr @saa_debug, align 4
  %and = and i32 %6, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end5_crit_edge, label %do.end

entry.do.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %name = getelementptr inbounds %struct.saa7164_dev, ptr %1, i32 0, i32 16
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %name, ptr noundef nonnull @.str.3) #7
  br label %do.end5

do.end5:                                          ; preds = %do.end, %entry.do.end5_crit_edge
  %board = getelementptr inbounds %struct.saa7164_dev, ptr %1, i32 0, i32 15
  %7 = ptrtoint ptr %board to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %board, align 8
  %9 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values)
  switch i32 %8, label %do.end413 [
    i32 4, label %do.end5.sw.bb_crit_edge
    i32 5, label %do.end5.sw.bb_crit_edge612
    i32 6, label %do.end5.sw.bb_crit_edge613
    i32 9, label %do.end5.sw.bb_crit_edge614
    i32 10, label %do.end5.sw.bb_crit_edge615
    i32 3, label %do.end5.sw.bb118_crit_edge
    i32 7, label %do.end5.sw.bb118_crit_edge616
    i32 8, label %do.end5.sw.bb118_crit_edge617
    i32 11, label %do.end5.sw.bb214_crit_edge
    i32 12, label %do.end5.sw.bb214_crit_edge618
    i32 13, label %sw.bb298
  ]

do.end5.sw.bb214_crit_edge618:                    ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb214

do.end5.sw.bb214_crit_edge:                       ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb214

do.end5.sw.bb118_crit_edge617:                    ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb118

do.end5.sw.bb118_crit_edge616:                    ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb118

do.end5.sw.bb118_crit_edge:                       ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb118

do.end5.sw.bb_crit_edge615:                       ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb

do.end5.sw.bb_crit_edge614:                       ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb

do.end5.sw.bb_crit_edge613:                       ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb

do.end5.sw.bb_crit_edge612:                       ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb

do.end5.sw.bb_crit_edge:                          ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb

sw.bb:                                            ; preds = %do.end5.sw.bb_crit_edge, %do.end5.sw.bb_crit_edge612, %do.end5.sw.bb_crit_edge613, %do.end5.sw.bb_crit_edge614, %do.end5.sw.bb_crit_edge615
  %nr = getelementptr inbounds %struct.saa7164_port, ptr %port, i32 0, i32 2
  %10 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %nr, align 8
  %add = add i32 %11, 1
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.126)
  switch i32 %11, label %sw.bb.sw.epilog418_crit_edge [
    i32 0, label %sw.bb8
    i32 1, label %sw.bb58
  ]

sw.bb.sw.epilog418_crit_edge:                     ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog418

sw.bb8:                                           ; preds = %sw.bb
  %call9 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.4) #4
  %tobool10.not = icmp eq ptr %call9, null
  br i1 %tobool10.not, label %cond.end, label %sw.bb8.if.then14_crit_edge

sw.bb8.if.then14_crit_edge:                       ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then14

cond.end:                                         ; preds = %sw.bb8
  %call11 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.5) #4
  %call12 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.4) #4
  %tobool13.not = icmp eq ptr %call12, null
  br i1 %tobool13.not, label %do.end20, label %cond.end.if.then14_crit_edge

cond.end.if.then14_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then14

if.then14:                                        ; preds = %cond.end.if.then14_crit_edge, %sw.bb8.if.then14_crit_edge
  %cond575 = phi ptr [ %call12, %cond.end.if.then14_crit_edge ], [ %call9, %sw.bb8.if.then14_crit_edge ]
  %i2c_adap = getelementptr %struct.saa7164_dev, ptr %1, i32 0, i32 28, i32 %add, i32 2
  %call15 = tail call ptr %cond575(ptr noundef nonnull @hauppauge_hvr2200_1_config, ptr noundef %i2c_adap) #4
  %cmp = icmp eq ptr %call15, null
  br i1 %cmp, label %if.then16, label %if.then29

if.then16:                                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @__symbol_put(ptr noundef nonnull @.str.4) #4
  br label %if.end23.thread

do.end20:                                         ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #6
  %call22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #7
  br label %if.end23.thread

if.end23.thread:                                  ; preds = %do.end20, %if.then16
  %frontend577 = getelementptr inbounds %struct.saa7164_port, ptr %port, i32 0, i32 31, i32 2
  %13 = ptrtoint ptr %frontend577 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %frontend577, align 4
  br label %sw.epilog418

if.then29:                                        ; preds = %if.then14
  %frontend = getelementptr inbounds %struct.saa7164_port, ptr %port, i32 0, i32 31, i32 2
  %14 = ptrtoint ptr %frontend to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call15, ptr %frontend, align 4
  %call32 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.9) #4
  %tobool33.not = icmp eq ptr %call32, null
  br i1 %tobool33.not, label %cond.end38, label %if.then29.if.then41_crit_edge

if.then29.if.then41_crit_edge:                    ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then41

cond.end38:                                       ; preds = %if.then29
  %call36 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.10) #4
  %call37 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.9) #4
  %tobool40.not = icmp eq ptr %call37, null
  br i1 %tobool40.not, label %do.end52, label %cond.end38.if.then41_crit_edge

cond.end38.if.then41_crit_edge:                   ; preds = %cond.end38
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then41

if.then41:                                        ; preds = %cond.end38.if.then41_crit_edge, %if.then29.if.then41_crit_edge
  %cond39581 = phi ptr [ %call37, %cond.end38.if.then41_crit_edge ], [ %call32, %if.then29.if.then41_crit_edge ]
  %15 = ptrtoint ptr %frontend to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %frontend, align 4
  %call45 = tail call ptr %cond39581(ptr noundef %16, i8 noundef zeroext 96, ptr noundef %i2c_adap, ptr noundef nonnull @hauppauge_hvr22x0_tuner_config) #4
  %cmp46 = icmp eq ptr %call45, null
  br i1 %cmp46, label %if.then47, label %if.then41.sw.epilog418_crit_edge

if.then41.sw.epilog418_crit_edge:                 ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog418

if.then47:                                        ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @__symbol_put(ptr noundef nonnull @.str.9) #4
  br label %sw.epilog418

do.end52:                                         ; preds = %cond.end38
  call void @__sanitizer_cov_trace_pc() #6
  %call54 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12) #7
  br label %sw.epilog418

sw.bb58:                                          ; preds = %sw.bb
  %call61 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.4) #4
  %tobool62.not = icmp eq ptr %call61, null
  br i1 %tobool62.not, label %cond.end67, label %sw.bb58.if.then70_crit_edge

sw.bb58.if.then70_crit_edge:                      ; preds = %sw.bb58
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then70

cond.end67:                                       ; preds = %sw.bb58
  %call65 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.5) #4
  %call66 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.4) #4
  %tobool69.not = icmp eq ptr %call66, null
  br i1 %tobool69.not, label %do.end79, label %cond.end67.if.then70_crit_edge

cond.end67.if.then70_crit_edge:                   ; preds = %cond.end67
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then70

if.then70:                                        ; preds = %cond.end67.if.then70_crit_edge, %sw.bb58.if.then70_crit_edge
  %cond68584 = phi ptr [ %call66, %cond.end67.if.then70_crit_edge ], [ %call61, %sw.bb58.if.then70_crit_edge ]
  %i2c_adap71 = getelementptr %struct.saa7164_dev, ptr %1, i32 0, i32 28, i32 %add, i32 2
  %call72 = tail call ptr %cond68584(ptr noundef nonnull @hauppauge_hvr2200_2_config, ptr noundef %i2c_adap71) #4
  %cmp73 = icmp eq ptr %call72, null
  br i1 %cmp73, label %if.then74, label %if.then89

if.then74:                                        ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @__symbol_put(ptr noundef nonnull @.str.4) #4
  br label %if.end82.thread

do.end79:                                         ; preds = %cond.end67
  call void @__sanitizer_cov_trace_pc() #6
  %call81 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #7
  br label %if.end82.thread

if.end82.thread:                                  ; preds = %do.end79, %if.then74
  %frontend85586 = getelementptr inbounds %struct.saa7164_port, ptr %port, i32 0, i32 31, i32 2
  %17 = ptrtoint ptr %frontend85586 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %frontend85586, align 4
  br label %sw.epilog418

if.then89:                                        ; preds = %if.then70
  %frontend85 = getelementptr inbounds %struct.saa7164_port, ptr %port, i32 0, i32 31, i32 2
  %18 = ptrtoint ptr %frontend85 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call72, ptr %frontend85, align 4
  %call92 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.9) #4
  %tobool93.not = icmp eq ptr %call92, null
  br i1 %tobool93.not, label %cond.end98, label %if.then89.if.then101_crit_edge

if.then89.if.then101_crit_edge:                   ; preds = %if.then89
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then101

cond.end98:                                       ; preds = %if.then89
  %call96 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.10) #4
  %call97 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.9) #4
  %tobool100.not = icmp eq ptr %call97, null
  br i1 %tobool100.not, label %do.end112, label %cond.end98.if.then101_crit_edge

cond.end98.if.then101_crit_edge:                  ; preds = %cond.end98
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then101

if.then101:                                       ; preds = %cond.end98.if.then101_crit_edge, %if.then89.if.then101_crit_edge
  %cond99590 = phi ptr [ %call97, %cond.end98.if.then101_crit_edge ], [ %call92, %if.then89.if.then101_crit_edge ]
  %19 = ptrtoint ptr %frontend85 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %frontend85, align 4
  %call105 = tail call ptr %cond99590(ptr noundef %20, i8 noundef zeroext 96, ptr noundef %i2c_adap71, ptr noundef nonnull @hauppauge_hvr22x0s_tuner_config) #4
  %cmp106 = icmp eq ptr %call105, null
  br i1 %cmp106, label %if.then107, label %if.then101.sw.epilog418_crit_edge

if.then101.sw.epilog418_crit_edge:                ; preds = %if.then101
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog418

if.then107:                                       ; preds = %if.then101
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @__symbol_put(ptr noundef nonnull @.str.9) #4
  br label %sw.epilog418

do.end112:                                        ; preds = %cond.end98
  call void @__sanitizer_cov_trace_pc() #6
  %call114 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12) #7
  br label %sw.epilog418

sw.bb118:                                         ; preds = %do.end5.sw.bb118_crit_edge, %do.end5.sw.bb118_crit_edge616, %do.end5.sw.bb118_crit_edge617
  %nr120 = getelementptr inbounds %struct.saa7164_port, ptr %port, i32 0, i32 2
  %21 = ptrtoint ptr %nr120 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %nr120, align 8
  %add121 = add i32 %22, 1
  %call125 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.18) #4
  %tobool126.not = icmp eq ptr %call125, null
  br i1 %tobool126.not, label %cond.end131, label %sw.bb118.if.then134_crit_edge

sw.bb118.if.then134_crit_edge:                    ; preds = %sw.bb118
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then134

cond.end131:                                      ; preds = %sw.bb118
  %call129 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.19) #4
  %call130 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.18) #4
  %tobool133.not = icmp eq ptr %call130, null
  br i1 %tobool133.not, label %do.end143, label %cond.end131.if.then134_crit_edge

cond.end131.if.then134_crit_edge:                 ; preds = %cond.end131
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then134

if.then134:                                       ; preds = %cond.end131.if.then134_crit_edge, %sw.bb118.if.then134_crit_edge
  %cond132593 = phi ptr [ %call130, %cond.end131.if.then134_crit_edge ], [ %call125, %sw.bb118.if.then134_crit_edge ]
  %i2c_adap135 = getelementptr %struct.saa7164_dev, ptr %1, i32 0, i32 28, i32 %add121, i32 2
  %call136 = tail call ptr %cond132593(ptr noundef nonnull @hauppauge_s5h1411_config, ptr noundef %i2c_adap135) #4
  %cmp137 = icmp eq ptr %call136, null
  br i1 %cmp137, label %if.then138, label %if.then153

if.then138:                                       ; preds = %if.then134
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @__symbol_put(ptr noundef nonnull @.str.18) #4
  br label %if.end146.thread

do.end143:                                        ; preds = %cond.end131
  call void @__sanitizer_cov_trace_pc() #6
  %call145 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21) #7
  br label %if.end146.thread

if.end146.thread:                                 ; preds = %do.end143, %if.then138
  %frontend149595 = getelementptr inbounds %struct.saa7164_port, ptr %port, i32 0, i32 31, i32 2
  %23 = ptrtoint ptr %frontend149595 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %frontend149595, align 4
  br label %sw.epilog418

if.then153:                                       ; preds = %if.then134
  %frontend149 = getelementptr inbounds %struct.saa7164_port, ptr %port, i32 0, i32 31, i32 2
  %24 = ptrtoint ptr %frontend149 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call136, ptr %frontend149, align 4
  %25 = ptrtoint ptr %nr120 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %nr120, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp155 = icmp eq i32 %26, 0
  %call159 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.9) #4
  %tobool160.not = icmp eq ptr %call159, null
  br i1 %cmp155, label %if.then156, label %if.else184

if.then156:                                       ; preds = %if.then153
  br i1 %tobool160.not, label %cond.end165, label %if.then156.if.then168_crit_edge

if.then156.if.then168_crit_edge:                  ; preds = %if.then156
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then168

cond.end165:                                      ; preds = %if.then156
  %call163 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.10) #4
  %call164 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.9) #4
  %tobool167.not = icmp eq ptr %call164, null
  br i1 %tobool167.not, label %do.end179, label %cond.end165.if.then168_crit_edge

cond.end165.if.then168_crit_edge:                 ; preds = %cond.end165
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then168

if.then168:                                       ; preds = %cond.end165.if.then168_crit_edge, %if.then156.if.then168_crit_edge
  %cond166599 = phi ptr [ %call164, %cond.end165.if.then168_crit_edge ], [ %call159, %if.then156.if.then168_crit_edge ]
  %27 = ptrtoint ptr %frontend149 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %frontend149, align 4
  %call172 = tail call ptr %cond166599(ptr noundef %28, i8 noundef zeroext 96, ptr noundef %i2c_adap135, ptr noundef nonnull @hauppauge_hvr22x0_tuner_config) #4
  %cmp173 = icmp eq ptr %call172, null
  br i1 %cmp173, label %if.then174, label %if.then168.sw.epilog418_crit_edge

if.then168.sw.epilog418_crit_edge:                ; preds = %if.then168
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog418

if.then174:                                       ; preds = %if.then168
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @__symbol_put(ptr noundef nonnull @.str.9) #4
  br label %sw.epilog418

do.end179:                                        ; preds = %cond.end165
  call void @__sanitizer_cov_trace_pc() #6
  %call181 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12) #7
  br label %sw.epilog418

if.else184:                                       ; preds = %if.then153
  br i1 %tobool160.not, label %cond.end193, label %if.else184.if.then196_crit_edge

if.else184.if.then196_crit_edge:                  ; preds = %if.else184
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then196

cond.end193:                                      ; preds = %if.else184
  %call191 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.10) #4
  %call192 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.9) #4
  %tobool195.not = icmp eq ptr %call192, null
  br i1 %tobool195.not, label %do.end207, label %cond.end193.if.then196_crit_edge

cond.end193.if.then196_crit_edge:                 ; preds = %cond.end193
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then196

if.then196:                                       ; preds = %cond.end193.if.then196_crit_edge, %if.else184.if.then196_crit_edge
  %cond194602 = phi ptr [ %call192, %cond.end193.if.then196_crit_edge ], [ %call159, %if.else184.if.then196_crit_edge ]
  %29 = ptrtoint ptr %frontend149 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %frontend149, align 4
  %call200 = tail call ptr %cond194602(ptr noundef %30, i8 noundef zeroext 96, ptr noundef %i2c_adap135, ptr noundef nonnull @hauppauge_hvr22x0s_tuner_config) #4
  %cmp201 = icmp eq ptr %call200, null
  br i1 %cmp201, label %if.then202, label %if.then196.sw.epilog418_crit_edge

if.then196.sw.epilog418_crit_edge:                ; preds = %if.then196
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog418

if.then202:                                       ; preds = %if.then196
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @__symbol_put(ptr noundef nonnull @.str.9) #4
  br label %sw.epilog418

do.end207:                                        ; preds = %cond.end193
  call void @__sanitizer_cov_trace_pc() #6
  %call209 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12) #7
  br label %sw.epilog418

sw.bb214:                                         ; preds = %do.end5.sw.bb214_crit_edge, %do.end5.sw.bb214_crit_edge618
  %nr217 = getelementptr inbounds %struct.saa7164_port, ptr %port, i32 0, i32 2
  %31 = ptrtoint ptr %nr217 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %nr217, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp218 = icmp eq i32 %32, 0
  %call222 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.27) #4
  %tobool223.not = icmp eq ptr %call222, null
  br i1 %cmp218, label %if.then219, label %if.else247

if.then219:                                       ; preds = %sw.bb214
  br i1 %tobool223.not, label %cond.end228, label %if.then219.if.then231_crit_edge

if.then219.if.then231_crit_edge:                  ; preds = %if.then219
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then231

cond.end228:                                      ; preds = %if.then219
  %call226 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.28) #4
  %call227 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.27) #4
  %tobool230.not = icmp eq ptr %call227, null
  br i1 %tobool230.not, label %do.end240, label %cond.end228.if.then231_crit_edge

cond.end228.if.then231_crit_edge:                 ; preds = %cond.end228
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then231

if.then231:                                       ; preds = %cond.end228.if.then231_crit_edge, %if.then219.if.then231_crit_edge
  %cond229605 = phi ptr [ %call227, %cond.end228.if.then231_crit_edge ], [ %call222, %if.then219.if.then231_crit_edge ]
  %i2c_adap232 = getelementptr %struct.saa7164_dev, ptr %1, i32 0, i32 28, i32 2, i32 2
  %call233 = tail call ptr %cond229605(ptr noundef nonnull @hauppauge_hvr2255a_config, ptr noundef %i2c_adap232) #4
  %cmp234 = icmp eq ptr %call233, null
  br i1 %cmp234, label %if.then235, label %if.then231.if.end275_crit_edge

if.then231.if.end275_crit_edge:                   ; preds = %if.then231
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end275

if.then235:                                       ; preds = %if.then231
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @__symbol_put(ptr noundef nonnull @.str.27) #4
  br label %if.end275

do.end240:                                        ; preds = %cond.end228
  call void @__sanitizer_cov_trace_pc() #6
  %call242 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30) #7
  br label %if.end275

if.else247:                                       ; preds = %sw.bb214
  br i1 %tobool223.not, label %cond.end256, label %if.else247.if.then259_crit_edge

if.else247.if.then259_crit_edge:                  ; preds = %if.else247
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then259

cond.end256:                                      ; preds = %if.else247
  %call254 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.28) #4
  %call255 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.27) #4
  %tobool258.not = icmp eq ptr %call255, null
  br i1 %tobool258.not, label %do.end268, label %cond.end256.if.then259_crit_edge

cond.end256.if.then259_crit_edge:                 ; preds = %cond.end256
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then259

if.then259:                                       ; preds = %cond.end256.if.then259_crit_edge, %if.else247.if.then259_crit_edge
  %cond257608 = phi ptr [ %call255, %cond.end256.if.then259_crit_edge ], [ %call222, %if.else247.if.then259_crit_edge ]
  %i2c_adap260 = getelementptr %struct.saa7164_dev, ptr %1, i32 0, i32 28, i32 2, i32 2
  %call261 = tail call ptr %cond257608(ptr noundef nonnull @hauppauge_hvr2255b_config, ptr noundef %i2c_adap260) #4
  %cmp262 = icmp eq ptr %call261, null
  br i1 %cmp262, label %if.then263, label %if.then259.if.end275_crit_edge

if.then259.if.end275_crit_edge:                   ; preds = %if.then259
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end275

if.then263:                                       ; preds = %if.then259
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @__symbol_put(ptr noundef nonnull @.str.27) #4
  br label %if.end275

do.end268:                                        ; preds = %cond.end256
  call void @__sanitizer_cov_trace_pc() #6
  %call270 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30) #7
  br label %if.end275

if.end275:                                        ; preds = %do.end268, %if.then263, %if.then259.if.end275_crit_edge, %do.end240, %if.then235, %if.then231.if.end275_crit_edge
  %__r248.0.sink = phi ptr [ null, %if.then235 ], [ %call233, %if.then231.if.end275_crit_edge ], [ null, %do.end240 ], [ null, %if.then263 ], [ %call261, %if.then259.if.end275_crit_edge ], [ null, %do.end268 ]
  %frontend274 = getelementptr inbounds %struct.saa7164_port, ptr %port, i32 0, i32 31, i32 2
  %33 = ptrtoint ptr %frontend274 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %__r248.0.sink, ptr %frontend274, align 4
  %cmp278.not = icmp eq ptr %__r248.0.sink, null
  br i1 %cmp278.not, label %if.end275.sw.epilog418_crit_edge, label %if.then279

if.end275.sw.epilog418_crit_edge:                 ; preds = %if.end275
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog418

if.then279:                                       ; preds = %if.end275
  %34 = ptrtoint ptr %nr217 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %nr217, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp281 = icmp eq i32 %35, 0
  br i1 %cmp281, label %if.then282, label %if.else289

if.then282:                                       ; preds = %if.then279
  call void @__sanitizer_cov_trace_pc() #6
  %i2c_adap285 = getelementptr inbounds %struct.saa7164_dev, ptr %1, i32 0, i32 28, i32 0, i32 2
  tail call fastcc void @si2157_attach(ptr noundef %port, ptr noundef %i2c_adap285, ptr noundef nonnull %__r248.0.sink)
  br label %sw.epilog418

if.else289:                                       ; preds = %if.then279
  call void @__sanitizer_cov_trace_pc() #6
  %i2c_adap292 = getelementptr %struct.saa7164_dev, ptr %1, i32 0, i32 28, i32 1, i32 2
  tail call fastcc void @si2157_attach(ptr noundef %port, ptr noundef %i2c_adap292, ptr noundef nonnull %__r248.0.sink)
  br label %sw.epilog418

sw.bb298:                                         ; preds = %do.end5
  %nr299 = getelementptr inbounds %struct.saa7164_port, ptr %port, i32 0, i32 2
  %36 = ptrtoint ptr %nr299 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %nr299, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %cmp300 = icmp eq i32 %37, 0
  %38 = getelementptr inbounds i8, ptr %si2168_config, i32 8
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %38, align 4
  %i2c_adapter = getelementptr inbounds %struct.si2168_config, ptr %si2168_config, i32 0, i32 1
  %40 = ptrtoint ptr %i2c_adapter to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %adapter, ptr %i2c_adapter, align 4
  %frontend303 = getelementptr inbounds %struct.saa7164_port, ptr %port, i32 0, i32 31, i32 2
  %41 = ptrtoint ptr %si2168_config to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %frontend303, ptr %si2168_config, align 4
  %ts_mode = getelementptr inbounds %struct.si2168_config, ptr %si2168_config, i32 0, i32 2
  %42 = ptrtoint ptr %ts_mode to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 3, ptr %ts_mode, align 4
  %43 = call ptr @memset(ptr %info, i32 0, i32 56)
  %call305 = call i32 @strscpy(ptr noundef nonnull %info, ptr noundef nonnull @.str.34, i32 noundef 20) #4
  %addr = getelementptr inbounds %struct.i2c_board_info, ptr %info, i32 0, i32 2
  br i1 %cmp300, label %if.then301, label %if.else350

if.then301:                                       ; preds = %sw.bb298
  %44 = ptrtoint ptr %addr to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 100, ptr %addr, align 2
  %platform_data = getelementptr inbounds %struct.i2c_board_info, ptr %info, i32 0, i32 4
  %45 = ptrtoint ptr %platform_data to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %si2168_config, ptr %platform_data, align 4
  %call308 = call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull %info) #4
  %i2c_adap311 = getelementptr %struct.saa7164_dev, ptr %1, i32 0, i32 28, i32 2, i32 2
  %call312 = call ptr @i2c_new_client_device(ptr noundef %i2c_adap311, ptr noundef nonnull %info) #4
  %tobool.not.i.i = icmp eq ptr %call312, null
  %cmp.i.i = icmp ugt ptr %call312, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i = or i1 %tobool.not.i.i, %cmp.i.i
  br i1 %spec.select.i.i, label %if.then301.do.end442_crit_edge, label %i2c_client_has_driver.exit

if.then301.do.end442_crit_edge:                   ; preds = %if.then301
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end442

i2c_client_has_driver.exit:                       ; preds = %if.then301
  %driver.i = getelementptr inbounds %struct.i2c_client, ptr %call312, i32 0, i32 4, i32 6
  %46 = ptrtoint ptr %driver.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %driver.i, align 4
  %tobool.i.not = icmp eq ptr %47, null
  br i1 %tobool.i.not, label %i2c_client_has_driver.exit.do.end442_crit_edge, label %if.end315

i2c_client_has_driver.exit.do.end442_crit_edge:   ; preds = %i2c_client_has_driver.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end442

if.end315:                                        ; preds = %i2c_client_has_driver.exit
  %48 = ptrtoint ptr %driver.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %driver.i, align 4
  %owner = getelementptr inbounds %struct.device_driver, ptr %49, i32 0, i32 2
  %50 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %owner, align 4
  %call317 = call zeroext i1 @try_module_get(ptr noundef %51) #4
  br i1 %call317, label %if.end319, label %if.end315.do.end442.sink.split_crit_edge

if.end315.do.end442.sink.split_crit_edge:         ; preds = %if.end315
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end442.sink.split

if.end319:                                        ; preds = %if.end315
  %i2c_client_demod = getelementptr inbounds %struct.saa7164_port, ptr %port, i32 0, i32 32
  %52 = ptrtoint ptr %i2c_client_demod to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %call312, ptr %i2c_client_demod, align 8
  %53 = getelementptr inbounds i8, ptr %si2157_config, i32 4
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_storeN_noabort(i32 %54, i32 8)
  store i64 0, ptr %53, align 4
  %if_port = getelementptr inbounds %struct.si2157_config, ptr %si2157_config, i32 0, i32 3
  %55 = ptrtoint ptr %if_port to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 1, ptr %if_port, align 1
  %56 = ptrtoint ptr %frontend303 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %frontend303, align 4
  %58 = ptrtoint ptr %si2157_config to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %57, ptr %si2157_config, align 4
  %59 = call ptr @memset(ptr %info, i32 0, i32 56)
  %call325 = call i32 @strscpy(ptr noundef nonnull %info, ptr noundef nonnull @.str.35, i32 noundef 20) #4
  %60 = ptrtoint ptr %addr to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 96, ptr %addr, align 2
  %61 = ptrtoint ptr %platform_data to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %si2157_config, ptr %platform_data, align 4
  %call330 = call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull %info) #4
  %i2c_adap333 = getelementptr inbounds %struct.saa7164_dev, ptr %1, i32 0, i32 28, i32 0, i32 2
  %call334 = call ptr @i2c_new_client_device(ptr noundef %i2c_adap333, ptr noundef nonnull %info) #4
  %tobool.not.i.i552 = icmp eq ptr %call334, null
  %cmp.i.i553 = icmp ugt ptr %call334, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i554 = or i1 %tobool.not.i.i552, %cmp.i.i553
  br i1 %spec.select.i.i554, label %if.end319.do.end442.sink.split.sink.split_crit_edge, label %i2c_client_has_driver.exit558

if.end319.do.end442.sink.split.sink.split_crit_edge: ; preds = %if.end319
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end442.sink.split.sink.split

i2c_client_has_driver.exit558:                    ; preds = %if.end319
  %driver.i555 = getelementptr inbounds %struct.i2c_client, ptr %call334, i32 0, i32 4, i32 6
  %62 = ptrtoint ptr %driver.i555 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %driver.i555, align 4
  %tobool.i556.not = icmp eq ptr %63, null
  br i1 %tobool.i556.not, label %i2c_client_has_driver.exit558.do.end442.sink.split.sink.split_crit_edge, label %if.end340

i2c_client_has_driver.exit558.do.end442.sink.split.sink.split_crit_edge: ; preds = %i2c_client_has_driver.exit558
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end442.sink.split.sink.split

if.end340:                                        ; preds = %i2c_client_has_driver.exit558
  %64 = ptrtoint ptr %driver.i555 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %driver.i555, align 4
  %owner343 = getelementptr inbounds %struct.device_driver, ptr %65, i32 0, i32 2
  %66 = ptrtoint ptr %owner343 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %owner343, align 4
  %call344 = call zeroext i1 @try_module_get(ptr noundef %67) #4
  br i1 %call344, label %if.end349, label %if.end340.do.end442.sink.split.sink.split.sink.split_crit_edge

if.end340.do.end442.sink.split.sink.split.sink.split_crit_edge: ; preds = %if.end340
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end442.sink.split.sink.split.sink.split

if.end349:                                        ; preds = %if.end340
  call void @__sanitizer_cov_trace_pc() #6
  %i2c_client_tuner = getelementptr inbounds %struct.saa7164_port, ptr %port, i32 0, i32 33
  %68 = ptrtoint ptr %i2c_client_tuner to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %call334, ptr %i2c_client_tuner, align 4
  br label %sw.epilog418

if.else350:                                       ; preds = %sw.bb298
  %69 = ptrtoint ptr %addr to i32
  call void @__asan_store2_noabort(i32 %69)
  store i16 102, ptr %addr, align 2
  %platform_data360 = getelementptr inbounds %struct.i2c_board_info, ptr %info, i32 0, i32 4
  %70 = ptrtoint ptr %platform_data360 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %si2168_config, ptr %platform_data360, align 4
  %call363 = call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull %info) #4
  %i2c_adap366 = getelementptr %struct.saa7164_dev, ptr %1, i32 0, i32 28, i32 2, i32 2
  %call367 = call ptr @i2c_new_client_device(ptr noundef %i2c_adap366, ptr noundef nonnull %info) #4
  %tobool.not.i.i559 = icmp eq ptr %call367, null
  %cmp.i.i560 = icmp ugt ptr %call367, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i561 = or i1 %tobool.not.i.i559, %cmp.i.i560
  br i1 %spec.select.i.i561, label %if.else350.do.end442_crit_edge, label %i2c_client_has_driver.exit565

if.else350.do.end442_crit_edge:                   ; preds = %if.else350
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end442

i2c_client_has_driver.exit565:                    ; preds = %if.else350
  %driver.i562 = getelementptr inbounds %struct.i2c_client, ptr %call367, i32 0, i32 4, i32 6
  %71 = ptrtoint ptr %driver.i562 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %driver.i562, align 4
  %tobool.i563.not = icmp eq ptr %72, null
  br i1 %tobool.i563.not, label %i2c_client_has_driver.exit565.do.end442_crit_edge, label %if.end370

i2c_client_has_driver.exit565.do.end442_crit_edge: ; preds = %i2c_client_has_driver.exit565
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end442

if.end370:                                        ; preds = %i2c_client_has_driver.exit565
  %73 = ptrtoint ptr %driver.i562 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %driver.i562, align 4
  %owner373 = getelementptr inbounds %struct.device_driver, ptr %74, i32 0, i32 2
  %75 = ptrtoint ptr %owner373 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %owner373, align 4
  %call374 = call zeroext i1 @try_module_get(ptr noundef %76) #4
  br i1 %call374, label %if.end376, label %if.end370.do.end442.sink.split_crit_edge

if.end370.do.end442.sink.split_crit_edge:         ; preds = %if.end370
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end442.sink.split

if.end376:                                        ; preds = %if.end370
  %i2c_client_demod377 = getelementptr inbounds %struct.saa7164_port, ptr %port, i32 0, i32 32
  %77 = ptrtoint ptr %i2c_client_demod377 to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %call367, ptr %i2c_client_demod377, align 8
  %78 = getelementptr inbounds i8, ptr %si2157_config, i32 4
  %79 = ptrtoint ptr %78 to i32
  call void @__asan_storeN_noabort(i32 %79, i32 8)
  store i64 0, ptr %78, align 4
  %80 = ptrtoint ptr %frontend303 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %frontend303, align 4
  %82 = ptrtoint ptr %si2157_config to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %81, ptr %si2157_config, align 4
  %if_port381 = getelementptr inbounds %struct.si2157_config, ptr %si2157_config, i32 0, i32 3
  %83 = ptrtoint ptr %if_port381 to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 1, ptr %if_port381, align 1
  %84 = call ptr @memset(ptr %info, i32 0, i32 56)
  %call384 = call i32 @strscpy(ptr noundef nonnull %info, ptr noundef nonnull @.str.35, i32 noundef 20) #4
  %85 = ptrtoint ptr %addr to i32
  call void @__asan_store2_noabort(i32 %85)
  store i16 96, ptr %addr, align 2
  %86 = ptrtoint ptr %platform_data360 to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %si2157_config, ptr %platform_data360, align 4
  %call389 = call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull %info) #4
  %i2c_adap392 = getelementptr %struct.saa7164_dev, ptr %1, i32 0, i32 28, i32 1, i32 2
  %call393 = call ptr @i2c_new_client_device(ptr noundef %i2c_adap392, ptr noundef nonnull %info) #4
  %tobool.not.i.i566 = icmp eq ptr %call393, null
  %cmp.i.i567 = icmp ugt ptr %call393, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i568 = or i1 %tobool.not.i.i566, %cmp.i.i567
  br i1 %spec.select.i.i568, label %if.end376.do.end442.sink.split.sink.split_crit_edge, label %i2c_client_has_driver.exit572

if.end376.do.end442.sink.split.sink.split_crit_edge: ; preds = %if.end376
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end442.sink.split.sink.split

i2c_client_has_driver.exit572:                    ; preds = %if.end376
  %driver.i569 = getelementptr inbounds %struct.i2c_client, ptr %call393, i32 0, i32 4, i32 6
  %87 = ptrtoint ptr %driver.i569 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %driver.i569, align 4
  %tobool.i570.not = icmp eq ptr %88, null
  br i1 %tobool.i570.not, label %i2c_client_has_driver.exit572.do.end442.sink.split.sink.split_crit_edge, label %if.end399

i2c_client_has_driver.exit572.do.end442.sink.split.sink.split_crit_edge: ; preds = %i2c_client_has_driver.exit572
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end442.sink.split.sink.split

if.end399:                                        ; preds = %i2c_client_has_driver.exit572
  %89 = ptrtoint ptr %driver.i569 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %driver.i569, align 4
  %owner402 = getelementptr inbounds %struct.device_driver, ptr %90, i32 0, i32 2
  %91 = ptrtoint ptr %owner402 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %owner402, align 4
  %call403 = call zeroext i1 @try_module_get(ptr noundef %92) #4
  br i1 %call403, label %if.end408, label %if.end399.do.end442.sink.split.sink.split.sink.split_crit_edge

if.end399.do.end442.sink.split.sink.split.sink.split_crit_edge: ; preds = %if.end399
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end442.sink.split.sink.split.sink.split

if.end408:                                        ; preds = %if.end399
  call void @__sanitizer_cov_trace_pc() #6
  %i2c_client_tuner409 = getelementptr inbounds %struct.saa7164_port, ptr %port, i32 0, i32 33
  %93 = ptrtoint ptr %i2c_client_tuner409 to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %call393, ptr %i2c_client_tuner409, align 4
  br label %sw.epilog418

do.end413:                                        ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #6
  %name415 = getelementptr inbounds %struct.saa7164_dev, ptr %1, i32 0, i32 16
  %call417 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, ptr noundef %name415) #7
  br label %sw.epilog418

sw.epilog418:                                     ; preds = %do.end413, %if.end408, %if.end349, %if.else289, %if.then282, %if.end275.sw.epilog418_crit_edge, %do.end207, %if.then202, %if.then196.sw.epilog418_crit_edge, %do.end179, %if.then174, %if.then168.sw.epilog418_crit_edge, %if.end146.thread, %do.end112, %if.then107, %if.then101.sw.epilog418_crit_edge, %if.end82.thread, %do.end52, %if.then47, %if.then41.sw.epilog418_crit_edge, %if.end23.thread, %sw.bb.sw.epilog418_crit_edge
  %frontend419 = getelementptr inbounds %struct.saa7164_port, ptr %port, i32 0, i32 31, i32 2
  %94 = ptrtoint ptr %frontend419 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %frontend419, align 4
  %cmp420 = icmp eq ptr %95, null
  br i1 %cmp420, label %do.end424, label %if.end427

do.end424:                                        ; preds = %sw.epilog418
  call void @__sanitizer_cov_trace_pc() #6
  %call426 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.3) #7
  br label %cleanup

if.end427:                                        ; preds = %sw.epilog418
  %96 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %port, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %98 = load i32, ptr @saa_debug, align 4
  %and.i = and i32 %98, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end427.do.body6.i_crit_edge, label %do.end.i

if.end427.do.body6.i_crit_edge:                   ; preds = %if.end427
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body6.i

do.end.i:                                         ; preds = %if.end427
  call void @__sanitizer_cov_trace_pc() #6
  %name.i = getelementptr inbounds %struct.saa7164_dev, ptr %97, i32 0, i32 16
  %nr.i = getelementptr inbounds %struct.saa7164_port, ptr %port, i32 0, i32 2
  %99 = ptrtoint ptr %nr.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %nr.i, align 8
  %call.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46, ptr noundef %name.i, ptr noundef nonnull @.str.47, i32 noundef %100) #7
  br label %do.body6.i

do.body6.i:                                       ; preds = %do.end.i, %if.end427.do.body6.i_crit_edge
  %type.i = getelementptr inbounds %struct.saa7164_port, ptr %port, i32 0, i32 1
  %101 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %102)
  %cmp.not.i = icmp eq i32 %102, 1
  br i1 %cmp.not.i, label %do.end18.i, label %do.body10.i, !prof !226

do.body10.i:                                      ; preds = %do.body6.i
  call void @__sanitizer_cov_trace_pc() #6
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/media/pci/saa7164/saa7164-dvb.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 340, 0\0A.popsection", ""() #4, !srcloc !229
  unreachable

do.end18.i:                                       ; preds = %do.body6.i
  %BARLocation.i = getelementptr inbounds %struct.saa7164_port, ptr %port, i32 0, i32 4, i32 8
  %103 = ptrtoint ptr %BARLocation.i to i32
  call void @__asan_loadN_noabort(i32 %103, i32 4)
  %104 = load i32, ptr %BARLocation.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %104)
  %cmp19.i = icmp eq i32 %104, 0
  br i1 %cmp19.i, label %if.then20.i, label %if.end26.i

if.then20.i:                                      ; preds = %do.end18.i
  call void @__sanitizer_cov_trace_pc() #6
  %call25.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.51, i32 noundef -12) #7
  br label %if.then430

if.end26.i:                                       ; preds = %do.end18.i
  %hw_streamingparams.i = getelementptr inbounds %struct.saa7164_port, ptr %port, i32 0, i32 3
  %105 = ptrtoint ptr %hw_streamingparams.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 8, ptr %hw_streamingparams.i, align 4
  %samplesperline.i = getelementptr inbounds %struct.saa7164_port, ptr %port, i32 0, i32 3, i32 1
  %106 = ptrtoint ptr %samplesperline.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 188, ptr %samplesperline.i, align 4
  %numberoflines.i = getelementptr inbounds %struct.saa7164_port, ptr %port, i32 0, i32 3, i32 2
  %107 = ptrtoint ptr %numberoflines.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 312, ptr %numberoflines.i, align 4
  %pitch.i = getelementptr inbounds %struct.saa7164_port, ptr %port, i32 0, i32 3, i32 3
  %108 = ptrtoint ptr %pitch.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 188, ptr %pitch.i, align 4
  %linethreshold.i = getelementptr inbounds %struct.saa7164_port, ptr %port, i32 0, i32 3, i32 4
  %109 = ptrtoint ptr %linethreshold.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 0, ptr %linethreshold.i, align 4
  %pagetablelistvirt.i = getelementptr inbounds %struct.saa7164_port, ptr %port, i32 0, i32 3, i32 5
  %110 = ptrtoint ptr %pagetablelistvirt.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr null, ptr %pagetablelistvirt.i, align 4
  %pagetablelistphys.i = getelementptr inbounds %struct.saa7164_port, ptr %port, i32 0, i32 3, i32 6
  %111 = ptrtoint ptr %pagetablelistphys.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr null, ptr %pagetablelistphys.i, align 4
  %numpagetables.i = getelementptr inbounds %struct.saa7164_port, ptr %port, i32 0, i32 3, i32 7
  %112 = ptrtoint ptr %numpagetables.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 16, ptr %numpagetables.i, align 4
  %buffercount.i = getelementptr inbounds %struct.saa7164_port, ptr %port, i32 0, i32 4, i32 11
  %113 = ptrtoint ptr %buffercount.i to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %buffercount.i, align 1
  %conv.i = zext i8 %114 to i32
  %numpagetableentries.i = getelementptr inbounds %struct.saa7164_port, ptr %port, i32 0, i32 3, i32 8
  %115 = ptrtoint ptr %numpagetableentries.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 %conv.i, ptr %numpagetableentries.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %114)
  %cmp39274.not.i = icmp eq i8 %114, 0
  br i1 %cmp39274.not.i, label %if.end26.i.for.end.i_crit_edge, label %for.body.lr.ph.i

if.end26.i.for.end.i_crit_edge:                   ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %if.end26.i
  %dmaqueue_lock.i = getelementptr inbounds %struct.saa7164_port, ptr %port, i32 0, i32 13
  %dmaqueue.i = getelementptr inbounds %struct.saa7164_port, ptr %port, i32 0, i32 14
  %prev.i.i = getelementptr inbounds %struct.saa7164_port, ptr %port, i32 0, i32 14, i32 0, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %list_add_tail.exit.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.0275.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %list_add_tail.exit.i.for.body.i_crit_edge ]
  %116 = ptrtoint ptr %numberoflines.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %numberoflines.i, align 4
  %118 = ptrtoint ptr %pitch.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %pitch.i, align 4
  %mul.i = mul i32 %119, %117
  %call45.i = call ptr @saa7164_buffer_alloc(ptr noundef %port, i32 noundef %mul.i) #4
  %tobool46.not.i = icmp eq ptr %call45.i, null
  br i1 %tobool46.not.i, label %if.then47.i, label %if.end53.i

if.then47.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  %call52.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.51, i32 noundef -12) #7
  br label %if.then430

if.end53.i:                                       ; preds = %for.body.i
  call void @mutex_lock_nested(ptr noundef %dmaqueue_lock.i, i32 noundef 0) #4
  %120 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %call45.i, ptr noundef %121, ptr noundef %dmaqueue.i) #4
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end53.i.list_add_tail.exit.i_crit_edge

if.end53.i.list_add_tail.exit.i_crit_edge:        ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %list_add_tail.exit.i

if.end.i.i.i:                                     ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #6
  %122 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store ptr %call45.i, ptr %prev.i.i, align 4
  %123 = ptrtoint ptr %call45.i to i32
  call void @__asan_store4_noabort(i32 %123)
  store ptr %dmaqueue.i, ptr %call45.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %call45.i, i32 0, i32 1
  %124 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store ptr %121, ptr %prev3.i.i.i, align 4
  %125 = ptrtoint ptr %121 to i32
  call void @__asan_store4_noabort(i32 %125)
  store volatile ptr %call45.i, ptr %121, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i.i, %if.end53.i.list_add_tail.exit.i_crit_edge
  call void @mutex_unlock(ptr noundef %dmaqueue_lock.i) #4
  %inc.i = add nuw nsw i32 %i.0275.i, 1
  %126 = ptrtoint ptr %buffercount.i to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %buffercount.i, align 1
  %conv38.i = zext i8 %127 to i32
  %cmp39.i = icmp ult i32 %inc.i, %conv38.i
  br i1 %cmp39.i, label %list_add_tail.exit.i.for.body.i_crit_edge, label %list_add_tail.exit.i.for.end.i_crit_edge

list_add_tail.exit.i.for.end.i_crit_edge:         ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end.i

list_add_tail.exit.i.for.body.i_crit_edge:        ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i

for.end.i:                                        ; preds = %list_add_tail.exit.i.for.end.i_crit_edge, %if.end26.i.for.end.i_crit_edge
  %adapter.i = getelementptr inbounds %struct.saa7164_port, ptr %port, i32 0, i32 31, i32 1
  %pci.i = getelementptr inbounds %struct.saa7164_dev, ptr %97, i32 0, i32 3
  %128 = ptrtoint ptr %pci.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %pci.i, align 4
  %dev56.i = getelementptr inbounds %struct.pci_dev, ptr %129, i32 0, i32 44
  %call57.i = call i32 @dvb_register_adapter(ptr noundef %adapter.i, ptr noundef nonnull @.str.51, ptr noundef null, ptr noundef %dev56.i, ptr noundef nonnull @adapter_nr) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57.i)
  %cmp58.i = icmp slt i32 %call57.i, 0
  br i1 %cmp58.i, label %do.end63.i, label %if.end66.i

do.end63.i:                                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %call65.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.51, i32 noundef %call57.i) #7
  br label %if.then430

if.end66.i:                                       ; preds = %for.end.i
  %priv.i = getelementptr inbounds %struct.saa7164_port, ptr %port, i32 0, i32 31, i32 1, i32 5
  %130 = ptrtoint ptr %priv.i to i32
  call void @__asan_store4_noabort(i32 %130)
  store ptr %port, ptr %priv.i, align 4
  %131 = ptrtoint ptr %frontend419 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %frontend419, align 4
  %call69.i = call i32 @dvb_register_frontend(ptr noundef %adapter.i, ptr noundef %132) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69.i)
  %cmp70.i = icmp slt i32 %call69.i, 0
  br i1 %cmp70.i, label %do.end75.i, label %if.end78.i

do.end75.i:                                       ; preds = %if.end66.i
  call void @__sanitizer_cov_trace_pc() #6
  %call77.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.59, ptr noundef nonnull @.str.51, i32 noundef %call69.i) #7
  br label %fail_frontend.i

if.end78.i:                                       ; preds = %if.end66.i
  %demux.i = getelementptr inbounds %struct.saa7164_port, ptr %port, i32 0, i32 31, i32 3
  %133 = ptrtoint ptr %demux.i to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 13, ptr %demux.i, align 8
  %priv80.i = getelementptr inbounds %struct.saa7164_port, ptr %port, i32 0, i32 31, i32 3, i32 1
  %134 = ptrtoint ptr %priv80.i to i32
  call void @__asan_store4_noabort(i32 %134)
  store ptr %port, ptr %priv80.i, align 4
  %filternum.i = getelementptr inbounds %struct.saa7164_port, ptr %port, i32 0, i32 31, i32 3, i32 2
  %135 = ptrtoint ptr %filternum.i to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 256, ptr %filternum.i, align 8
  %feednum.i = getelementptr inbounds %struct.saa7164_port, ptr %port, i32 0, i32 31, i32 3, i32 3
  %136 = ptrtoint ptr %feednum.i to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 256, ptr %feednum.i, align 4
  %start_feed.i = getelementptr inbounds %struct.saa7164_port, ptr %port, i32 0, i32 31, i32 3, i32 4
  %137 = ptrtoint ptr %start_feed.i to i32
  call void @__asan_store4_noabort(i32 %137)
  store ptr @saa7164_dvb_start_feed, ptr %start_feed.i, align 8
  %stop_feed.i = getelementptr inbounds %struct.saa7164_port, ptr %port, i32 0, i32 31, i32 3, i32 5
  %138 = ptrtoint ptr %stop_feed.i to i32
  call void @__asan_store4_noabort(i32 %138)
  store ptr @saa7164_dvb_stop_feed, ptr %stop_feed.i, align 4
  %call86.i = call i32 @dvb_dmx_init(ptr noundef %demux.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call86.i)
  %cmp87.i = icmp slt i32 %call86.i, 0
  br i1 %cmp87.i, label %do.end92.i, label %if.end95.i

do.end92.i:                                       ; preds = %if.end78.i
  call void @__sanitizer_cov_trace_pc() #6
  %call94.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.51, i32 noundef %call86.i) #7
  br label %fail_dmx.i

if.end95.i:                                       ; preds = %if.end78.i
  %dmxdev.i = getelementptr inbounds %struct.saa7164_port, ptr %port, i32 0, i32 31, i32 4
  %filternum96.i = getelementptr inbounds %struct.saa7164_port, ptr %port, i32 0, i32 31, i32 4, i32 4
  %139 = ptrtoint ptr %filternum96.i to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 256, ptr %filternum96.i, align 8
  %demux100.i = getelementptr inbounds %struct.saa7164_port, ptr %port, i32 0, i32 31, i32 4, i32 3
  %140 = ptrtoint ptr %demux100.i to i32
  call void @__asan_store4_noabort(i32 %140)
  store ptr %demux.i, ptr %demux100.i, align 4
  %capabilities102.i = getelementptr inbounds %struct.saa7164_port, ptr %port, i32 0, i32 31, i32 4, i32 5
  %141 = ptrtoint ptr %capabilities102.i to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 0, ptr %capabilities102.i, align 4
  %call105.i = call i32 @dvb_dmxdev_init(ptr noundef %dmxdev.i, ptr noundef %adapter.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call105.i)
  %cmp106.i = icmp slt i32 %call105.i, 0
  br i1 %cmp106.i, label %do.end111.i, label %if.end114.i

do.end111.i:                                      ; preds = %if.end95.i
  call void @__sanitizer_cov_trace_pc() #6
  %call113.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.65, ptr noundef nonnull @.str.51, i32 noundef %call105.i) #7
  br label %fail_dmxdev.i

if.end114.i:                                      ; preds = %if.end95.i
  %fe_hw.i = getelementptr inbounds %struct.saa7164_port, ptr %port, i32 0, i32 31, i32 5
  %source.i = getelementptr inbounds %struct.saa7164_port, ptr %port, i32 0, i32 31, i32 5, i32 1
  %142 = ptrtoint ptr %source.i to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 1, ptr %source.i, align 8
  %add_frontend.i = getelementptr inbounds %struct.saa7164_port, ptr %port, i32 0, i32 31, i32 3, i32 0, i32 10
  %143 = ptrtoint ptr %add_frontend.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %add_frontend.i, align 8
  %call120.i = call i32 %144(ptr noundef %demux.i, ptr noundef %fe_hw.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call120.i)
  %cmp121.i = icmp slt i32 %call120.i, 0
  br i1 %cmp121.i, label %do.end126.i, label %if.end129.i

do.end126.i:                                      ; preds = %if.end114.i
  call void @__sanitizer_cov_trace_pc() #6
  %call128.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.51, i32 noundef %call120.i) #7
  br label %fail_fe_hw.i

if.end129.i:                                      ; preds = %if.end114.i
  %fe_mem.i = getelementptr inbounds %struct.saa7164_port, ptr %port, i32 0, i32 31, i32 6
  %source130.i = getelementptr inbounds %struct.saa7164_port, ptr %port, i32 0, i32 31, i32 6, i32 1
  %145 = ptrtoint ptr %source130.i to i32
  call void @__asan_store4_noabort(i32 %145)
  store i32 0, ptr %source130.i, align 4
  %146 = ptrtoint ptr %add_frontend.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %add_frontend.i, align 8
  %call137.i = call i32 %147(ptr noundef %demux.i, ptr noundef %fe_mem.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call137.i)
  %cmp138.i = icmp slt i32 %call137.i, 0
  br i1 %cmp138.i, label %do.end143.i, label %if.end146.i

do.end143.i:                                      ; preds = %if.end129.i
  call void @__sanitizer_cov_trace_pc() #6
  %call145.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.71, ptr noundef nonnull @.str.51, i32 noundef %call137.i) #7
  br label %fail_fe_mem.i

if.end146.i:                                      ; preds = %if.end129.i
  %connect_frontend.i = getelementptr inbounds %struct.saa7164_port, ptr %port, i32 0, i32 31, i32 3, i32 0, i32 13
  %148 = ptrtoint ptr %connect_frontend.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %connect_frontend.i, align 4
  %call152.i = call i32 %149(ptr noundef %demux.i, ptr noundef %fe_hw.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call152.i)
  %cmp153.i = icmp slt i32 %call152.i, 0
  br i1 %cmp153.i, label %do.end158.i, label %dvb_register.exit

do.end158.i:                                      ; preds = %if.end146.i
  call void @__sanitizer_cov_trace_pc() #6
  %call160.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.51, i32 noundef %call152.i) #7
  %remove_frontend.i = getelementptr inbounds %struct.saa7164_port, ptr %port, i32 0, i32 31, i32 3, i32 0, i32 11
  %150 = ptrtoint ptr %remove_frontend.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %remove_frontend.i, align 4
  %call171.i = call i32 %151(ptr noundef %demux.i, ptr noundef %fe_mem.i) #4
  br label %fail_fe_mem.i

fail_fe_mem.i:                                    ; preds = %do.end158.i, %do.end143.i
  %result.0.i = phi i32 [ %call137.i, %do.end143.i ], [ %call152.i, %do.end158.i ]
  %remove_frontend174.i = getelementptr inbounds %struct.saa7164_port, ptr %port, i32 0, i32 31, i32 3, i32 0, i32 11
  %152 = ptrtoint ptr %remove_frontend174.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %remove_frontend174.i, align 4
  %call178.i = call i32 %153(ptr noundef %demux.i, ptr noundef %fe_hw.i) #4
  br label %fail_fe_hw.i

fail_fe_hw.i:                                     ; preds = %fail_fe_mem.i, %do.end126.i
  %result.1.i = phi i32 [ %call120.i, %do.end126.i ], [ %result.0.i, %fail_fe_mem.i ]
  call void @dvb_dmxdev_release(ptr noundef %dmxdev.i) #4
  br label %fail_dmxdev.i

fail_dmxdev.i:                                    ; preds = %fail_fe_hw.i, %do.end111.i
  %result.2.i = phi i32 [ %call105.i, %do.end111.i ], [ %result.1.i, %fail_fe_hw.i ]
  call void @dvb_dmx_release(ptr noundef %demux.i) #4
  br label %fail_dmx.i

fail_dmx.i:                                       ; preds = %fail_dmxdev.i, %do.end92.i
  %result.3.i = phi i32 [ %call86.i, %do.end92.i ], [ %result.2.i, %fail_dmxdev.i ]
  %154 = ptrtoint ptr %frontend419 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %frontend419, align 4
  %call182.i = call i32 @dvb_unregister_frontend(ptr noundef %155) #4
  br label %fail_frontend.i

fail_frontend.i:                                  ; preds = %fail_dmx.i, %do.end75.i
  %result.4.i = phi i32 [ %call69.i, %do.end75.i ], [ %result.3.i, %fail_dmx.i ]
  %156 = ptrtoint ptr %frontend419 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %frontend419, align 4
  call void @dvb_frontend_detach(ptr noundef %157) #4
  %call185.i = call i32 @dvb_unregister_adapter(ptr noundef %adapter.i) #4
  br label %if.then430

dvb_register.exit:                                ; preds = %if.end146.i
  call void @__sanitizer_cov_trace_pc() #6
  %net.i = getelementptr inbounds %struct.saa7164_port, ptr %port, i32 0, i32 31, i32 7
  %call165.i = call i32 @dvb_net_init(ptr noundef %adapter.i, ptr noundef %net.i, ptr noundef %demux.i) #4
  br label %cleanup

if.then430:                                       ; preds = %fail_frontend.i, %do.end63.i, %if.then47.i, %if.then20.i
  %retval.0.i.ph = phi i32 [ %result.4.i, %fail_frontend.i ], [ %call57.i, %do.end63.i ], [ -12, %if.then47.i ], [ -12, %if.then20.i ]
  %158 = ptrtoint ptr %frontend419 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %frontend419, align 4
  %release = getelementptr inbounds %struct.dvb_frontend, ptr %159, i32 0, i32 1, i32 3
  %160 = ptrtoint ptr %release to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %release, align 4
  %tobool432.not = icmp eq ptr %161, null
  br i1 %tobool432.not, label %if.then430.cleanup_crit_edge, label %if.then433

if.then430.cleanup_crit_edge:                     ; preds = %if.then430
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then433:                                       ; preds = %if.then430
  call void @__sanitizer_cov_trace_pc() #6
  call void %161(ptr noundef %159) #4
  br label %cleanup

do.end442.sink.split.sink.split.sink.split:       ; preds = %if.end399.do.end442.sink.split.sink.split.sink.split_crit_edge, %if.end340.do.end442.sink.split.sink.split.sink.split_crit_edge
  %call334.sink = phi ptr [ %call334, %if.end340.do.end442.sink.split.sink.split.sink.split_crit_edge ], [ %call393, %if.end399.do.end442.sink.split.sink.split.sink.split_crit_edge ]
  %driver.i562.sink.ph = phi ptr [ %driver.i, %if.end340.do.end442.sink.split.sink.split.sink.split_crit_edge ], [ %driver.i562, %if.end399.do.end442.sink.split.sink.split.sink.split_crit_edge ]
  %call312.sink.ph.ph = phi ptr [ %call312, %if.end340.do.end442.sink.split.sink.split.sink.split_crit_edge ], [ %call367, %if.end399.do.end442.sink.split.sink.split.sink.split_crit_edge ]
  call void @i2c_unregister_device(ptr noundef nonnull %call334.sink) #4
  br label %do.end442.sink.split.sink.split

do.end442.sink.split.sink.split:                  ; preds = %do.end442.sink.split.sink.split.sink.split, %i2c_client_has_driver.exit572.do.end442.sink.split.sink.split_crit_edge, %if.end376.do.end442.sink.split.sink.split_crit_edge, %i2c_client_has_driver.exit558.do.end442.sink.split.sink.split_crit_edge, %if.end319.do.end442.sink.split.sink.split_crit_edge
  %driver.i562.sink = phi ptr [ %driver.i, %if.end319.do.end442.sink.split.sink.split_crit_edge ], [ %driver.i, %i2c_client_has_driver.exit558.do.end442.sink.split.sink.split_crit_edge ], [ %driver.i562, %if.end376.do.end442.sink.split.sink.split_crit_edge ], [ %driver.i562, %i2c_client_has_driver.exit572.do.end442.sink.split.sink.split_crit_edge ], [ %driver.i562.sink.ph, %do.end442.sink.split.sink.split.sink.split ]
  %call312.sink.ph = phi ptr [ %call312, %if.end319.do.end442.sink.split.sink.split_crit_edge ], [ %call312, %i2c_client_has_driver.exit558.do.end442.sink.split.sink.split_crit_edge ], [ %call367, %if.end376.do.end442.sink.split.sink.split_crit_edge ], [ %call367, %i2c_client_has_driver.exit572.do.end442.sink.split.sink.split_crit_edge ], [ %call312.sink.ph.ph, %do.end442.sink.split.sink.split.sink.split ]
  %162 = ptrtoint ptr %driver.i562.sink to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %driver.i562.sink, align 4
  %owner407 = getelementptr inbounds %struct.device_driver, ptr %163, i32 0, i32 2
  %164 = ptrtoint ptr %owner407 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %owner407, align 4
  call void @module_put(ptr noundef %165) #4
  br label %do.end442.sink.split

do.end442.sink.split:                             ; preds = %do.end442.sink.split.sink.split, %if.end370.do.end442.sink.split_crit_edge, %if.end315.do.end442.sink.split_crit_edge
  %call312.sink = phi ptr [ %call312, %if.end315.do.end442.sink.split_crit_edge ], [ %call367, %if.end370.do.end442.sink.split_crit_edge ], [ %call312.sink.ph, %do.end442.sink.split.sink.split ]
  call void @i2c_unregister_device(ptr noundef nonnull %call312.sink) #4
  br label %do.end442

do.end442:                                        ; preds = %do.end442.sink.split, %i2c_client_has_driver.exit565.do.end442_crit_edge, %if.else350.do.end442_crit_edge, %i2c_client_has_driver.exit.do.end442_crit_edge, %if.then301.do.end442_crit_edge
  %call444 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.3) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end442, %if.then433, %if.then430.cleanup_crit_edge, %dvb_register.exit, %do.end424
  %retval.0 = phi i32 [ -1, %do.end424 ], [ -1, %do.end442 ], [ %retval.0.i.ph, %if.then433 ], [ %retval.0.i.ph, %if.then430.cleanup_crit_edge ], [ 0, %dvb_register.exit ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %info) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %adapter) #4
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %si2157_config) #4
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %si2168_config) #4
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__symbol_get(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__request_module(i1 noundef zeroext, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__symbol_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @si2157_attach(ptr nocapture noundef writeonly %port, ptr noundef %adapter, ptr noundef %fe) unnamed_addr #0 align 64 {
entry:
  %bi = alloca %struct.i2c_board_info, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %bi) #4
  store ptr %fe, ptr @hauppauge_hvr2255_tuner_config, align 4
  %0 = call ptr @memset(ptr %bi, i32 0, i32 56)
  %call = call i32 @strscpy(ptr noundef nonnull %bi, ptr noundef nonnull @.str.35, i32 noundef 20) #4
  %platform_data = getelementptr inbounds %struct.i2c_board_info, ptr %bi, i32 0, i32 4
  %1 = ptrtoint ptr %platform_data to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @hauppauge_hvr2255_tuner_config, ptr %platform_data, align 4
  %addr = getelementptr inbounds %struct.i2c_board_info, ptr %bi, i32 0, i32 2
  %2 = ptrtoint ptr %addr to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 96, ptr %addr, align 2
  %call5 = call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull %bi) #4
  %call6 = call ptr @i2c_new_client_device(ptr noundef %adapter, ptr noundef nonnull %bi) #4
  %tobool.not.i.i = icmp eq ptr %call6, null
  %cmp.i.i = icmp ugt ptr %call6, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i = or i1 %tobool.not.i.i, %cmp.i.i
  br i1 %spec.select.i.i, label %entry.cleanup_crit_edge, label %i2c_client_has_driver.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

i2c_client_has_driver.exit:                       ; preds = %entry
  %driver.i = getelementptr inbounds %struct.i2c_client, ptr %call6, i32 0, i32 4, i32 6
  %3 = ptrtoint ptr %driver.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %driver.i, align 4
  %tobool.i.not = icmp eq ptr %4, null
  br i1 %tobool.i.not, label %i2c_client_has_driver.exit.cleanup_crit_edge, label %if.end

i2c_client_has_driver.exit.cleanup_crit_edge:     ; preds = %i2c_client_has_driver.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %i2c_client_has_driver.exit
  %5 = ptrtoint ptr %driver.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %driver.i, align 4
  %owner = getelementptr inbounds %struct.device_driver, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %owner, align 4
  %call8 = call zeroext i1 @try_module_get(ptr noundef %8) #4
  br i1 %call8, label %if.end10, label %if.then9

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  call void @i2c_unregister_device(ptr noundef nonnull %call6) #4
  br label %cleanup

if.end10:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %i2c_client_tuner = getelementptr inbounds %struct.saa7164_port, ptr %port, i32 0, i32 33
  %9 = ptrtoint ptr %i2c_client_tuner to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call6, ptr %i2c_client_tuner, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.then9, %i2c_client_has_driver.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %bi) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @i2c_new_client_device(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @saa7164_buffer_alloc(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_register_adapter(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_register_frontend(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @saa7164_dvb_start_feed(ptr nocapture noundef readonly %feed) #0 align 64 {
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
  %dvb2 = getelementptr inbounds %struct.saa7164_port, ptr %3, i32 0, i32 31
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %6 = load i32, ptr @saa_debug, align 4
  %and = and i32 %6, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end6_crit_edge, label %do.end

entry.do.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end6

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %name = getelementptr inbounds %struct.saa7164_dev, ptr %5, i32 0, i32 16
  %nr = getelementptr inbounds %struct.saa7164_port, ptr %3, i32 0, i32 2
  %7 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %nr, align 8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46, ptr noundef %name, ptr noundef nonnull @.str.76, i32 noundef %8) #7
  br label %do.end6

do.end6:                                          ; preds = %do.end, %entry.do.end6_crit_edge
  %frontend = getelementptr inbounds %struct.dmx_demux, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %frontend to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %frontend, align 4
  %tobool7.not = icmp eq ptr %10, null
  br i1 %tobool7.not, label %do.end6.cleanup_crit_edge, label %if.end9

do.end6.cleanup_crit_edge:                        ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end9:                                          ; preds = %do.end6
  %tobool10.not = icmp eq ptr %dvb2, null
  br i1 %tobool10.not, label %if.end9.cleanup_crit_edge, label %if.then11

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then11:                                        ; preds = %if.end9
  tail call void @mutex_lock_nested(ptr noundef nonnull %dvb2, i32 noundef 0) #4
  %feeding = getelementptr inbounds %struct.saa7164_port, ptr %3, i32 0, i32 31, i32 8
  %11 = ptrtoint ptr %feeding to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %feeding, align 8
  %inc = add i32 %12, 1
  store i32 %inc, ptr %feeding, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp = icmp eq i32 %12, 0
  br i1 %cmp, label %if.then12, label %if.then11.if.end14_crit_edge

if.then11.if.end14_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end14

if.then12:                                        ; preds = %if.then11
  %13 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %3, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %15 = load i32, ptr @saa_debug, align 4
  %and.i = and i32 %15, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then12.do.end4.i_crit_edge, label %do.end.i

if.then12.do.end4.i_crit_edge:                    ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end4.i

do.end.i:                                         ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #6
  %name.i = getelementptr inbounds %struct.saa7164_dev, ptr %14, i32 0, i32 16
  %nr.i = getelementptr inbounds %struct.saa7164_port, ptr %3, i32 0, i32 2
  %16 = ptrtoint ptr %nr.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %nr.i, align 8
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46, ptr noundef %name.i, ptr noundef nonnull @.str.80, i32 noundef %17) #7
  br label %do.end4.i

do.end4.i:                                        ; preds = %do.end.i, %if.then12.do.end4.i_crit_edge
  %call5.i = tail call i32 @saa7164_buffer_cfg_port(ptr noundef %3) #4
  %call6.i = tail call i32 @saa7164_api_transition_port(ptr noundef %3, i8 noundef zeroext 1) #4
  %18 = zext i32 %call6.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.127)
  switch i32 %call6.i, label %do.end11.i [
    i32 0, label %do.end4.i.do.body25.i_crit_edge
    i32 38, label %do.end4.i.do.body25.i_crit_edge47
  ]

do.end4.i.do.body25.i_crit_edge47:                ; preds = %do.end4.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body25.i

do.end4.i.do.body25.i_crit_edge:                  ; preds = %do.end4.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body25.i

do.end11.i:                                       ; preds = %do.end4.i
  %call13.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.82, ptr noundef nonnull @.str.80, i32 noundef %call6.i) #7
  %call14.i = tail call i32 @saa7164_api_transition_port(ptr noundef %3, i8 noundef zeroext 0) #4
  %19 = zext i32 %call14.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.128)
  switch i32 %call14.i, label %do.end21.i [
    i32 0, label %do.end11.i.if.end14_crit_edge
    i32 38, label %do.end11.i.if.end14_crit_edge48
  ]

do.end11.i.if.end14_crit_edge48:                  ; preds = %do.end11.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end14

do.end11.i.if.end14_crit_edge:                    ; preds = %do.end11.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end14

do.end21.i:                                       ; preds = %do.end11.i
  call void @__sanitizer_cov_trace_pc() #6
  %call23.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.85, ptr noundef nonnull @.str.80, i32 noundef %call14.i) #7
  br label %if.end14

do.body25.i:                                      ; preds = %do.end4.i.do.body25.i_crit_edge, %do.end4.i.do.body25.i_crit_edge47
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %20 = load i32, ptr @saa_debug, align 4
  %and26.i = and i32 %20, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26.i)
  %tobool27.not.i = icmp eq i32 %and26.i, 0
  br i1 %tobool27.not.i, label %do.body25.i.if.end39.i_crit_edge, label %do.end31.i

do.body25.i.if.end39.i_crit_edge:                 ; preds = %do.body25.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end39.i

do.end31.i:                                       ; preds = %do.body25.i
  call void @__sanitizer_cov_trace_pc() #6
  %name33.i = getelementptr inbounds %struct.saa7164_dev, ptr %14, i32 0, i32 16
  %call35.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.88, ptr noundef %name33.i, ptr noundef nonnull @.str.80) #7
  br label %if.end39.i

if.end39.i:                                       ; preds = %do.end31.i, %do.body25.i.if.end39.i_crit_edge
  %call40.i = tail call i32 @saa7164_api_transition_port(ptr noundef %3, i8 noundef zeroext 2) #4
  %21 = zext i32 %call40.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.129)
  switch i32 %call40.i, label %do.end47.i [
    i32 0, label %if.end39.i.do.body62.i_crit_edge
    i32 38, label %if.end39.i.do.body62.i_crit_edge49
  ]

if.end39.i.do.body62.i_crit_edge49:               ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body62.i

if.end39.i.do.body62.i_crit_edge:                 ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body62.i

do.end47.i:                                       ; preds = %if.end39.i
  %call49.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.91, ptr noundef nonnull @.str.80, i32 noundef %call40.i) #7
  %call50.i = tail call i32 @saa7164_api_transition_port(ptr noundef %3, i8 noundef zeroext 0) #4
  %22 = zext i32 %call50.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.130)
  switch i32 %call50.i, label %do.end57.i [
    i32 0, label %do.end47.i.if.end14_crit_edge
    i32 38, label %do.end47.i.if.end14_crit_edge50
  ]

do.end47.i.if.end14_crit_edge50:                  ; preds = %do.end47.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end14

do.end47.i.if.end14_crit_edge:                    ; preds = %do.end47.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end14

do.end57.i:                                       ; preds = %do.end47.i
  call void @__sanitizer_cov_trace_pc() #6
  %call59.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.80, i32 noundef %call50.i) #7
  br label %if.end14

do.body62.i:                                      ; preds = %if.end39.i.do.body62.i_crit_edge, %if.end39.i.do.body62.i_crit_edge49
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %23 = load i32, ptr @saa_debug, align 4
  %and63.i = and i32 %23, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and63.i)
  %tobool64.not.i = icmp eq i32 %and63.i, 0
  br i1 %tobool64.not.i, label %do.body62.i.if.end76.i_crit_edge, label %do.end68.i

do.body62.i.if.end76.i_crit_edge:                 ; preds = %do.body62.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end76.i

do.end68.i:                                       ; preds = %do.body62.i
  call void @__sanitizer_cov_trace_pc() #6
  %name70.i = getelementptr inbounds %struct.saa7164_dev, ptr %14, i32 0, i32 16
  %call72.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.97, ptr noundef %name70.i, ptr noundef nonnull @.str.80) #7
  br label %if.end76.i

if.end76.i:                                       ; preds = %do.end68.i, %do.body62.i.if.end76.i_crit_edge
  %call77.i = tail call i32 @saa7164_api_transition_port(ptr noundef %3, i8 noundef zeroext 3) #4
  %24 = zext i32 %call77.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.131)
  switch i32 %call77.i, label %do.end84.i [
    i32 0, label %if.end76.i.do.body99.i_crit_edge
    i32 38, label %if.end76.i.do.body99.i_crit_edge51
  ]

if.end76.i.do.body99.i_crit_edge51:               ; preds = %if.end76.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body99.i

if.end76.i.do.body99.i_crit_edge:                 ; preds = %if.end76.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body99.i

do.end84.i:                                       ; preds = %if.end76.i
  %call86.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.100, ptr noundef nonnull @.str.80, i32 noundef %call77.i) #7
  %call87.i = tail call i32 @saa7164_api_transition_port(ptr noundef %3, i8 noundef zeroext 0) #4
  %25 = zext i32 %call87.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.132)
  switch i32 %call87.i, label %do.end94.i [
    i32 0, label %do.end84.i.if.end14_crit_edge
    i32 38, label %do.end84.i.if.end14_crit_edge52
  ]

do.end84.i.if.end14_crit_edge52:                  ; preds = %do.end84.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end14

do.end84.i.if.end14_crit_edge:                    ; preds = %do.end84.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end14

do.end94.i:                                       ; preds = %do.end84.i
  call void @__sanitizer_cov_trace_pc() #6
  %call96.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.103, ptr noundef nonnull @.str.80, i32 noundef %call87.i) #7
  br label %if.end14

do.body99.i:                                      ; preds = %if.end76.i.do.body99.i_crit_edge, %if.end76.i.do.body99.i_crit_edge51
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %26 = load i32, ptr @saa_debug, align 4
  %and100.i = and i32 %26, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and100.i)
  %tobool101.not.i = icmp eq i32 %and100.i, 0
  br i1 %tobool101.not.i, label %do.body99.i.if.end14_crit_edge, label %do.end105.i

do.body99.i.if.end14_crit_edge:                   ; preds = %do.body99.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end14

do.end105.i:                                      ; preds = %do.body99.i
  call void @__sanitizer_cov_trace_pc() #6
  %name107.i = getelementptr inbounds %struct.saa7164_dev, ptr %14, i32 0, i32 16
  %call109.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.106, ptr noundef %name107.i, ptr noundef nonnull @.str.80) #7
  br label %if.end14

if.end14:                                         ; preds = %do.end105.i, %do.body99.i.if.end14_crit_edge, %do.end94.i, %do.end84.i.if.end14_crit_edge, %do.end84.i.if.end14_crit_edge52, %do.end57.i, %do.end47.i.if.end14_crit_edge, %do.end47.i.if.end14_crit_edge50, %do.end21.i, %do.end11.i.if.end14_crit_edge, %do.end11.i.if.end14_crit_edge48, %if.then11.if.end14_crit_edge
  %ret.0 = phi i32 [ 0, %if.then11.if.end14_crit_edge ], [ 0, %do.end105.i ], [ 0, %do.body99.i.if.end14_crit_edge ], [ -5, %do.end11.i.if.end14_crit_edge ], [ -5, %do.end11.i.if.end14_crit_edge48 ], [ -5, %do.end21.i ], [ -5, %do.end47.i.if.end14_crit_edge ], [ -5, %do.end47.i.if.end14_crit_edge50 ], [ -5, %do.end57.i ], [ -5, %do.end84.i.if.end14_crit_edge ], [ -5, %do.end84.i.if.end14_crit_edge52 ], [ -5, %do.end94.i ]
  tail call void @mutex_unlock(ptr noundef nonnull %dvb2) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %27 = load i32, ptr @saa_debug, align 4
  %and17 = and i32 %27, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  br i1 %tobool18.not, label %if.end14.cleanup_crit_edge, label %do.end22

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end22:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #6
  %name24 = getelementptr inbounds %struct.saa7164_dev, ptr %5, i32 0, i32 16
  %nr26 = getelementptr inbounds %struct.saa7164_port, ptr %3, i32 0, i32 2
  %28 = ptrtoint ptr %nr26 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %nr26, align 8
  %30 = ptrtoint ptr %feeding to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %feeding, align 8
  %call28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.78, ptr noundef %name24, ptr noundef nonnull @.str.76, i32 noundef %29, i32 noundef %31) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end22, %if.end14.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %do.end6.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end6.cleanup_crit_edge ], [ %ret.0, %do.end22 ], [ %ret.0, %if.end14.cleanup_crit_edge ], [ 0, %if.end9.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @saa7164_dvb_stop_feed(ptr nocapture noundef readonly %feed) #0 align 64 {
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
  %dvb2 = getelementptr inbounds %struct.saa7164_port, ptr %3, i32 0, i32 31
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %6 = load i32, ptr @saa_debug, align 4
  %and = and i32 %6, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end6_crit_edge, label %do.end

entry.do.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end6

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %name = getelementptr inbounds %struct.saa7164_dev, ptr %5, i32 0, i32 16
  %nr = getelementptr inbounds %struct.saa7164_port, ptr %3, i32 0, i32 2
  %7 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %nr, align 8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46, ptr noundef %name, ptr noundef nonnull @.str.108, i32 noundef %8) #7
  br label %do.end6

do.end6:                                          ; preds = %do.end, %entry.do.end6_crit_edge
  %tobool7.not = icmp eq ptr %dvb2, null
  br i1 %tobool7.not, label %do.end6.if.end29_crit_edge, label %if.then8

do.end6.if.end29_crit_edge:                       ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end29

if.then8:                                         ; preds = %do.end6
  tail call void @mutex_lock_nested(ptr noundef nonnull %dvb2, i32 noundef 0) #4
  %feeding = getelementptr inbounds %struct.saa7164_port, ptr %3, i32 0, i32 31, i32 8
  %9 = ptrtoint ptr %feeding to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %feeding, align 8
  %dec = add i32 %10, -1
  store i32 %dec, ptr %feeding, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp = icmp eq i32 %dec, 0
  br i1 %cmp, label %if.then9, label %if.then8.if.end11_crit_edge

if.then8.if.end11_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end11

if.then9:                                         ; preds = %if.then8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %11 = load i32, ptr @saa_debug, align 4
  %and.i = and i32 %11, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then9.do.end4.i_crit_edge, label %do.end.i

if.then9.do.end4.i_crit_edge:                     ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end4.i

do.end.i:                                         ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #6
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %3, align 8
  %name.i = getelementptr inbounds %struct.saa7164_dev, ptr %13, i32 0, i32 16
  %nr.i = getelementptr inbounds %struct.saa7164_port, ptr %3, i32 0, i32 2
  %14 = ptrtoint ptr %nr.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %nr.i, align 8
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46, ptr noundef %name.i, ptr noundef nonnull @.str.111, i32 noundef %15) #7
  br label %do.end4.i

do.end4.i:                                        ; preds = %do.end.i, %if.then9.do.end4.i_crit_edge
  %16 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %3, align 8
  %call.i.i = tail call i32 @saa7164_api_transition_port(ptr noundef %3, i8 noundef zeroext 2) #4
  %18 = zext i32 %call.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.133)
  switch i32 %call.i.i, label %do.end.i.i [
    i32 0, label %do.end4.i.do.body4.i.i_crit_edge
    i32 38, label %do.end4.i.do.body4.i.i_crit_edge39
  ]

do.end4.i.do.body4.i.i_crit_edge39:               ; preds = %do.end4.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body4.i.i

do.end4.i.do.body4.i.i_crit_edge:                 ; preds = %do.end4.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body4.i.i

do.end.i.i:                                       ; preds = %do.end4.i
  call void @__sanitizer_cov_trace_pc() #6
  %call3.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.112, ptr noundef nonnull @.str.113, i32 noundef %call.i.i) #7
  br label %saa7164_dvb_pause_port.exit.i

do.body4.i.i:                                     ; preds = %do.end4.i.do.body4.i.i_crit_edge, %do.end4.i.do.body4.i.i_crit_edge39
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %19 = load i32, ptr @saa_debug, align 4
  %and.i.i = and i32 %19, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %do.body4.i.i.saa7164_dvb_pause_port.exit.i_crit_edge, label %do.end8.i.i

do.body4.i.i.saa7164_dvb_pause_port.exit.i_crit_edge: ; preds = %do.body4.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %saa7164_dvb_pause_port.exit.i

do.end8.i.i:                                      ; preds = %do.body4.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %name.i.i = getelementptr inbounds %struct.saa7164_dev, ptr %17, i32 0, i32 16
  %call10.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.97, ptr noundef %name.i.i, ptr noundef nonnull @.str.113) #7
  br label %saa7164_dvb_pause_port.exit.i

saa7164_dvb_pause_port.exit.i:                    ; preds = %do.end8.i.i, %do.body4.i.i.saa7164_dvb_pause_port.exit.i_crit_edge, %do.end.i.i
  %20 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %3, align 8
  %call.i27.i = tail call i32 @saa7164_api_transition_port(ptr noundef %3, i8 noundef zeroext 1) #4
  %22 = zext i32 %call.i27.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.134)
  switch i32 %call.i27.i, label %do.end.i29.i [
    i32 0, label %saa7164_dvb_pause_port.exit.i.do.body4.i32.i_crit_edge
    i32 38, label %saa7164_dvb_pause_port.exit.i.do.body4.i32.i_crit_edge40
  ]

saa7164_dvb_pause_port.exit.i.do.body4.i32.i_crit_edge40: ; preds = %saa7164_dvb_pause_port.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body4.i32.i

saa7164_dvb_pause_port.exit.i.do.body4.i32.i_crit_edge: ; preds = %saa7164_dvb_pause_port.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body4.i32.i

do.end.i29.i:                                     ; preds = %saa7164_dvb_pause_port.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  %call3.i28.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.116, ptr noundef nonnull @.str.117, i32 noundef %call.i27.i) #7
  br label %saa7164_dvb_acquire_port.exit.i

do.body4.i32.i:                                   ; preds = %saa7164_dvb_pause_port.exit.i.do.body4.i32.i_crit_edge, %saa7164_dvb_pause_port.exit.i.do.body4.i32.i_crit_edge40
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %23 = load i32, ptr @saa_debug, align 4
  %and.i30.i = and i32 %23, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i30.i)
  %tobool.not.i31.i = icmp eq i32 %and.i30.i, 0
  br i1 %tobool.not.i31.i, label %do.body4.i32.i.saa7164_dvb_acquire_port.exit.i_crit_edge, label %do.end8.i35.i

do.body4.i32.i.saa7164_dvb_acquire_port.exit.i_crit_edge: ; preds = %do.body4.i32.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %saa7164_dvb_acquire_port.exit.i

do.end8.i35.i:                                    ; preds = %do.body4.i32.i
  call void @__sanitizer_cov_trace_pc() #6
  %name.i33.i = getelementptr inbounds %struct.saa7164_dev, ptr %21, i32 0, i32 16
  %call10.i34.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.119, ptr noundef %name.i33.i, ptr noundef nonnull @.str.117) #7
  br label %saa7164_dvb_acquire_port.exit.i

saa7164_dvb_acquire_port.exit.i:                  ; preds = %do.end8.i35.i, %do.body4.i32.i.saa7164_dvb_acquire_port.exit.i_crit_edge, %do.end.i29.i
  %24 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %3, align 8
  %call.i36.i = tail call i32 @saa7164_api_transition_port(ptr noundef %3, i8 noundef zeroext 0) #4
  %26 = zext i32 %call.i36.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.135)
  switch i32 %call.i36.i, label %do.end.i38.i [
    i32 0, label %saa7164_dvb_acquire_port.exit.i.do.body4.i41.i_crit_edge
    i32 38, label %saa7164_dvb_acquire_port.exit.i.do.body4.i41.i_crit_edge41
  ]

saa7164_dvb_acquire_port.exit.i.do.body4.i41.i_crit_edge41: ; preds = %saa7164_dvb_acquire_port.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body4.i41.i

saa7164_dvb_acquire_port.exit.i.do.body4.i41.i_crit_edge: ; preds = %saa7164_dvb_acquire_port.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body4.i41.i

do.end.i38.i:                                     ; preds = %saa7164_dvb_acquire_port.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  %call3.i37.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.121, ptr noundef nonnull @.str.122, i32 noundef %call.i36.i) #7
  br label %saa7164_dvb_stop_port.exit.i

do.body4.i41.i:                                   ; preds = %saa7164_dvb_acquire_port.exit.i.do.body4.i41.i_crit_edge, %saa7164_dvb_acquire_port.exit.i.do.body4.i41.i_crit_edge41
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %27 = load i32, ptr @saa_debug, align 4
  %and.i39.i = and i32 %27, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i39.i)
  %tobool.not.i40.i = icmp eq i32 %and.i39.i, 0
  br i1 %tobool.not.i40.i, label %do.body4.i41.i.saa7164_dvb_stop_port.exit.i_crit_edge, label %do.end8.i44.i

do.body4.i41.i.saa7164_dvb_stop_port.exit.i_crit_edge: ; preds = %do.body4.i41.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %saa7164_dvb_stop_port.exit.i

do.end8.i44.i:                                    ; preds = %do.body4.i41.i
  call void @__sanitizer_cov_trace_pc() #6
  %name.i42.i = getelementptr inbounds %struct.saa7164_dev, ptr %25, i32 0, i32 16
  %call10.i43.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.124, ptr noundef %name.i42.i, ptr noundef nonnull @.str.122) #7
  br label %saa7164_dvb_stop_port.exit.i

saa7164_dvb_stop_port.exit.i:                     ; preds = %do.end8.i44.i, %do.body4.i41.i.saa7164_dvb_stop_port.exit.i_crit_edge, %do.end.i38.i
  %ret.0.i.i = phi i32 [ -5, %do.end.i38.i ], [ 0, %do.end8.i44.i ], [ 0, %do.body4.i41.i.saa7164_dvb_stop_port.exit.i_crit_edge ]
  %dmaqueue_lock.i = getelementptr inbounds %struct.saa7164_port, ptr %3, i32 0, i32 13
  tail call void @mutex_lock_nested(ptr noundef %dmaqueue_lock.i, i32 noundef 0) #4
  %dmaqueue.i = getelementptr inbounds %struct.saa7164_port, ptr %3, i32 0, i32 14
  %28 = ptrtoint ptr %dmaqueue.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dmaqueue.i, align 8
  %cmp.i.not45.i = icmp eq ptr %29, %dmaqueue.i
  br i1 %cmp.i.not45.i, label %saa7164_dvb_stop_port.exit.i.saa7164_dvb_stop_streaming.exit_crit_edge, label %saa7164_dvb_stop_port.exit.i.for.body.i_crit_edge

saa7164_dvb_stop_port.exit.i.for.body.i_crit_edge: ; preds = %saa7164_dvb_stop_port.exit.i
  br label %for.body.i

saa7164_dvb_stop_port.exit.i.saa7164_dvb_stop_streaming.exit_crit_edge: ; preds = %saa7164_dvb_stop_port.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %saa7164_dvb_stop_streaming.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %saa7164_dvb_stop_port.exit.i.for.body.i_crit_edge
  %p.046.i = phi ptr [ %q.0.i, %for.body.i.for.body.i_crit_edge ], [ %29, %saa7164_dvb_stop_port.exit.i.for.body.i_crit_edge ]
  %30 = ptrtoint ptr %p.046.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %q.0.i = load ptr, ptr %p.046.i, align 4
  %flags.i = getelementptr inbounds %struct.saa7164_buffer, ptr %p.046.i, i32 0, i32 3
  %31 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 1, ptr %flags.i, align 4
  %cmp.i.not.i = icmp eq ptr %q.0.i, %dmaqueue.i
  br i1 %cmp.i.not.i, label %for.body.i.saa7164_dvb_stop_streaming.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i

for.body.i.saa7164_dvb_stop_streaming.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %saa7164_dvb_stop_streaming.exit

saa7164_dvb_stop_streaming.exit:                  ; preds = %for.body.i.saa7164_dvb_stop_streaming.exit_crit_edge, %saa7164_dvb_stop_port.exit.i.saa7164_dvb_stop_streaming.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %dmaqueue_lock.i) #4
  br label %if.end11

if.end11:                                         ; preds = %saa7164_dvb_stop_streaming.exit, %if.then8.if.end11_crit_edge
  %ret.0 = phi i32 [ %ret.0.i.i, %saa7164_dvb_stop_streaming.exit ], [ 0, %if.then8.if.end11_crit_edge ]
  tail call void @mutex_unlock(ptr noundef nonnull %dvb2) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %32 = load i32, ptr @saa_debug, align 4
  %and14 = and i32 %32, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %if.end11.if.end29_crit_edge, label %do.end19

if.end11.if.end29_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end29

do.end19:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #6
  %name21 = getelementptr inbounds %struct.saa7164_dev, ptr %5, i32 0, i32 16
  %nr23 = getelementptr inbounds %struct.saa7164_port, ptr %3, i32 0, i32 2
  %33 = ptrtoint ptr %nr23 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %nr23, align 8
  %35 = ptrtoint ptr %feeding to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %feeding, align 8
  %call25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.78, ptr noundef %name21, ptr noundef nonnull @.str.108, i32 noundef %34, i32 noundef %36) #7
  br label %if.end29

if.end29:                                         ; preds = %do.end19, %if.end11.if.end29_crit_edge, %do.end6.if.end29_crit_edge
  %ret.1 = phi i32 [ %ret.0, %do.end19 ], [ %ret.0, %if.end11.if.end29_crit_edge ], [ 0, %do.end6.if.end29_crit_edge ]
  ret i32 %ret.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_dmx_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_dmxdev_init(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_net_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @saa7164_buffer_cfg_port(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @saa7164_api_transition_port(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 110)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 110)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !7, !8, !9, !10, !12, !13, !14, !16, !17, !18, !19, !20, !22, !23, !24, !25, !26, !28, !29, !31, !32, !34, !35, !36, !37, !38, !40, !41, !43, !44, !46, !47, !48, !49, !50, !52, !53, !55, !57, !59, !60, !61, !63, !64, !65, !67, !68, !69, !70, !71, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !93, !94, !95, !97, !98, !99, !100, !102, !103, !104, !106, !107, !108, !110, !111, !112, !114, !115, !116, !118, !119, !120, !122, !123, !124, !126, !127, !128, !130, !131, !132, !134, !135, !136, !138, !139, !140, !142, !143, !144, !146, !147, !148, !150, !151, !152, !154, !155, !156, !158, !159, !160, !162, !163, !164, !166, !167, !168, !170, !171, !172, !174, !175, !176, !178, !179, !180, !182, !183, !184, !186, !187, !189, !190, !191, !193, !194, !195, !196, !198, !199, !201, !202, !203, !204, !206, !207, !208, !210, !211, !212, !213, !215, !216}
!llvm.module.flags = !{!217, !218, !219, !220, !221, !222, !223, !224}
!llvm.ident = !{!225}

!0 = !{ptr @__param_adapter_nr, !1, !"__param_adapter_nr", i1 false, i1 false}
!1 = !{!"../drivers/media/pci/saa7164/saa7164-dvb.c", i32 19, i32 1}
!2 = !{ptr @__UNIQUE_ID_adapter_nrtype385, !1, !"__UNIQUE_ID_adapter_nrtype385", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_adapter_nr386, !1, !"__UNIQUE_ID_adapter_nr386", i1 false, i1 false}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/media/pci/saa7164/saa7164-dvb.c", i32 479, i32 2}
!6 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @saa7164_dvb_unregister._entry, !5, !"_entry", i1 false, i1 false}
!9 = !{ptr @saa7164_dvb_unregister._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/media/pci/saa7164/saa7164-dvb.c", i32 536, i32 2}
!12 = !{ptr @saa7164_dvb_register._entry, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @saa7164_dvb_register._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/media/pci/saa7164/saa7164-dvb.c", i32 548, i32 25}
!16 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @saa7164_dvb_register._entry.6, !15, !"_entry", i1 false, i1 false}
!19 = !{ptr @saa7164_dvb_register._entry_ptr.8, !15, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/media/pci/saa7164/saa7164-dvb.c", i32 554, i32 5}
!22 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.12, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @saa7164_dvb_register._entry.11, !21, !"_entry", i1 false, i1 false}
!25 = !{ptr @saa7164_dvb_register._entry_ptr.13, !21, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @saa7164_dvb_register._entry.14, !27, !"_entry", i1 false, i1 false}
!27 = !{!"../drivers/media/pci/saa7164/saa7164-dvb.c", i32 561, i32 25}
!28 = !{ptr @saa7164_dvb_register._entry_ptr.15, !27, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @saa7164_dvb_register._entry.16, !30, !"_entry", i1 false, i1 false}
!30 = !{!"../drivers/media/pci/saa7164/saa7164-dvb.c", i32 567, i32 5}
!31 = !{ptr @saa7164_dvb_register._entry_ptr.17, !30, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.18, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/media/pci/saa7164/saa7164-dvb.c", i32 580, i32 24}
!34 = !{ptr @.str.19, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.21, !33, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @saa7164_dvb_register._entry.20, !33, !"_entry", i1 false, i1 false}
!37 = !{ptr @saa7164_dvb_register._entry_ptr.22, !33, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @saa7164_dvb_register._entry.23, !39, !"_entry", i1 false, i1 false}
!39 = !{!"../drivers/media/pci/saa7164/saa7164-dvb.c", i32 588, i32 5}
!40 = !{ptr @saa7164_dvb_register._entry_ptr.24, !39, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @saa7164_dvb_register._entry.25, !42, !"_entry", i1 false, i1 false}
!42 = !{!"../drivers/media/pci/saa7164/saa7164-dvb.c", i32 593, i32 5}
!43 = !{ptr @saa7164_dvb_register._entry_ptr.26, !42, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.27, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/media/pci/saa7164/saa7164-dvb.c", i32 605, i32 25}
!46 = !{ptr @.str.28, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.30, !45, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @saa7164_dvb_register._entry.29, !45, !"_entry", i1 false, i1 false}
!49 = !{ptr @saa7164_dvb_register._entry_ptr.31, !45, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @saa7164_dvb_register._entry.32, !51, !"_entry", i1 false, i1 false}
!51 = !{!"../drivers/media/pci/saa7164/saa7164-dvb.c", i32 608, i32 25}
!52 = !{ptr @saa7164_dvb_register._entry_ptr.33, !51, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.34, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/media/pci/saa7164/saa7164-dvb.c", i32 634, i32 23}
!55 = !{ptr @.str.35, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/media/pci/saa7164/saa7164-dvb.c", i32 653, i32 23}
!57 = !{ptr @.str.37, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/media/pci/saa7164/saa7164-dvb.c", i32 717, i32 3}
!59 = !{ptr @saa7164_dvb_register._entry.36, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @saa7164_dvb_register._entry_ptr.38, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.40, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/media/pci/saa7164/saa7164-dvb.c", i32 722, i32 3}
!63 = !{ptr @saa7164_dvb_register._entry.39, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @saa7164_dvb_register._entry_ptr.41, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.43, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/media/pci/saa7164/saa7164-dvb.c", i32 738, i32 2}
!67 = !{ptr @saa7164_dvb_register._entry.42, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @saa7164_dvb_register._entry_ptr.44, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @__param_str_adapter_nr, !1, !"__param_str_adapter_nr", i1 false, i1 false}
!70 = !{ptr @__param_arr_adapter_nr, !1, !"__param_arr_adapter_nr", i1 false, i1 false}
!71 = !{ptr @adapter_nr, !1, !"adapter_nr", i1 false, i1 false}
!72 = !{ptr @hauppauge_hvr2200_1_config, !73, !"hauppauge_hvr2200_1_config", i1 false, i1 false}
!73 = !{!"../drivers/media/pci/saa7164/saa7164-dvb.c", i32 22, i32 31}
!74 = !{ptr @hauppauge_hvr22x0_tuner_config, !75, !"hauppauge_hvr22x0_tuner_config", i1 false, i1 false}
!75 = !{!"../drivers/media/pci/saa7164/saa7164-dvb.c", i32 50, i32 31}
!76 = !{ptr @hauppauge_tda18271_std_map, !77, !"hauppauge_tda18271_std_map", i1 false, i1 false}
!77 = !{!"../drivers/media/pci/saa7164/saa7164-dvb.c", i32 43, i32 32}
!78 = !{ptr @hauppauge_hvr2200_2_config, !79, !"hauppauge_hvr2200_2_config", i1 false, i1 false}
!79 = !{!"../drivers/media/pci/saa7164/saa7164-dvb.c", i32 32, i32 31}
!80 = !{ptr @hauppauge_hvr22x0s_tuner_config, !81, !"hauppauge_hvr22x0s_tuner_config", i1 false, i1 false}
!81 = !{!"../drivers/media/pci/saa7164/saa7164-dvb.c", i32 56, i32 31}
!82 = !{ptr @hauppauge_s5h1411_config, !83, !"hauppauge_s5h1411_config", i1 false, i1 false}
!83 = !{!"../drivers/media/pci/saa7164/saa7164-dvb.c", i32 64, i32 30}
!84 = !{ptr @hauppauge_hvr2255a_config, !85, !"hauppauge_hvr2255a_config", i1 false, i1 false}
!85 = !{!"../drivers/media/pci/saa7164/saa7164-dvb.c", i32 74, i32 32}
!86 = !{ptr @hauppauge_hvr2255b_config, !87, !"hauppauge_hvr2255b_config", i1 false, i1 false}
!87 = !{!"../drivers/media/pci/saa7164/saa7164-dvb.c", i32 86, i32 32}
!88 = !{ptr @hauppauge_hvr2255_tuner_config, !89, !"hauppauge_hvr2255_tuner_config", i1 false, i1 false}
!89 = !{!"../drivers/media/pci/saa7164/saa7164-dvb.c", i32 98, i32 29}
!90 = !{ptr @.str.46, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/media/pci/saa7164/saa7164-dvb.c", i32 338, i32 2}
!92 = !{ptr @.str.47, !91, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @dvb_register._entry, !91, !"_entry", i1 false, i1 false}
!94 = !{ptr @dvb_register._entry_ptr, !91, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.49, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/media/pci/saa7164/saa7164-dvb.c", i32 345, i32 3}
!97 = !{ptr @dvb_register._entry.48, !96, !"_entry", i1 false, i1 false}
!98 = !{ptr @dvb_register._entry_ptr.50, !96, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.51, !96, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @.str.53, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/media/pci/saa7164/saa7164-dvb.c", i32 373, i32 4}
!102 = !{ptr @dvb_register._entry.52, !101, !"_entry", i1 false, i1 false}
!103 = !{ptr @dvb_register._entry_ptr.54, !101, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.56, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/media/pci/saa7164/saa7164-dvb.c", i32 387, i32 3}
!106 = !{ptr @dvb_register._entry.55, !105, !"_entry", i1 false, i1 false}
!107 = !{ptr @dvb_register._entry_ptr.57, !105, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @.str.59, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/media/pci/saa7164/saa7164-dvb.c", i32 396, i32 3}
!110 = !{ptr @dvb_register._entry.58, !109, !"_entry", i1 false, i1 false}
!111 = !{ptr @dvb_register._entry_ptr.60, !109, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @.str.62, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/media/pci/saa7164/saa7164-dvb.c", i32 412, i32 3}
!114 = !{ptr @dvb_register._entry.61, !113, !"_entry", i1 false, i1 false}
!115 = !{ptr @dvb_register._entry_ptr.63, !113, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @.str.65, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/media/pci/saa7164/saa7164-dvb.c", i32 422, i32 3}
!118 = !{ptr @dvb_register._entry.64, !117, !"_entry", i1 false, i1 false}
!119 = !{ptr @dvb_register._entry_ptr.66, !117, !"_entry_ptr", i1 false, i1 false}
!120 = !{ptr @.str.68, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/media/pci/saa7164/saa7164-dvb.c", i32 430, i32 3}
!122 = !{ptr @dvb_register._entry.67, !121, !"_entry", i1 false, i1 false}
!123 = !{ptr @dvb_register._entry_ptr.69, !121, !"_entry_ptr", i1 false, i1 false}
!124 = !{ptr @.str.71, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/media/pci/saa7164/saa7164-dvb.c", i32 438, i32 3}
!126 = !{ptr @dvb_register._entry.70, !125, !"_entry", i1 false, i1 false}
!127 = !{ptr @dvb_register._entry_ptr.72, !125, !"_entry_ptr", i1 false, i1 false}
!128 = !{ptr @.str.74, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/media/pci/saa7164/saa7164-dvb.c", i32 445, i32 3}
!130 = !{ptr @dvb_register._entry.73, !129, !"_entry", i1 false, i1 false}
!131 = !{ptr @dvb_register._entry_ptr.75, !129, !"_entry_ptr", i1 false, i1 false}
!132 = !{ptr @.str.76, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/media/pci/saa7164/saa7164-dvb.c", i32 288, i32 2}
!134 = !{ptr @saa7164_dvb_start_feed._entry, !133, !"_entry", i1 false, i1 false}
!135 = !{ptr @saa7164_dvb_start_feed._entry_ptr, !133, !"_entry_ptr", i1 false, i1 false}
!136 = !{ptr @.str.78, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/media/pci/saa7164/saa7164-dvb.c", i32 300, i32 3}
!138 = !{ptr @saa7164_dvb_start_feed._entry.77, !137, !"_entry", i1 false, i1 false}
!139 = !{ptr @saa7164_dvb_start_feed._entry_ptr.79, !137, !"_entry_ptr", i1 false, i1 false}
!140 = !{ptr @.str.80, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/media/pci/saa7164/saa7164-dvb.c", i32 220, i32 2}
!142 = !{ptr @saa7164_dvb_start_port._entry, !141, !"_entry", i1 false, i1 false}
!143 = !{ptr @saa7164_dvb_start_port._entry_ptr, !141, !"_entry_ptr", i1 false, i1 false}
!144 = !{ptr @.str.82, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/media/pci/saa7164/saa7164-dvb.c", i32 227, i32 3}
!146 = !{ptr @saa7164_dvb_start_port._entry.81, !145, !"_entry", i1 false, i1 false}
!147 = !{ptr @saa7164_dvb_start_port._entry_ptr.83, !145, !"_entry_ptr", i1 false, i1 false}
!148 = !{ptr @.str.85, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/media/pci/saa7164/saa7164-dvb.c", i32 233, i32 4}
!150 = !{ptr @saa7164_dvb_start_port._entry.84, !149, !"_entry", i1 false, i1 false}
!151 = !{ptr @saa7164_dvb_start_port._entry_ptr.86, !149, !"_entry_ptr", i1 false, i1 false}
!152 = !{ptr @.str.88, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/media/pci/saa7164/saa7164-dvb.c", i32 239, i32 3}
!154 = !{ptr @saa7164_dvb_start_port._entry.87, !153, !"_entry", i1 false, i1 false}
!155 = !{ptr @saa7164_dvb_start_port._entry_ptr.89, !153, !"_entry_ptr", i1 false, i1 false}
!156 = !{ptr @.str.91, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/media/pci/saa7164/saa7164-dvb.c", i32 244, i32 3}
!158 = !{ptr @saa7164_dvb_start_port._entry.90, !157, !"_entry", i1 false, i1 false}
!159 = !{ptr @saa7164_dvb_start_port._entry_ptr.92, !157, !"_entry_ptr", i1 false, i1 false}
!160 = !{ptr @.str.94, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/media/pci/saa7164/saa7164-dvb.c", i32 250, i32 4}
!162 = !{ptr @saa7164_dvb_start_port._entry.93, !161, !"_entry", i1 false, i1 false}
!163 = !{ptr @saa7164_dvb_start_port._entry_ptr.95, !161, !"_entry_ptr", i1 false, i1 false}
!164 = !{ptr @.str.97, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/media/pci/saa7164/saa7164-dvb.c", i32 257, i32 3}
!166 = !{ptr @saa7164_dvb_start_port._entry.96, !165, !"_entry", i1 false, i1 false}
!167 = !{ptr @saa7164_dvb_start_port._entry_ptr.98, !165, !"_entry_ptr", i1 false, i1 false}
!168 = !{ptr @.str.100, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/media/pci/saa7164/saa7164-dvb.c", i32 262, i32 3}
!170 = !{ptr @saa7164_dvb_start_port._entry.99, !169, !"_entry", i1 false, i1 false}
!171 = !{ptr @saa7164_dvb_start_port._entry_ptr.101, !169, !"_entry_ptr", i1 false, i1 false}
!172 = !{ptr @.str.103, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/media/pci/saa7164/saa7164-dvb.c", i32 268, i32 4}
!174 = !{ptr @saa7164_dvb_start_port._entry.102, !173, !"_entry", i1 false, i1 false}
!175 = !{ptr @saa7164_dvb_start_port._entry_ptr.104, !173, !"_entry_ptr", i1 false, i1 false}
!176 = !{ptr @.str.106, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/media/pci/saa7164/saa7164-dvb.c", i32 274, i32 3}
!178 = !{ptr @saa7164_dvb_start_port._entry.105, !177, !"_entry", i1 false, i1 false}
!179 = !{ptr @saa7164_dvb_start_port._entry_ptr.107, !177, !"_entry_ptr", i1 false, i1 false}
!180 = !{ptr @.str.108, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/media/pci/saa7164/saa7164-dvb.c", i32 315, i32 2}
!182 = !{ptr @saa7164_dvb_stop_feed._entry, !181, !"_entry", i1 false, i1 false}
!183 = !{ptr @saa7164_dvb_stop_feed._entry_ptr, !181, !"_entry_ptr", i1 false, i1 false}
!184 = !{ptr @saa7164_dvb_stop_feed._entry.109, !185, !"_entry", i1 false, i1 false}
!185 = !{!"../drivers/media/pci/saa7164/saa7164-dvb.c", i32 324, i32 3}
!186 = !{ptr @saa7164_dvb_stop_feed._entry_ptr.110, !185, !"_entry_ptr", i1 false, i1 false}
!187 = !{ptr @.str.111, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/media/pci/saa7164/saa7164-dvb.c", i32 198, i32 2}
!189 = !{ptr @saa7164_dvb_stop_streaming._entry, !188, !"_entry", i1 false, i1 false}
!190 = !{ptr @saa7164_dvb_stop_streaming._entry_ptr, !188, !"_entry_ptr", i1 false, i1 false}
!191 = !{ptr @.str.112, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/media/pci/saa7164/saa7164-dvb.c", i32 176, i32 3}
!193 = !{ptr @.str.113, !192, !"<string literal>", i1 false, i1 false}
!194 = !{ptr @saa7164_dvb_pause_port._entry, !192, !"_entry", i1 false, i1 false}
!195 = !{ptr @saa7164_dvb_pause_port._entry_ptr, !192, !"_entry_ptr", i1 false, i1 false}
!196 = !{ptr @saa7164_dvb_pause_port._entry.114, !197, !"_entry", i1 false, i1 false}
!197 = !{!"../drivers/media/pci/saa7164/saa7164-dvb.c", i32 180, i32 3}
!198 = !{ptr @saa7164_dvb_pause_port._entry_ptr.115, !197, !"_entry_ptr", i1 false, i1 false}
!199 = !{ptr @.str.116, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/media/pci/saa7164/saa7164-dvb.c", i32 158, i32 3}
!201 = !{ptr @.str.117, !200, !"<string literal>", i1 false, i1 false}
!202 = !{ptr @saa7164_dvb_acquire_port._entry, !200, !"_entry", i1 false, i1 false}
!203 = !{ptr @saa7164_dvb_acquire_port._entry_ptr, !200, !"_entry_ptr", i1 false, i1 false}
!204 = !{ptr @.str.119, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/media/pci/saa7164/saa7164-dvb.c", i32 162, i32 3}
!206 = !{ptr @saa7164_dvb_acquire_port._entry.118, !205, !"_entry", i1 false, i1 false}
!207 = !{ptr @saa7164_dvb_acquire_port._entry_ptr.120, !205, !"_entry_ptr", i1 false, i1 false}
!208 = !{ptr @.str.121, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/media/pci/saa7164/saa7164-dvb.c", i32 140, i32 3}
!210 = !{ptr @.str.122, !209, !"<string literal>", i1 false, i1 false}
!211 = !{ptr @saa7164_dvb_stop_port._entry, !209, !"_entry", i1 false, i1 false}
!212 = !{ptr @saa7164_dvb_stop_port._entry_ptr, !209, !"_entry_ptr", i1 false, i1 false}
!213 = !{ptr @.str.124, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/media/pci/saa7164/saa7164-dvb.c", i32 144, i32 3}
!215 = !{ptr @saa7164_dvb_stop_port._entry.123, !214, !"_entry", i1 false, i1 false}
!216 = !{ptr @saa7164_dvb_stop_port._entry_ptr.125, !214, !"_entry_ptr", i1 false, i1 false}
!217 = !{i32 1, !"wchar_size", i32 2}
!218 = !{i32 1, !"min_enum_size", i32 4}
!219 = !{i32 8, !"branch-target-enforcement", i32 0}
!220 = !{i32 8, !"sign-return-address", i32 0}
!221 = !{i32 8, !"sign-return-address-all", i32 0}
!222 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!223 = !{i32 7, !"uwtable", i32 1}
!224 = !{i32 7, !"frame-pointer", i32 2}
!225 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!226 = !{!"branch_weights", i32 2000, i32 1}
!227 = !{i64 2158547320, i64 2158547824, i64 2158547357, i64 2158547413, i64 2158547447, i64 2158547471, i64 2158547512, i64 2158547533, i64 2158547561, i64 2158547595}
!228 = !{!"auto-init"}
!229 = !{i64 2158529204, i64 2158529708, i64 2158529241, i64 2158529297, i64 2158529331, i64 2158529355, i64 2158529396, i64 2158529417, i64 2158529445, i64 2158529479}
