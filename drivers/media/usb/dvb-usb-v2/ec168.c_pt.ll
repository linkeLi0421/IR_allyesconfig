; ModuleID = '/llk/IR_all_yes/drivers/media/usb/dvb-usb-v2/ec168.c_pt.bc'
source_filename = "../drivers/media/usb/dvb-usb-v2/ec168.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kparam_array = type { i32, i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.101 }
%union.anon.101 = type { ptr }
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
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ec100_config = type { i8 }
%struct.mxl5005s_config = type { i8, i32, i32, i8, i8, i8, i8, i8, i8, i32, i32, i8, i8, i8, i8 }
%struct.ec168_req = type { i8, i16, i16, i16, ptr }
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
%struct.firmware = type { i32, ptr, ptr }
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
%struct.i2c_msg = type { i16, i16, i16, ptr }

@__param_str_adapter_nr = internal constant [25 x i8] c"dvb_usb_ec168.adapter_nr\00", align 1
@param_array_ops = external dso_local constant %struct.kernel_param_ops, align 4
@__param_arr_adapter_nr = internal constant %struct.kparam_array { i32 16, i32 2, ptr null, ptr @param_ops_short, ptr @adapter_nr }, align 4
@__param_adapter_nr = internal constant %struct.kernel_param { ptr @__param_str_adapter_nr, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.101 { ptr @__param_arr_adapter_nr } }, section "__param", align 4
@__UNIQUE_ID_adapter_nrtype386 = internal constant [49 x i8] c"dvb_usb_ec168.parmtype=adapter_nr:array of short\00", section ".modinfo", align 1
@__UNIQUE_ID_adapter_nr387 = internal constant [50 x i8] c"dvb_usb_ec168.parm=adapter_nr:DVB adapter numbers\00", section ".modinfo", align 1
@__initcall__kmod_dvb_usb_ec168__398_361_ec168_driver_init6 = internal global ptr @ec168_driver_init, section ".initcall6.init", align 4
@ec168_driver = internal global { %struct.usb_driver, [44 x i8] } { %struct.usb_driver { ptr @.str, ptr @dvb_usbv2_probe, ptr @dvb_usbv2_disconnect, ptr null, ptr @dvb_usbv2_suspend, ptr @dvb_usbv2_resume, ptr null, ptr null, ptr null, ptr @ec168_id, ptr null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 -112 }, [44 x i8] zeroinitializer }, align 32
@__exitcall_ec168_driver_exit = internal global ptr @ec168_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author399 = internal constant [52 x i8] c"dvb_usb_ec168.author=Antti Palosaari <crope@iki.fi>\00", section ".modinfo", align 1
@__UNIQUE_ID_description400 = internal constant [43 x i8] c"dvb_usb_ec168.description=E3C EC168 driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file401 = internal constant [62 x i8] c"dvb_usb_ec168.file=drivers/media/usb/dvb-usb-v2/dvb-usb-ec168\00", section ".modinfo", align 1
@__UNIQUE_ID_license402 = internal constant [26 x i8] c"dvb_usb_ec168.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware403 = internal constant [40 x i8] c"dvb_usb_ec168.firmware=dvb-usb-ec168.fw\00", section ".modinfo", align 1
@param_ops_short = external dso_local constant %struct.kernel_param_ops, align 4
@adapter_nr = internal global { [16 x i16], [32 x i8] } { [16 x i16] [i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1], [32 x i8] zeroinitializer }, align 32
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"dvb_usb_ec168\00", [18 x i8] zeroinitializer }, align 32
@ec168_id = internal constant { [6 x %struct.usb_device_id], [48 x i8] } { [6 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 6324, i16 5769, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral to i32) }, %struct.usb_device_id { i16 3, i16 6324, i16 -6, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.2 to i32) }, %struct.usb_device_id { i16 3, i16 6324, i16 -5, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.3 to i32) }, %struct.usb_device_id { i16 3, i16 6324, i16 4097, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.4 to i32) }, %struct.usb_device_id { i16 3, i16 6324, i16 4098, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.5 to i32) }, %struct.usb_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"E3C EC168 reference design\00", [37 x i8] zeroinitializer }, align 32
@.compoundliteral = internal constant { %struct.dvb_usb_driver_info, [20 x i8] } { %struct.dvb_usb_driver_info { ptr @.str.1, ptr null, ptr @ec168_props }, [20 x i8] zeroinitializer }, align 32
@.compoundliteral.2 = internal constant { %struct.dvb_usb_driver_info, [20 x i8] } { %struct.dvb_usb_driver_info { ptr @.str.1, ptr null, ptr @ec168_props }, [20 x i8] zeroinitializer }, align 32
@.compoundliteral.3 = internal constant { %struct.dvb_usb_driver_info, [20 x i8] } { %struct.dvb_usb_driver_info { ptr @.str.1, ptr null, ptr @ec168_props }, [20 x i8] zeroinitializer }, align 32
@.compoundliteral.4 = internal constant { %struct.dvb_usb_driver_info, [20 x i8] } { %struct.dvb_usb_driver_info { ptr @.str.1, ptr null, ptr @ec168_props }, [20 x i8] zeroinitializer }, align 32
@.compoundliteral.5 = internal constant { %struct.dvb_usb_driver_info, [20 x i8] } { %struct.dvb_usb_driver_info { ptr @.str.1, ptr null, ptr @ec168_props }, [20 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"dvb-usb-ec168.fw\00", [47 x i8] zeroinitializer }, align 32
@ec168_i2c_algo = internal global { %struct.i2c_algorithm, [36 x i8] } { %struct.i2c_algorithm { ptr @ec168_i2c_xfer, ptr null, ptr null, ptr null, ptr @ec168_i2c_func, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@ec168_props = internal constant { { ptr, ptr, ptr, i8, i32, i8, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, <{ { i8, i8, ptr, ptr, { i8, i8, i8, { %struct.anon.126, [8 x i8] } } }, %struct.dvb_usb_adapter_properties }>, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }, [56 x i8] } { { ptr, ptr, ptr, i8, i32, i8, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, <{ { i8, i8, ptr, ptr, { i8, i8, i8, { %struct.anon.126, [8 x i8] } } }, %struct.dvb_usb_adapter_properties }>, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @.str, ptr null, ptr @adapter_nr, i8 1, i32 0, i8 0, i8 0, i32 0, ptr null, ptr null, ptr @ec168_identify_state, ptr @.str.6, ptr @ec168_download_firmware, ptr @ec168_i2c_algo, i32 1, ptr null, <{ { i8, i8, ptr, ptr, { i8, i8, i8, { %struct.anon.126, [8 x i8] } } }, %struct.dvb_usb_adapter_properties }> <{ { i8, i8, ptr, ptr, { i8, i8, i8, { %struct.anon.126, [8 x i8] } } } { i8 0, i8 0, ptr null, ptr null, { i8, i8, i8, { %struct.anon.126, [8 x i8] } } { i8 1, i8 6, i8 -126, { %struct.anon.126, [8 x i8] } { %struct.anon.126 { i32 16384 }, [8 x i8] undef } } }, %struct.dvb_usb_adapter_properties zeroinitializer }>, ptr null, ptr null, ptr null, ptr @ec168_ec100_frontend_attach, ptr null, ptr @ec168_mxl5003s_tuner_attach, ptr null, ptr null, ptr @ec168_streaming_ctrl, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@ec168_identify_state.__UNIQUE_ID_ddebug390 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.8, ptr @.str.9, ptr @.str.10, i8 0, i8 44, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ec168_identify_state\00", [43 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"drivers/media/usb/dvb-usb-v2/ec168.c\00", [59 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%s:\0A\00", [27 x i8] zeroinitializer }, align 32
@ec168_identify_state.__UNIQUE_ID_ddebug391 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.8, ptr @.str.9, ptr @.str.11, i8 0, i8 46, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%s: reply=%02x\0A\00", [16 x i8] zeroinitializer }, align 32
@ec168_identify_state.__UNIQUE_ID_ddebug392 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.8, ptr @.str.9, ptr @.str.12, i8 0, i8 48, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"%s: failed=%d\0A\00", [17 x i8] zeroinitializer }, align 32
@ec168_ctrl_msg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.9, i32 51, ptr @.str.15, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s: unknown command=%02x\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ec168_ctrl_msg\00", [17 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ec168_ctrl_msg._entry_ptr = internal global ptr @ec168_ctrl_msg._entry, section ".printk_index", align 4
@.str.17 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c">>>\00", [28 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"<<<\00", [28 x i8] zeroinitializer }, align 32
@ec168_ctrl_msg.__UNIQUE_ID_ddebug388 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.14, ptr @.str.9, ptr @.str.19, i8 0, i8 19, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"%s: %02x %02x %02x %02x %02x %02x %02x %02x %s %*ph\0A\00", [43 x i8] zeroinitializer }, align 32
@ec168_ctrl_msg.__UNIQUE_ID_ddebug389 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.14, ptr @.str.9, ptr @.str.12, i8 0, i8 23, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@ec168_download_firmware.__UNIQUE_ID_ddebug393 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.20, ptr @.str.9, ptr @.str.10, i8 0, i8 50, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ec168_download_firmware\00", [40 x i8] zeroinitializer }, align 32
@ec168_download_firmware._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.20, ptr @.str.9, i32 218, ptr @.str.15, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s: firmware download failed=%d\0A\00", [63 x i8] zeroinitializer }, align 32
@ec168_download_firmware._entry_ptr = internal global ptr @ec168_download_firmware._entry, section ".printk_index", align 4
@ec168_download_firmware.__UNIQUE_ID_ddebug394 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.20, ptr @.str.9, ptr @.str.12, i8 0, i8 62, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@ec168_ec100_config = internal global { %struct.ec100_config, [31 x i8] } { %struct.ec100_config { i8 -1 }, [31 x i8] zeroinitializer }, align 32
@ec168_i2c_xfer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.9, i32 128, ptr @.str.15, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s: I2C read not implemented\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ec168_i2c_xfer\00", [17 x i8] zeroinitializer }, align 32
@ec168_i2c_xfer._entry_ptr = internal global ptr @ec168_i2c_xfer._entry, section ".printk_index", align 4
@ec168_ec100_frontend_attach.__UNIQUE_ID_ddebug395 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.24, ptr @.str.9, ptr @.str.10, i8 0, i8 65, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"ec168_ec100_frontend_attach\00", [36 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ec100_attach\00", [19 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"symbol:ec100_attach\00", [44 x i8] zeroinitializer }, align 32
@ec168_ec100_frontend_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.24, ptr @.str.9, i32 265, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013DVB: Unable to find symbol ec100_attach()\0A\00", [51 x i8] zeroinitializer }, align 32
@ec168_ec100_frontend_attach._entry_ptr = internal global ptr @ec168_ec100_frontend_attach._entry, section ".printk_index", align 4
@ec168_mxl5003s_tuner_attach.__UNIQUE_ID_ddebug396 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.28, ptr @.str.9, ptr @.str.10, i8 0, i8 73, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"ec168_mxl5003s_tuner_attach\00", [36 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"mxl5005s_attach\00", [16 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"symbol:mxl5005s_attach\00", [41 x i8] zeroinitializer }, align 32
@ec168_mxl5003s_config = internal global { %struct.mxl5005s_config, [32 x i8] } { %struct.mxl5005s_config { i8 -58, i32 4570000, i32 16000000, i8 1, i8 1, i8 1, i8 1, i8 1, i8 0, i32 200, i32 252, i8 1, i8 0, i8 0, i8 0 }, [32 x i8] zeroinitializer }, align 32
@ec168_mxl5003s_tuner_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.28, ptr @.str.9, i32 295, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013DVB: Unable to find symbol mxl5005s_attach()\0A\00", [48 x i8] zeroinitializer }, align 32
@ec168_mxl5003s_tuner_attach._entry_ptr = internal global ptr @ec168_mxl5003s_tuner_attach._entry, section ".printk_index", align 4
@__const.ec168_streaming_ctrl.req = private unnamed_addr constant { i8, [1 x i8], i16, i16, i16, ptr } { i8 16, [1 x i8] zeroinitializer, i16 32513, i16 514, i16 0, ptr null }, align 4
@ec168_streaming_ctrl.__UNIQUE_ID_ddebug397 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.32, ptr @.str.9, ptr @.str.33, i8 0, i8 75, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ec168_streaming_ctrl\00", [43 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"%s: onoff=%d\0A\00", [18 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [11 x i64] [i64 9, i64 8, i64 0, i64 4, i64 16, i64 32, i64 33, i64 49, i64 50, i64 51, i64 52]
@___asan_gen_.34 = private unnamed_addr constant [13 x i8] c"ec168_driver\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 350, i32 26 }
@___asan_gen_.37 = private unnamed_addr constant [11 x i8] c"adapter_nr\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 12, i32 1 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 361, i32 1 }
@___asan_gen_.43 = private unnamed_addr constant [9 x i8] c"ec168_id\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 335, i32 35 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 336, i32 4 }
@___asan_gen_.49 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.50 = private unnamed_addr constant [19 x i8] c".compoundliteral.2\00", align 1
@___asan_gen_.51 = private unnamed_addr constant [19 x i8] c".compoundliteral.3\00", align 1
@___asan_gen_.52 = private unnamed_addr constant [19 x i8] c".compoundliteral.4\00", align 1
@___asan_gen_.53 = private unnamed_addr constant [19 x i8] c".compoundliteral.5\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 319, i32 14 }
@___asan_gen_.57 = private unnamed_addr constant [15 x i8] c"ec168_i2c_algo\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 167, i32 29 }
@___asan_gen_.60 = private unnamed_addr constant [12 x i8] c"ec168_props\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 312, i32 47 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 178, i32 2 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 184, i32 2 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 193, i32 2 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 50, i32 3 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 76, i32 2 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 202, i32 2 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 216, i32 4 }
@___asan_gen_.111 = private unnamed_addr constant [19 x i8] c"ec168_ec100_config\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 255, i32 28 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 126, i32 5 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 262, i32 2 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 264, i32 16 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 292, i32 2 }
@___asan_gen_.147 = private unnamed_addr constant [22 x i8] c"ec168_mxl5003s_config\00", align 1
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 272, i32 31 }
@___asan_gen_.150 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 294, i32 9 }
@___asan_gen_.159 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.160 = private constant [40 x i8] c"../drivers/media/usb/dvb-usb-v2/ec168.c\00", align 1
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 302, i32 2 }
@llvm.compiler.used = appending global [62 x ptr] [ptr @__UNIQUE_ID_adapter_nr387, ptr @__UNIQUE_ID_adapter_nrtype386, ptr @__UNIQUE_ID_author399, ptr @__UNIQUE_ID_description400, ptr @__UNIQUE_ID_file401, ptr @__UNIQUE_ID_firmware403, ptr @__UNIQUE_ID_license402, ptr @__exitcall_ec168_driver_exit, ptr @__initcall__kmod_dvb_usb_ec168__398_361_ec168_driver_init6, ptr @__param_adapter_nr, ptr @ec168_ctrl_msg._entry, ptr @ec168_ctrl_msg._entry_ptr, ptr @ec168_download_firmware._entry, ptr @ec168_download_firmware._entry_ptr, ptr @ec168_driver_exit, ptr @ec168_ec100_frontend_attach._entry, ptr @ec168_ec100_frontend_attach._entry_ptr, ptr @ec168_i2c_xfer._entry, ptr @ec168_i2c_xfer._entry_ptr, ptr @ec168_mxl5003s_tuner_attach._entry, ptr @ec168_mxl5003s_tuner_attach._entry_ptr, ptr @ec168_driver, ptr @adapter_nr, ptr @.str, ptr @ec168_id, ptr @.str.1, ptr @.compoundliteral, ptr @.compoundliteral.2, ptr @.compoundliteral.3, ptr @.compoundliteral.4, ptr @.compoundliteral.5, ptr @.str.6, ptr @ec168_i2c_algo, ptr @ec168_props, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @ec168_ec100_config, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @ec168_mxl5003s_config, ptr @.str.31, ptr @.str.32, ptr @.str.33], section "llvm.metadata"
@0 = internal global [46 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ec168_driver to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adapter_nr to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ec168_id to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.2 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.3 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.4 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.5 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ec168_i2c_algo to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ec168_props to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ec168_ctrl_msg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ec168_download_firmware._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ec168_ec100_config to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ec168_i2c_xfer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ec168_ec100_frontend_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ec168_mxl5003s_config to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ec168_mxl5003s_tuner_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ec168_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usb_register_driver(ptr noundef nonnull @ec168_driver, ptr noundef null, ptr noundef nonnull @.str) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ec168_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @usb_deregister(ptr noundef nonnull @ec168_driver) #8
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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ec168_identify_state(ptr nocapture noundef readonly %d, ptr nocapture noundef readnone %name) #2 align 64 {
entry:
  %reply = alloca i8, align 1
  %req = alloca %struct.ec168_req, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reply) #8
  %0 = ptrtoint ptr %reply to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %reply, align 1, !annotation !106
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %req) #8
  %1 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %req, align 4
  store i8 49, ptr %req, align 4
  %value = getelementptr inbounds %struct.ec168_req, ptr %req, i32 0, i32 1
  %2 = ptrtoint ptr %value to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 0, ptr %value, align 2
  %index = getelementptr inbounds %struct.ec168_req, ptr %req, i32 0, i32 2
  %3 = ptrtoint ptr %index to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 1, ptr %index, align 4
  %size = getelementptr inbounds %struct.ec168_req, ptr %req, i32 0, i32 3
  %4 = ptrtoint ptr %size to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 1, ptr %size, align 2
  %data = getelementptr inbounds %struct.ec168_req, ptr %req, i32 0, i32 4
  %5 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %reply, ptr %data, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ec168_identify_state.__UNIQUE_ID_ddebug390, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ec168_identify_state, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !107

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %udev = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 5
  %6 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %udev, align 4
  %dev = getelementptr inbounds %struct.usb_device, ptr %7, i32 0, i32 15
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ec168_identify_state.__UNIQUE_ID_ddebug390, ptr noundef %dev, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.8) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call3 = call fastcc i32 @ec168_ctrl_msg(ptr noundef %d, ptr noundef nonnull %req)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %do.body7, label %do.body29

do.body7:                                         ; preds = %do.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ec168_identify_state.__UNIQUE_ID_ddebug391, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ec168_identify_state, %if.then19)) #8
          to label %do.end24 [label %if.then19], !srcloc !107

if.then19:                                        ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #10
  %udev20 = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 5
  %8 = ptrtoint ptr %udev20 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %udev20, align 4
  %dev21 = getelementptr inbounds %struct.usb_device, ptr %9, i32 0, i32 15
  %10 = ptrtoint ptr %reply to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %reply, align 1
  %conv = zext i8 %11 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ec168_identify_state.__UNIQUE_ID_ddebug391, ptr noundef %dev21, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.8, i32 noundef %conv) #8
  br label %do.end24

do.end24:                                         ; preds = %if.then19, %do.body7
  %12 = ptrtoint ptr %reply to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %reply, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %13)
  %cmp = icmp ne i8 %13, 1
  %. = zext i1 %cmp to i32
  br label %cleanup

do.body29:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ec168_identify_state.__UNIQUE_ID_ddebug392, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ec168_identify_state, %if.then41)) #8
          to label %cleanup [label %if.then41], !srcloc !107

if.then41:                                        ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #10
  %udev42 = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 5
  %14 = ptrtoint ptr %udev42 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %udev42, align 4
  %dev43 = getelementptr inbounds %struct.usb_device, ptr %15, i32 0, i32 15
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ec168_identify_state.__UNIQUE_ID_ddebug392, ptr noundef %dev43, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.8, i32 noundef %call3) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then41, %do.body29, %do.end24
  %retval.0 = phi i32 [ %., %do.end24 ], [ %call3, %if.then41 ], [ %call3, %do.body29 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %req) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reply) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ec168_download_firmware(ptr nocapture noundef readonly %d, ptr nocapture noundef readonly %fw) #2 align 64 {
entry:
  %req = alloca %struct.ec168_req, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %req) #8
  %0 = call ptr @memset(ptr %req, i32 0, i32 12)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ec168_download_firmware.__UNIQUE_ID_ddebug393, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ec168_download_firmware, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !107

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %udev = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 5
  %1 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %udev, align 4
  %dev = getelementptr inbounds %struct.usb_device, ptr %2, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ec168_download_firmware.__UNIQUE_ID_ddebug393, ptr noundef %dev, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.20) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %3 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %fw, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp89 = icmp sgt i32 %4, 0
  br i1 %cmp89, label %for.body.lr.ph, label %do.end.for.end_crit_edge

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %do.end
  %size6 = getelementptr inbounds %struct.ec168_req, ptr %req, i32 0, i32 3
  %data = getelementptr inbounds %struct.firmware, ptr %fw, i32 0, i32 1
  %data8 = getelementptr inbounds %struct.ec168_req, ptr %req, i32 0, i32 4
  %index = getelementptr inbounds %struct.ec168_req, ptr %req, i32 0, i32 2
  br label %for.body

for.cond:                                         ; preds = %for.body
  %sub21 = add nsw i32 %remaining.090, -2048
  %cmp = icmp sgt i32 %remaining.090, 2048
  br i1 %cmp, label %for.cond.for.body_crit_edge, label %for.cond.for.end_crit_edge

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %remaining.090 = phi i32 [ %4, %for.body.lr.ph ], [ %sub21, %for.cond.for.body_crit_edge ]
  %5 = tail call i32 @llvm.smin.i32(i32 %remaining.090, i32 2048)
  %conv = trunc i32 %5 to i16
  %6 = ptrtoint ptr %size6 to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %conv, ptr %size6, align 2
  %7 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data, align 4
  %9 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %fw, align 4
  %sub = sub i32 %10, %remaining.090
  %arrayidx = getelementptr i8, ptr %8, i32 %sub
  %11 = ptrtoint ptr %data8 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %arrayidx, ptr %data8, align 4
  %conv11 = trunc i32 %sub to i16
  %12 = ptrtoint ptr %index to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %conv11, ptr %index, align 4
  %call12 = call fastcc i32 @ec168_ctrl_msg(ptr noundef %d, ptr noundef nonnull %req)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %for.cond, label %do.end17

do.end17:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %udev18 = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 5
  %13 = ptrtoint ptr %udev18 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %udev18, align 4
  %dev19 = getelementptr inbounds %struct.usb_device, ptr %14, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev19, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str, i32 noundef %call12) #11
  br label %do.body42

for.end:                                          ; preds = %for.cond.for.end_crit_edge, %do.end.for.end_crit_edge
  %size22 = getelementptr inbounds %struct.ec168_req, ptr %req, i32 0, i32 3
  %15 = ptrtoint ptr %size22 to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 0, ptr %size22, align 2
  %16 = ptrtoint ptr %req to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 50, ptr %req, align 4
  %value = getelementptr inbounds %struct.ec168_req, ptr %req, i32 0, i32 1
  %17 = ptrtoint ptr %value to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 0, ptr %value, align 2
  %index23 = getelementptr inbounds %struct.ec168_req, ptr %req, i32 0, i32 2
  %18 = ptrtoint ptr %index23 to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 1, ptr %index23, align 4
  %call24 = call fastcc i32 @ec168_ctrl_msg(ptr noundef %d, ptr noundef nonnull %req)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.end27, label %for.end.do.body42_crit_edge

for.end.do.body42_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body42

if.end27:                                         ; preds = %for.end
  %19 = ptrtoint ptr %req to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 4, ptr %req, align 4
  %20 = ptrtoint ptr %value to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 0, ptr %value, align 2
  %21 = ptrtoint ptr %index23 to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 518, ptr %index23, align 4
  %call31 = call fastcc i32 @ec168_ctrl_msg(ptr noundef %d, ptr noundef nonnull %req)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.end34, label %if.end27.do.body42_crit_edge

if.end27.do.body42_crit_edge:                     ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body42

if.end34:                                         ; preds = %if.end27
  %22 = ptrtoint ptr %req to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 33, ptr %req, align 4
  %23 = ptrtoint ptr %value to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 0, ptr %value, align 2
  %24 = ptrtoint ptr %index23 to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 198, ptr %index23, align 4
  %call38 = call fastcc i32 @ec168_ctrl_msg(ptr noundef %d, ptr noundef nonnull %req)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.end34.cleanup_crit_edge, label %if.end34.do.body42_crit_edge

if.end34.do.body42_crit_edge:                     ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body42

if.end34.cleanup_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body42:                                        ; preds = %if.end34.do.body42_crit_edge, %if.end27.do.body42_crit_edge, %for.end.do.body42_crit_edge, %do.end17
  %ret.0 = phi i32 [ %call12, %do.end17 ], [ %call24, %for.end.do.body42_crit_edge ], [ %call31, %if.end27.do.body42_crit_edge ], [ %call38, %if.end34.do.body42_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ec168_download_firmware.__UNIQUE_ID_ddebug394, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ec168_download_firmware, %if.then54)) #8
          to label %cleanup [label %if.then54], !srcloc !107

if.then54:                                        ; preds = %do.body42
  call void @__sanitizer_cov_trace_pc() #10
  %udev55 = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 5
  %25 = ptrtoint ptr %udev55 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %udev55, align 4
  %dev56 = getelementptr inbounds %struct.usb_device, ptr %26, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ec168_download_firmware.__UNIQUE_ID_ddebug394, ptr noundef %dev56, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.20, i32 noundef %ret.0) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then54, %do.body42, %if.end34.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end34.cleanup_crit_edge ], [ %ret.0, %if.then54 ], [ %ret.0, %do.body42 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %req) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ec168_ec100_frontend_attach(ptr noundef %adap) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %id = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 2
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %id, align 4
  %conv = zext i8 %1 to i32
  %.neg = mul nsw i32 %conv, -2280
  %idx.neg = add nsw i32 %.neg, -1616
  %add.ptr = getelementptr i8, ptr %adap, i32 %idx.neg
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ec168_ec100_frontend_attach.__UNIQUE_ID_ddebug395, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ec168_ec100_frontend_attach, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !107

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %udev = getelementptr inbounds %struct.dvb_usb_device, ptr %add.ptr, i32 0, i32 5
  %2 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %udev, align 4
  %dev = getelementptr inbounds %struct.usb_device, ptr %3, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ec168_ec100_frontend_attach.__UNIQUE_ID_ddebug395, ptr noundef %dev, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.24) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call4 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.25) #8
  %tobool5.not = icmp eq ptr %call4, null
  br i1 %tobool5.not, label %cond.end, label %do.end.if.then9_crit_edge

do.end.if.then9_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then9

cond.end:                                         ; preds = %do.end
  %call6 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.26) #8
  %call7 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.25) #8
  %tobool8.not = icmp eq ptr %call7, null
  br i1 %tobool8.not, label %do.end16, label %cond.end.if.then9_crit_edge

cond.end.if.then9_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then9

if.then9:                                         ; preds = %cond.end.if.then9_crit_edge, %do.end.if.then9_crit_edge
  %cond36 = phi ptr [ %call7, %cond.end.if.then9_crit_edge ], [ %call4, %do.end.if.then9_crit_edge ]
  %i2c_adap = getelementptr inbounds %struct.dvb_usb_device, ptr %add.ptr, i32 0, i32 10
  %call10 = tail call ptr %cond36(ptr noundef nonnull @ec168_ec100_config, ptr noundef %i2c_adap) #8
  %cmp = icmp eq ptr %call10, null
  br i1 %cmp, label %if.then12, label %if.then9.if.end19_crit_edge

if.then9.if.end19_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19

if.then12:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__symbol_put(ptr noundef nonnull @.str.25) #8
  br label %if.end19

do.end16:                                         ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  %call18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27) #11
  br label %if.end19

if.end19:                                         ; preds = %do.end16, %if.then12, %if.then9.if.end19_crit_edge
  %__r.0 = phi ptr [ null, %if.then12 ], [ %call10, %if.then9.if.end19_crit_edge ], [ null, %do.end16 ]
  %fe = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 14
  %4 = ptrtoint ptr %fe to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %__r.0, ptr %fe, align 8
  %cmp23 = icmp eq ptr %__r.0, null
  %. = select i1 %cmp23, i32 -19, i32 0
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ec168_mxl5003s_tuner_attach(ptr noundef %adap) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %id = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 2
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %id, align 4
  %conv = zext i8 %1 to i32
  %.neg = mul nsw i32 %conv, -2280
  %idx.neg = add nsw i32 %.neg, -1616
  %add.ptr = getelementptr i8, ptr %adap, i32 %idx.neg
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ec168_mxl5003s_tuner_attach.__UNIQUE_ID_ddebug396, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ec168_mxl5003s_tuner_attach, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !107

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %udev = getelementptr inbounds %struct.dvb_usb_device, ptr %add.ptr, i32 0, i32 5
  %2 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %udev, align 4
  %dev = getelementptr inbounds %struct.usb_device, ptr %3, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ec168_mxl5003s_tuner_attach.__UNIQUE_ID_ddebug396, ptr noundef %dev, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.28) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call4 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.29) #8
  %tobool5.not = icmp eq ptr %call4, null
  br i1 %tobool5.not, label %cond.end, label %do.end.if.then9_crit_edge

do.end.if.then9_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then9

cond.end:                                         ; preds = %do.end
  %call6 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.30) #8
  %call7 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.29) #8
  %tobool8.not = icmp eq ptr %call7, null
  br i1 %tobool8.not, label %do.end16, label %cond.end.if.then9_crit_edge

cond.end.if.then9_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then9

if.then9:                                         ; preds = %cond.end.if.then9_crit_edge, %do.end.if.then9_crit_edge
  %cond32 = phi ptr [ %call7, %cond.end.if.then9_crit_edge ], [ %call4, %do.end.if.then9_crit_edge ]
  %fe = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 14
  %4 = ptrtoint ptr %fe to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fe, align 8
  %i2c_adap = getelementptr inbounds %struct.dvb_usb_device, ptr %add.ptr, i32 0, i32 10
  %call10 = tail call ptr %cond32(ptr noundef %5, ptr noundef %i2c_adap, ptr noundef nonnull @ec168_mxl5003s_config) #8
  %cmp = icmp eq ptr %call10, null
  br i1 %cmp, label %if.then12, label %if.then9.if.end19_crit_edge

if.then9.if.end19_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19

if.then12:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__symbol_put(ptr noundef nonnull @.str.29) #8
  br label %if.end19

do.end16:                                         ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  %call18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31) #11
  br label %if.end19

if.end19:                                         ; preds = %do.end16, %if.then12, %if.then9.if.end19_crit_edge
  %__r.0 = phi ptr [ null, %if.then12 ], [ %call10, %if.then9.if.end19_crit_edge ], [ null, %do.end16 ]
  %cmp21 = icmp eq ptr %__r.0, null
  %cond23 = select i1 %cmp21, i32 -19, i32 0
  ret i32 %cond23
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ec168_streaming_ctrl(ptr nocapture noundef readonly %fe, i32 noundef %onoff) #2 align 64 {
entry:
  %req = alloca %struct.ec168_req, align 4
  call void @__sanitizer_cov_trace_pc() #10
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
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %req) #8
  %6 = call ptr @memcpy(ptr %req, ptr @__const.ec168_streaming_ctrl.req, i32 12)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ec168_streaming_ctrl.__UNIQUE_ID_ddebug397, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ec168_streaming_ctrl, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !107

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %udev = getelementptr inbounds %struct.dvb_usb_device, ptr %add.ptr, i32 0, i32 5
  %7 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %udev, align 4
  %dev = getelementptr inbounds %struct.usb_device, ptr %8, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ec168_streaming_ctrl.__UNIQUE_ID_ddebug397, ptr noundef %dev, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.32, i32 noundef %onoff) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %onoff)
  %tobool6.not = icmp eq i32 %onoff, 0
  br i1 %tobool6.not, label %do.end.if.end8_crit_edge, label %if.then7

do.end.if.end8_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

if.then7:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %index = getelementptr inbounds %struct.ec168_req, ptr %req, i32 0, i32 2
  %9 = ptrtoint ptr %index to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 258, ptr %index, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %do.end.if.end8_crit_edge
  %call9 = call fastcc i32 @ec168_ctrl_msg(ptr noundef %add.ptr, ptr noundef nonnull %req)
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %req) #8
  ret i32 %call9
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ec168_ctrl_msg(ptr nocapture noundef readonly %d, ptr nocapture noundef readonly %req) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %req to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %req, align 4
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i8 %1, label %do.end [
    i8 0, label %entry.sw.bb_crit_edge
    i8 4, label %entry.sw.bb_crit_edge149
    i8 33, label %entry.sw.bb_crit_edge150
    i8 16, label %entry.sw.bb_crit_edge151
    i8 32, label %entry.sw.epilog_crit_edge
    i8 49, label %sw.bb4
    i8 50, label %sw.bb5
    i8 52, label %sw.bb6
    i8 51, label %sw.bb7
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

entry.sw.bb_crit_edge151:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

entry.sw.bb_crit_edge150:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

entry.sw.bb_crit_edge149:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge149, %entry.sw.bb_crit_edge150, %entry.sw.bb_crit_edge151
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb7:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %conv = zext i8 %1 to i32
  %udev = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 5
  %3 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %udev, align 4
  %dev = getelementptr inbounds %struct.usb_device, ptr %4, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str, i32 noundef %conv) #11
  br label %do.body77

sw.epilog:                                        ; preds = %sw.bb7, %sw.bb6, %sw.bb5, %sw.bb4, %sw.bb, %entry.sw.epilog_crit_edge
  %cmp = phi i1 [ false, %sw.bb7 ], [ true, %sw.bb6 ], [ true, %sw.bb5 ], [ false, %sw.bb4 ], [ true, %sw.bb ], [ false, %entry.sw.epilog_crit_edge ]
  %cmp70 = phi i1 [ true, %sw.bb7 ], [ false, %sw.bb6 ], [ false, %sw.bb5 ], [ true, %sw.bb4 ], [ false, %sw.bb ], [ true, %entry.sw.epilog_crit_edge ]
  %requesttype.0 = phi i8 [ -64, %sw.bb7 ], [ 64, %sw.bb6 ], [ 64, %sw.bb5 ], [ -64, %sw.bb4 ], [ 64, %sw.bb ], [ -64, %entry.sw.epilog_crit_edge ]
  %request.0 = phi i8 [ 3, %sw.bb7 ], [ 3, %sw.bb6 ], [ 1, %sw.bb5 ], [ 1, %sw.bb4 ], [ %1, %sw.bb ], [ %1, %entry.sw.epilog_crit_edge ]
  %size = getelementptr inbounds %struct.ec168_req, ptr %req, i32 0, i32 3
  %5 = ptrtoint ptr %size to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %size, align 2
  %conv10 = zext i16 %6 to i32
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %conv10, i32 noundef 3264) #12
  %tobool.not = icmp eq ptr %call9.i, null
  br i1 %tobool.not, label %sw.epilog.do.body77_crit_edge, label %if.end

sw.epilog.do.body77_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body77

if.end:                                           ; preds = %sw.epilog
  %conv11 = zext i8 %requesttype.0 to i32
  br i1 %cmp, label %if.then13, label %if.end.if.end22_crit_edge

if.end.if.end22_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22

if.then13:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %data = getelementptr inbounds %struct.ec168_req, ptr %req, i32 0, i32 4
  %7 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data, align 4
  %9 = ptrtoint ptr %size to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %size, align 2
  %conv15 = zext i16 %10 to i32
  %11 = call ptr @memcpy(ptr %call9.i, ptr %8, i32 %conv15)
  br label %if.end22

if.end22:                                         ; preds = %if.then13, %if.end.if.end22_crit_edge
  %.sink = phi i32 [ -2147483648, %if.then13 ], [ -2147483520, %if.end.if.end22_crit_edge ]
  %udev18 = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 5
  %12 = ptrtoint ptr %udev18 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %udev18, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 8
  %shl.i140 = shl i32 %15, 8
  %or21 = or i32 %shl.i140, %.sink
  tail call void @msleep(i32 noundef 1) #8
  %udev23 = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 5
  %16 = ptrtoint ptr %udev23 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %udev23, align 4
  %value = getelementptr inbounds %struct.ec168_req, ptr %req, i32 0, i32 1
  %18 = ptrtoint ptr %value to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %value, align 2
  %index = getelementptr inbounds %struct.ec168_req, ptr %req, i32 0, i32 2
  %20 = ptrtoint ptr %index to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %index, align 4
  %22 = ptrtoint ptr %size to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %size, align 2
  %call25 = tail call i32 @usb_control_msg(ptr noundef %17, i32 noundef %or21, i8 noundef zeroext %request.0, i8 noundef zeroext %requesttype.0, i16 noundef zeroext %19, i16 noundef zeroext %21, ptr noundef nonnull %call9.i, i16 noundef zeroext %23, i32 noundef 1000) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ec168_ctrl_msg.__UNIQUE_ID_ddebug388, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ec168_ctrl_msg, %if.then37)) #8
          to label %do.end62 [label %if.then37], !srcloc !107

if.then37:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  %.str.17..str.18 = select i1 %cmp, ptr @.str.17, ptr @.str.18
  %24 = ptrtoint ptr %udev23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %udev23, align 4
  %dev39 = getelementptr inbounds %struct.usb_device, ptr %25, i32 0, i32 15
  %conv41 = zext i8 %request.0 to i32
  %26 = ptrtoint ptr %value to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %value, align 2
  %conv43 = zext i16 %27 to i32
  %and = and i32 %conv43, 255
  %28 = lshr i32 %conv43, 8
  %29 = ptrtoint ptr %index to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %index, align 4
  %conv47 = zext i16 %30 to i32
  %and48 = and i32 %conv47, 255
  %31 = lshr i32 %conv47, 8
  %32 = ptrtoint ptr %size to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %size, align 2
  %conv53 = zext i16 %33 to i32
  %and54 = and i32 %conv53, 255
  %34 = lshr i32 %conv53, 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ec168_ctrl_msg.__UNIQUE_ID_ddebug388, ptr noundef %dev39, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.14, i32 noundef %conv11, i32 noundef %conv41, i32 noundef %and, i32 noundef %28, i32 noundef %and48, i32 noundef %31, i32 noundef %and54, i32 noundef %34, ptr noundef nonnull %.str.17..str.18, i32 noundef %conv53, ptr noundef nonnull %call9.i) #8
  br label %do.end62

do.end62:                                         ; preds = %if.then37, %if.end22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %cmp63 = icmp slt i32 %call25, 0
  br i1 %cmp63, label %err_dealloc, label %land.lhs.true

land.lhs.true:                                    ; preds = %do.end62
  br i1 %cmp70, label %if.then72, label %land.lhs.true.if.end76_crit_edge

land.lhs.true.if.end76_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end76

if.then72:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %data73 = getelementptr inbounds %struct.ec168_req, ptr %req, i32 0, i32 4
  %35 = ptrtoint ptr %data73 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %data73, align 4
  %37 = ptrtoint ptr %size to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %size, align 2
  %conv75 = zext i16 %38 to i32
  %39 = call ptr @memcpy(ptr %36, ptr %call9.i, i32 %conv75)
  br label %if.end76

if.end76:                                         ; preds = %if.then72, %land.lhs.true.if.end76_crit_edge
  tail call void @kfree(ptr noundef nonnull %call9.i) #8
  br label %cleanup

err_dealloc:                                      ; preds = %do.end62
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @kfree(ptr noundef nonnull %call9.i) #8
  br label %do.body77

do.body77:                                        ; preds = %err_dealloc, %sw.epilog.do.body77_crit_edge, %do.end
  %ret.0 = phi i32 [ -22, %do.end ], [ %call25, %err_dealloc ], [ -12, %sw.epilog.do.body77_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ec168_ctrl_msg.__UNIQUE_ID_ddebug389, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ec168_ctrl_msg, %if.then89)) #8
          to label %cleanup [label %if.then89], !srcloc !107

if.then89:                                        ; preds = %do.body77
  call void @__sanitizer_cov_trace_pc() #10
  %udev90 = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 5
  %40 = ptrtoint ptr %udev90 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %udev90, align 4
  %dev91 = getelementptr inbounds %struct.usb_device, ptr %41, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ec168_ctrl_msg.__UNIQUE_ID_ddebug389, ptr noundef %dev91, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.14, i32 noundef %ret.0) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then89, %do.body77, %if.end76
  %retval.0 = phi i32 [ 0, %if.end76 ], [ %ret.0, %if.then89 ], [ %ret.0, %do.body77 ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_control_msg(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ec168_i2c_xfer(ptr nocapture noundef readonly %adap, ptr nocapture noundef readonly %msg, i32 noundef %num) #2 align 64 {
entry:
  %req = alloca %struct.ec168_req, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %adap, i32 0, i32 9, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %req) #8
  %2 = call ptr @memset(ptr %req, i32 255, i32 12)
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %num)
  %cmp = icmp sgt i32 %num, 2
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %i2c_mutex = getelementptr inbounds %struct.dvb_usb_device, ptr %1, i32 0, i32 9
  %call1 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %i2c_mutex, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %if.end.cleanup_crit_edge, label %while.cond.preheader

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

while.cond.preheader:                             ; preds = %if.end
  %flags = getelementptr %struct.i2c_msg, ptr %msg, i32 1, i32 1
  %value = getelementptr inbounds %struct.ec168_req, ptr %req, i32 0, i32 1
  %index = getelementptr inbounds %struct.ec168_req, ptr %req, i32 0, i32 2
  %len = getelementptr %struct.i2c_msg, ptr %msg, i32 1, i32 2
  %size = getelementptr inbounds %struct.ec168_req, ptr %req, i32 0, i32 3
  %buf24 = getelementptr %struct.i2c_msg, ptr %msg, i32 1, i32 3
  %data = getelementptr inbounds %struct.ec168_req, ptr %req, i32 0, i32 4
  br label %while.cond

while.cond:                                       ; preds = %if.end80.while.cond_crit_edge, %while.cond.preheader
  %i.0 = phi i32 [ %i.1, %if.end80.while.cond_crit_edge ], [ 0, %while.cond.preheader ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0, i32 %num)
  %cmp5 = icmp slt i32 %i.0, %num
  br i1 %cmp5, label %while.body, label %while.cond.error_crit_edge

while.cond.error_crit_edge:                       ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %error

while.body:                                       ; preds = %while.cond
  %add = add nsw i32 %i.0, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %num)
  %cmp6 = icmp slt i32 %add, %num
  br i1 %cmp6, label %land.lhs.true, label %while.body.if.else30_crit_edge

while.body.if.else30_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else30

land.lhs.true:                                    ; preds = %while.body
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %flags, align 2
  %5 = and i16 %4, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool.not = icmp eq i16 %5, 0
  br i1 %tobool.not, label %land.lhs.true.if.else30_crit_edge, label %if.then8

land.lhs.true.if.else30_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else30

if.then8:                                         ; preds = %land.lhs.true
  %arrayidx9 = getelementptr %struct.i2c_msg, ptr %msg, i32 %i.0
  %6 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %arrayidx9, align 4
  %8 = load i8, ptr @ec168_ec100_config, align 1
  %9 = zext i8 %8 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %7, i16 %9)
  %cmp12 = icmp eq i16 %7, %9
  br i1 %cmp12, label %if.then14, label %if.end80.thread

if.then14:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %req to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 51, ptr %req, align 4
  %11 = ptrtoint ptr %value to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 0, ptr %value, align 2
  %buf = getelementptr %struct.i2c_msg, ptr %msg, i32 %i.0, i32 3
  %12 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %buf, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %13, align 1
  %conv17 = zext i8 %15 to i16
  %add18 = or i16 %conv17, -256
  %16 = ptrtoint ptr %index to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %add18, ptr %index, align 4
  %17 = ptrtoint ptr %len to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %len, align 4
  %19 = ptrtoint ptr %size to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %18, ptr %size, align 2
  %20 = ptrtoint ptr %buf24 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %buf24, align 4
  %22 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %21, ptr %data, align 4
  %call26 = call fastcc i32 @ec168_ctrl_msg(ptr noundef %1, ptr noundef nonnull %req)
  %add27 = add nsw i32 %i.0, 2
  br label %if.end80

if.end80.thread:                                  ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #10
  %udev = getelementptr inbounds %struct.dvb_usb_device, ptr %1, i32 0, i32 5
  %23 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %udev, align 4
  %dev = getelementptr inbounds %struct.usb_device, ptr %24, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str) #11
  br label %error

if.else30:                                        ; preds = %land.lhs.true.if.else30_crit_edge, %while.body.if.else30_crit_edge
  %arrayidx31 = getelementptr %struct.i2c_msg, ptr %msg, i32 %i.0
  %25 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %arrayidx31, align 4
  %27 = load i8, ptr @ec168_ec100_config, align 1
  %28 = zext i8 %27 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %26, i16 %28)
  %cmp35 = icmp eq i16 %26, %28
  br i1 %cmp35, label %if.then37, label %if.else55

if.then37:                                        ; preds = %if.else30
  call void @__sanitizer_cov_trace_pc() #10
  %29 = ptrtoint ptr %req to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 52, ptr %req, align 4
  %buf40 = getelementptr %struct.i2c_msg, ptr %msg, i32 %i.0, i32 3
  %30 = ptrtoint ptr %buf40 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %buf40, align 4
  %arrayidx41 = getelementptr i8, ptr %31, i32 1
  %32 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx41, align 1
  %conv42 = zext i8 %33 to i16
  %34 = ptrtoint ptr %value to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %conv42, ptr %value, align 2
  %35 = ptrtoint ptr %31 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %31, align 1
  %conv47 = zext i8 %36 to i16
  %add48 = or i16 %conv47, -256
  %37 = ptrtoint ptr %index to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %add48, ptr %index, align 4
  %38 = ptrtoint ptr %size to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 0, ptr %size, align 2
  %39 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr null, ptr %data, align 4
  %call53 = call fastcc i32 @ec168_ctrl_msg(ptr noundef %1, ptr noundef nonnull %req)
  br label %if.end80

if.else55:                                        ; preds = %if.else30
  call void @__sanitizer_cov_trace_pc() #10
  %40 = ptrtoint ptr %req to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 33, ptr %req, align 4
  %buf58 = getelementptr %struct.i2c_msg, ptr %msg, i32 %i.0, i32 3
  %41 = ptrtoint ptr %buf58 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %buf58, align 4
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %42, align 1
  %conv60 = zext i8 %44 to i16
  %45 = ptrtoint ptr %value to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %conv60, ptr %value, align 2
  %add65 = add i16 %26, 256
  %46 = ptrtoint ptr %index to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 %add65, ptr %index, align 4
  %len69 = getelementptr %struct.i2c_msg, ptr %msg, i32 %i.0, i32 2
  %47 = ptrtoint ptr %len69 to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %len69, align 4
  %sub = add i16 %48, -1
  %49 = ptrtoint ptr %size to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 %sub, ptr %size, align 2
  %arrayidx75 = getelementptr i8, ptr %42, i32 1
  %50 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %arrayidx75, ptr %data, align 4
  %call77 = call fastcc i32 @ec168_ctrl_msg(ptr noundef %1, ptr noundef nonnull %req)
  br label %if.end80

if.end80:                                         ; preds = %if.else55, %if.then37, %if.then14
  %i.1 = phi i32 [ %add27, %if.then14 ], [ %add, %if.then37 ], [ %add, %if.else55 ]
  %ret.0 = phi i32 [ %call26, %if.then14 ], [ %call53, %if.then37 ], [ %call77, %if.else55 ]
  %tobool81.not = icmp eq i32 %ret.0, 0
  br i1 %tobool81.not, label %if.end80.while.cond_crit_edge, label %if.end80.error_crit_edge

if.end80.error_crit_edge:                         ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #10
  br label %error

if.end80.while.cond_crit_edge:                    ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond

error:                                            ; preds = %if.end80.error_crit_edge, %if.end80.thread, %while.cond.error_crit_edge
  %ret.1 = phi i32 [ -95, %if.end80.thread ], [ %i.0, %while.cond.error_crit_edge ], [ %ret.0, %if.end80.error_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %i2c_mutex) #8
  br label %cleanup

cleanup:                                          ; preds = %error, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1, %error ], [ -22, %entry.cleanup_crit_edge ], [ -11, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %req) #8
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ec168_i2c_func(ptr nocapture noundef readnone %adapter) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__symbol_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__request_module(i1 noundef zeroext, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__symbol_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 46)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 46)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !7, !9, !11, !13, !14, !16, !17, !18, !19, !20, !22, !24, !26, !28, !30, !32, !33, !34, !35, !37, !38, !40, !41, !43, !44, !45, !46, !47, !48, !50, !51, !52, !53, !55, !57, !58, !60, !61, !62, !64, !66, !68, !69, !70, !71, !73, !75, !76, !78, !79, !80, !81, !82, !84, !85, !87, !88, !89, !90, !91, !93, !95, !96}
!llvm.module.flags = !{!97, !98, !99, !100, !101, !102, !103, !104}
!llvm.ident = !{!105}

!0 = !{ptr @__param_adapter_nr, !1, !"__param_adapter_nr", i1 false, i1 false}
!1 = !{!"../drivers/media/usb/dvb-usb-v2/ec168.c", i32 12, i32 1}
!2 = !{ptr @__UNIQUE_ID_adapter_nrtype386, !1, !"__UNIQUE_ID_adapter_nrtype386", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_adapter_nr387, !1, !"__UNIQUE_ID_adapter_nr387", i1 false, i1 false}
!4 = !{ptr @__initcall__kmod_dvb_usb_ec168__398_361_ec168_driver_init6, !5, !"__initcall__kmod_dvb_usb_ec168__398_361_ec168_driver_init6", i1 false, i1 false}
!5 = !{!"../drivers/media/usb/dvb-usb-v2/ec168.c", i32 361, i32 1}
!6 = !{ptr @__exitcall_ec168_driver_exit, !5, !"__exitcall_ec168_driver_exit", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_author399, !8, !"__UNIQUE_ID_author399", i1 false, i1 false}
!8 = !{!"../drivers/media/usb/dvb-usb-v2/ec168.c", i32 363, i32 1}
!9 = !{ptr @__UNIQUE_ID_description400, !10, !"__UNIQUE_ID_description400", i1 false, i1 false}
!10 = !{!"../drivers/media/usb/dvb-usb-v2/ec168.c", i32 364, i32 1}
!11 = !{ptr @__UNIQUE_ID_file401, !12, !"__UNIQUE_ID_file401", i1 false, i1 false}
!12 = !{!"../drivers/media/usb/dvb-usb-v2/ec168.c", i32 365, i32 1}
!13 = !{ptr @__UNIQUE_ID_license402, !12, !"__UNIQUE_ID_license402", i1 false, i1 false}
!14 = !{ptr @__UNIQUE_ID_firmware403, !15, !"__UNIQUE_ID_firmware403", i1 false, i1 false}
!15 = !{!"../drivers/media/usb/dvb-usb-v2/ec168.c", i32 366, i32 1}
!16 = !{ptr @__param_str_adapter_nr, !1, !"__param_str_adapter_nr", i1 false, i1 false}
!17 = !{ptr @__param_arr_adapter_nr, !1, !"__param_arr_adapter_nr", i1 false, i1 false}
!18 = !{ptr @adapter_nr, !1, !"adapter_nr", i1 false, i1 false}
!19 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @ec168_driver, !21, !"ec168_driver", i1 false, i1 false}
!21 = !{!"../drivers/media/usb/dvb-usb-v2/ec168.c", i32 350, i32 26}
!22 = !{ptr @.str.1, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/media/usb/dvb-usb-v2/ec168.c", i32 336, i32 4}
!24 = !{ptr @ec168_id, !25, !"ec168_id", i1 false, i1 false}
!25 = !{!"../drivers/media/usb/dvb-usb-v2/ec168.c", i32 335, i32 35}
!26 = !{ptr @.str.6, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/media/usb/dvb-usb-v2/ec168.c", i32 319, i32 14}
!28 = !{ptr @ec168_props, !29, !"ec168_props", i1 false, i1 false}
!29 = !{!"../drivers/media/usb/dvb-usb-v2/ec168.c", i32 312, i32 47}
!30 = !{ptr @.str.8, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/media/usb/dvb-usb-v2/ec168.c", i32 178, i32 2}
!32 = !{ptr @.str.9, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @ec168_identify_state.__UNIQUE_ID_ddebug390, !31, !"__UNIQUE_ID_ddebug390", i1 false, i1 false}
!35 = !{ptr @.str.11, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/media/usb/dvb-usb-v2/ec168.c", i32 184, i32 2}
!37 = !{ptr @ec168_identify_state.__UNIQUE_ID_ddebug391, !36, !"__UNIQUE_ID_ddebug391", i1 false, i1 false}
!38 = !{ptr @.str.12, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/media/usb/dvb-usb-v2/ec168.c", i32 193, i32 2}
!40 = !{ptr @ec168_identify_state.__UNIQUE_ID_ddebug392, !39, !"__UNIQUE_ID_ddebug392", i1 false, i1 false}
!41 = !{ptr @.str.13, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/media/usb/dvb-usb-v2/ec168.c", i32 50, i32 3}
!43 = !{ptr @.str.14, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @.str.15, !42, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.16, !42, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @ec168_ctrl_msg._entry, !42, !"_entry", i1 false, i1 false}
!47 = !{ptr @ec168_ctrl_msg._entry_ptr, !42, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.17, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/media/usb/dvb-usb-v2/ec168.c", i32 76, i32 2}
!50 = !{ptr @.str.18, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @.str.19, !49, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @ec168_ctrl_msg.__UNIQUE_ID_ddebug388, !49, !"__UNIQUE_ID_ddebug388", i1 false, i1 false}
!53 = !{ptr @ec168_ctrl_msg.__UNIQUE_ID_ddebug389, !54, !"__UNIQUE_ID_ddebug389", i1 false, i1 false}
!54 = !{!"../drivers/media/usb/dvb-usb-v2/ec168.c", i32 94, i32 2}
!55 = !{ptr @.str.20, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/media/usb/dvb-usb-v2/ec168.c", i32 202, i32 2}
!57 = !{ptr @ec168_download_firmware.__UNIQUE_ID_ddebug393, !56, !"__UNIQUE_ID_ddebug393", i1 false, i1 false}
!58 = !{ptr @.str.21, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/media/usb/dvb-usb-v2/ec168.c", i32 216, i32 4}
!60 = !{ptr @ec168_download_firmware._entry, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @ec168_download_firmware._entry_ptr, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @ec168_download_firmware.__UNIQUE_ID_ddebug394, !63, !"__UNIQUE_ID_ddebug394", i1 false, i1 false}
!63 = !{!"../drivers/media/usb/dvb-usb-v2/ec168.c", i32 251, i32 2}
!64 = !{ptr @ec168_i2c_algo, !65, !"ec168_i2c_algo", i1 false, i1 false}
!65 = !{!"../drivers/media/usb/dvb-usb-v2/ec168.c", i32 167, i32 29}
!66 = !{ptr @.str.22, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/media/usb/dvb-usb-v2/ec168.c", i32 126, i32 5}
!68 = !{ptr @.str.23, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @ec168_i2c_xfer._entry, !67, !"_entry", i1 false, i1 false}
!70 = !{ptr @ec168_i2c_xfer._entry_ptr, !67, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @ec168_ec100_config, !72, !"ec168_ec100_config", i1 false, i1 false}
!72 = !{!"../drivers/media/usb/dvb-usb-v2/ec168.c", i32 255, i32 28}
!73 = !{ptr @.str.24, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/media/usb/dvb-usb-v2/ec168.c", i32 262, i32 2}
!75 = !{ptr @ec168_ec100_frontend_attach.__UNIQUE_ID_ddebug395, !74, !"__UNIQUE_ID_ddebug395", i1 false, i1 false}
!76 = !{ptr @.str.25, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/media/usb/dvb-usb-v2/ec168.c", i32 264, i32 16}
!78 = !{ptr @.str.26, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @.str.27, !77, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @ec168_ec100_frontend_attach._entry, !77, !"_entry", i1 false, i1 false}
!81 = !{ptr @ec168_ec100_frontend_attach._entry_ptr, !77, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.28, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/media/usb/dvb-usb-v2/ec168.c", i32 292, i32 2}
!84 = !{ptr @ec168_mxl5003s_tuner_attach.__UNIQUE_ID_ddebug396, !83, !"__UNIQUE_ID_ddebug396", i1 false, i1 false}
!85 = !{ptr @.str.29, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/media/usb/dvb-usb-v2/ec168.c", i32 294, i32 9}
!87 = !{ptr @.str.30, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @.str.31, !86, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @ec168_mxl5003s_tuner_attach._entry, !86, !"_entry", i1 false, i1 false}
!90 = !{ptr @ec168_mxl5003s_tuner_attach._entry_ptr, !86, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @ec168_mxl5003s_config, !92, !"ec168_mxl5003s_config", i1 false, i1 false}
!92 = !{!"../drivers/media/usb/dvb-usb-v2/ec168.c", i32 272, i32 31}
!93 = !{ptr @.str.32, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/media/usb/dvb-usb-v2/ec168.c", i32 302, i32 2}
!95 = !{ptr @.str.33, !94, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @ec168_streaming_ctrl.__UNIQUE_ID_ddebug397, !94, !"__UNIQUE_ID_ddebug397", i1 false, i1 false}
!97 = !{i32 1, !"wchar_size", i32 2}
!98 = !{i32 1, !"min_enum_size", i32 4}
!99 = !{i32 8, !"branch-target-enforcement", i32 0}
!100 = !{i32 8, !"sign-return-address", i32 0}
!101 = !{i32 8, !"sign-return-address-all", i32 0}
!102 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!103 = !{i32 7, !"uwtable", i32 1}
!104 = !{i32 7, !"frame-pointer", i32 2}
!105 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!106 = !{!"auto-init"}
!107 = !{i64 2148955188, i64 2148955193, i64 2148955206, i64 2148955250, i64 2148955284, i64 2148955305}
