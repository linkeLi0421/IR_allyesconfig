; ModuleID = '/llk/IR_all_yes/drivers/media/usb/dvb-usb-v2/dvbsky.c_pt.bc'
source_filename = "../drivers/media/usb/dvb-usb-v2/dvbsky.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.101 }
%union.anon.101 = type { ptr }
%struct.kparam_array = type { i32, i32, ptr, ptr, ptr }
%struct.usb_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.usb_dynids, %struct.usbdrv_wrap, i8 }
%struct.usb_dynids = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.usbdrv_wrap = type { %struct.device_driver, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.usb_device_id = type { i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i32 }
%struct.dvb_usb_driver_info = type { ptr, ptr, ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.126 = type { i32 }
%struct.dvb_usb_adapter_properties = type { i8, i8, ptr, ptr, %struct.usb_data_stream_properties }
%struct.usb_data_stream_properties = type { i8, i8, i8, %union.anon.125 }
%union.anon.125 = type { %struct.anon.127 }
%struct.anon.127 = type { i32, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.dvb_usb_device = type { ptr, ptr, ptr, i8, ptr, ptr, %struct.dvb_usb_rc, i32, %struct.mutex, %struct.mutex, %struct.i2c_adapter, [2 x %struct.dvb_usb_adapter], ptr, [64 x i8], %struct.delayed_work, ptr }
%struct.dvb_usb_rc = type { ptr, i64, ptr, ptr, i32, i32, i8, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.dvb_usb_adapter = type { ptr, %struct.usb_data_stream, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dvb_adapter, %struct.dmxdev, %struct.dvb_demux, %struct.dvb_net, [3 x ptr], [3 x ptr], [3 x ptr] }
%struct.usb_data_stream = type { ptr, %struct.usb_data_stream_properties, i8, ptr, [10 x ptr], i32, i32, [10 x ptr], [10 x i32], i32, i32, ptr }
%struct.dvb_adapter = type { i32, %struct.list_head, %struct.list_head, ptr, [6 x i8], ptr, ptr, ptr, i32, ptr, %struct.mutex, %struct.mutex, ptr, ptr, ptr }
%struct.dmxdev = type { ptr, ptr, ptr, ptr, i32, i32, i8, ptr, %struct.dvb_ringbuffer, %struct.dvb_vb2_ctx, %struct.mutex, %struct.spinlock }
%struct.dvb_ringbuffer = type { ptr, i32, i32, i32, i32, %struct.wait_queue_head, %struct.spinlock }
%struct.dvb_vb2_ctx = type { %struct.vb2_queue, %struct.mutex, %struct.spinlock, %struct.list_head, ptr, i32, i32, i32, i32, i32, i32, i32, i32, [21 x i8] }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.dvb_demux = type { %struct.dmx_demux, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, %struct.list_head, [20 x ptr], [20 x i16], %struct.list_head, [204 x i8], i32, %struct.mutex, %struct.spinlock, ptr, i64, i32, i32, i32 }
%struct.dmx_demux = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_net = type { ptr, [10 x ptr], [10 x i32], i8, ptr, %struct.mutex }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
%struct.dvbsky_state = type { [64 x i8], [64 x i8], i8, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.m88ds3103_platform_data = type { i32, i16, i32, i32, i32, i8, i8, i8, ptr, ptr, i8 }
%struct.ts2020_config = type { i8, i32, i16, ptr, i8, ptr }
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
%struct.sp2_config = type { ptr, ptr, ptr }
%struct.si2168_config = type { ptr, ptr, i8, i8 }
%struct.si2157_config = type { ptr, ptr, i8, i8 }

@__param_str_disable_rc = internal constant [26 x i8] c"dvb_usb_dvbsky.disable_rc\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@dvb_usb_dvbsky_disable_rc = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_disable_rc = internal constant %struct.kernel_param { ptr @__param_str_disable_rc, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.101 { ptr @dvb_usb_dvbsky_disable_rc } }, section "__param", align 4
@__UNIQUE_ID_disable_rctype386 = internal constant [39 x i8] c"dvb_usb_dvbsky.parmtype=disable_rc:int\00", section ".modinfo", align 1
@__UNIQUE_ID_disable_rc387 = internal constant [60 x i8] c"dvb_usb_dvbsky.parm=disable_rc:Disable inbuilt IR receiver.\00", section ".modinfo", align 1
@__param_str_adapter_nr = internal constant [26 x i8] c"dvb_usb_dvbsky.adapter_nr\00", align 1
@param_array_ops = external dso_local constant %struct.kernel_param_ops, align 4
@__param_arr_adapter_nr = internal constant %struct.kparam_array { i32 16, i32 2, ptr null, ptr @param_ops_short, ptr @adapter_nr }, align 4
@__param_adapter_nr = internal constant %struct.kernel_param { ptr @__param_str_adapter_nr, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.101 { ptr @__param_arr_adapter_nr } }, section "__param", align 4
@__UNIQUE_ID_adapter_nrtype388 = internal constant [50 x i8] c"dvb_usb_dvbsky.parmtype=adapter_nr:array of short\00", section ".modinfo", align 1
@__UNIQUE_ID_adapter_nr389 = internal constant [51 x i8] c"dvb_usb_dvbsky.parm=adapter_nr:DVB adapter numbers\00", section ".modinfo", align 1
@__initcall__kmod_dvb_usb_dvbsky__392_825_dvbsky_usb_driver_init6 = internal global ptr @dvbsky_usb_driver_init, section ".initcall6.init", align 4
@dvbsky_usb_driver = internal global { %struct.usb_driver, [44 x i8] } { %struct.usb_driver { ptr @.str, ptr @dvb_usbv2_probe, ptr @dvb_usbv2_disconnect, ptr null, ptr @dvb_usbv2_suspend, ptr @dvb_usbv2_resume, ptr @dvb_usbv2_reset_resume, ptr null, ptr null, ptr @dvbsky_id_table, ptr null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 -112 }, [44 x i8] zeroinitializer }, align 32
@__exitcall_dvbsky_usb_driver_exit = internal global ptr @dvbsky_usb_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author393 = internal constant [56 x i8] c"dvb_usb_dvbsky.author=Max nibble <nibble.max@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description394 = internal constant [49 x i8] c"dvb_usb_dvbsky.description=Driver for DVBSky USB\00", section ".modinfo", align 1
@__UNIQUE_ID_file395 = internal constant [64 x i8] c"dvb_usb_dvbsky.file=drivers/media/usb/dvb-usb-v2/dvb-usb-dvbsky\00", section ".modinfo", align 1
@__UNIQUE_ID_license396 = internal constant [27 x i8] c"dvb_usb_dvbsky.license=GPL\00", section ".modinfo", align 1
@param_ops_short = external dso_local constant %struct.kernel_param_ops, align 4
@adapter_nr = internal global { [16 x i16], [32 x i8] } { [16 x i16] [i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1], [32 x i8] zeroinitializer }, align 32
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"dvb_usb_dvbsky\00", [17 x i8] zeroinitializer }, align 32
@dvbsky_id_table = internal constant { [17 x %struct.usb_device_id], [104 x i8] } { [17 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 1394, i16 26673, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral to i32) }, %struct.usb_device_id { i16 3, i16 1394, i16 -27124, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.4 to i32) }, %struct.usb_device_id { i16 3, i16 1394, i16 26636, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.6 to i32) }, %struct.usb_device_id { i16 3, i16 1394, i16 800, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.8 to i32) }, %struct.usb_device_id { i16 3, i16 2888, i16 12308, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.11 to i32) }, %struct.usb_device_id { i16 3, i16 2888, i16 12306, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.13 to i32) }, %struct.usb_device_id { i16 3, i16 2888, i16 12309, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.15 to i32) }, %struct.usb_device_id { i16 3, i16 2888, i16 12311, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.17 to i32) }, %struct.usb_device_id { i16 3, i16 3277, i16 4261, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.19 to i32) }, %struct.usb_device_id { i16 3, i16 3277, i16 261, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.21 to i32) }, %struct.usb_device_id { i16 3, i16 1394, i16 -14712, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.24 to i32) }, %struct.usb_device_id { i16 3, i16 1394, i16 -14711, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.26 to i32) }, %struct.usb_device_id { i16 3, i16 1394, i16 -14695, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.28 to i32) }, %struct.usb_device_id { i16 3, i16 1394, i16 -14710, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.30 to i32) }, %struct.usb_device_id { i16 3, i16 1394, i16 -14694, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.32 to i32) }, %struct.usb_device_id { i16 3, i16 1394, i16 26778, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.34 to i32) }, %struct.usb_device_id zeroinitializer], [104 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"DVBSky S960/S860\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"rc-dvbsky\00", [22 x i8] zeroinitializer }, align 32
@.compoundliteral = internal constant { %struct.dvb_usb_driver_info, [20 x i8] } { %struct.dvb_usb_driver_info { ptr @.str.1, ptr @.str.2, ptr @dvbsky_s960_props }, [20 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"DVBSky S960CI\00", [18 x i8] zeroinitializer }, align 32
@.compoundliteral.4 = internal constant { %struct.dvb_usb_driver_info, [20 x i8] } { %struct.dvb_usb_driver_info { ptr @.str.3, ptr @.str.2, ptr @dvbsky_s960c_props }, [20 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"DVBSky T680CI\00", [18 x i8] zeroinitializer }, align 32
@.compoundliteral.6 = internal constant { %struct.dvb_usb_driver_info, [20 x i8] } { %struct.dvb_usb_driver_info { ptr @.str.5, ptr @.str.2, ptr @dvbsky_t680c_props }, [20 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"DVBSky T330\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.8 = internal constant { %struct.dvb_usb_driver_info, [20 x i8] } { %struct.dvb_usb_driver_info { ptr @.str.7, ptr @.str.2, ptr @dvbsky_t330_props }, [20 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"TechnoTrend TVStick CT2-4400\00", [35 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"rc-tt-1500\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.11 = internal constant { %struct.dvb_usb_driver_info, [20 x i8] } { %struct.dvb_usb_driver_info { ptr @.str.9, ptr @.str.10, ptr @dvbsky_t330_props }, [20 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"TechnoTrend TT-connect CT2-4650 CI\00", [61 x i8] zeroinitializer }, align 32
@.compoundliteral.13 = internal constant { %struct.dvb_usb_driver_info, [20 x i8] } { %struct.dvb_usb_driver_info { ptr @.str.12, ptr @.str.10, ptr @dvbsky_t680c_props }, [20 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"TechnoTrend TT-connect CT2-4650 CI v1.1\00", [56 x i8] zeroinitializer }, align 32
@.compoundliteral.15 = internal constant { %struct.dvb_usb_driver_info, [20 x i8] } { %struct.dvb_usb_driver_info { ptr @.str.14, ptr @.str.10, ptr @dvbsky_t680c_props }, [20 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"TechnoTrend TT-connect S2-4650 CI\00", [62 x i8] zeroinitializer }, align 32
@.compoundliteral.17 = internal constant { %struct.dvb_usb_driver_info, [20 x i8] } { %struct.dvb_usb_driver_info { ptr @.str.16, ptr @.str.10, ptr @dvbsky_s960c_props }, [20 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Terratec H7 Rev.4\00", [46 x i8] zeroinitializer }, align 32
@.compoundliteral.19 = internal constant { %struct.dvb_usb_driver_info, [20 x i8] } { %struct.dvb_usb_driver_info { ptr @.str.18, ptr @.str.10, ptr @dvbsky_t680c_props }, [20 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Terratec Cinergy S2 Rev.4\00", [38 x i8] zeroinitializer }, align 32
@.compoundliteral.21 = internal constant { %struct.dvb_usb_driver_info, [20 x i8] } { %struct.dvb_usb_driver_info { ptr @.str.20, ptr @.str.2, ptr @dvbsky_s960_props }, [20 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"MyGica Mini DVB-(T/T2/C) USB Stick T230\00", [56 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"rc-total-media-in-hand-02\00", [38 x i8] zeroinitializer }, align 32
@.compoundliteral.24 = internal constant { %struct.dvb_usb_driver_info, [20 x i8] } { %struct.dvb_usb_driver_info { ptr @.str.22, ptr @.str.23, ptr @mygica_t230c_props }, [20 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"MyGica Mini DVB-(T/T2/C) USB Stick T230C\00", [55 x i8] zeroinitializer }, align 32
@.compoundliteral.26 = internal constant { %struct.dvb_usb_driver_info, [20 x i8] } { %struct.dvb_usb_driver_info { ptr @.str.25, ptr @.str.23, ptr @mygica_t230c_props }, [20 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"MyGica Mini DVB-(T/T2/C) USB Stick T230C Lite\00", [50 x i8] zeroinitializer }, align 32
@.compoundliteral.28 = internal constant { %struct.dvb_usb_driver_info, [20 x i8] } { %struct.dvb_usb_driver_info { ptr @.str.27, ptr null, ptr @mygica_t230c_props }, [20 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"MyGica Mini DVB-(T/T2/C) USB Stick T230C v2\00", [52 x i8] zeroinitializer }, align 32
@.compoundliteral.30 = internal constant { %struct.dvb_usb_driver_info, [20 x i8] } { %struct.dvb_usb_driver_info { ptr @.str.29, ptr @.str.23, ptr @mygica_t230c_props }, [20 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"MyGica Mini DVB-(T/T2/C) USB Stick T230C v2  Lite\00", [46 x i8] zeroinitializer }, align 32
@.compoundliteral.32 = internal constant { %struct.dvb_usb_driver_info, [20 x i8] } { %struct.dvb_usb_driver_info { ptr @.str.31, ptr null, ptr @mygica_t230c_props }, [20 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"MyGica Mini DVB-(T/T2/C) USB Stick T230A\00", [55 x i8] zeroinitializer }, align 32
@.compoundliteral.34 = internal constant { %struct.dvb_usb_driver_info, [20 x i8] } { %struct.dvb_usb_driver_info { ptr @.str.33, ptr null, ptr @mygica_t230c_props }, [20 x i8] zeroinitializer }, align 32
@dvbsky_i2c_algo = internal global { %struct.i2c_algorithm, [36 x i8] } { %struct.i2c_algorithm { ptr @dvbsky_i2c_xfer, ptr null, ptr null, ptr null, ptr @dvbsky_i2c_func, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@dvbsky_s960_props = internal global { { ptr, ptr, ptr, i8, i32, i8, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, <{ { i8, i8, ptr, ptr, { i8, i8, i8, { %struct.anon.126, [8 x i8] } } }, %struct.dvb_usb_adapter_properties }>, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }, [56 x i8] } { { ptr, ptr, ptr, i8, i32, i8, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, <{ { i8, i8, ptr, ptr, { i8, i8, i8, { %struct.anon.126, [8 x i8] } } }, %struct.dvb_usb_adapter_properties }>, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @.str, ptr null, ptr @adapter_nr, i8 0, i32 152, i8 1, i8 -127, i32 0, ptr null, ptr null, ptr @dvbsky_identify_state, ptr null, ptr null, ptr @dvbsky_i2c_algo, i32 1, ptr null, <{ { i8, i8, ptr, ptr, { i8, i8, i8, { %struct.anon.126, [8 x i8] } } }, %struct.dvb_usb_adapter_properties }> <{ { i8, i8, ptr, ptr, { i8, i8, i8, { %struct.anon.126, [8 x i8] } } } { i8 0, i8 0, ptr null, ptr null, { i8, i8, i8, { %struct.anon.126, [8 x i8] } } { i8 1, i8 8, i8 -126, { %struct.anon.126, [8 x i8] } { %struct.anon.126 { i32 4096 }, [8 x i8] undef } } }, %struct.dvb_usb_adapter_properties zeroinitializer }>, ptr null, ptr null, ptr @dvbsky_read_mac_addr, ptr @dvbsky_s960_attach, ptr @dvbsky_frontend_detach, ptr null, ptr null, ptr null, ptr @dvbsky_streaming_ctrl, ptr @dvbsky_init, ptr null, ptr @dvbsky_get_rc_config, ptr null }, [56 x i8] zeroinitializer }, align 32
@dvbsky_i2c_xfer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str.38, i32 111, ptr @.str.39, ptr @.str.40 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"too many i2c messages[%d], max 2.\00", [62 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"dvbsky_i2c_xfer\00", [16 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/media/usb/dvb-usb-v2/dvbsky.c\00", [58 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@dvbsky_i2c_xfer._entry_ptr = internal global ptr @dvbsky_i2c_xfer._entry, section ".printk_index", align 4
@dvbsky_i2c_xfer._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.37, ptr @.str.38, i32 120, ptr @.str.39, ptr @.str.40 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"too many i2c bytes[%d], max 60.\00", [32 x i8] zeroinitializer }, align 32
@dvbsky_i2c_xfer._entry_ptr.43 = internal global ptr @dvbsky_i2c_xfer._entry.41, section ".printk_index", align 4
@dvbsky_i2c_xfer._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.37, ptr @.str.38, i32 147, ptr @.str.39, ptr @.str.40 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"too many i2c bytes[w-%d][r-%d], max 60.\00", [56 x i8] zeroinitializer }, align 32
@dvbsky_i2c_xfer._entry_ptr.46 = internal global ptr @dvbsky_i2c_xfer._entry.44, section ".printk_index", align 4
@.str.47 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"m88ds3103\00", [22 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ts2020\00", [25 x i8] zeroinitializer }, align 32
@dvbsky_stream_ctrl.obuf_pre = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"7\00\00", [29 x i8] zeroinitializer }, align 32
@dvbsky_stream_ctrl.obuf_post = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"6\03\00", [29 x i8] zeroinitializer }, align 32
@dvbsky_frontend_detach.__UNIQUE_ID_ddebug391 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.49, ptr @.str.38, ptr @.str.50, i8 0, i8 -103, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.49 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"dvbsky_frontend_detach\00", [41 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"%s: adap=%d\0A\00", [19 x i8] zeroinitializer }, align 32
@dvbsky_rc_query.__UNIQUE_ID_ddebug390 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.51, ptr @.str.38, ptr @.str.52, i8 0, i8 47, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.51 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"dvbsky_rc_query\00", [16 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"rc code: %x\0A\00", [19 x i8] zeroinitializer }, align 32
@dvbsky_s960c_props = internal global { { ptr, ptr, ptr, i8, i32, i8, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, <{ { i8, i8, ptr, ptr, { i8, i8, i8, { %struct.anon.126, [8 x i8] } } }, %struct.dvb_usb_adapter_properties }>, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }, [56 x i8] } { { ptr, ptr, ptr, i8, i32, i8, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, <{ { i8, i8, ptr, ptr, { i8, i8, i8, { %struct.anon.126, [8 x i8] } } }, %struct.dvb_usb_adapter_properties }>, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @.str, ptr null, ptr @adapter_nr, i8 0, i32 152, i8 1, i8 -127, i32 0, ptr null, ptr null, ptr @dvbsky_identify_state, ptr null, ptr null, ptr @dvbsky_i2c_algo, i32 1, ptr null, <{ { i8, i8, ptr, ptr, { i8, i8, i8, { %struct.anon.126, [8 x i8] } } }, %struct.dvb_usb_adapter_properties }> <{ { i8, i8, ptr, ptr, { i8, i8, i8, { %struct.anon.126, [8 x i8] } } } { i8 0, i8 0, ptr null, ptr null, { i8, i8, i8, { %struct.anon.126, [8 x i8] } } { i8 1, i8 8, i8 -126, { %struct.anon.126, [8 x i8] } { %struct.anon.126 { i32 4096 }, [8 x i8] undef } } }, %struct.dvb_usb_adapter_properties zeroinitializer }>, ptr null, ptr null, ptr @dvbsky_read_mac_addr, ptr @dvbsky_s960c_attach, ptr @dvbsky_frontend_detach, ptr null, ptr null, ptr null, ptr @dvbsky_streaming_ctrl, ptr @dvbsky_init, ptr null, ptr @dvbsky_get_rc_config, ptr null }, [56 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"sp2\00", [28 x i8] zeroinitializer }, align 32
@dvbsky_ci_ctrl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.56, ptr @.str.38, i32 372, ptr @.str.39, ptr @.str.40 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ci control failed=%d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"dvbsky_ci_ctrl\00", [17 x i8] zeroinitializer }, align 32
@dvbsky_ci_ctrl._entry_ptr = internal global ptr @dvbsky_ci_ctrl._entry, section ".printk_index", align 4
@dvbsky_t680c_props = internal global { { ptr, ptr, ptr, i8, i32, i8, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, <{ { i8, i8, ptr, ptr, { i8, i8, i8, { %struct.anon.126, [8 x i8] } } }, %struct.dvb_usb_adapter_properties }>, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }, [56 x i8] } { { ptr, ptr, ptr, i8, i32, i8, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, <{ { i8, i8, ptr, ptr, { i8, i8, i8, { %struct.anon.126, [8 x i8] } } }, %struct.dvb_usb_adapter_properties }>, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @.str, ptr null, ptr @adapter_nr, i8 0, i32 152, i8 1, i8 -127, i32 0, ptr null, ptr null, ptr @dvbsky_identify_state, ptr null, ptr null, ptr @dvbsky_i2c_algo, i32 1, ptr null, <{ { i8, i8, ptr, ptr, { i8, i8, i8, { %struct.anon.126, [8 x i8] } } }, %struct.dvb_usb_adapter_properties }> <{ { i8, i8, ptr, ptr, { i8, i8, i8, { %struct.anon.126, [8 x i8] } } } { i8 0, i8 0, ptr null, ptr null, { i8, i8, i8, { %struct.anon.126, [8 x i8] } } { i8 1, i8 8, i8 -126, { %struct.anon.126, [8 x i8] } { %struct.anon.126 { i32 4096 }, [8 x i8] undef } } }, %struct.dvb_usb_adapter_properties zeroinitializer }>, ptr null, ptr null, ptr @dvbsky_read_mac_addr, ptr @dvbsky_t680c_attach, ptr @dvbsky_frontend_detach, ptr null, ptr null, ptr null, ptr @dvbsky_streaming_ctrl, ptr @dvbsky_init, ptr null, ptr @dvbsky_get_rc_config, ptr null }, [56 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"si2168\00", [25 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"si2157\00", [25 x i8] zeroinitializer }, align 32
@dvbsky_t330_props = internal global { { ptr, ptr, ptr, i8, i32, i8, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, <{ { i8, i8, ptr, ptr, { i8, i8, i8, { %struct.anon.126, [8 x i8] } } }, %struct.dvb_usb_adapter_properties }>, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }, [56 x i8] } { { ptr, ptr, ptr, i8, i32, i8, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, <{ { i8, i8, ptr, ptr, { i8, i8, i8, { %struct.anon.126, [8 x i8] } } }, %struct.dvb_usb_adapter_properties }>, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @.str, ptr null, ptr @adapter_nr, i8 0, i32 152, i8 1, i8 -127, i32 0, ptr null, ptr null, ptr @dvbsky_identify_state, ptr null, ptr null, ptr @dvbsky_i2c_algo, i32 1, ptr null, <{ { i8, i8, ptr, ptr, { i8, i8, i8, { %struct.anon.126, [8 x i8] } } }, %struct.dvb_usb_adapter_properties }> <{ { i8, i8, ptr, ptr, { i8, i8, i8, { %struct.anon.126, [8 x i8] } } } { i8 0, i8 0, ptr null, ptr null, { i8, i8, i8, { %struct.anon.126, [8 x i8] } } { i8 1, i8 8, i8 -126, { %struct.anon.126, [8 x i8] } { %struct.anon.126 { i32 4096 }, [8 x i8] undef } } }, %struct.dvb_usb_adapter_properties zeroinitializer }>, ptr null, ptr null, ptr @dvbsky_read_mac_addr, ptr @dvbsky_t330_attach, ptr @dvbsky_frontend_detach, ptr null, ptr null, ptr null, ptr @dvbsky_streaming_ctrl, ptr @dvbsky_init, ptr null, ptr @dvbsky_get_rc_config, ptr null }, [56 x i8] zeroinitializer }, align 32
@mygica_t230c_props = internal global { { ptr, ptr, ptr, i8, i32, i8, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, <{ { i8, i8, ptr, ptr, { i8, i8, i8, { %struct.anon.126, [8 x i8] } } }, %struct.dvb_usb_adapter_properties }>, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }, [56 x i8] } { { ptr, ptr, ptr, i8, i32, i8, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, <{ { i8, i8, ptr, ptr, { i8, i8, i8, { %struct.anon.126, [8 x i8] } } }, %struct.dvb_usb_adapter_properties }>, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @.str, ptr null, ptr @adapter_nr, i8 0, i32 152, i8 1, i8 -127, i32 0, ptr null, ptr null, ptr @dvbsky_identify_state, ptr null, ptr null, ptr @dvbsky_i2c_algo, i32 1, ptr null, <{ { i8, i8, ptr, ptr, { i8, i8, i8, { %struct.anon.126, [8 x i8] } } }, %struct.dvb_usb_adapter_properties }> <{ { i8, i8, ptr, ptr, { i8, i8, i8, { %struct.anon.126, [8 x i8] } } } { i8 0, i8 0, ptr null, ptr null, { i8, i8, i8, { %struct.anon.126, [8 x i8] } } { i8 1, i8 8, i8 -126, { %struct.anon.126, [8 x i8] } { %struct.anon.126 { i32 4096 }, [8 x i8] undef } } }, %struct.dvb_usb_adapter_properties zeroinitializer }>, ptr null, ptr null, ptr null, ptr @dvbsky_mygica_t230c_attach, ptr @dvbsky_frontend_detach, ptr null, ptr null, ptr null, ptr @dvbsky_streaming_ctrl, ptr @dvbsky_init, ptr null, ptr @dvbsky_get_rc_config, ptr null }, [56 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"si2141\00", [25 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 16, i64 35526, i64 39528, i64 39622]
@___asan_gen_.63 = private unnamed_addr constant [26 x i8] c"dvb_usb_dvbsky_disable_rc\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 18, i32 12 }
@___asan_gen_.66 = private unnamed_addr constant [18 x i8] c"dvbsky_usb_driver\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 813, i32 26 }
@___asan_gen_.69 = private unnamed_addr constant [11 x i8] c"adapter_nr\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 22, i32 1 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 825, i32 1 }
@___asan_gen_.75 = private unnamed_addr constant [16 x i8] c"dvbsky_id_table\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 759, i32 35 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 760, i32 4 }
@___asan_gen_.84 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 762, i32 4 }
@___asan_gen_.88 = private unnamed_addr constant [19 x i8] c".compoundliteral.4\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 764, i32 4 }
@___asan_gen_.92 = private unnamed_addr constant [19 x i8] c".compoundliteral.6\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 766, i32 4 }
@___asan_gen_.96 = private unnamed_addr constant [19 x i8] c".compoundliteral.8\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 768, i32 4 }
@___asan_gen_.103 = private unnamed_addr constant [20 x i8] c".compoundliteral.11\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 772, i32 4 }
@___asan_gen_.107 = private unnamed_addr constant [20 x i8] c".compoundliteral.13\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 776, i32 4 }
@___asan_gen_.111 = private unnamed_addr constant [20 x i8] c".compoundliteral.15\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 780, i32 4 }
@___asan_gen_.115 = private unnamed_addr constant [20 x i8] c".compoundliteral.17\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 784, i32 4 }
@___asan_gen_.119 = private unnamed_addr constant [20 x i8] c".compoundliteral.19\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 788, i32 4 }
@___asan_gen_.123 = private unnamed_addr constant [20 x i8] c".compoundliteral.21\00", align 1
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 791, i32 4 }
@___asan_gen_.130 = private unnamed_addr constant [20 x i8] c".compoundliteral.24\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 794, i32 4 }
@___asan_gen_.134 = private unnamed_addr constant [20 x i8] c".compoundliteral.26\00", align 1
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 797, i32 4 }
@___asan_gen_.138 = private unnamed_addr constant [20 x i8] c".compoundliteral.28\00", align 1
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 800, i32 4 }
@___asan_gen_.142 = private unnamed_addr constant [20 x i8] c".compoundliteral.30\00", align 1
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 803, i32 4 }
@___asan_gen_.146 = private unnamed_addr constant [20 x i8] c".compoundliteral.32\00", align 1
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 806, i32 4 }
@___asan_gen_.150 = private unnamed_addr constant [20 x i8] c".compoundliteral.34\00", align 1
@___asan_gen_.151 = private unnamed_addr constant [16 x i8] c"dvbsky_i2c_algo\00", align 1
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 172, i32 29 }
@___asan_gen_.154 = private unnamed_addr constant [18 x i8] c"dvbsky_s960_props\00", align 1
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 625, i32 41 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 110, i32 3 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 118, i32 4 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 145, i32 4 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 293, i32 45 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 306, i32 45 }
@___asan_gen_.193 = private unnamed_addr constant [9 x i8] c"obuf_pre\00", align 1
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 62, i32 18 }
@___asan_gen_.196 = private unnamed_addr constant [10 x i8] c"obuf_post\00", align 1
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 63, i32 18 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 615, i32 2 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 190, i32 3 }
@___asan_gen_.211 = private unnamed_addr constant [19 x i8] c"dvbsky_s960c_props\00", align 1
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 652, i32 41 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 422, i32 42 }
@___asan_gen_.217 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 372, i32 2 }
@___asan_gen_.226 = private unnamed_addr constant [19 x i8] c"dvbsky_t680c_props\00", align 1
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 679, i32 41 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 461, i32 45 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 471, i32 45 }
@___asan_gen_.235 = private unnamed_addr constant [18 x i8] c"dvbsky_t330_props\00", align 1
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 706, i32 41 }
@___asan_gen_.238 = private unnamed_addr constant [19 x i8] c"mygica_t230c_props\00", align 1
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 733, i32 41 }
@___asan_gen_.241 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.242 = private constant [41 x i8] c"../drivers/media/usb/dvb-usb-v2/dvbsky.c\00", align 1
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 566, i32 56 }
@llvm.compiler.used = appending global [88 x ptr] [ptr @__UNIQUE_ID_adapter_nr389, ptr @__UNIQUE_ID_adapter_nrtype388, ptr @__UNIQUE_ID_author393, ptr @__UNIQUE_ID_description394, ptr @__UNIQUE_ID_disable_rc387, ptr @__UNIQUE_ID_disable_rctype386, ptr @__UNIQUE_ID_file395, ptr @__UNIQUE_ID_license396, ptr @__exitcall_dvbsky_usb_driver_exit, ptr @__initcall__kmod_dvb_usb_dvbsky__392_825_dvbsky_usb_driver_init6, ptr @__param_adapter_nr, ptr @__param_disable_rc, ptr @dvbsky_ci_ctrl._entry, ptr @dvbsky_ci_ctrl._entry_ptr, ptr @dvbsky_i2c_xfer._entry, ptr @dvbsky_i2c_xfer._entry.41, ptr @dvbsky_i2c_xfer._entry.44, ptr @dvbsky_i2c_xfer._entry_ptr, ptr @dvbsky_i2c_xfer._entry_ptr.43, ptr @dvbsky_i2c_xfer._entry_ptr.46, ptr @dvbsky_usb_driver_exit, ptr @dvb_usb_dvbsky_disable_rc, ptr @dvbsky_usb_driver, ptr @adapter_nr, ptr @.str, ptr @dvbsky_id_table, ptr @.str.1, ptr @.str.2, ptr @.compoundliteral, ptr @.str.3, ptr @.compoundliteral.4, ptr @.str.5, ptr @.compoundliteral.6, ptr @.str.7, ptr @.compoundliteral.8, ptr @.str.9, ptr @.str.10, ptr @.compoundliteral.11, ptr @.str.12, ptr @.compoundliteral.13, ptr @.str.14, ptr @.compoundliteral.15, ptr @.str.16, ptr @.compoundliteral.17, ptr @.str.18, ptr @.compoundliteral.19, ptr @.str.20, ptr @.compoundliteral.21, ptr @.str.22, ptr @.str.23, ptr @.compoundliteral.24, ptr @.str.25, ptr @.compoundliteral.26, ptr @.str.27, ptr @.compoundliteral.28, ptr @.str.29, ptr @.compoundliteral.30, ptr @.str.31, ptr @.compoundliteral.32, ptr @.str.33, ptr @.compoundliteral.34, ptr @dvbsky_i2c_algo, ptr @dvbsky_s960_props, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.42, ptr @.str.45, ptr @.str.47, ptr @.str.48, ptr @dvbsky_stream_ctrl.obuf_pre, ptr @dvbsky_stream_ctrl.obuf_post, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @dvbsky_s960c_props, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @dvbsky_t680c_props, ptr @.str.58, ptr @.str.59, ptr @dvbsky_t330_props, ptr @mygica_t230c_props, ptr @.str.62], section "llvm.metadata"
@0 = internal global [71 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_usb_dvbsky_disable_rc to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvbsky_usb_driver to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adapter_nr to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvbsky_id_table to i32), i32 408, i32 512, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.4 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.6 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.8 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.11 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.13 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.15 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.17 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.19 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.21 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.24 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.26 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.28 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.30 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.32 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.34 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvbsky_i2c_algo to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvbsky_s960_props to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvbsky_i2c_xfer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvbsky_i2c_xfer._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvbsky_i2c_xfer._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvbsky_stream_ctrl.obuf_pre to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvbsky_stream_ctrl.obuf_post to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvbsky_s960c_props to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvbsky_ci_ctrl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvbsky_t680c_props to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvbsky_t330_props to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mygica_t230c_props to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @dvbsky_usb_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usb_register_driver(ptr noundef nonnull @dvbsky_usb_driver, ptr noundef null, ptr noundef nonnull @.str) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @dvbsky_usb_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @usb_deregister(ptr noundef nonnull @dvbsky_usb_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_deregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_usbv2_probe(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dvb_usbv2_disconnect(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_usbv2_suspend(ptr noundef, [1 x i32]) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_usbv2_resume(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_usbv2_reset_resume(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dvbsky_identify_state(ptr noundef %d, ptr nocapture noundef readnone %name) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %udev = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 5
  %0 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %udev, align 4
  %idProduct = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 16, i32 8
  %2 = ptrtoint ptr %idProduct to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %idProduct, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -26008, i16 %3)
  %cmp = icmp eq i16 %3, -26008
  %priv.i.i = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 15
  %4 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv.i.i, align 8
  %usb_mutex.i.i = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %usb_mutex.i.i, i32 noundef 0) #7
  %obuf.i.i = getelementptr inbounds %struct.dvbsky_state, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %obuf.i.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 14, ptr %obuf.i.i, align 4
  %obuf.sroa.5.0.obuf.i.sroa_idx.i = getelementptr inbounds %struct.dvbsky_state, ptr %5, i32 0, i32 1, i32 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %obuf.sroa.5.0.obuf.i.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 -121, ptr %obuf.sroa.5.0.obuf.i.sroa_idx.i, align 1
  %obuf.sroa.7.0.obuf.i.sroa_idx.i = getelementptr inbounds %struct.dvbsky_state, ptr %5, i32 0, i32 1, i32 2
  %8 = ptrtoint ptr %obuf.sroa.7.0.obuf.i.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %obuf.sroa.7.0.obuf.i.sroa_idx.i, align 2
  %call.i.i = tail call i32 @dvb_usbv2_generic_rw_locked(ptr noundef %d, ptr noundef %obuf.i.i, i16 noundef zeroext 3, ptr noundef %5, i16 noundef zeroext 1) #7
  tail call void @mutex_unlock(ptr noundef %usb_mutex.i.i) #7
  tail call void @msleep(i32 noundef 20) #7
  %9 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %priv.i.i, align 8
  tail call void @mutex_lock_nested(ptr noundef %usb_mutex.i.i, i32 noundef 0) #7
  %obuf.i.i21 = getelementptr inbounds %struct.dvbsky_state, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %obuf.i.i21 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 14, ptr %obuf.i.i21, align 4
  %obuf.sroa.5.0.obuf.i.sroa_idx.i22 = getelementptr inbounds %struct.dvbsky_state, ptr %10, i32 0, i32 1, i32 1
  %12 = ptrtoint ptr %obuf.sroa.5.0.obuf.i.sroa_idx.i22 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 -122, ptr %obuf.sroa.5.0.obuf.i.sroa_idx.i22, align 1
  %obuf.sroa.7.0.obuf.i.sroa_idx.i23 = getelementptr inbounds %struct.dvbsky_state, ptr %10, i32 0, i32 1, i32 2
  %13 = ptrtoint ptr %obuf.sroa.7.0.obuf.i.sroa_idx.i23 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %obuf.sroa.7.0.obuf.i.sroa_idx.i23, align 2
  %call.i.i24 = tail call i32 @dvb_usbv2_generic_rw_locked(ptr noundef %d, ptr noundef %obuf.i.i21, i16 noundef zeroext 3, ptr noundef %10, i16 noundef zeroext 1) #7
  tail call void @mutex_unlock(ptr noundef %usb_mutex.i.i) #7
  %14 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %priv.i.i, align 8
  tail call void @mutex_lock_nested(ptr noundef %usb_mutex.i.i, i32 noundef 0) #7
  %obuf.i.i27 = getelementptr inbounds %struct.dvbsky_state, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %obuf.i.i27 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 14, ptr %obuf.i.i27, align 4
  %obuf.sroa.5.0.obuf.i.sroa_idx.i28 = getelementptr inbounds %struct.dvbsky_state, ptr %15, i32 0, i32 1, i32 1
  %17 = ptrtoint ptr %obuf.sroa.5.0.obuf.i.sroa_idx.i28 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 -128, ptr %obuf.sroa.5.0.obuf.i.sroa_idx.i28, align 1
  %obuf.sroa.7.0.obuf.i.sroa_idx.i29 = getelementptr inbounds %struct.dvbsky_state, ptr %15, i32 0, i32 1, i32 2
  %18 = ptrtoint ptr %obuf.sroa.7.0.obuf.i.sroa_idx.i29 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %obuf.sroa.7.0.obuf.i.sroa_idx.i29, align 2
  %call.i.i30 = tail call i32 @dvb_usbv2_generic_rw_locked(ptr noundef %d, ptr noundef %obuf.i.i27, i16 noundef zeroext 3, ptr noundef %15, i16 noundef zeroext 1) #7
  tail call void @mutex_unlock(ptr noundef %usb_mutex.i.i) #7
  tail call void @msleep(i32 noundef 100) #7
  %19 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %priv.i.i, align 8
  tail call void @mutex_lock_nested(ptr noundef %usb_mutex.i.i, i32 noundef 0) #7
  %obuf.i.i33 = getelementptr inbounds %struct.dvbsky_state, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %obuf.i.i33 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 14, ptr %obuf.i.i33, align 4
  %obuf.sroa.5.0.obuf.i.sroa_idx.i34 = getelementptr inbounds %struct.dvbsky_state, ptr %20, i32 0, i32 1, i32 1
  %22 = ptrtoint ptr %obuf.sroa.5.0.obuf.i.sroa_idx.i34 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 -128, ptr %obuf.sroa.5.0.obuf.i.sroa_idx.i34, align 1
  %obuf.sroa.7.0.obuf.i.sroa_idx.i35 = getelementptr inbounds %struct.dvbsky_state, ptr %20, i32 0, i32 1, i32 2
  %23 = ptrtoint ptr %obuf.sroa.7.0.obuf.i.sroa_idx.i35 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 1, ptr %obuf.sroa.7.0.obuf.i.sroa_idx.i35, align 2
  %call.i.i36 = tail call i32 @dvb_usbv2_generic_rw_locked(ptr noundef %d, ptr noundef %obuf.i.i33, i16 noundef zeroext 3, ptr noundef %20, i16 noundef zeroext 1) #7
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %24 = ptrtoint ptr %obuf.sroa.5.0.obuf.i.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 4, ptr %obuf.sroa.5.0.obuf.i.sroa_idx.i, align 1
  %obuf.sroa.7.0.obuf.i.sroa_idx.i41 = getelementptr inbounds %struct.dvbsky_state, ptr %5, i32 0, i32 1, i32 2
  %25 = ptrtoint ptr %obuf.sroa.7.0.obuf.i.sroa_idx.i41 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 1, ptr %obuf.sroa.7.0.obuf.i.sroa_idx.i41, align 2
  %call.i.i42 = tail call i32 @dvb_usbv2_generic_rw_locked(ptr noundef %d, ptr noundef %obuf.i.i, i16 noundef zeroext 3, ptr noundef %5, i16 noundef zeroext 1) #7
  tail call void @mutex_unlock(ptr noundef %usb_mutex.i.i) #7
  tail call void @msleep(i32 noundef 20) #7
  %26 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %priv.i.i, align 8
  tail call void @mutex_lock_nested(ptr noundef %usb_mutex.i.i, i32 noundef 0) #7
  %obuf.i.i45 = getelementptr inbounds %struct.dvbsky_state, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %obuf.i.i45 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 14, ptr %obuf.i.i45, align 4
  %obuf.sroa.5.0.obuf.i.sroa_idx.i46 = getelementptr inbounds %struct.dvbsky_state, ptr %27, i32 0, i32 1, i32 1
  %29 = ptrtoint ptr %obuf.sroa.5.0.obuf.i.sroa_idx.i46 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 -125, ptr %obuf.sroa.5.0.obuf.i.sroa_idx.i46, align 1
  %obuf.sroa.7.0.obuf.i.sroa_idx.i47 = getelementptr inbounds %struct.dvbsky_state, ptr %27, i32 0, i32 1, i32 2
  %30 = ptrtoint ptr %obuf.sroa.7.0.obuf.i.sroa_idx.i47 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 0, ptr %obuf.sroa.7.0.obuf.i.sroa_idx.i47, align 2
  %call.i.i48 = tail call i32 @dvb_usbv2_generic_rw_locked(ptr noundef %d, ptr noundef %obuf.i.i45, i16 noundef zeroext 3, ptr noundef %27, i16 noundef zeroext 1) #7
  tail call void @mutex_unlock(ptr noundef %usb_mutex.i.i) #7
  %31 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %priv.i.i, align 8
  tail call void @mutex_lock_nested(ptr noundef %usb_mutex.i.i, i32 noundef 0) #7
  %obuf.i.i51 = getelementptr inbounds %struct.dvbsky_state, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %obuf.i.i51 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 14, ptr %obuf.i.i51, align 4
  %obuf.sroa.5.0.obuf.i.sroa_idx.i52 = getelementptr inbounds %struct.dvbsky_state, ptr %32, i32 0, i32 1, i32 1
  %34 = ptrtoint ptr %obuf.sroa.5.0.obuf.i.sroa_idx.i52 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 -64, ptr %obuf.sroa.5.0.obuf.i.sroa_idx.i52, align 1
  %obuf.sroa.7.0.obuf.i.sroa_idx.i53 = getelementptr inbounds %struct.dvbsky_state, ptr %32, i32 0, i32 1, i32 2
  %35 = ptrtoint ptr %obuf.sroa.7.0.obuf.i.sroa_idx.i53 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 1, ptr %obuf.sroa.7.0.obuf.i.sroa_idx.i53, align 2
  %call.i.i54 = tail call i32 @dvb_usbv2_generic_rw_locked(ptr noundef %d, ptr noundef %obuf.i.i51, i16 noundef zeroext 3, ptr noundef %32, i16 noundef zeroext 1) #7
  tail call void @mutex_unlock(ptr noundef %usb_mutex.i.i) #7
  tail call void @msleep(i32 noundef 100) #7
  %36 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %priv.i.i, align 8
  tail call void @mutex_lock_nested(ptr noundef %usb_mutex.i.i, i32 noundef 0) #7
  %obuf.i.i57 = getelementptr inbounds %struct.dvbsky_state, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %obuf.i.i57 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 14, ptr %obuf.i.i57, align 4
  %obuf.sroa.5.0.obuf.i.sroa_idx.i58 = getelementptr inbounds %struct.dvbsky_state, ptr %37, i32 0, i32 1, i32 1
  %39 = ptrtoint ptr %obuf.sroa.5.0.obuf.i.sroa_idx.i58 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 -125, ptr %obuf.sroa.5.0.obuf.i.sroa_idx.i58, align 1
  %obuf.sroa.7.0.obuf.i.sroa_idx.i59 = getelementptr inbounds %struct.dvbsky_state, ptr %37, i32 0, i32 1, i32 2
  %40 = ptrtoint ptr %obuf.sroa.7.0.obuf.i.sroa_idx.i59 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 1, ptr %obuf.sroa.7.0.obuf.i.sroa_idx.i59, align 2
  %call.i.i60 = tail call i32 @dvb_usbv2_generic_rw_locked(ptr noundef %d, ptr noundef %obuf.i.i57, i16 noundef zeroext 3, ptr noundef %37, i16 noundef zeroext 1) #7
  tail call void @mutex_unlock(ptr noundef %usb_mutex.i.i) #7
  %41 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %priv.i.i, align 8
  tail call void @mutex_lock_nested(ptr noundef %usb_mutex.i.i, i32 noundef 0) #7
  %obuf.i.i63 = getelementptr inbounds %struct.dvbsky_state, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %obuf.i.i63 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 14, ptr %obuf.i.i63, align 4
  %obuf.sroa.5.0.obuf.i.sroa_idx.i64 = getelementptr inbounds %struct.dvbsky_state, ptr %42, i32 0, i32 1, i32 1
  %44 = ptrtoint ptr %obuf.sroa.5.0.obuf.i.sroa_idx.i64 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 -64, ptr %obuf.sroa.5.0.obuf.i.sroa_idx.i64, align 1
  %obuf.sroa.7.0.obuf.i.sroa_idx.i65 = getelementptr inbounds %struct.dvbsky_state, ptr %42, i32 0, i32 1, i32 2
  %45 = ptrtoint ptr %obuf.sroa.7.0.obuf.i.sroa_idx.i65 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 0, ptr %obuf.sroa.7.0.obuf.i.sroa_idx.i65, align 2
  %call.i.i66 = tail call i32 @dvb_usbv2_generic_rw_locked(ptr noundef %d, ptr noundef %obuf.i.i63, i16 noundef zeroext 3, ptr noundef %42, i16 noundef zeroext 1) #7
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  tail call void @mutex_unlock(ptr noundef %usb_mutex.i.i) #7
  tail call void @msleep(i32 noundef 50) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dvbsky_read_mac_addr(ptr noundef %adap, ptr nocapture noundef writeonly %mac) #2 align 64 {
entry:
  %obuf = alloca [2 x i8], align 2
  %ibuf = alloca [6 x i8], align 1
  %msg = alloca [2 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %id = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 2
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %id, align 4
  %conv = zext i8 %1 to i32
  %.neg = mul nsw i32 %conv, -2280
  %idx.neg = add nsw i32 %.neg, -1616
  %add.ptr = getelementptr i8, ptr %adap, i32 %idx.neg
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %obuf) #7
  %2 = ptrtoint ptr %obuf to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 7680, ptr %obuf, align 2
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %ibuf) #7
  %3 = call ptr @memset(ptr %ibuf, i32 0, i32 6)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg) #7
  %4 = getelementptr inbounds i8, ptr %msg, i32 4
  %5 = call ptr @memset(ptr %4, i32 255, i32 16)
  %6 = ptrtoint ptr %msg to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 81, ptr %msg, align 4
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 1
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 0, ptr %flags, align 2
  %len = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 2
  %8 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 2, ptr %len, align 4
  %buf = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 3
  %9 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %obuf, ptr %buf, align 4
  %arrayinit.element = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 1
  %10 = ptrtoint ptr %arrayinit.element to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 81, ptr %arrayinit.element, align 4
  %flags2 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 1, i32 1
  %11 = ptrtoint ptr %flags2 to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 1, ptr %flags2, align 2
  %len3 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 1, i32 2
  %12 = ptrtoint ptr %len3 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 6, ptr %len3, align 4
  %buf4 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 1, i32 3
  %13 = ptrtoint ptr %buf4 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %ibuf, ptr %buf4, align 4
  %i2c_adap = getelementptr inbounds %struct.dvb_usb_device, ptr %add.ptr, i32 0, i32 10
  %call = call i32 @i2c_transfer(ptr noundef %i2c_adap, ptr noundef nonnull %msg, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call)
  %cmp = icmp eq i32 %call, 2
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %14 = call ptr @memcpy(ptr %mac, ptr %ibuf, i32 6)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg) #7
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %ibuf) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %obuf) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dvbsky_s960_attach(ptr noundef %adap) #2 align 64 {
entry:
  %m88ds3103_pdata = alloca %struct.m88ds3103_platform_data, align 4
  %ts2020_config = alloca %struct.ts2020_config, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %id = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 2
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %id, align 4
  %conv = zext i8 %1 to i32
  %.neg = mul nsw i32 %conv, -2280
  %idx.neg = add nsw i32 %.neg, -1616
  %add.ptr = getelementptr i8, ptr %adap, i32 %idx.neg
  %priv = getelementptr inbounds %struct.dvb_usb_device, ptr %add.ptr, i32 0, i32 15
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 8
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %m88ds3103_pdata) #7
  %4 = getelementptr inbounds i8, ptr %m88ds3103_pdata, i32 4
  %5 = call ptr @memset(ptr %4, i32 0, i32 32)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %ts2020_config) #7
  %6 = call ptr @memset(ptr %ts2020_config, i32 0, i32 20)
  %7 = ptrtoint ptr %m88ds3103_pdata to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 27000000, ptr %m88ds3103_pdata, align 4
  %i2c_wr_max = getelementptr inbounds %struct.m88ds3103_platform_data, ptr %m88ds3103_pdata, i32 0, i32 1
  %8 = ptrtoint ptr %i2c_wr_max to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 33, ptr %i2c_wr_max, align 4
  %clk_out = getelementptr inbounds %struct.m88ds3103_platform_data, ptr %m88ds3103_pdata, i32 0, i32 4
  %9 = ptrtoint ptr %clk_out to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %clk_out, align 4
  %ts_mode = getelementptr inbounds %struct.m88ds3103_platform_data, ptr %m88ds3103_pdata, i32 0, i32 2
  %10 = ptrtoint ptr %ts_mode to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 3, ptr %ts_mode, align 4
  %ts_clk = getelementptr inbounds %struct.m88ds3103_platform_data, ptr %m88ds3103_pdata, i32 0, i32 3
  %11 = ptrtoint ptr %ts_clk to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 16000, ptr %ts_clk, align 4
  %ts_clk_pol = getelementptr inbounds %struct.m88ds3103_platform_data, ptr %m88ds3103_pdata, i32 0, i32 5
  %12 = ptrtoint ptr %ts_clk_pol to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %ts_clk_pol, align 4
  %agc = getelementptr inbounds %struct.m88ds3103_platform_data, ptr %m88ds3103_pdata, i32 0, i32 6
  %13 = ptrtoint ptr %agc to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 -103, ptr %agc, align 1
  %lnb_hv_pol = getelementptr inbounds %struct.m88ds3103_platform_data, ptr %m88ds3103_pdata, i32 0, i32 7
  %14 = ptrtoint ptr %lnb_hv_pol to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 48, ptr %lnb_hv_pol, align 2
  %i2c_adap = getelementptr inbounds %struct.dvb_usb_device, ptr %add.ptr, i32 0, i32 10
  %call = call ptr @dvb_module_probe(ptr noundef nonnull @.str.47, ptr noundef null, ptr noundef %i2c_adap, i8 noundef zeroext 104, ptr noundef nonnull %m88ds3103_pdata) #7
  %i2c_client_demod = getelementptr inbounds %struct.dvbsky_state, ptr %3, i32 0, i32 3
  %15 = ptrtoint ptr %i2c_client_demod to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call, ptr %i2c_client_demod, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %get_dvb_frontend = getelementptr inbounds %struct.m88ds3103_platform_data, ptr %m88ds3103_pdata, i32 0, i32 8
  %16 = ptrtoint ptr %get_dvb_frontend to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %get_dvb_frontend, align 4
  %call15 = call ptr %17(ptr noundef nonnull %call) #7
  %fe = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 14
  %18 = ptrtoint ptr %fe to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call15, ptr %fe, align 8
  %get_i2c_adapter = getelementptr inbounds %struct.m88ds3103_platform_data, ptr %m88ds3103_pdata, i32 0, i32 9
  %19 = ptrtoint ptr %get_i2c_adapter to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %get_i2c_adapter, align 4
  %21 = ptrtoint ptr %i2c_client_demod to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %i2c_client_demod, align 4
  %call17 = call ptr %20(ptr noundef %22) #7
  %23 = ptrtoint ptr %fe to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %fe, align 8
  %fe20 = getelementptr inbounds %struct.ts2020_config, ptr %ts2020_config, i32 0, i32 3
  %25 = ptrtoint ptr %fe20 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %24, ptr %fe20, align 4
  %get_agc_pwm = getelementptr inbounds %struct.ts2020_config, ptr %ts2020_config, i32 0, i32 5
  %26 = ptrtoint ptr %get_agc_pwm to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @m88ds3103_get_agc_pwm, ptr %get_agc_pwm, align 4
  %call21 = call ptr @dvb_module_probe(ptr noundef nonnull @.str.48, ptr noundef null, ptr noundef %call17, i8 noundef zeroext 96, ptr noundef nonnull %ts2020_config) #7
  %i2c_client_tuner = getelementptr inbounds %struct.dvbsky_state, ptr %3, i32 0, i32 4
  %27 = ptrtoint ptr %i2c_client_tuner to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call21, ptr %i2c_client_tuner, align 4
  %tobool23.not = icmp eq ptr %call21, null
  br i1 %tobool23.not, label %if.then24, label %if.end26

if.then24:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %28 = ptrtoint ptr %i2c_client_demod to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %i2c_client_demod, align 4
  call void @dvb_module_release(ptr noundef %29) #7
  br label %cleanup

if.end26:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %30 = ptrtoint ptr %fe to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %fe, align 8
  %get_rf_strength = getelementptr inbounds %struct.dvb_frontend, ptr %31, i32 0, i32 1, i32 32, i32 13
  %32 = ptrtoint ptr %get_rf_strength to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %get_rf_strength, align 4
  %read_signal_strength = getelementptr inbounds %struct.dvb_frontend, ptr %31, i32 0, i32 1, i32 17
  %34 = ptrtoint ptr %read_signal_strength to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %33, ptr %read_signal_strength, align 4
  %35 = load ptr, ptr %fe, align 8
  %read_status = getelementptr inbounds %struct.dvb_frontend, ptr %35, i32 0, i32 1, i32 15
  %36 = ptrtoint ptr %read_status to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %read_status, align 4
  %fe_read_status = getelementptr inbounds %struct.dvbsky_state, ptr %3, i32 0, i32 7
  %38 = ptrtoint ptr %fe_read_status to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %37, ptr %fe_read_status, align 4
  %39 = load ptr, ptr %fe, align 8
  %read_status38 = getelementptr inbounds %struct.dvb_frontend, ptr %39, i32 0, i32 1, i32 15
  %40 = ptrtoint ptr %read_status38 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr @dvbsky_usb_read_status, ptr %read_status38, align 4
  %41 = load ptr, ptr %fe, align 8
  %set_voltage = getelementptr inbounds %struct.dvb_frontend, ptr %41, i32 0, i32 1, i32 25
  %42 = ptrtoint ptr %set_voltage to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %set_voltage, align 4
  %fe_set_voltage = getelementptr inbounds %struct.dvbsky_state, ptr %3, i32 0, i32 6
  %44 = ptrtoint ptr %fe_set_voltage to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %43, ptr %fe_set_voltage, align 4
  %45 = load ptr, ptr %fe, align 8
  %set_voltage45 = getelementptr inbounds %struct.dvb_frontend, ptr %45, i32 0, i32 1, i32 25
  %46 = ptrtoint ptr %set_voltage45 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr @dvbsky_usb_set_voltage, ptr %set_voltage45, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end26, %if.then24, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end26 ], [ -19, %if.then24 ], [ -19, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %ts2020_config) #7
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %m88ds3103_pdata) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dvbsky_frontend_detach(ptr nocapture noundef readonly %adap) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %id = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 2
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %id, align 4
  %conv = zext i8 %1 to i32
  %.neg = mul nsw i32 %conv, -2280
  %idx.neg = add nsw i32 %.neg, -1616
  %add.ptr = getelementptr i8, ptr %adap, i32 %idx.neg
  %priv = getelementptr inbounds %struct.dvb_usb_device, ptr %add.ptr, i32 0, i32 15
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dvbsky_frontend_detach.__UNIQUE_ID_ddebug391, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dvbsky_frontend_detach, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !131

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %udev = getelementptr inbounds %struct.dvb_usb_device, ptr %add.ptr, i32 0, i32 5
  %4 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %udev, align 4
  %dev = getelementptr inbounds %struct.usb_device, ptr %5, i32 0, i32 15
  %6 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %id, align 4
  %conv5 = zext i8 %7 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dvbsky_frontend_detach.__UNIQUE_ID_ddebug391, ptr noundef %dev, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.49, i32 noundef %conv5) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %i2c_client_tuner = getelementptr inbounds %struct.dvbsky_state, ptr %3, i32 0, i32 4
  %8 = ptrtoint ptr %i2c_client_tuner to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %i2c_client_tuner, align 4
  tail call void @dvb_module_release(ptr noundef %9) #7
  %i2c_client_demod = getelementptr inbounds %struct.dvbsky_state, ptr %3, i32 0, i32 3
  %10 = ptrtoint ptr %i2c_client_demod to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %i2c_client_demod, align 4
  tail call void @dvb_module_release(ptr noundef %11) #7
  %i2c_client_ci = getelementptr inbounds %struct.dvbsky_state, ptr %3, i32 0, i32 5
  %12 = ptrtoint ptr %i2c_client_ci to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %i2c_client_ci, align 4
  tail call void @dvb_module_release(ptr noundef %13) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dvbsky_streaming_ctrl(ptr nocapture noundef readonly %fe, i32 noundef %onoff) #2 align 64 {
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
  %id = getelementptr inbounds %struct.dvb_usb_adapter, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %id, align 4
  %conv = zext i8 %5 to i32
  %.neg = mul nsw i32 %conv, -2280
  %idx.neg = add nsw i32 %.neg, -1616
  %add.ptr = getelementptr i8, ptr %3, i32 %idx.neg
  %priv.i = getelementptr inbounds %struct.dvb_usb_device, ptr %add.ptr, i32 0, i32 15
  %6 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %priv.i, align 8
  %usb_mutex.i = getelementptr inbounds %struct.dvb_usb_device, ptr %add.ptr, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %usb_mutex.i, i32 noundef 0) #7
  %obuf.i = getelementptr inbounds %struct.dvbsky_state, ptr %7, i32 0, i32 1
  %8 = call ptr @memcpy(ptr %obuf.i, ptr @dvbsky_stream_ctrl.obuf_pre, i32 3)
  %call.i = tail call i32 @dvb_usbv2_generic_write_locked(ptr noundef %add.ptr, ptr noundef %obuf.i, i16 noundef zeroext 3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %entry.dvbsky_stream_ctrl.exit_crit_edge

entry.dvbsky_stream_ctrl.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %dvbsky_stream_ctrl.exit

land.lhs.true.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %onoff)
  %cmp.not = icmp eq i32 %onoff, 0
  br i1 %cmp.not, label %land.lhs.true.i.dvbsky_stream_ctrl.exit_crit_edge, label %if.then.i

land.lhs.true.i.dvbsky_stream_ctrl.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dvbsky_stream_ctrl.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @msleep(i32 noundef 20) #7
  %9 = call ptr @memcpy(ptr %obuf.i, ptr @dvbsky_stream_ctrl.obuf_post, i32 3)
  %call8.i = tail call i32 @dvb_usbv2_generic_write_locked(ptr noundef %add.ptr, ptr noundef %obuf.i, i16 noundef zeroext 3) #7
  br label %dvbsky_stream_ctrl.exit

dvbsky_stream_ctrl.exit:                          ; preds = %if.then.i, %land.lhs.true.i.dvbsky_stream_ctrl.exit_crit_edge, %entry.dvbsky_stream_ctrl.exit_crit_edge
  %ret.0.i = phi i32 [ %call.i, %entry.dvbsky_stream_ctrl.exit_crit_edge ], [ %call8.i, %if.then.i ], [ 0, %land.lhs.true.i.dvbsky_stream_ctrl.exit_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %usb_mutex.i) #7
  ret i32 %ret.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @dvbsky_init(ptr nocapture noundef readonly %d) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 15
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %last_lock = getelementptr inbounds %struct.dvbsky_state, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %last_lock to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %last_lock, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @dvbsky_get_rc_config(ptr nocapture noundef readnone %d, ptr nocapture noundef writeonly %rc) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @dvb_usb_dvbsky_disable_rc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %1 = ptrtoint ptr %rc to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %rc, align 8
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %allowed_protos = getelementptr inbounds %struct.dvb_usb_rc, ptr %rc, i32 0, i32 1
  %2 = ptrtoint ptr %allowed_protos to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 4, ptr %allowed_protos, align 8
  %query = getelementptr inbounds %struct.dvb_usb_rc, ptr %rc, i32 0, i32 3
  %3 = ptrtoint ptr %query to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @dvbsky_rc_query, ptr %query, align 4
  %interval = getelementptr inbounds %struct.dvb_usb_rc, ptr %rc, i32 0, i32 4
  %4 = ptrtoint ptr %interval to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 300, ptr %interval, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_usbv2_generic_rw_locked(ptr noundef, ptr noundef, i16 noundef zeroext, ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dvbsky_i2c_xfer(ptr nocapture noundef readonly %adap, ptr nocapture noundef readonly %msg, i32 noundef %num) #2 align 64 {
entry:
  %ibuf = alloca [64 x i8], align 1
  %obuf = alloca [64 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %adap, i32 0, i32 9, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %ibuf)
  %2 = call ptr @memset(ptr %ibuf, i32 255, i32 64)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %obuf)
  %3 = call ptr @memset(ptr %obuf, i32 255, i32 64)
  %i2c_mutex = getelementptr inbounds %struct.dvb_usb_device, ptr %1, i32 0, i32 9
  %call1 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %i2c_mutex, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %num)
  %cmp2 = icmp sgt i32 %num, 2
  br i1 %cmp2, label %do.end, label %if.end4

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %udev = getelementptr inbounds %struct.dvb_usb_device, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %udev, align 4
  %dev = getelementptr inbounds %struct.usb_device, ptr %5, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.36, i32 noundef %num) #10
  br label %cleanup.sink.split

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %num)
  %cmp5 = icmp eq i32 %num, 1
  %len = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 2
  %6 = ptrtoint ptr %len to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 60, i16 %7)
  %cmp7 = icmp ugt i16 %7, 60
  br i1 %cmp5, label %if.then6, label %if.else69

if.then6:                                         ; preds = %if.end4
  br i1 %cmp7, label %do.end12, label %if.end18

do.end12:                                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #9
  %conv = zext i16 %7 to i32
  %udev13 = getelementptr inbounds %struct.dvb_usb_device, ptr %1, i32 0, i32 5
  %8 = ptrtoint ptr %udev13 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %udev13, align 4
  %dev14 = getelementptr inbounds %struct.usb_device, ptr %9, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev14, ptr noundef nonnull @.str.42, i32 noundef %conv) #10
  br label %cleanup.sink.split

if.end18:                                         ; preds = %if.then6
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 1
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %flags, align 2
  %12 = and i16 %11, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %12)
  %tobool.not = icmp eq i16 %12, 0
  br i1 %tobool.not, label %if.end.i, label %if.then21

if.then21:                                        ; preds = %if.end18
  %13 = ptrtoint ptr %obuf to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 9, ptr %obuf, align 4
  %obuf.1.obuf.1.arrayidx23.sroa_idx = getelementptr inbounds i8, ptr %obuf, i32 1
  %14 = ptrtoint ptr %obuf.1.obuf.1.arrayidx23.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %obuf.1.obuf.1.arrayidx23.sroa_idx, align 1
  %conv26 = trunc i16 %7 to i8
  %obuf.2.obuf.2.arrayidx27.sroa_idx = getelementptr inbounds i8, ptr %obuf, i32 2
  %15 = ptrtoint ptr %obuf.2.obuf.2.arrayidx27.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv26, ptr %obuf.2.obuf.2.arrayidx27.sroa_idx, align 2
  %16 = ptrtoint ptr %msg to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %msg, align 4
  %conv29 = trunc i16 %17 to i8
  %obuf.3.obuf.3.arrayidx30.sroa_idx = getelementptr inbounds i8, ptr %obuf, i32 3
  %18 = ptrtoint ptr %obuf.3.obuf.3.arrayidx30.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv29, ptr %obuf.3.obuf.3.arrayidx30.sroa_idx, align 1
  %add = add nuw nsw i16 %7, 1
  %priv.i = getelementptr inbounds %struct.dvb_usb_device, ptr %1, i32 0, i32 15
  %19 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %priv.i, align 8
  %usb_mutex.i = getelementptr inbounds %struct.dvb_usb_device, ptr %1, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %usb_mutex.i, i32 noundef 0) #7
  %obuf.i = getelementptr inbounds %struct.dvbsky_state, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %obuf to i32
  call void @__asan_load4_noabort(i32 %21)
  %obuf.0. = load i32, ptr %obuf, align 4
  %22 = ptrtoint ptr %obuf.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %obuf.0., ptr %obuf.i, align 4
  %call.i = tail call i32 @dvb_usbv2_generic_rw_locked(ptr noundef %1, ptr noundef %obuf.i, i16 noundef zeroext 4, ptr noundef %20, i16 noundef zeroext %add) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i.not, label %if.then21.i2c_error.thread206_crit_edge, label %dvbsky_usb_generic_rw.exit

if.then21.i2c_error.thread206_crit_edge:          ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #9
  br label %i2c_error.thread206

dvbsky_usb_generic_rw.exit:                       ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @mutex_unlock(ptr noundef %usb_mutex.i) #7
  br label %cleanup.sink.split

if.end.i:                                         ; preds = %if.end18
  %23 = ptrtoint ptr %obuf to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 8, ptr %obuf, align 4
  %24 = ptrtoint ptr %msg to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %msg, align 4
  %conv48 = trunc i16 %25 to i8
  %obuf.1.obuf.1.arrayidx49.sroa_idx = getelementptr inbounds i8, ptr %obuf, i32 1
  %26 = ptrtoint ptr %obuf.1.obuf.1.arrayidx49.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %conv48, ptr %obuf.1.obuf.1.arrayidx49.sroa_idx, align 1
  %conv52 = trunc i16 %7 to i8
  %obuf.2.obuf.2.arrayidx53.sroa_idx = getelementptr inbounds i8, ptr %obuf, i32 2
  %27 = ptrtoint ptr %obuf.2.obuf.2.arrayidx53.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %conv52, ptr %obuf.2.obuf.2.arrayidx53.sroa_idx, align 2
  %buf56 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 3
  %28 = ptrtoint ptr %buf56 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %buf56, align 4
  %conv59 = zext i16 %7 to i32
  %obuf.3.obuf.3.arrayidx54.sroa_idx = getelementptr inbounds i8, ptr %obuf, i32 3
  %30 = call ptr @memcpy(ptr %obuf.3.obuf.3.arrayidx54.sroa_idx, ptr %29, i32 %conv59)
  %add64 = add nuw nsw i16 %7, 3
  %priv.i178 = getelementptr inbounds %struct.dvb_usb_device, ptr %1, i32 0, i32 15
  %31 = ptrtoint ptr %priv.i178 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %priv.i178, align 8
  %usb_mutex.i179 = getelementptr inbounds %struct.dvb_usb_device, ptr %1, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %usb_mutex.i179, i32 noundef 0) #7
  %conv.i = zext i16 %add64 to i32
  %obuf.i180 = getelementptr inbounds %struct.dvbsky_state, ptr %32, i32 0, i32 1
  %33 = call ptr @memcpy(ptr %obuf.i180, ptr %obuf, i32 %conv.i)
  %call.i182 = tail call i32 @dvb_usbv2_generic_rw_locked(ptr noundef %1, ptr noundef %obuf.i180, i16 noundef zeroext %add64, ptr noundef %32, i16 noundef zeroext 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i182)
  %tobool.not.i183.not = icmp eq i32 %call.i182, 0
  br i1 %tobool.not.i183.not, label %if.then9.i184, label %cleanup.critedge

if.then9.i184:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %34 = ptrtoint ptr %32 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %32, align 4
  %36 = ptrtoint ptr %ibuf to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %35, ptr %ibuf, align 1
  tail call void @mutex_unlock(ptr noundef %usb_mutex.i179) #7
  br label %cleanup.sink.split

if.else69:                                        ; preds = %if.end4
  br i1 %cmp7, label %if.else69.do.end83_crit_edge, label %lor.lhs.false

if.else69.do.end83_crit_edge:                     ; preds = %if.else69
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end83

lor.lhs.false:                                    ; preds = %if.else69
  %len76 = getelementptr %struct.i2c_msg, ptr %msg, i32 1, i32 2
  %37 = ptrtoint ptr %len76 to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %len76, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 60, i16 %38)
  %cmp78 = icmp ugt i16 %38, 60
  br i1 %cmp78, label %lor.lhs.false.do.end83_crit_edge, label %if.end.i197

lor.lhs.false.do.end83_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end83

do.end83:                                         ; preds = %lor.lhs.false.do.end83_crit_edge, %if.else69.do.end83_crit_edge
  %udev84 = getelementptr inbounds %struct.dvb_usb_device, ptr %1, i32 0, i32 5
  %39 = ptrtoint ptr %udev84 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %udev84, align 4
  %dev85 = getelementptr inbounds %struct.usb_device, ptr %40, i32 0, i32 15
  %conv88 = zext i16 %7 to i32
  %len90 = getelementptr %struct.i2c_msg, ptr %msg, i32 1, i32 2
  %41 = ptrtoint ptr %len90 to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %len90, align 4
  %conv91 = zext i16 %42 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev85, ptr noundef nonnull @.str.45, i32 noundef %conv88, i32 noundef %conv91) #10
  br label %cleanup.sink.split

if.end.i197:                                      ; preds = %lor.lhs.false
  %43 = ptrtoint ptr %obuf to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 9, ptr %obuf, align 4
  %conv96 = trunc i16 %7 to i8
  %obuf.1.obuf.1.arrayidx97.sroa_idx = getelementptr inbounds i8, ptr %obuf, i32 1
  %44 = ptrtoint ptr %obuf.1.obuf.1.arrayidx97.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %conv96, ptr %obuf.1.obuf.1.arrayidx97.sroa_idx, align 1
  %conv100 = trunc i16 %38 to i8
  %obuf.2.obuf.2.arrayidx101.sroa_idx = getelementptr inbounds i8, ptr %obuf, i32 2
  %45 = ptrtoint ptr %obuf.2.obuf.2.arrayidx101.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %conv100, ptr %obuf.2.obuf.2.arrayidx101.sroa_idx, align 2
  %46 = ptrtoint ptr %msg to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %msg, align 4
  %conv104 = trunc i16 %47 to i8
  %obuf.3.obuf.3.arrayidx105.sroa_idx = getelementptr inbounds i8, ptr %obuf, i32 3
  %48 = ptrtoint ptr %obuf.3.obuf.3.arrayidx105.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %conv104, ptr %obuf.3.obuf.3.arrayidx105.sroa_idx, align 1
  %buf108 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 3
  %49 = ptrtoint ptr %buf108 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %buf108, align 4
  %conv111 = zext i16 %7 to i32
  %obuf.4.obuf.4.arrayidx106.sroa_idx = getelementptr inbounds i8, ptr %obuf, i32 4
  %51 = call ptr @memcpy(ptr %obuf.4.obuf.4.arrayidx106.sroa_idx, ptr %50, i32 %conv111)
  %add116 = add nuw nsw i16 %7, 4
  %add122 = add nuw nsw i16 %38, 1
  %priv.i186 = getelementptr inbounds %struct.dvb_usb_device, ptr %1, i32 0, i32 15
  %52 = ptrtoint ptr %priv.i186 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %priv.i186, align 8
  %usb_mutex.i187 = getelementptr inbounds %struct.dvb_usb_device, ptr %1, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %usb_mutex.i187, i32 noundef 0) #7
  %conv.i189 = zext i16 %add116 to i32
  %obuf.i190 = getelementptr inbounds %struct.dvbsky_state, ptr %53, i32 0, i32 1
  %54 = call ptr @memcpy(ptr %obuf.i190, ptr %obuf, i32 %conv.i189)
  %call.i193 = tail call i32 @dvb_usbv2_generic_rw_locked(ptr noundef %1, ptr noundef %obuf.i190, i16 noundef zeroext %add116, ptr noundef %53, i16 noundef zeroext %add122) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i193)
  %tobool.not.i194.not = icmp eq i32 %call.i193, 0
  br i1 %tobool.not.i194.not, label %if.end.i197.i2c_error.thread206_crit_edge, label %dvbsky_usb_generic_rw.exit200

if.end.i197.i2c_error.thread206_crit_edge:        ; preds = %if.end.i197
  call void @__sanitizer_cov_trace_pc() #9
  br label %i2c_error.thread206

dvbsky_usb_generic_rw.exit200:                    ; preds = %if.end.i197
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @mutex_unlock(ptr noundef %usb_mutex.i187) #7
  br label %cleanup.sink.split

i2c_error.thread206:                              ; preds = %if.end.i197.i2c_error.thread206_crit_edge, %if.then21.i2c_error.thread206_crit_edge
  %add.sink = phi i16 [ %add, %if.then21.i2c_error.thread206_crit_edge ], [ %add122, %if.end.i197.i2c_error.thread206_crit_edge ]
  %.sink210 = phi ptr [ %20, %if.then21.i2c_error.thread206_crit_edge ], [ %53, %if.end.i197.i2c_error.thread206_crit_edge ]
  %usb_mutex.i.sink = phi ptr [ %usb_mutex.i, %if.then21.i2c_error.thread206_crit_edge ], [ %usb_mutex.i187, %if.end.i197.i2c_error.thread206_crit_edge ]
  %.sink = phi i32 [ 0, %if.then21.i2c_error.thread206_crit_edge ], [ 1, %if.end.i197.i2c_error.thread206_crit_edge ]
  %len.sink = phi ptr [ %len, %if.then21.i2c_error.thread206_crit_edge ], [ %len76, %if.end.i197.i2c_error.thread206_crit_edge ]
  %conv6.i = zext i16 %add.sink to i32
  %55 = call ptr @memcpy(ptr %ibuf, ptr %.sink210, i32 %conv6.i)
  tail call void @mutex_unlock(ptr noundef %usb_mutex.i.sink) #7
  %buf = getelementptr %struct.i2c_msg, ptr %msg, i32 %.sink, i32 3
  %56 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %buf, align 4
  %58 = ptrtoint ptr %len.sink to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %len.sink, align 4
  %conv43 = zext i16 %59 to i32
  %ibuf.1.ibuf.1.arrayidx40.sroa_idx = getelementptr inbounds i8, ptr %ibuf, i32 1
  %60 = call ptr @memcpy(ptr %57, ptr %ibuf.1.ibuf.1.arrayidx40.sroa_idx, i32 %conv43)
  br label %cleanup.sink.split

cleanup.critedge:                                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @mutex_unlock(ptr noundef %usb_mutex.i179) #7
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %cleanup.critedge, %i2c_error.thread206, %dvbsky_usb_generic_rw.exit200, %do.end83, %if.then9.i184, %dvbsky_usb_generic_rw.exit, %do.end12, %do.end
  %retval.0.ph = phi i32 [ %call.i182, %cleanup.critedge ], [ %call.i193, %dvbsky_usb_generic_rw.exit200 ], [ -95, %do.end83 ], [ %call.i, %dvbsky_usb_generic_rw.exit ], [ -95, %do.end12 ], [ -95, %do.end ], [ %num, %if.then9.i184 ], [ %num, %i2c_error.thread206 ]
  tail call void @mutex_unlock(ptr noundef %i2c_mutex) #7
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -11, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %obuf)
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %ibuf)
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @dvbsky_i2c_func(ptr nocapture noundef readnone %adapter) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dvb_module_probe(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @m88ds3103_get_agc_pwm(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dvb_module_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dvbsky_usb_read_status(ptr noundef %fe, ptr noundef %status) #2 align 64 {
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
  %id = getelementptr inbounds %struct.dvb_usb_adapter, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %id, align 4
  %conv = zext i8 %5 to i32
  %.neg = mul nsw i32 %conv, -2280
  %idx.neg = add nsw i32 %.neg, -1616
  %add.ptr = getelementptr i8, ptr %3, i32 %idx.neg
  %priv3 = getelementptr inbounds %struct.dvb_usb_device, ptr %add.ptr, i32 0, i32 15
  %6 = ptrtoint ptr %priv3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %priv3, align 8
  %fe_read_status = getelementptr inbounds %struct.dvbsky_state, ptr %7, i32 0, i32 7
  %8 = ptrtoint ptr %fe_read_status to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fe_read_status, align 4
  %call = tail call i32 %9(ptr noundef %fe, ptr noundef %status) #7
  %10 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %status, align 4
  %and = and i32 %11, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %last_lock = getelementptr inbounds %struct.dvbsky_state, ptr %7, i32 0, i32 2
  %12 = ptrtoint ptr %last_lock to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %last_lock, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool4.not = icmp eq i8 %13, 0
  br i1 %tobool4.not, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  %14 = ptrtoint ptr %priv3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %priv3, align 8
  %usb_mutex.i = getelementptr inbounds %struct.dvb_usb_device, ptr %add.ptr, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %usb_mutex.i, i32 noundef 0) #7
  %obuf.i = getelementptr inbounds %struct.dvbsky_state, ptr %15, i32 0, i32 1
  %16 = call ptr @memcpy(ptr %obuf.i, ptr @dvbsky_stream_ctrl.obuf_pre, i32 3)
  %call.i = tail call i32 @dvb_usbv2_generic_write_locked(ptr noundef %add.ptr, ptr noundef %obuf.i, i16 noundef zeroext 3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %if.then.dvbsky_stream_ctrl.exit_crit_edge

if.then.dvbsky_stream_ctrl.exit_crit_edge:        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %dvbsky_stream_ctrl.exit

land.lhs.true.i:                                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @msleep(i32 noundef 20) #7
  %17 = call ptr @memcpy(ptr %obuf.i, ptr @dvbsky_stream_ctrl.obuf_post, i32 3)
  %call8.i = tail call i32 @dvb_usbv2_generic_write_locked(ptr noundef %add.ptr, ptr noundef %obuf.i, i16 noundef zeroext 3) #7
  br label %dvbsky_stream_ctrl.exit

dvbsky_stream_ctrl.exit:                          ; preds = %land.lhs.true.i, %if.then.dvbsky_stream_ctrl.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %usb_mutex.i) #7
  br label %if.end

if.end:                                           ; preds = %dvbsky_stream_ctrl.exit, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %18 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %status, align 4
  %20 = trunc i32 %19 to i8
  %21 = lshr i8 %20, 4
  %22 = and i8 %21, 1
  %last_lock9 = getelementptr inbounds %struct.dvbsky_state, ptr %7, i32 0, i32 2
  %23 = ptrtoint ptr %last_lock9 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %22, ptr %last_lock9, align 4
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dvbsky_usb_set_voltage(ptr noundef %fe, i32 noundef %voltage) #2 align 64 {
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
  %id = getelementptr inbounds %struct.dvb_usb_adapter, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %id, align 4
  %conv = zext i8 %5 to i32
  %.neg = mul nsw i32 %conv, -2280
  %idx.neg = add nsw i32 %.neg, -1616
  %add.ptr = getelementptr i8, ptr %3, i32 %idx.neg
  %priv3 = getelementptr inbounds %struct.dvb_usb_device, ptr %add.ptr, i32 0, i32 15
  %6 = ptrtoint ptr %priv3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %priv3, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %voltage)
  %cmp = icmp ne i32 %voltage, 2
  %. = zext i1 %cmp to i8
  %usb_mutex.i.i = getelementptr inbounds %struct.dvb_usb_device, ptr %add.ptr, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %usb_mutex.i.i, i32 noundef 0) #7
  %obuf.i.i = getelementptr inbounds %struct.dvbsky_state, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %obuf.i.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 14, ptr %obuf.i.i, align 4
  %obuf.sroa.5.0.obuf.i.sroa_idx.i = getelementptr inbounds %struct.dvbsky_state, ptr %7, i32 0, i32 1, i32 1
  %9 = ptrtoint ptr %obuf.sroa.5.0.obuf.i.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 -128, ptr %obuf.sroa.5.0.obuf.i.sroa_idx.i, align 1
  %obuf.sroa.7.0.obuf.i.sroa_idx.i = getelementptr inbounds %struct.dvbsky_state, ptr %7, i32 0, i32 1, i32 2
  %10 = ptrtoint ptr %obuf.sroa.7.0.obuf.i.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %., ptr %obuf.sroa.7.0.obuf.i.sroa_idx.i, align 2
  %call.i.i = tail call i32 @dvb_usbv2_generic_rw_locked(ptr noundef %add.ptr, ptr noundef %obuf.i.i, i16 noundef zeroext 3, ptr noundef %7, i16 noundef zeroext 1) #7
  tail call void @mutex_unlock(ptr noundef %usb_mutex.i.i) #7
  %fe_set_voltage = getelementptr inbounds %struct.dvbsky_state, ptr %7, i32 0, i32 6
  %11 = ptrtoint ptr %fe_set_voltage to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %fe_set_voltage, align 4
  %call5 = tail call i32 %12(ptr noundef %fe, i32 noundef %voltage) #7
  ret i32 %call5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_usbv2_generic_write_locked(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dvbsky_rc_query(ptr noundef %d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 15
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %usb_mutex.i = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %usb_mutex.i, i32 noundef 0) #7
  %obuf.i = getelementptr inbounds %struct.dvbsky_state, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %obuf.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 16, ptr %obuf.i, align 4
  %call.i = tail call i32 @dvb_usbv2_generic_rw_locked(ptr noundef %d, ptr noundef %obuf.i, i16 noundef zeroext 1, ptr noundef %1, i16 noundef zeroext 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i.not, label %if.end, label %if.end.thread

if.end.thread:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @mutex_unlock(ptr noundef %usb_mutex.i) #7
  br label %if.end24

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %3)
  %ibuf.sroa.0.0.copyload = load i8, ptr %1, align 4
  %ibuf.sroa.5.0..sroa_idx = getelementptr inbounds i8, ptr %1, i32 1
  %4 = ptrtoint ptr %ibuf.sroa.5.0..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %4)
  %ibuf.sroa.5.0.copyload = load i8, ptr %ibuf.sroa.5.0..sroa_idx, align 1
  tail call void @mutex_unlock(ptr noundef %usb_mutex.i) #7
  %conv = zext i8 %ibuf.sroa.0.0.copyload to i32
  %shl = shl nuw nsw i32 %conv, 8
  %conv4 = zext i8 %ibuf.sroa.5.0.copyload to i32
  %or = or i32 %shl, %conv4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %or)
  %cmp5.not = icmp eq i32 %or, 65535
  br i1 %cmp5.not, label %if.end.if.end24_crit_edge, label %do.body

if.end.if.end24_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24

do.body:                                          ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dvbsky_rc_query.__UNIQUE_ID_ddebug390, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dvbsky_rc_query, %if.then11)) #7
          to label %do.end [label %if.then11], !srcloc !131

if.then11:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %udev = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 5
  %5 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %udev, align 4
  %dev = getelementptr inbounds %struct.usb_device, ptr %6, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dvbsky_rc_query.__UNIQUE_ID_ddebug390, ptr noundef %dev, ptr noundef nonnull @.str.52, i32 noundef %or) #7
  br label %do.end

do.end:                                           ; preds = %if.then11, %do.body
  %conv13 = and i32 %conv4, 63
  %and16 = lshr i8 %ibuf.sroa.0.0.copyload, 3
  %7 = and i8 %and16, 1
  %8 = shl nuw nsw i32 %or, 2
  %shl20 = and i32 %8, 7936
  %or22 = or i32 %shl20, %conv13
  %rc_dev = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 12
  %9 = ptrtoint ptr %rc_dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %rc_dev, align 8
  %conv23 = zext i32 %or22 to i64
  tail call void @rc_keydown(ptr noundef %10, i32 noundef 2, i64 noundef %conv23, i8 noundef zeroext %7) #7
  br label %if.end24

if.end24:                                         ; preds = %do.end, %if.end.if.end24_crit_edge, %if.end.thread
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rc_keydown(ptr noundef, i32 noundef, i64 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dvbsky_s960c_attach(ptr noundef %adap) #2 align 64 {
entry:
  %m88ds3103_pdata = alloca %struct.m88ds3103_platform_data, align 4
  %ts2020_config = alloca %struct.ts2020_config, align 4
  %sp2_config = alloca %struct.sp2_config, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %id = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 2
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %id, align 4
  %conv = zext i8 %1 to i32
  %.neg = mul nsw i32 %conv, -2280
  %idx.neg = add nsw i32 %.neg, -1616
  %add.ptr = getelementptr i8, ptr %adap, i32 %idx.neg
  %priv = getelementptr inbounds %struct.dvb_usb_device, ptr %add.ptr, i32 0, i32 15
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 8
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %m88ds3103_pdata) #7
  %4 = getelementptr inbounds i8, ptr %m88ds3103_pdata, i32 4
  %5 = call ptr @memset(ptr %4, i32 0, i32 32)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %ts2020_config) #7
  %6 = call ptr @memset(ptr %ts2020_config, i32 0, i32 20)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %sp2_config) #7
  %7 = call ptr @memset(ptr %sp2_config, i32 0, i32 12)
  %8 = ptrtoint ptr %m88ds3103_pdata to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 27000000, ptr %m88ds3103_pdata, align 4
  %i2c_wr_max = getelementptr inbounds %struct.m88ds3103_platform_data, ptr %m88ds3103_pdata, i32 0, i32 1
  %9 = ptrtoint ptr %i2c_wr_max to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 33, ptr %i2c_wr_max, align 4
  %clk_out = getelementptr inbounds %struct.m88ds3103_platform_data, ptr %m88ds3103_pdata, i32 0, i32 4
  %10 = ptrtoint ptr %clk_out to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %clk_out, align 4
  %ts_mode = getelementptr inbounds %struct.m88ds3103_platform_data, ptr %m88ds3103_pdata, i32 0, i32 2
  %11 = ptrtoint ptr %ts_mode to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 3, ptr %ts_mode, align 4
  %ts_clk = getelementptr inbounds %struct.m88ds3103_platform_data, ptr %m88ds3103_pdata, i32 0, i32 3
  %12 = ptrtoint ptr %ts_clk to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 10000, ptr %ts_clk, align 4
  %ts_clk_pol = getelementptr inbounds %struct.m88ds3103_platform_data, ptr %m88ds3103_pdata, i32 0, i32 5
  %13 = ptrtoint ptr %ts_clk_pol to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 -128, ptr %ts_clk_pol, align 4
  %agc = getelementptr inbounds %struct.m88ds3103_platform_data, ptr %m88ds3103_pdata, i32 0, i32 6
  %14 = ptrtoint ptr %agc to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 -103, ptr %agc, align 1
  %lnb_hv_pol = getelementptr inbounds %struct.m88ds3103_platform_data, ptr %m88ds3103_pdata, i32 0, i32 7
  %15 = ptrtoint ptr %lnb_hv_pol to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 16, ptr %lnb_hv_pol, align 2
  %i2c_adap = getelementptr inbounds %struct.dvb_usb_device, ptr %add.ptr, i32 0, i32 10
  %call = call ptr @dvb_module_probe(ptr noundef nonnull @.str.47, ptr noundef null, ptr noundef %i2c_adap, i8 noundef zeroext 104, ptr noundef nonnull %m88ds3103_pdata) #7
  %i2c_client_demod = getelementptr inbounds %struct.dvbsky_state, ptr %3, i32 0, i32 3
  %16 = ptrtoint ptr %i2c_client_demod to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call, ptr %i2c_client_demod, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %get_dvb_frontend = getelementptr inbounds %struct.m88ds3103_platform_data, ptr %m88ds3103_pdata, i32 0, i32 8
  %17 = ptrtoint ptr %get_dvb_frontend to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %get_dvb_frontend, align 4
  %call15 = call ptr %18(ptr noundef nonnull %call) #7
  %fe = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 14
  %19 = ptrtoint ptr %fe to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call15, ptr %fe, align 8
  %get_i2c_adapter = getelementptr inbounds %struct.m88ds3103_platform_data, ptr %m88ds3103_pdata, i32 0, i32 9
  %20 = ptrtoint ptr %get_i2c_adapter to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %get_i2c_adapter, align 4
  %22 = ptrtoint ptr %i2c_client_demod to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %i2c_client_demod, align 4
  %call17 = call ptr %21(ptr noundef %23) #7
  %24 = ptrtoint ptr %fe to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %fe, align 8
  %fe20 = getelementptr inbounds %struct.ts2020_config, ptr %ts2020_config, i32 0, i32 3
  %26 = ptrtoint ptr %fe20 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %25, ptr %fe20, align 4
  %get_agc_pwm = getelementptr inbounds %struct.ts2020_config, ptr %ts2020_config, i32 0, i32 5
  %27 = ptrtoint ptr %get_agc_pwm to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @m88ds3103_get_agc_pwm, ptr %get_agc_pwm, align 4
  %call21 = call ptr @dvb_module_probe(ptr noundef nonnull @.str.48, ptr noundef null, ptr noundef %call17, i8 noundef zeroext 96, ptr noundef nonnull %ts2020_config) #7
  %i2c_client_tuner = getelementptr inbounds %struct.dvbsky_state, ptr %3, i32 0, i32 4
  %28 = ptrtoint ptr %i2c_client_tuner to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call21, ptr %i2c_client_tuner, align 4
  %tobool23.not = icmp eq ptr %call21, null
  br i1 %tobool23.not, label %if.then24, label %if.end26

if.then24:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %29 = ptrtoint ptr %i2c_client_demod to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %i2c_client_demod, align 4
  call void @dvb_module_release(ptr noundef %30) #7
  br label %cleanup

if.end26:                                         ; preds = %if.end
  %dvb_adap = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 10
  %31 = ptrtoint ptr %sp2_config to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %dvb_adap, ptr %sp2_config, align 4
  %priv28 = getelementptr inbounds %struct.sp2_config, ptr %sp2_config, i32 0, i32 2
  %32 = ptrtoint ptr %priv28 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %add.ptr, ptr %priv28, align 4
  %ci_control = getelementptr inbounds %struct.sp2_config, ptr %sp2_config, i32 0, i32 1
  %33 = ptrtoint ptr %ci_control to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @dvbsky_ci_ctrl, ptr %ci_control, align 4
  %call30 = call ptr @dvb_module_probe(ptr noundef nonnull @.str.54, ptr noundef null, ptr noundef %i2c_adap, i8 noundef zeroext 64, ptr noundef nonnull %sp2_config) #7
  %i2c_client_ci = getelementptr inbounds %struct.dvbsky_state, ptr %3, i32 0, i32 5
  %34 = ptrtoint ptr %i2c_client_ci to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call30, ptr %i2c_client_ci, align 4
  %tobool32.not = icmp eq ptr %call30, null
  br i1 %tobool32.not, label %if.then33, label %if.end36

if.then33:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  %35 = ptrtoint ptr %i2c_client_tuner to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %i2c_client_tuner, align 4
  call void @dvb_module_release(ptr noundef %36) #7
  %37 = ptrtoint ptr %i2c_client_demod to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %i2c_client_demod, align 4
  call void @dvb_module_release(ptr noundef %38) #7
  br label %cleanup

if.end36:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  %39 = ptrtoint ptr %fe to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %fe, align 8
  %get_rf_strength = getelementptr inbounds %struct.dvb_frontend, ptr %40, i32 0, i32 1, i32 32, i32 13
  %41 = ptrtoint ptr %get_rf_strength to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %get_rf_strength, align 4
  %read_signal_strength = getelementptr inbounds %struct.dvb_frontend, ptr %40, i32 0, i32 1, i32 17
  %43 = ptrtoint ptr %read_signal_strength to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %42, ptr %read_signal_strength, align 4
  %44 = load ptr, ptr %fe, align 8
  %read_status = getelementptr inbounds %struct.dvb_frontend, ptr %44, i32 0, i32 1, i32 15
  %45 = ptrtoint ptr %read_status to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %read_status, align 4
  %fe_read_status = getelementptr inbounds %struct.dvbsky_state, ptr %3, i32 0, i32 7
  %47 = ptrtoint ptr %fe_read_status to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %46, ptr %fe_read_status, align 4
  %48 = load ptr, ptr %fe, align 8
  %read_status48 = getelementptr inbounds %struct.dvb_frontend, ptr %48, i32 0, i32 1, i32 15
  %49 = ptrtoint ptr %read_status48 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr @dvbsky_usb_read_status, ptr %read_status48, align 4
  %50 = load ptr, ptr %fe, align 8
  %set_voltage = getelementptr inbounds %struct.dvb_frontend, ptr %50, i32 0, i32 1, i32 25
  %51 = ptrtoint ptr %set_voltage to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %set_voltage, align 4
  %fe_set_voltage = getelementptr inbounds %struct.dvbsky_state, ptr %3, i32 0, i32 6
  %53 = ptrtoint ptr %fe_set_voltage to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %52, ptr %fe_set_voltage, align 4
  %54 = load ptr, ptr %fe, align 8
  %set_voltage55 = getelementptr inbounds %struct.dvb_frontend, ptr %54, i32 0, i32 1, i32 25
  %55 = ptrtoint ptr %set_voltage55 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr @dvbsky_usb_ci_set_voltage, ptr %set_voltage55, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end36, %if.then33, %if.then24, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end36 ], [ -19, %if.then33 ], [ -19, %if.then24 ], [ -19, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %sp2_config) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %ts2020_config) #7
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %m88ds3103_pdata) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dvbsky_ci_ctrl(ptr noundef %priv, i8 noundef zeroext %read, i32 noundef %addr, i8 noundef zeroext %data, ptr nocapture noundef writeonly %mem) #2 align 64 {
entry:
  %command.sroa.0 = alloca i32, align 4
  %respond = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %command.sroa.0)
  %command.sroa.0.1..sroa_idx = getelementptr inbounds i8, ptr %command.sroa.0, i32 1
  %command.sroa.0.2..sroa_idx = getelementptr inbounds i8, ptr %command.sroa.0, i32 2
  %0 = ptrtoint ptr %command.sroa.0 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %command.sroa.0, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %respond)
  %1 = ptrtoint ptr %respond to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %respond, align 1
  %respond.1.respond.1..sroa_idx = getelementptr inbounds i8, ptr %respond, i32 1
  %2 = ptrtoint ptr %respond.1.respond.1..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %respond.1.respond.1..sroa_idx, align 1
  %3 = lshr i32 %addr, 8
  %conv = trunc i32 %3 to i8
  %4 = ptrtoint ptr %command.sroa.0.1..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv, ptr %command.sroa.0.1..sroa_idx, align 1
  %conv2 = trunc i32 %addr to i8
  %5 = ptrtoint ptr %command.sroa.0.2..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv2, ptr %command.sroa.0.2..sroa_idx, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %read)
  %tobool.not = icmp eq i8 %read, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %command.sroa.0 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 113, ptr %command.sroa.0, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %command.sroa.0.3..sroa_idx = getelementptr inbounds i8, ptr %command.sroa.0, i32 3
  %7 = ptrtoint ptr %command.sroa.0 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 112, ptr %command.sroa.0, align 4
  %8 = ptrtoint ptr %command.sroa.0.3..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %data, ptr %command.sroa.0.3..sroa_idx, align 1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %command_size.0 = phi i8 [ 3, %if.then ], [ 4, %if.else ]
  %respond_size.0 = phi i8 [ 2, %if.then ], [ 1, %if.else ]
  %conv7 = zext i8 %command_size.0 to i16
  %conv9 = zext i8 %respond_size.0 to i16
  %priv.i = getelementptr inbounds %struct.dvb_usb_device, ptr %priv, i32 0, i32 15
  %9 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %priv.i, align 8
  %usb_mutex.i = getelementptr inbounds %struct.dvb_usb_device, ptr %priv, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %usb_mutex.i, i32 noundef 0) #7
  %conv.i = zext i8 %command_size.0 to i32
  %obuf.i = getelementptr inbounds %struct.dvbsky_state, ptr %10, i32 0, i32 1
  %11 = call ptr @memcpy(ptr %obuf.i, ptr %command.sroa.0, i32 %conv.i)
  %call.i = tail call i32 @dvb_usbv2_generic_rw_locked(ptr noundef %priv, ptr noundef %obuf.i, i16 noundef zeroext %conv7, ptr noundef %10, i16 noundef zeroext %conv9) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i.not, label %if.end12, label %do.end

if.end12:                                         ; preds = %if.end
  %conv6.i = zext i8 %respond_size.0 to i32
  %12 = call ptr @memcpy(ptr %respond, ptr %10, i32 %conv6.i)
  tail call void @mutex_unlock(ptr noundef %usb_mutex.i) #7
  br i1 %tobool.not, label %if.end12.cleanup_crit_edge, label %if.then14

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then14:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %respond.1.respond.1..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %13)
  %respond.1.respond.1. = load i8, ptr %respond.1.respond.1..sroa_idx, align 1
  %conv16 = zext i8 %respond.1.respond.1. to i32
  %14 = ptrtoint ptr %mem to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %conv16, ptr %mem, align 4
  br label %cleanup

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @mutex_unlock(ptr noundef %usb_mutex.i) #7
  %udev = getelementptr inbounds %struct.dvb_usb_device, ptr %priv, i32 0, i32 5
  %15 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %udev, align 4
  %dev = getelementptr inbounds %struct.usb_device, ptr %16, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.55, i32 noundef %call.i) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then14, %if.end12.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %respond)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %command.sroa.0)
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dvbsky_usb_ci_set_voltage(ptr noundef %fe, i32 noundef %voltage) #2 align 64 {
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
  %id = getelementptr inbounds %struct.dvb_usb_adapter, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %id, align 4
  %conv = zext i8 %5 to i32
  %.neg = mul nsw i32 %conv, -2280
  %idx.neg = add nsw i32 %.neg, -1616
  %add.ptr = getelementptr i8, ptr %3, i32 %idx.neg
  %priv3 = getelementptr inbounds %struct.dvb_usb_device, ptr %add.ptr, i32 0, i32 15
  %6 = ptrtoint ptr %priv3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %priv3, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %voltage)
  %cmp = icmp ne i32 %voltage, 2
  %. = zext i1 %cmp to i8
  %usb_mutex.i.i = getelementptr inbounds %struct.dvb_usb_device, ptr %add.ptr, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %usb_mutex.i.i, i32 noundef 0) #7
  %obuf.i.i = getelementptr inbounds %struct.dvbsky_state, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %obuf.i.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 14, ptr %obuf.i.i, align 4
  %obuf.sroa.5.0.obuf.i.sroa_idx.i = getelementptr inbounds %struct.dvbsky_state, ptr %7, i32 0, i32 1, i32 1
  %9 = ptrtoint ptr %obuf.sroa.5.0.obuf.i.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %obuf.sroa.5.0.obuf.i.sroa_idx.i, align 1
  %obuf.sroa.7.0.obuf.i.sroa_idx.i = getelementptr inbounds %struct.dvbsky_state, ptr %7, i32 0, i32 1, i32 2
  %10 = ptrtoint ptr %obuf.sroa.7.0.obuf.i.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %., ptr %obuf.sroa.7.0.obuf.i.sroa_idx.i, align 2
  %call.i.i = tail call i32 @dvb_usbv2_generic_rw_locked(ptr noundef %add.ptr, ptr noundef %obuf.i.i, i16 noundef zeroext 3, ptr noundef %7, i16 noundef zeroext 1) #7
  tail call void @mutex_unlock(ptr noundef %usb_mutex.i.i) #7
  %fe_set_voltage = getelementptr inbounds %struct.dvbsky_state, ptr %7, i32 0, i32 6
  %11 = ptrtoint ptr %fe_set_voltage to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %fe_set_voltage, align 4
  %call5 = tail call i32 %12(ptr noundef %fe, i32 noundef %voltage) #7
  ret i32 %call5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dvbsky_t680c_attach(ptr noundef %adap) #2 align 64 {
entry:
  %i2c_adapter = alloca ptr, align 4
  %si2168_config = alloca %struct.si2168_config, align 4
  %si2157_config = alloca %struct.si2157_config, align 4
  %sp2_config = alloca %struct.sp2_config, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %id = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 2
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %id, align 4
  %conv = zext i8 %1 to i32
  %.neg = mul nsw i32 %conv, -2280
  %idx.neg = add nsw i32 %.neg, -1616
  %add.ptr = getelementptr i8, ptr %adap, i32 %idx.neg
  %priv = getelementptr inbounds %struct.dvb_usb_device, ptr %add.ptr, i32 0, i32 15
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i2c_adapter) #7
  %4 = ptrtoint ptr %i2c_adapter to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %i2c_adapter, align 4, !annotation !132
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %si2168_config) #7
  %5 = getelementptr inbounds i8, ptr %si2168_config, i32 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %si2157_config) #7
  %7 = getelementptr inbounds i8, ptr %si2157_config, i32 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_storeN_noabort(i32 %8, i32 8)
  store i64 0, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %sp2_config) #7
  %i2c_adapter7 = getelementptr inbounds %struct.si2168_config, ptr %si2168_config, i32 0, i32 1
  %9 = ptrtoint ptr %i2c_adapter7 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %i2c_adapter, ptr %i2c_adapter7, align 4
  %fe = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 14
  %10 = ptrtoint ptr %si2168_config to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %fe, ptr %si2168_config, align 4
  %ts_mode = getelementptr inbounds %struct.si2168_config, ptr %si2168_config, i32 0, i32 2
  %11 = ptrtoint ptr %ts_mode to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 6, ptr %ts_mode, align 4
  %i2c_adap = getelementptr inbounds %struct.dvb_usb_device, ptr %add.ptr, i32 0, i32 10
  %call = call ptr @dvb_module_probe(ptr noundef nonnull @.str.58, ptr noundef null, ptr noundef %i2c_adap, i8 noundef zeroext 100, ptr noundef nonnull %si2168_config) #7
  %i2c_client_demod = getelementptr inbounds %struct.dvbsky_state, ptr %3, i32 0, i32 3
  %12 = ptrtoint ptr %i2c_client_demod to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call, ptr %i2c_client_demod, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %13 = ptrtoint ptr %fe to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %fe, align 8
  %15 = ptrtoint ptr %si2157_config to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %14, ptr %si2157_config, align 4
  %if_port = getelementptr inbounds %struct.si2157_config, ptr %si2157_config, i32 0, i32 3
  %16 = ptrtoint ptr %if_port to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 1, ptr %if_port, align 1
  %17 = ptrtoint ptr %i2c_adapter to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %i2c_adapter, align 4
  %call13 = call ptr @dvb_module_probe(ptr noundef nonnull @.str.59, ptr noundef null, ptr noundef %18, i8 noundef zeroext 96, ptr noundef nonnull %si2157_config) #7
  %i2c_client_tuner = getelementptr inbounds %struct.dvbsky_state, ptr %3, i32 0, i32 4
  %19 = ptrtoint ptr %i2c_client_tuner to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call13, ptr %i2c_client_tuner, align 4
  %tobool15.not = icmp eq ptr %call13, null
  br i1 %tobool15.not, label %if.end.cleanup.sink.split_crit_edge, label %if.end18

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end18:                                         ; preds = %if.end
  %dvb_adap = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 10
  %20 = ptrtoint ptr %sp2_config to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %dvb_adap, ptr %sp2_config, align 4
  %priv20 = getelementptr inbounds %struct.sp2_config, ptr %sp2_config, i32 0, i32 2
  %21 = ptrtoint ptr %priv20 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %add.ptr, ptr %priv20, align 4
  %ci_control = getelementptr inbounds %struct.sp2_config, ptr %sp2_config, i32 0, i32 1
  %22 = ptrtoint ptr %ci_control to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @dvbsky_ci_ctrl, ptr %ci_control, align 4
  %call22 = call ptr @dvb_module_probe(ptr noundef nonnull @.str.54, ptr noundef null, ptr noundef %i2c_adap, i8 noundef zeroext 64, ptr noundef nonnull %sp2_config) #7
  %i2c_client_ci = getelementptr inbounds %struct.dvbsky_state, ptr %3, i32 0, i32 5
  %23 = ptrtoint ptr %i2c_client_ci to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call22, ptr %i2c_client_ci, align 4
  %tobool24.not = icmp eq ptr %call22, null
  br i1 %tobool24.not, label %if.then25, label %if.end18.cleanup_crit_edge

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then25:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  %24 = ptrtoint ptr %i2c_client_tuner to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %i2c_client_tuner, align 4
  call void @dvb_module_release(ptr noundef %25) #7
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then25, %if.end.cleanup.sink.split_crit_edge
  %26 = ptrtoint ptr %i2c_client_demod to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %i2c_client_demod, align 4
  call void @dvb_module_release(ptr noundef %27) #7
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end18.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %entry.cleanup_crit_edge ], [ 0, %if.end18.cleanup_crit_edge ], [ -19, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %sp2_config) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %si2157_config) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %si2168_config) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i2c_adapter) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dvbsky_t330_attach(ptr noundef %adap) #2 align 64 {
entry:
  %i2c_adapter = alloca ptr, align 4
  %si2168_config = alloca %struct.si2168_config, align 4
  %si2157_config = alloca %struct.si2157_config, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %id = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 2
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %id, align 4
  %conv = zext i8 %1 to i32
  %.neg = mul nsw i32 %conv, -2280
  %idx.neg = add nsw i32 %.neg, -1616
  %add.ptr = getelementptr i8, ptr %adap, i32 %idx.neg
  %priv = getelementptr inbounds %struct.dvb_usb_device, ptr %add.ptr, i32 0, i32 15
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i2c_adapter) #7
  %4 = ptrtoint ptr %i2c_adapter to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %i2c_adapter, align 4, !annotation !132
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %si2168_config) #7
  %5 = getelementptr inbounds i8, ptr %si2168_config, i32 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %si2157_config) #7
  %7 = getelementptr inbounds i8, ptr %si2157_config, i32 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_storeN_noabort(i32 %8, i32 8)
  store i64 0, ptr %7, align 4
  %i2c_adapter7 = getelementptr inbounds %struct.si2168_config, ptr %si2168_config, i32 0, i32 1
  %9 = ptrtoint ptr %i2c_adapter7 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %i2c_adapter, ptr %i2c_adapter7, align 4
  %fe = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 14
  %10 = ptrtoint ptr %si2168_config to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %fe, ptr %si2168_config, align 4
  %ts_mode = getelementptr inbounds %struct.si2168_config, ptr %si2168_config, i32 0, i32 2
  %11 = ptrtoint ptr %ts_mode to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 6, ptr %ts_mode, align 4
  %ts_clock_gapped = getelementptr inbounds %struct.si2168_config, ptr %si2168_config, i32 0, i32 3
  %12 = ptrtoint ptr %ts_clock_gapped to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 64, ptr %ts_clock_gapped, align 1
  %i2c_adap = getelementptr inbounds %struct.dvb_usb_device, ptr %add.ptr, i32 0, i32 10
  %call = call ptr @dvb_module_probe(ptr noundef nonnull @.str.58, ptr noundef null, ptr noundef %i2c_adap, i8 noundef zeroext 100, ptr noundef nonnull %si2168_config) #7
  %i2c_client_demod = getelementptr inbounds %struct.dvbsky_state, ptr %3, i32 0, i32 3
  %13 = ptrtoint ptr %i2c_client_demod to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call, ptr %i2c_client_demod, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %14 = ptrtoint ptr %fe to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %fe, align 8
  %16 = ptrtoint ptr %si2157_config to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %15, ptr %si2157_config, align 4
  %if_port = getelementptr inbounds %struct.si2157_config, ptr %si2157_config, i32 0, i32 3
  %17 = ptrtoint ptr %if_port to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 1, ptr %if_port, align 1
  %18 = ptrtoint ptr %i2c_adapter to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %i2c_adapter, align 4
  %call13 = call ptr @dvb_module_probe(ptr noundef nonnull @.str.59, ptr noundef null, ptr noundef %19, i8 noundef zeroext 96, ptr noundef nonnull %si2157_config) #7
  %i2c_client_tuner = getelementptr inbounds %struct.dvbsky_state, ptr %3, i32 0, i32 4
  %20 = ptrtoint ptr %i2c_client_tuner to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call13, ptr %i2c_client_tuner, align 4
  %tobool15.not = icmp eq ptr %call13, null
  br i1 %tobool15.not, label %if.then16, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then16:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %21 = ptrtoint ptr %i2c_client_demod to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %i2c_client_demod, align 4
  call void @dvb_module_release(ptr noundef %22) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then16, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %if.then16 ], [ -19, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %si2157_config) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %si2168_config) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i2c_adapter) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dvbsky_mygica_t230c_attach(ptr noundef %adap) #2 align 64 {
entry:
  %i2c_adapter = alloca ptr, align 4
  %si2168_config = alloca %struct.si2168_config, align 4
  %si2157_config = alloca %struct.si2157_config, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %id = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 2
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %id, align 4
  %conv = zext i8 %1 to i32
  %.neg = mul nsw i32 %conv, -2280
  %idx.neg = add nsw i32 %.neg, -1616
  %add.ptr = getelementptr i8, ptr %adap, i32 %idx.neg
  %priv = getelementptr inbounds %struct.dvb_usb_device, ptr %add.ptr, i32 0, i32 15
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i2c_adapter) #7
  %4 = ptrtoint ptr %i2c_adapter to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %i2c_adapter, align 4, !annotation !132
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %si2168_config) #7
  %5 = getelementptr inbounds i8, ptr %si2168_config, i32 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %si2157_config) #7
  %7 = getelementptr inbounds i8, ptr %si2157_config, i32 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_storeN_noabort(i32 %8, i32 8)
  store i64 0, ptr %7, align 4
  %i2c_adapter7 = getelementptr inbounds %struct.si2168_config, ptr %si2168_config, i32 0, i32 1
  %9 = ptrtoint ptr %i2c_adapter7 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %i2c_adapter, ptr %i2c_adapter7, align 4
  %fe = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 14
  %10 = ptrtoint ptr %si2168_config to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %fe, ptr %si2168_config, align 4
  %ts_mode = getelementptr inbounds %struct.si2168_config, ptr %si2168_config, i32 0, i32 2
  %11 = ptrtoint ptr %ts_mode to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 6, ptr %ts_mode, align 4
  %udev = getelementptr inbounds %struct.dvb_usb_device, ptr %add.ptr, i32 0, i32 5
  %12 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %udev, align 4
  %idProduct = getelementptr inbounds %struct.usb_device, ptr %13, i32 0, i32 16, i32 8
  %14 = ptrtoint ptr %idProduct to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %idProduct, align 2
  %16 = zext i16 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values)
  switch i16 %15, label %entry.if.end_crit_edge [
    i16 -30010, label %entry.if.then_crit_edge
    i16 -25914, label %entry.if.then_crit_edge68
    i16 -26008, label %entry.if.then_crit_edge69
  ]

entry.if.then_crit_edge69:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

entry.if.then_crit_edge68:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry.if.then_crit_edge, %entry.if.then_crit_edge68, %entry.if.then_crit_edge69
  %17 = ptrtoint ptr %ts_mode to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 38, ptr %ts_mode, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ts_clock_inv = getelementptr inbounds %struct.si2168_config, ptr %si2168_config, i32 0, i32 3
  %18 = ptrtoint ptr %ts_clock_inv to i32
  call void @__asan_load1_noabort(i32 %18)
  %bf.load = load i8, ptr %ts_clock_inv, align 1
  %bf.set = or i8 %bf.load, -128
  store i8 %bf.set, ptr %ts_clock_inv, align 1
  %i2c_adap = getelementptr inbounds %struct.dvb_usb_device, ptr %add.ptr, i32 0, i32 10
  %call = call ptr @dvb_module_probe(ptr noundef nonnull @.str.58, ptr noundef null, ptr noundef %i2c_adap, i8 noundef zeroext 100, ptr noundef nonnull %si2168_config) #7
  %i2c_client_demod = getelementptr inbounds %struct.dvbsky_state, ptr %3, i32 0, i32 3
  %19 = ptrtoint ptr %i2c_client_demod to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call, ptr %i2c_client_demod, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end29

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end29:                                         ; preds = %if.end
  %20 = ptrtoint ptr %fe to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %fe, align 8
  %22 = ptrtoint ptr %si2157_config to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %21, ptr %si2157_config, align 4
  %23 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %udev, align 4
  %idProduct35 = getelementptr inbounds %struct.usb_device, ptr %24, i32 0, i32 16, i32 8
  %25 = ptrtoint ptr %idProduct35 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %idProduct35, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -30522, i16 %26)
  %cmp37 = icmp eq i16 %26, -30522
  %if_port = getelementptr inbounds %struct.si2157_config, ptr %si2157_config, i32 0, i32 3
  br i1 %cmp37, label %if.then39, label %if.else

if.then39:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  %27 = ptrtoint ptr %if_port to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 1, ptr %if_port, align 1
  %28 = ptrtoint ptr %i2c_adapter to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %i2c_adapter, align 4
  %call40 = call ptr @dvb_module_probe(ptr noundef nonnull @.str.59, ptr noundef null, ptr noundef %29, i8 noundef zeroext 96, ptr noundef nonnull %si2157_config) #7
  br label %if.end44

if.else:                                          ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  %30 = ptrtoint ptr %if_port to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 0, ptr %if_port, align 1
  %31 = ptrtoint ptr %i2c_adapter to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %i2c_adapter, align 4
  %call42 = call ptr @dvb_module_probe(ptr noundef nonnull @.str.59, ptr noundef nonnull @.str.62, ptr noundef %32, i8 noundef zeroext 96, ptr noundef nonnull %si2157_config) #7
  br label %if.end44

if.end44:                                         ; preds = %if.else, %if.then39
  %call42.sink = phi ptr [ %call40, %if.then39 ], [ %call42, %if.else ]
  %33 = getelementptr inbounds %struct.dvbsky_state, ptr %3, i32 0, i32 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call42.sink, ptr %33, align 4
  %tobool46.not = icmp eq ptr %call42.sink, null
  br i1 %tobool46.not, label %if.then47, label %if.end44.cleanup_crit_edge

if.end44.cleanup_crit_edge:                       ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then47:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #9
  %35 = ptrtoint ptr %i2c_client_demod to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %i2c_client_demod, align 4
  call void @dvb_module_release(ptr noundef %36) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then47, %if.end44.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %if.then47 ], [ -19, %if.end.cleanup_crit_edge ], [ 0, %if.end44.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %si2157_config) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %si2168_config) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i2c_adapter) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

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
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 71)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 71)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !9, !11, !12, !14, !16, !18, !19, !21, !22, !23, !24, !25, !26, !28, !30, !31, !33, !35, !37, !39, !40, !42, !44, !46, !48, !50, !52, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !72, !73, !74, !75, !76, !77, !79, !80, !81, !83, !84, !85, !87, !89, !91, !93, !95, !96, !97, !99, !100, !101, !103, !105, !107, !108, !109, !110, !112, !114, !116, !118, !120}
!llvm.module.flags = !{!122, !123, !124, !125, !126, !127, !128, !129}
!llvm.ident = !{!130}

!0 = !{ptr @__param_disable_rc, !1, !"__param_disable_rc", i1 false, i1 false}
!1 = !{!"../drivers/media/usb/dvb-usb-v2/dvbsky.c", i32 19, i32 1}
!2 = !{ptr @__UNIQUE_ID_disable_rctype386, !1, !"__UNIQUE_ID_disable_rctype386", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_disable_rc387, !4, !"__UNIQUE_ID_disable_rc387", i1 false, i1 false}
!4 = !{!"../drivers/media/usb/dvb-usb-v2/dvbsky.c", i32 20, i32 1}
!5 = !{ptr @__param_adapter_nr, !6, !"__param_adapter_nr", i1 false, i1 false}
!6 = !{!"../drivers/media/usb/dvb-usb-v2/dvbsky.c", i32 22, i32 1}
!7 = !{ptr @__UNIQUE_ID_adapter_nrtype388, !6, !"__UNIQUE_ID_adapter_nrtype388", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_adapter_nr389, !6, !"__UNIQUE_ID_adapter_nr389", i1 false, i1 false}
!9 = !{ptr @__initcall__kmod_dvb_usb_dvbsky__392_825_dvbsky_usb_driver_init6, !10, !"__initcall__kmod_dvb_usb_dvbsky__392_825_dvbsky_usb_driver_init6", i1 false, i1 false}
!10 = !{!"../drivers/media/usb/dvb-usb-v2/dvbsky.c", i32 825, i32 1}
!11 = !{ptr @__exitcall_dvbsky_usb_driver_exit, !10, !"__exitcall_dvbsky_usb_driver_exit", i1 false, i1 false}
!12 = !{ptr @__UNIQUE_ID_author393, !13, !"__UNIQUE_ID_author393", i1 false, i1 false}
!13 = !{!"../drivers/media/usb/dvb-usb-v2/dvbsky.c", i32 827, i32 1}
!14 = !{ptr @__UNIQUE_ID_description394, !15, !"__UNIQUE_ID_description394", i1 false, i1 false}
!15 = !{!"../drivers/media/usb/dvb-usb-v2/dvbsky.c", i32 828, i32 1}
!16 = !{ptr @__UNIQUE_ID_file395, !17, !"__UNIQUE_ID_file395", i1 false, i1 false}
!17 = !{!"../drivers/media/usb/dvb-usb-v2/dvbsky.c", i32 829, i32 1}
!18 = !{ptr @__UNIQUE_ID_license396, !17, !"__UNIQUE_ID_license396", i1 false, i1 false}
!19 = !{ptr @dvb_usb_dvbsky_disable_rc, !20, !"dvb_usb_dvbsky_disable_rc", i1 false, i1 false}
!20 = !{!"../drivers/media/usb/dvb-usb-v2/dvbsky.c", i32 18, i32 12}
!21 = !{ptr @__param_str_disable_rc, !1, !"__param_str_disable_rc", i1 false, i1 false}
!22 = !{ptr @__param_str_adapter_nr, !6, !"__param_str_adapter_nr", i1 false, i1 false}
!23 = !{ptr @__param_arr_adapter_nr, !6, !"__param_arr_adapter_nr", i1 false, i1 false}
!24 = !{ptr @adapter_nr, !6, !"adapter_nr", i1 false, i1 false}
!25 = !{ptr @.str, !10, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @dvbsky_usb_driver, !27, !"dvbsky_usb_driver", i1 false, i1 false}
!27 = !{!"../drivers/media/usb/dvb-usb-v2/dvbsky.c", i32 813, i32 26}
!28 = !{ptr @.str.1, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/media/usb/dvb-usb-v2/dvbsky.c", i32 760, i32 4}
!30 = !{ptr @.str.2, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.3, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/media/usb/dvb-usb-v2/dvbsky.c", i32 762, i32 4}
!33 = !{ptr @.str.5, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/media/usb/dvb-usb-v2/dvbsky.c", i32 764, i32 4}
!35 = !{ptr @.str.7, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/media/usb/dvb-usb-v2/dvbsky.c", i32 766, i32 4}
!37 = !{ptr @.str.9, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/media/usb/dvb-usb-v2/dvbsky.c", i32 768, i32 4}
!39 = !{ptr @.str.10, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.12, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/media/usb/dvb-usb-v2/dvbsky.c", i32 772, i32 4}
!42 = !{ptr @.str.14, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/media/usb/dvb-usb-v2/dvbsky.c", i32 776, i32 4}
!44 = !{ptr @.str.16, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/media/usb/dvb-usb-v2/dvbsky.c", i32 780, i32 4}
!46 = !{ptr @.str.18, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/media/usb/dvb-usb-v2/dvbsky.c", i32 784, i32 4}
!48 = !{ptr @.str.20, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/media/usb/dvb-usb-v2/dvbsky.c", i32 788, i32 4}
!50 = !{ptr @.str.22, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/media/usb/dvb-usb-v2/dvbsky.c", i32 791, i32 4}
!52 = !{ptr @.str.23, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @.str.25, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/media/usb/dvb-usb-v2/dvbsky.c", i32 794, i32 4}
!55 = !{ptr @.str.27, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/media/usb/dvb-usb-v2/dvbsky.c", i32 797, i32 4}
!57 = !{ptr @.str.29, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/media/usb/dvb-usb-v2/dvbsky.c", i32 800, i32 4}
!59 = !{ptr @.str.31, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/media/usb/dvb-usb-v2/dvbsky.c", i32 803, i32 4}
!61 = !{ptr @.str.33, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/media/usb/dvb-usb-v2/dvbsky.c", i32 806, i32 4}
!63 = !{ptr @dvbsky_id_table, !64, !"dvbsky_id_table", i1 false, i1 false}
!64 = !{!"../drivers/media/usb/dvb-usb-v2/dvbsky.c", i32 759, i32 35}
!65 = !{ptr @dvbsky_s960_props, !66, !"dvbsky_s960_props", i1 false, i1 false}
!66 = !{!"../drivers/media/usb/dvb-usb-v2/dvbsky.c", i32 625, i32 41}
!67 = !{ptr @dvbsky_i2c_algo, !68, !"dvbsky_i2c_algo", i1 false, i1 false}
!68 = !{!"../drivers/media/usb/dvb-usb-v2/dvbsky.c", i32 172, i32 29}
!69 = !{ptr @.str.36, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/media/usb/dvb-usb-v2/dvbsky.c", i32 110, i32 3}
!71 = !{ptr @.str.37, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @.str.38, !70, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @.str.39, !70, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @.str.40, !70, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @dvbsky_i2c_xfer._entry, !70, !"_entry", i1 false, i1 false}
!76 = !{ptr @dvbsky_i2c_xfer._entry_ptr, !70, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.42, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/media/usb/dvb-usb-v2/dvbsky.c", i32 118, i32 4}
!79 = !{ptr @dvbsky_i2c_xfer._entry.41, !78, !"_entry", i1 false, i1 false}
!80 = !{ptr @dvbsky_i2c_xfer._entry_ptr.43, !78, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.45, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/media/usb/dvb-usb-v2/dvbsky.c", i32 145, i32 4}
!83 = !{ptr @dvbsky_i2c_xfer._entry.44, !82, !"_entry", i1 false, i1 false}
!84 = !{ptr @dvbsky_i2c_xfer._entry_ptr.46, !82, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.47, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/media/usb/dvb-usb-v2/dvbsky.c", i32 293, i32 45}
!87 = !{ptr @.str.48, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/media/usb/dvb-usb-v2/dvbsky.c", i32 306, i32 45}
!89 = !{ptr @dvbsky_stream_ctrl.obuf_pre, !90, !"obuf_pre", i1 false, i1 false}
!90 = !{!"../drivers/media/usb/dvb-usb-v2/dvbsky.c", i32 62, i32 18}
!91 = !{ptr @dvbsky_stream_ctrl.obuf_post, !92, !"obuf_post", i1 false, i1 false}
!92 = !{!"../drivers/media/usb/dvb-usb-v2/dvbsky.c", i32 63, i32 18}
!93 = !{ptr @.str.49, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/media/usb/dvb-usb-v2/dvbsky.c", i32 615, i32 2}
!95 = !{ptr @.str.50, !94, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @dvbsky_frontend_detach.__UNIQUE_ID_ddebug391, !94, !"__UNIQUE_ID_ddebug391", i1 false, i1 false}
!97 = !{ptr @.str.51, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/media/usb/dvb-usb-v2/dvbsky.c", i32 190, i32 3}
!99 = !{ptr @.str.52, !98, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @dvbsky_rc_query.__UNIQUE_ID_ddebug390, !98, !"__UNIQUE_ID_ddebug390", i1 false, i1 false}
!101 = !{ptr @dvbsky_s960c_props, !102, !"dvbsky_s960c_props", i1 false, i1 false}
!102 = !{!"../drivers/media/usb/dvb-usb-v2/dvbsky.c", i32 652, i32 41}
!103 = !{ptr @.str.54, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/media/usb/dvb-usb-v2/dvbsky.c", i32 422, i32 42}
!105 = !{ptr @.str.55, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/media/usb/dvb-usb-v2/dvbsky.c", i32 372, i32 2}
!107 = !{ptr @.str.56, !106, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @dvbsky_ci_ctrl._entry, !106, !"_entry", i1 false, i1 false}
!109 = !{ptr @dvbsky_ci_ctrl._entry_ptr, !106, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @dvbsky_t680c_props, !111, !"dvbsky_t680c_props", i1 false, i1 false}
!111 = !{!"../drivers/media/usb/dvb-usb-v2/dvbsky.c", i32 679, i32 41}
!112 = !{ptr @.str.58, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/media/usb/dvb-usb-v2/dvbsky.c", i32 461, i32 45}
!114 = !{ptr @.str.59, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/media/usb/dvb-usb-v2/dvbsky.c", i32 471, i32 45}
!116 = !{ptr @dvbsky_t330_props, !117, !"dvbsky_t330_props", i1 false, i1 false}
!117 = !{!"../drivers/media/usb/dvb-usb-v2/dvbsky.c", i32 706, i32 41}
!118 = !{ptr @mygica_t230c_props, !119, !"mygica_t230c_props", i1 false, i1 false}
!119 = !{!"../drivers/media/usb/dvb-usb-v2/dvbsky.c", i32 733, i32 41}
!120 = !{ptr @.str.62, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/media/usb/dvb-usb-v2/dvbsky.c", i32 566, i32 56}
!122 = !{i32 1, !"wchar_size", i32 2}
!123 = !{i32 1, !"min_enum_size", i32 4}
!124 = !{i32 8, !"branch-target-enforcement", i32 0}
!125 = !{i32 8, !"sign-return-address", i32 0}
!126 = !{i32 8, !"sign-return-address-all", i32 0}
!127 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!128 = !{i32 7, !"uwtable", i32 1}
!129 = !{i32 7, !"frame-pointer", i32 2}
!130 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!131 = !{i64 2148968241, i64 2148968246, i64 2148968259, i64 2148968303, i64 2148968337, i64 2148968358}
!132 = !{!"auto-init"}
