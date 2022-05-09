; ModuleID = '/llk/IR_all_yes/drivers/media/usb/dvb-usb/dib0700_devices.c_pt.bc'
source_filename = "../drivers/media/usb/dvb-usb/dib0700_devices.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.101 }
%union.anon.101 = type { ptr }
%struct.usb_device_id = type { i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i32 }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.132 = type { i32 }
%struct.dvb_usb_adapter_fe_properties = type { i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.usb_data_stream_properties, i32 }
%struct.usb_data_stream_properties = type { i32, i32, i32, %union.anon.131 }
%union.anon.131 = type { %struct.anon.133 }
%struct.anon.133 = type { i32, i32, i32 }
%struct.dvb_usb_adapter_properties = type { i32, ptr, i32, [3 x %struct.dvb_usb_adapter_fe_properties] }
%struct.anon.134 = type { i32, %struct.dvb_rc_legacy, %struct.dvb_rc }
%struct.dvb_rc_legacy = type { ptr, i32, ptr, i32 }
%struct.dvb_rc = type { ptr, i64, i64, i32, ptr, ptr, ptr, i32, i8, i32 }
%struct.dvb_usb_device_description = type { ptr, [15 x ptr], [15 x ptr] }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.dib7000p_config = type { i8, i8, i8, ptr, i8, ptr, ptr, i16, i16, i16, i16, i8, i8, ptr, i8, i8, i16, i8, i8 }
%struct.dib7000m_config = type { i8, i8, i8, i8, i8, ptr, i8, ptr, ptr, i16, i16, i16, i16, i8, i8, ptr }
%struct.dibx000_agc_config = type { i8, i16, i16, i16, i8, i16, i8, i16, i8, i8, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.anon.144 }
%struct.anon.144 = type { i16, i16, i16, i16 }
%struct.dibx000_bandwidth_config = type { i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i32, i32, i32 }
%struct.mt2060_config = type { i8, i8 }
%struct.dib3000mc_config = type { ptr, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8 }
%struct.mt2266_config = type { i8 }
%struct.dib0070_config = type { i8, ptr, ptr, i32, i32, i8, i32, i8, i8, i8, i8, i8, i8, ptr, i8 }
%struct.xc2028_config = type { ptr, i8, ptr }
%struct.xc2028_ctrl = type { ptr, i32, i32, i32, i8, i32, i8 }
%struct.s5h1411_config = type { i8, i8, i16, i16, i16, i8, i8 }
%struct.xc5000_config = type { i8, i32, i8, i16, i16, i32 }
%struct.lgdt3305_config = type { i8, i16, i16, i16, i16, i16, i8, i32, i32, i32, i32, i32 }
%struct.mxl5007t_config = type { i32, i32, i32, i32, i8 }
%struct.dib8000_config = type { i8, i8, i8, ptr, i8, ptr, ptr, i16, i16, i16, i16, ptr, i16, i16, i8, i8, i8, i8, ptr }
%struct.dib0070_wbd_gain_cfg = type { i16, i16 }
%struct.dib0090_wbd_slope = type { i16, i16, i16, i16, i16, i8 }
%struct.dib9000_config = type { i8, i8, i8, ptr, i16, i32, i32, i32, i32, ptr, i32, [2 x %struct.dibGPIOFunction], %struct.dibSubbandSelection, i8 }
%struct.dibGPIOFunction = type { i8, i8, i32, i32, i32 }
%struct.dibSubbandSelection = type { i8, [8 x %struct.anon.145] }
%struct.anon.145 = type { i16, %struct.dibGPIOFunction }
%struct.xc4000_config = type { i8, i8, i8, i8, i32 }
%struct.dvb_usb_device = type { %struct.dvb_usb_device_properties, ptr, ptr, i32, i32, %struct.mutex, %struct.mutex, %struct.mutex, %struct.i2c_adapter, i32, [2 x %struct.dvb_usb_adapter], ptr, ptr, [64 x i8], %struct.delayed_work, i32, i32, ptr, ptr }
%struct.dvb_usb_device_properties = type { i32, i32, ptr, ptr, i32, i32, ptr, ptr, i32, [2 x %struct.dvb_usb_adapter_properties], ptr, ptr, ptr, %struct.anon.134, ptr, i32, i32, i32, [12 x %struct.dvb_usb_device_description] }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.dvb_usb_adapter = type { ptr, %struct.dvb_usb_adapter_properties, i32, i8, i32, %struct.dvb_adapter, %struct.dmxdev, %struct.dvb_demux, %struct.dvb_net, [3 x %struct.dvb_usb_fe_adapter], i32, i32, ptr }
%struct.dvb_adapter = type { i32, %struct.list_head, %struct.list_head, ptr, [6 x i8], ptr, ptr, ptr, i32, ptr, %struct.mutex, %struct.mutex, ptr, ptr, ptr }
%struct.dmxdev = type { ptr, ptr, ptr, ptr, i32, i32, i8, ptr, %struct.dvb_ringbuffer, %struct.dvb_vb2_ctx, %struct.mutex, %struct.spinlock }
%struct.dvb_ringbuffer = type { ptr, i32, i32, i32, i32, %struct.wait_queue_head, %struct.spinlock }
%struct.dvb_vb2_ctx = type { %struct.vb2_queue, %struct.mutex, %struct.spinlock, %struct.list_head, ptr, i32, i32, i32, i32, i32, i32, i32, i32, [21 x i8] }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.dvb_demux = type { %struct.dmx_demux, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, %struct.list_head, [20 x ptr], [20 x i16], %struct.list_head, [204 x i8], i32, %struct.mutex, %struct.spinlock, ptr, i64, i32, i32, i32 }
%struct.dmx_demux = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_net = type { ptr, [10 x ptr], [10 x i32], i8, ptr, %struct.mutex }
%struct.dvb_usb_fe_adapter = type { ptr, ptr, ptr, %struct.usb_data_stream, i32, i32, ptr }
%struct.usb_data_stream = type { ptr, %struct.usb_data_stream_properties, i32, ptr, [10 x ptr], i32, i32, [10 x ptr], [10 x i32], i32, i32, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.dib0700_state = type { i8, [2 x i16], i8, i8, i8, i8, i8, i32, i32, ptr, ptr, [255 x i8], ptr, ptr }
%struct.dib0700_adapter_state = type { ptr, ptr, %struct.dib7000p_ops, %struct.dib8000_ops }
%struct.dib7000p_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dib8000_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
%struct.dvb_frontend = type { %struct.kref, %struct.dvb_frontend_ops, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dtv_frontend_properties, ptr, i32, i32 }
%struct.dvb_frontend_ops = type { %struct.dvb_frontend_internal_info, [8 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dvb_tuner_ops, %struct.analog_demod_ops }
%struct.dvb_frontend_internal_info = type { [128 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dvb_tuner_ops = type { %struct.dvb_tuner_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_tuner_info = type { [128 x i8], i32, i32, i32, i32, i32, i32 }
%struct.analog_demod_ops = type { %struct.analog_demod_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.analog_demod_info = type { ptr }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, [3 x %struct.anon.124], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats }
%struct.anon.124 = type { i8, i32, i32, i8 }
%struct.dtv_fe_stats = type { i8, [4 x %struct.dtv_stats] }
%struct.dtv_stats = type <{ i8, %union.anon.125 }>
%union.anon.125 = type { i64 }
%struct.firmware = type { i32, ptr, ptr }
%struct.mn88472_config = type { i32, i32, i32, i16, ptr, ptr }
%struct.tda18250_config = type { i16, i16, i16, i16, i16, i16, i8, i8, ptr, ptr }
%struct.i2c_board_info = type { [20 x i8], i16, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32 }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@__param_str_force_lna_activation = internal constant [37 x i8] c"dvb_usb_dib0700.force_lna_activation\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@force_lna_activation = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_force_lna_activation = internal constant %struct.kernel_param { ptr @__param_str_force_lna_activation, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.101 { ptr @force_lna_activation } }, section "__param", align 4
@__UNIQUE_ID_force_lna_activationtype386 = internal constant [50 x i8] c"dvb_usb_dib0700.parmtype=force_lna_activation:int\00", section ".modinfo", align 1
@__UNIQUE_ID_force_lna_activation387 = internal constant [153 x i8] c"dvb_usb_dib0700.parm=force_lna_activation:force the activation of Low-Noise-Amplifier(s) (LNA), if applicable for the device (default: 0=automatic/off).\00", section ".modinfo", align 1
@dib0700_usb_id_table = dso_local global { [88 x %struct.usb_device_id], [512 x i8] } { [88 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 4280, i16 7700, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4280, i16 7800, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 8256, i16 -26303, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 8256, i16 -26288, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 8256, i16 28752, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1994, i16 -22521, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6235, i16 7800, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5508, i16 24579, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1043, i16 28416, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 8256, i16 28768, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1994, i16 -18424, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 8964, i16 556, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3277, i16 90, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 8256, i16 -27264, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4280, i16 7920, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4280, i16 7868, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 8964, i16 552, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4280, i16 7870, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 8964, i16 553, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6235, i16 7808, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1994, i16 -19096, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4164, i16 28673, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1496, i16 -32497, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2821, i16 5919, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2821, i16 5951, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 8256, i16 28784, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 8256, i16 28800, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3277, i16 88, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 8964, i16 558, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 8964, i16 566, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 8964, i16 567, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4452, i16 7900, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3277, i16 96, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3277, i16 120, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1043, i16 28417, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 8256, i16 20992, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 8256, i16 -31744, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4164, i16 28674, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4452, i16 7944, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2821, i16 5942, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 8964, i16 570, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 8964, i16 571, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3277, i16 98, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3277, i16 129, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5141, i16 3, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4452, i16 11996, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 8256, i16 -19968, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 8256, i16 -19952, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4452, i16 2161, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4057, i16 33, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4057, i16 32, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1043, i16 24822, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3277, i16 4256, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3277, i16 4257, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4452, i16 7932, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4452, i16 7820, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 8964, i16 579, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 8211, i16 581, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 8211, i16 584, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4280, i16 7808, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3277, i16 171, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4280, i16 8088, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4280, i16 8080, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 15, i16 5460, i16 20496, i16 0, i16 16128, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 7769, i16 2, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 8964, i16 581, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 8964, i16 584, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4280, i16 8096, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4057, i16 17, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4280, i16 9091, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4280, i16 8104, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4280, i16 9092, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4280, i16 7090, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4280, i16 7092, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5367, i16 4, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5728, i16 6433, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 8964, i16 573, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 8964, i16 574, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4280, i16 7790, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4280, i16 8092, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4057, i16 63, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 8211, i16 604, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 8211, i16 605, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 8211, i16 8106, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4280, i16 8106, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5247, i16 10072, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1118, i16 725, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id zeroinitializer], [512 x i8] zeroinitializer }, align 32
@.str = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"dvb-usb-dib0700-1.20.fw\00", [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"rc-dib0700-rc5\00", [17 x i8] zeroinitializer }, align 32
@dib0700_i2c_algo = external dso_local global %struct.i2c_algorithm, align 4
@.str.2 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"DiBcom STK7700P reference design\00", [63 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Hauppauge Nova-T Stick\00", [41 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"AVerMedia AVerTV DVB-T Volar\00", [35 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Compro Videomate U500\00", [42 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Uniwill STK7700P based (Hama and others)\00", [55 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Leadtek Winfast DTV Dongle (STK7700P based)\00", [52 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"AVerMedia AVerTV DVB-T Express\00", [33 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Gigabyte U7000\00", [17 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Hauppauge Nova-T 500 Dual DVB-T\00", [32 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Pinnacle PCTV 2000e\00", [44 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Terratec Cinergy DT XS Diversity\00", [63 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Hauppauge Nova-TD Stick/Elgato Eye-TV Diversity\00", [48 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"DiBcom STK7700D reference design\00", [63 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"YUAN High-Tech DiBcom STK7700D\00", [33 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"dib0700\00", [24 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"ASUS My Cinema U3000 Mini DVBT Tuner\00", [59 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Yuan EC372S\00", [20 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Terratec Cinergy T Express\00", [37 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"DiBcom STK7070P reference design\00", [63 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Pinnacle PCTV DVB-T Flash Stick\00", [32 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Artec T14BR DVB-T\00", [46 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"ASUS My Cinema U3100 Mini DVBT Tuner\00", [59 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Hauppauge Nova-T MyTV.t\00", [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Pinnacle PCTV 72e\00", [46 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Pinnacle PCTV 73e\00", [46 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Elgato EyeTV DTT\00", [47 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Yuan PD378S\00", [20 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Elgato EyeTV Dtt Dlx PD378S\00", [36 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Elgato EyeTV DTT rev. 2\00", [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Pinnacle PCTV 73A\00", [46 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Pinnacle PCTV 73e SE\00", [43 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Pinnacle PCTV 282e\00", [45 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Hauppauge Nova-TD Stick (52009)\00", [32 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"PCTV 2002e\00", [21 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"PCTV 2002e SE\00", [18 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"DiBcom STK7070PD reference design\00", [62 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Pinnacle PCTV Dual DVB-T Diversity Stick\00", [55 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Hauppauge Nova-TD-500 (84xxx)\00", [34 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Terratec Cinergy DT USB XS Diversity/ T5\00", [55 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Sony PlayTV\00", [20 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"rc-dib0700-nec\00", [17 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Elgato EyeTV Diversity\00", [41 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Terratec Cinergy HT USB XE\00", [37 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Pinnacle Expresscard 320cx\00", [37 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Terratec Cinergy HT Express\00", [36 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Gigabyte U8000-RH\00", [46 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"YUAN High-Tech STK7700PH\00", [39 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Asus My Cinema-U3000Hybrid\00", [37 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"YUAN High-Tech MC770\00", [43 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Leadtek WinFast DTV Dongle H\00", [35 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"YUAN High-Tech STK7700D\00", [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Hama DVB=T Hybrid USB Stick\00", [36 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Pinnacle PCTV HD Pro USB Stick\00", [33 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Pinnacle PCTV HD USB Stick\00", [37 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Hauppauge ATSC MiniCard (B200)\00", [33 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Hauppauge ATSC MiniCard (B210)\00", [33 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"DiBcom STK7770P reference design\00", [63 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Terratec Cinergy T USB XXS (HD)/ T3\00", [60 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"TechniSat AirStar TeleStick 2\00", [34 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Medion CTX1921 DVB-T USB\00", [39 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"DiBcom STK807xP reference design\00", [63 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Prolink Pixelview SBTVD\00", [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"EvolutePC TVWay+\00", [47 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"DiBcom STK807xPVR reference design\00", [61 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"DiBcom STK8096GP reference design\00", [62 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"DiBcom STK9090M reference design\00", [63 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"DiBcom NIM8096MD reference design\00", [62 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"DiBcom NIM9090MD reference design\00", [62 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"DiBcom NIM7090 reference design\00", [32 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"DiBcom TFE7090PVR reference design\00", [61 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Pinnacle PCTV 340e HD Pro USB Stick\00", [60 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Pinnacle PCTV Hybrid Stick Solo\00", [32 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"DiBcom TFE7790P reference design\00", [63 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"DiBcom TFE8096P reference design\00", [63 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"DiBcom STK8096-PVR reference design\00", [60 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Microsoft Xbox One Digital TV Tuner\00", [60 x i8] zeroinitializer }, align 32
@dib0700_devices = dso_local global { <{ { i32, i32, ptr, ptr, i32, i32, ptr, ptr, i32, <{ { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> }, %struct.dvb_usb_adapter_properties }>, ptr, ptr, ptr, %struct.anon.134, ptr, i32, i32, i32, <{ { ptr, <{ ptr, ptr, [13 x ptr] }>, [15 x ptr] }, { ptr, <{ ptr, ptr, [13 x ptr] }>, [15 x ptr] }, { ptr, <{ ptr, ptr, [13 x ptr] }>, [15 x ptr] }, { ptr, <{ ptr, ptr, [13 x ptr] }>, [15 x ptr] }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, { ptr, <{ ptr, ptr, [13 x ptr] }>, [15 x ptr] }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, %struct.dvb_usb_device_description, %struct.dvb_usb_device_description, %struct.dvb_usb_device_description, %struct.dvb_usb_device_description }> }, { i32, i32, ptr, ptr, i32, i32, ptr, ptr, i32, [2 x { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> }], ptr, ptr, ptr, %struct.anon.134, ptr, i32, i32, i32, <{ { ptr, <{ ptr, ptr, [13 x ptr] }>, [15 x ptr] }, [11 x { ptr, <{ ptr, ptr, [13 x ptr] }>, [15 x ptr] }] }> }, { i32, i32, ptr, ptr, i32, i32, ptr, ptr, i32, [2 x { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> }], ptr, ptr, ptr, %struct.anon.134, ptr, i32, i32, i32, <{ { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, %struct.dvb_usb_device_description, %struct.dvb_usb_device_description, %struct.dvb_usb_device_description, %struct.dvb_usb_device_description, %struct.dvb_usb_device_description, %struct.dvb_usb_device_description, %struct.dvb_usb_device_description }> }, { i32, i32, ptr, ptr, i32, i32, ptr, ptr, i32, <{ { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> }, %struct.dvb_usb_adapter_properties }>, ptr, ptr, ptr, %struct.anon.134, ptr, i32, i32, i32, <{ { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, [9 x { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }] }> }, { i32, i32, ptr, ptr, i32, i32, ptr, ptr, i32, <{ { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> }, %struct.dvb_usb_adapter_properties }>, ptr, ptr, ptr, %struct.anon.134, ptr, i32, i32, i32, [12 x { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }] }, { i32, i32, ptr, ptr, i32, i32, ptr, ptr, i32, <{ { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> }, %struct.dvb_usb_adapter_properties }>, ptr, ptr, ptr, %struct.anon.134, ptr, i32, i32, i32, <{ { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, { ptr, <{ ptr, ptr, [13 x ptr] }>, [15 x ptr] }, { ptr, <{ ptr, ptr, [13 x ptr] }>, [15 x ptr] }, [9 x %struct.dvb_usb_device_description] }> }, { i32, i32, ptr, ptr, i32, i32, ptr, ptr, i32, [2 x { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> }], ptr, ptr, ptr, %struct.anon.134, ptr, i32, i32, i32, <{ { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, [9 x { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }] }> }, { i32, i32, ptr, ptr, i32, i32, ptr, ptr, i32, [2 x { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> }], ptr, ptr, ptr, %struct.anon.134, ptr, i32, i32, i32, <{ { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, { ptr, <{ ptr, ptr, [13 x ptr] }>, [15 x ptr] }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, %struct.dvb_usb_device_description, %struct.dvb_usb_device_description, %struct.dvb_usb_device_description, %struct.dvb_usb_device_description, %struct.dvb_usb_device_description, %struct.dvb_usb_device_description, %struct.dvb_usb_device_description }> }, { i32, i32, ptr, ptr, i32, i32, ptr, ptr, i32, [2 x { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> }], ptr, ptr, ptr, %struct.anon.134, ptr, i32, i32, i32, <{ { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, [11 x { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }] }> }, { i32, i32, ptr, ptr, i32, i32, ptr, ptr, i32, <{ { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> }, %struct.dvb_usb_adapter_properties }>, ptr, ptr, ptr, %struct.anon.134, ptr, i32, i32, i32, <{ { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, %struct.dvb_usb_device_description, %struct.dvb_usb_device_description }> }, { i32, i32, ptr, ptr, i32, i32, ptr, ptr, i32, <{ { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> }, %struct.dvb_usb_adapter_properties }>, ptr, ptr, ptr, %struct.anon.134, ptr, i32, i32, i32, <{ { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, [10 x { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }] }> }, { i32, i32, ptr, ptr, i32, i32, ptr, ptr, i32, <{ { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> }, %struct.dvb_usb_adapter_properties }>, ptr, ptr, ptr, %struct.anon.134, ptr, i32, i32, i32, <{ { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, [10 x { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }] }> }, { i32, i32, ptr, ptr, i32, i32, ptr, ptr, i32, <{ { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> }, %struct.dvb_usb_adapter_properties }>, ptr, ptr, ptr, %struct.anon.134, ptr, i32, i32, i32, <{ { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, { ptr, <{ ptr, ptr, ptr, [12 x ptr] }>, [15 x ptr] }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, [8 x %struct.dvb_usb_device_description] }> }, { i32, i32, ptr, ptr, i32, i32, ptr, ptr, i32, <{ { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> }, %struct.dvb_usb_adapter_properties }>, ptr, ptr, ptr, %struct.anon.134, ptr, i32, i32, i32, <{ { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, [9 x { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }] }> }, { i32, i32, ptr, ptr, i32, i32, ptr, ptr, i32, [2 x { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> }], ptr, ptr, ptr, %struct.anon.134, ptr, i32, i32, i32, <{ { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, [11 x { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }] }> }, { i32, i32, ptr, ptr, i32, i32, ptr, ptr, i32, <{ { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> }, %struct.dvb_usb_adapter_properties }>, ptr, ptr, ptr, %struct.anon.134, ptr, i32, i32, i32, <{ { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, [11 x { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }] }> }, { i32, i32, ptr, ptr, i32, i32, ptr, ptr, i32, <{ { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> }, %struct.dvb_usb_adapter_properties }>, ptr, ptr, ptr, %struct.anon.134, ptr, i32, i32, i32, <{ { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, [11 x { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }] }> }, { i32, i32, ptr, ptr, i32, i32, ptr, ptr, i32, <{ { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> }, %struct.dvb_usb_adapter_properties }>, ptr, ptr, ptr, %struct.anon.134, ptr, i32, i32, i32, <{ { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, [11 x { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }] }> }, { i32, i32, ptr, ptr, i32, i32, ptr, ptr, i32, <{ { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> }, %struct.dvb_usb_adapter_properties }>, ptr, ptr, ptr, %struct.anon.134, ptr, i32, i32, i32, <{ { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, [11 x { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }] }> }, { i32, i32, ptr, ptr, i32, i32, ptr, ptr, i32, <{ { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> }, %struct.dvb_usb_adapter_properties }>, ptr, ptr, ptr, %struct.anon.134, ptr, i32, i32, i32, <{ { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, [11 x { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }] }> }, { i32, i32, ptr, ptr, i32, i32, ptr, ptr, i32, [2 x { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> }], ptr, ptr, ptr, %struct.anon.134, ptr, i32, i32, i32, <{ { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, [11 x { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }] }> }, { i32, i32, ptr, ptr, i32, i32, ptr, ptr, i32, <{ { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> }, %struct.dvb_usb_adapter_properties }>, ptr, ptr, ptr, %struct.anon.134, ptr, i32, i32, i32, <{ { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, [10 x { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }] }> }, { i32, i32, ptr, ptr, i32, i32, ptr, ptr, i32, <{ { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> }, %struct.dvb_usb_adapter_properties }>, ptr, ptr, ptr, %struct.anon.134, ptr, i32, i32, i32, <{ { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, [11 x { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }] }> }, { i32, i32, ptr, ptr, i32, i32, ptr, ptr, i32, <{ { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> }, %struct.dvb_usb_adapter_properties }>, ptr, ptr, ptr, %struct.anon.134, ptr, i32, i32, i32, <{ { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, [11 x { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }] }> }, { i32, i32, ptr, ptr, i32, i32, ptr, ptr, i32, [2 x { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> }], ptr, ptr, ptr, %struct.anon.134, ptr, i32, i32, i32, <{ { ptr, <{ ptr, ptr, [13 x ptr] }>, [15 x ptr] }, [11 x { ptr, <{ ptr, ptr, [13 x ptr] }>, [15 x ptr] }] }> }, { i32, i32, ptr, ptr, i32, i32, ptr, ptr, i32, <{ { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> }, %struct.dvb_usb_adapter_properties }>, ptr, ptr, ptr, %struct.anon.134, ptr, i32, i32, i32, <{ { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, [11 x { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }] }> } }>, [12944 x i8] } { <{ { i32, i32, ptr, ptr, i32, i32, ptr, ptr, i32, <{ { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> }, %struct.dvb_usb_adapter_properties }>, ptr, ptr, ptr, %struct.anon.134, ptr, i32, i32, i32, <{ { ptr, <{ ptr, ptr, [13 x ptr] }>, [15 x ptr] }, { ptr, <{ ptr, ptr, [13 x ptr] }>, [15 x ptr] }, { ptr, <{ ptr, ptr, [13 x ptr] }>, [15 x ptr] }, { ptr, <{ ptr, ptr, [13 x ptr] }>, [15 x ptr] }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, { ptr, <{ ptr, ptr, [13 x ptr] }>, [15 x ptr] }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, %struct.dvb_usb_device_description, %struct.dvb_usb_device_description, %struct.dvb_usb_device_description, %struct.dvb_usb_device_description }> }, { i32, i32, ptr, ptr, i32, i32, ptr, ptr, i32, [2 x { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> }], ptr, ptr, ptr, %struct.anon.134, ptr, i32, i32, i32, <{ { ptr, <{ ptr, ptr, [13 x ptr] }>, [15 x ptr] }, [11 x { ptr, <{ ptr, ptr, [13 x ptr] }>, [15 x ptr] }] }> }, { i32, i32, ptr, ptr, i32, i32, ptr, ptr, i32, [2 x { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> }], ptr, ptr, ptr, %struct.anon.134, ptr, i32, i32, i32, <{ { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, %struct.dvb_usb_device_description, %struct.dvb_usb_device_description, %struct.dvb_usb_device_description, %struct.dvb_usb_device_description, %struct.dvb_usb_device_description, %struct.dvb_usb_device_description, %struct.dvb_usb_device_description }> }, { i32, i32, ptr, ptr, i32, i32, ptr, ptr, i32, <{ { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> }, %struct.dvb_usb_adapter_properties }>, ptr, ptr, ptr, %struct.anon.134, ptr, i32, i32, i32, <{ { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, [9 x { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }] }> }, { i32, i32, ptr, ptr, i32, i32, ptr, ptr, i32, <{ { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> }, %struct.dvb_usb_adapter_properties }>, ptr, ptr, ptr, %struct.anon.134, ptr, i32, i32, i32, [12 x { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }] }, { i32, i32, ptr, ptr, i32, i32, ptr, ptr, i32, <{ { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> }, %struct.dvb_usb_adapter_properties }>, ptr, ptr, ptr, %struct.anon.134, ptr, i32, i32, i32, <{ { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, { ptr, <{ ptr, ptr, [13 x ptr] }>, [15 x ptr] }, { ptr, <{ ptr, ptr, [13 x ptr] }>, [15 x ptr] }, [9 x %struct.dvb_usb_device_description] }> }, { i32, i32, ptr, ptr, i32, i32, ptr, ptr, i32, [2 x { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> }], ptr, ptr, ptr, %struct.anon.134, ptr, i32, i32, i32, <{ { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, [9 x { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }] }> }, { i32, i32, ptr, ptr, i32, i32, ptr, ptr, i32, [2 x { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> }], ptr, ptr, ptr, %struct.anon.134, ptr, i32, i32, i32, <{ { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, { ptr, <{ ptr, ptr, [13 x ptr] }>, [15 x ptr] }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, %struct.dvb_usb_device_description, %struct.dvb_usb_device_description, %struct.dvb_usb_device_description, %struct.dvb_usb_device_description, %struct.dvb_usb_device_description, %struct.dvb_usb_device_description, %struct.dvb_usb_device_description }> }, { i32, i32, ptr, ptr, i32, i32, ptr, ptr, i32, [2 x { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> }], ptr, ptr, ptr, %struct.anon.134, ptr, i32, i32, i32, <{ { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, [11 x { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }] }> }, { i32, i32, ptr, ptr, i32, i32, ptr, ptr, i32, <{ { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> }, %struct.dvb_usb_adapter_properties }>, ptr, ptr, ptr, %struct.anon.134, ptr, i32, i32, i32, <{ { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, %struct.dvb_usb_device_description, %struct.dvb_usb_device_description }> }, { i32, i32, ptr, ptr, i32, i32, ptr, ptr, i32, <{ { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> }, %struct.dvb_usb_adapter_properties }>, ptr, ptr, ptr, %struct.anon.134, ptr, i32, i32, i32, <{ { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, [10 x { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }] }> }, { i32, i32, ptr, ptr, i32, i32, ptr, ptr, i32, <{ { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> }, %struct.dvb_usb_adapter_properties }>, ptr, ptr, ptr, %struct.anon.134, ptr, i32, i32, i32, <{ { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, [10 x { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }] }> }, { i32, i32, ptr, ptr, i32, i32, ptr, ptr, i32, <{ { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> }, %struct.dvb_usb_adapter_properties }>, ptr, ptr, ptr, %struct.anon.134, ptr, i32, i32, i32, <{ { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, { ptr, <{ ptr, ptr, ptr, [12 x ptr] }>, [15 x ptr] }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, [8 x %struct.dvb_usb_device_description] }> }, { i32, i32, ptr, ptr, i32, i32, ptr, ptr, i32, <{ { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> }, %struct.dvb_usb_adapter_properties }>, ptr, ptr, ptr, %struct.anon.134, ptr, i32, i32, i32, <{ { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, [9 x { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }] }> }, { i32, i32, ptr, ptr, i32, i32, ptr, ptr, i32, [2 x { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> }], ptr, ptr, ptr, %struct.anon.134, ptr, i32, i32, i32, <{ { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, [11 x { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }] }> }, { i32, i32, ptr, ptr, i32, i32, ptr, ptr, i32, <{ { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> }, %struct.dvb_usb_adapter_properties }>, ptr, ptr, ptr, %struct.anon.134, ptr, i32, i32, i32, <{ { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, [11 x { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }] }> }, { i32, i32, ptr, ptr, i32, i32, ptr, ptr, i32, <{ { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> }, %struct.dvb_usb_adapter_properties }>, ptr, ptr, ptr, %struct.anon.134, ptr, i32, i32, i32, <{ { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, [11 x { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }] }> }, { i32, i32, ptr, ptr, i32, i32, ptr, ptr, i32, <{ { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> }, %struct.dvb_usb_adapter_properties }>, ptr, ptr, ptr, %struct.anon.134, ptr, i32, i32, i32, <{ { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, [11 x { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }] }> }, { i32, i32, ptr, ptr, i32, i32, ptr, ptr, i32, <{ { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> }, %struct.dvb_usb_adapter_properties }>, ptr, ptr, ptr, %struct.anon.134, ptr, i32, i32, i32, <{ { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, [11 x { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }] }> }, { i32, i32, ptr, ptr, i32, i32, ptr, ptr, i32, <{ { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> }, %struct.dvb_usb_adapter_properties }>, ptr, ptr, ptr, %struct.anon.134, ptr, i32, i32, i32, <{ { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, [11 x { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }] }> }, { i32, i32, ptr, ptr, i32, i32, ptr, ptr, i32, [2 x { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> }], ptr, ptr, ptr, %struct.anon.134, ptr, i32, i32, i32, <{ { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, [11 x { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }] }> }, { i32, i32, ptr, ptr, i32, i32, ptr, ptr, i32, <{ { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> }, %struct.dvb_usb_adapter_properties }>, ptr, ptr, ptr, %struct.anon.134, ptr, i32, i32, i32, <{ { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, [10 x { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }] }> }, { i32, i32, ptr, ptr, i32, i32, ptr, ptr, i32, <{ { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> }, %struct.dvb_usb_adapter_properties }>, ptr, ptr, ptr, %struct.anon.134, ptr, i32, i32, i32, <{ { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, [11 x { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }] }> }, { i32, i32, ptr, ptr, i32, i32, ptr, ptr, i32, <{ { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> }, %struct.dvb_usb_adapter_properties }>, ptr, ptr, ptr, %struct.anon.134, ptr, i32, i32, i32, <{ { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, [11 x { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }] }> }, { i32, i32, ptr, ptr, i32, i32, ptr, ptr, i32, [2 x { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> }], ptr, ptr, ptr, %struct.anon.134, ptr, i32, i32, i32, <{ { ptr, <{ ptr, ptr, [13 x ptr] }>, [15 x ptr] }, [11 x { ptr, <{ ptr, ptr, [13 x ptr] }>, [15 x ptr] }] }> }, { i32, i32, ptr, ptr, i32, i32, ptr, ptr, i32, <{ { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> }, %struct.dvb_usb_adapter_properties }>, ptr, ptr, ptr, %struct.anon.134, ptr, i32, i32, i32, <{ { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, [11 x { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }] }> } }> <{ { i32, i32, ptr, ptr, i32, i32, ptr, ptr, i32, <{ { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> }, %struct.dvb_usb_adapter_properties }>, ptr, ptr, ptr, %struct.anon.134, ptr, i32, i32, i32, <{ { ptr, <{ ptr, ptr, [13 x ptr] }>, [15 x ptr] }, { ptr, <{ ptr, ptr, [13 x ptr] }>, [15 x ptr] }, { ptr, <{ ptr, ptr, [13 x ptr] }>, [15 x ptr] }, { ptr, <{ ptr, ptr, [13 x ptr] }>, [15 x ptr] }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, { ptr, <{ ptr, ptr, [13 x ptr] }>, [15 x ptr] }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, %struct.dvb_usb_device_description, %struct.dvb_usb_device_description, %struct.dvb_usb_device_description, %struct.dvb_usb_device_description }> } { i32 1, i32 0, ptr @dib0700_download_firmware, ptr @.str, i32 1, i32 292, ptr null, ptr null, i32 1, <{ { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> }, %struct.dvb_usb_adapter_properties }> <{ { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> } { i32 144, ptr null, i32 1, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 } { i32 3, i32 32, ptr @dib0700_streaming_ctrl, ptr @stk7700p_pid_filter_ctrl, ptr @stk7700p_pid_filter, ptr @stk7700p_frontend_attach, ptr @stk7700p_tuner_attach, { i32, i32, i32, { %struct.anon.132, [8 x i8] } } { i32 1, i32 4, i32 2, { %struct.anon.132, [8 x i8] } { %struct.anon.132 { i32 39480 }, [8 x i8] undef } }, i32 0 }, %struct.dvb_usb_adapter_fe_properties zeroinitializer, %struct.dvb_usb_adapter_fe_properties zeroinitializer }> }, %struct.dvb_usb_adapter_properties zeroinitializer }>, ptr null, ptr null, ptr @dib0700_identify_state, %struct.anon.134 { i32 0, %struct.dvb_rc_legacy zeroinitializer, %struct.dvb_rc { ptr @.str.1, i64 0, i64 524804, i32 0, ptr @dib0700_change_protocol, ptr null, ptr @dib0700_rc_query_old_firmware, i32 50, i8 0, i32 0 } }, ptr @dib0700_i2c_algo, i32 0, i32 0, i32 8, <{ { ptr, <{ ptr, ptr, [13 x ptr] }>, [15 x ptr] }, { ptr, <{ ptr, ptr, [13 x ptr] }>, [15 x ptr] }, { ptr, <{ ptr, ptr, [13 x ptr] }>, [15 x ptr] }, { ptr, <{ ptr, ptr, [13 x ptr] }>, [15 x ptr] }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, { ptr, <{ ptr, ptr, [13 x ptr] }>, [15 x ptr] }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, %struct.dvb_usb_device_description, %struct.dvb_usb_device_description, %struct.dvb_usb_device_description, %struct.dvb_usb_device_description }> <{ { ptr, <{ ptr, ptr, [13 x ptr] }>, [15 x ptr] } { ptr @.str.2, <{ ptr, ptr, [13 x ptr] }> <{ ptr @dib0700_usb_id_table, ptr getelementptr (i8, ptr @dib0700_usb_id_table, i64 24), [13 x ptr] zeroinitializer }>, [15 x ptr] zeroinitializer }, { ptr, <{ ptr, ptr, [13 x ptr] }>, [15 x ptr] } { ptr @.str.3, <{ ptr, ptr, [13 x ptr] }> <{ ptr getelementptr (i8, ptr @dib0700_usb_id_table, i64 96), ptr getelementptr (i8, ptr @dib0700_usb_id_table, i64 216), [13 x ptr] zeroinitializer }>, [15 x ptr] zeroinitializer }, { ptr, <{ ptr, ptr, [13 x ptr] }>, [15 x ptr] } { ptr @.str.4, <{ ptr, ptr, [13 x ptr] }> <{ ptr getelementptr (i8, ptr @dib0700_usb_id_table, i64 120), ptr getelementptr (i8, ptr @dib0700_usb_id_table, i64 240), [13 x ptr] zeroinitializer }>, [15 x ptr] zeroinitializer }, { ptr, <{ ptr, ptr, [13 x ptr] }>, [15 x ptr] } { ptr @.str.5, <{ ptr, ptr, [13 x ptr] }> <{ ptr getelementptr (i8, ptr @dib0700_usb_id_table, i64 144), ptr getelementptr (i8, ptr @dib0700_usb_id_table, i64 456), [13 x ptr] zeroinitializer }>, [15 x ptr] zeroinitializer }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] } { ptr @.str.6, <{ ptr, [14 x ptr] }> <{ ptr getelementptr (i8, ptr @dib0700_usb_id_table, i64 168), [14 x ptr] zeroinitializer }>, [15 x ptr] zeroinitializer }, { ptr, <{ ptr, ptr, [13 x ptr] }>, [15 x ptr] } { ptr @.str.7, <{ ptr, ptr, [13 x ptr] }> <{ ptr getelementptr (i8, ptr @dib0700_usb_id_table, i64 192), ptr getelementptr (i8, ptr @dib0700_usb_id_table, i64 816), [13 x ptr] zeroinitializer }>, [15 x ptr] zeroinitializer }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] } { ptr @.str.8, <{ ptr, [14 x ptr] }> <{ ptr getelementptr (i8, ptr @dib0700_usb_id_table, i64 480), [14 x ptr] zeroinitializer }>, [15 x ptr] zeroinitializer }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] } { ptr @.str.9, <{ ptr, [14 x ptr] }> <{ ptr getelementptr (i8, ptr @dib0700_usb_id_table, i64 504), [14 x ptr] zeroinitializer }>, [15 x ptr] zeroinitializer }, %struct.dvb_usb_device_description zeroinitializer, %struct.dvb_usb_device_description zeroinitializer, %struct.dvb_usb_device_description zeroinitializer, %struct.dvb_usb_device_description zeroinitializer }> }, { i32, i32, ptr, ptr, i32, i32, ptr, ptr, i32, [2 x { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> }], ptr, ptr, ptr, %struct.anon.134, ptr, i32, i32, i32, <{ { ptr, <{ ptr, ptr, [13 x ptr] }>, [15 x ptr] }, [11 x { ptr, <{ ptr, ptr, [13 x ptr] }>, [15 x ptr] }] }> } { i32 1, i32 0, ptr @dib0700_download_firmware, ptr @.str, i32 1, i32 292, ptr null, ptr null, i32 2, [2 x { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> }] [{ i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> } { i32 144, ptr null, i32 1, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 } { i32 0, i32 0, ptr @dib0700_streaming_ctrl, ptr null, ptr null, ptr @bristol_frontend_attach, ptr @bristol_tuner_attach, { i32, i32, i32, { %struct.anon.132, [8 x i8] } } { i32 1, i32 4, i32 2, { %struct.anon.132, [8 x i8] } { %struct.anon.132 { i32 39480 }, [8 x i8] undef } }, i32 0 }, %struct.dvb_usb_adapter_fe_properties zeroinitializer, %struct.dvb_usb_adapter_fe_properties zeroinitializer }> }, { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> } { i32 144, ptr null, i32 1, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 } { i32 0, i32 0, ptr @dib0700_streaming_ctrl, ptr null, ptr null, ptr @bristol_frontend_attach, ptr @bristol_tuner_attach, { i32, i32, i32, { %struct.anon.132, [8 x i8] } } { i32 1, i32 4, i32 3, { %struct.anon.132, [8 x i8] } { %struct.anon.132 { i32 39480 }, [8 x i8] undef } }, i32 0 }, %struct.dvb_usb_adapter_fe_properties zeroinitializer, %struct.dvb_usb_adapter_fe_properties zeroinitializer }> }], ptr null, ptr null, ptr @dib0700_identify_state, %struct.anon.134 { i32 0, %struct.dvb_rc_legacy zeroinitializer, %struct.dvb_rc { ptr @.str.1, i64 0, i64 524804, i32 0, ptr @dib0700_change_protocol, ptr null, ptr @dib0700_rc_query_old_firmware, i32 50, i8 0, i32 0 } }, ptr @dib0700_i2c_algo, i32 0, i32 0, i32 1, <{ { ptr, <{ ptr, ptr, [13 x ptr] }>, [15 x ptr] }, [11 x { ptr, <{ ptr, ptr, [13 x ptr] }>, [15 x ptr] }] }> <{ { ptr, <{ ptr, ptr, [13 x ptr] }>, [15 x ptr] } { ptr @.str.10, <{ ptr, ptr, [13 x ptr] }> <{ ptr getelementptr (i8, ptr @dib0700_usb_id_table, i64 48), ptr getelementptr (i8, ptr @dib0700_usb_id_table, i64 72), [13 x ptr] zeroinitializer }>, [15 x ptr] zeroinitializer }, [11 x { ptr, <{ ptr, ptr, [13 x ptr] }>, [15 x ptr] }] zeroinitializer }> }, { i32, i32, ptr, ptr, i32, i32, ptr, ptr, i32, [2 x { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> }], ptr, ptr, ptr, %struct.anon.134, ptr, i32, i32, i32, <{ { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, %struct.dvb_usb_device_description, %struct.dvb_usb_device_description, %struct.dvb_usb_device_description, %struct.dvb_usb_device_description, %struct.dvb_usb_device_description, %struct.dvb_usb_device_description, %struct.dvb_usb_device_description }> } { i32 1, i32 0, ptr @dib0700_download_firmware, ptr @.str, i32 1, i32 292, ptr null, ptr null, i32 2, [2 x { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> }] [{ i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> } { i32 144, ptr null, i32 1, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 } { i32 3, i32 32, ptr @dib0700_streaming_ctrl, ptr @stk70x0p_pid_filter_ctrl, ptr @stk70x0p_pid_filter, ptr @stk7700d_frontend_attach, ptr @stk7700d_tuner_attach, { i32, i32, i32, { %struct.anon.132, [8 x i8] } } { i32 1, i32 4, i32 2, { %struct.anon.132, [8 x i8] } { %struct.anon.132 { i32 39480 }, [8 x i8] undef } }, i32 0 }, %struct.dvb_usb_adapter_fe_properties zeroinitializer, %struct.dvb_usb_adapter_fe_properties zeroinitializer }> }, { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> } { i32 144, ptr null, i32 1, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 } { i32 3, i32 32, ptr @dib0700_streaming_ctrl, ptr @stk70x0p_pid_filter_ctrl, ptr @stk70x0p_pid_filter, ptr @stk7700d_frontend_attach, ptr @stk7700d_tuner_attach, { i32, i32, i32, { %struct.anon.132, [8 x i8] } } { i32 1, i32 4, i32 3, { %struct.anon.132, [8 x i8] } { %struct.anon.132 { i32 39480 }, [8 x i8] undef } }, i32 0 }, %struct.dvb_usb_adapter_fe_properties zeroinitializer, %struct.dvb_usb_adapter_fe_properties zeroinitializer }> }], ptr null, ptr null, ptr @dib0700_identify_state, %struct.anon.134 { i32 0, %struct.dvb_rc_legacy zeroinitializer, %struct.dvb_rc { ptr @.str.1, i64 0, i64 524804, i32 0, ptr @dib0700_change_protocol, ptr null, ptr @dib0700_rc_query_old_firmware, i32 50, i8 0, i32 0 } }, ptr @dib0700_i2c_algo, i32 0, i32 0, i32 5, <{ { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, %struct.dvb_usb_device_description, %struct.dvb_usb_device_description, %struct.dvb_usb_device_description, %struct.dvb_usb_device_description, %struct.dvb_usb_device_description, %struct.dvb_usb_device_description, %struct.dvb_usb_device_description }> <{ { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] } { ptr @.str.11, <{ ptr, [14 x ptr] }> <{ ptr getelementptr (i8, ptr @dib0700_usb_id_table, i64 264), [14 x ptr] zeroinitializer }>, [15 x ptr] zeroinitializer }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] } { ptr @.str.12, <{ ptr, [14 x ptr] }> <{ ptr getelementptr (i8, ptr @dib0700_usb_id_table, i64 288), [14 x ptr] zeroinitializer }>, [15 x ptr] zeroinitializer }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] } { ptr @.str.13, <{ ptr, [14 x ptr] }> <{ ptr getelementptr (i8, ptr @dib0700_usb_id_table, i64 312), [14 x ptr] zeroinitializer }>, [15 x ptr] zeroinitializer }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] } { ptr @.str.14, <{ ptr, [14 x ptr] }> <{ ptr getelementptr (i8, ptr @dib0700_usb_id_table, i64 336), [14 x ptr] zeroinitializer }>, [15 x ptr] zeroinitializer }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] } { ptr @.str.15, <{ ptr, [14 x ptr] }> <{ ptr getelementptr (i8, ptr @dib0700_usb_id_table, i64 1320), [14 x ptr] zeroinitializer }>, [15 x ptr] zeroinitializer }, %struct.dvb_usb_device_description zeroinitializer, %struct.dvb_usb_device_description zeroinitializer, %struct.dvb_usb_device_description zeroinitializer, %struct.dvb_usb_device_description zeroinitializer, %struct.dvb_usb_device_description zeroinitializer, %struct.dvb_usb_device_description zeroinitializer, %struct.dvb_usb_device_description zeroinitializer }> }, { i32, i32, ptr, ptr, i32, i32, ptr, ptr, i32, <{ { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> }, %struct.dvb_usb_adapter_properties }>, ptr, ptr, ptr, %struct.anon.134, ptr, i32, i32, i32, <{ { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, [9 x { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }] }> } { i32 1, i32 0, ptr @dib0700_download_firmware, ptr @.str, i32 1, i32 292, ptr null, ptr null, i32 1, <{ { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> }, %struct.dvb_usb_adapter_properties }> <{ { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> } { i32 144, ptr null, i32 1, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 } { i32 3, i32 32, ptr @dib0700_streaming_ctrl, ptr @stk70x0p_pid_filter_ctrl, ptr @stk70x0p_pid_filter, ptr @stk7700P2_frontend_attach, ptr @stk7700d_tuner_attach, { i32, i32, i32, { %struct.anon.132, [8 x i8] } } { i32 1, i32 4, i32 2, { %struct.anon.132, [8 x i8] } { %struct.anon.132 { i32 39480 }, [8 x i8] undef } }, i32 0 }, %struct.dvb_usb_adapter_fe_properties zeroinitializer, %struct.dvb_usb_adapter_fe_properties zeroinitializer }> }, %struct.dvb_usb_adapter_properties zeroinitializer }>, ptr null, ptr null, ptr @dib0700_identify_state, %struct.anon.134 { i32 0, %struct.dvb_rc_legacy zeroinitializer, %struct.dvb_rc { ptr @.str.1, i64 0, i64 524804, i32 0, ptr @dib0700_change_protocol, ptr @.str.16, ptr @dib0700_rc_query_old_firmware, i32 50, i8 0, i32 0 } }, ptr @dib0700_i2c_algo, i32 0, i32 0, i32 3, <{ { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, [9 x { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }] }> <{ { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] } { ptr @.str.17, <{ ptr, [14 x ptr] }> <{ ptr getelementptr (i8, ptr @dib0700_usb_id_table, i64 552), [14 x ptr] zeroinitializer }>, [15 x ptr] zeroinitializer }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] } { ptr @.str.18, <{ ptr, [14 x ptr] }> <{ ptr getelementptr (i8, ptr @dib0700_usb_id_table, i64 744), [14 x ptr] zeroinitializer }>, [15 x ptr] zeroinitializer }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] } { ptr @.str.19, <{ ptr, [14 x ptr] }> <{ ptr getelementptr (i8, ptr @dib0700_usb_id_table, i64 1008), [14 x ptr] zeroinitializer }>, [15 x ptr] zeroinitializer }, [9 x { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }] zeroinitializer }> }, { i32, i32, ptr, ptr, i32, i32, ptr, ptr, i32, <{ { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> }, %struct.dvb_usb_adapter_properties }>, ptr, ptr, ptr, %struct.anon.134, ptr, i32, i32, i32, [12 x { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }] } { i32 1, i32 0, ptr @dib0700_download_firmware, ptr @.str, i32 1, i32 292, ptr null, ptr null, i32 1, <{ { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> }, %struct.dvb_usb_adapter_properties }> <{ { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> } { i32 144, ptr null, i32 1, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 } { i32 3, i32 32, ptr @dib0700_streaming_ctrl, ptr @stk70x0p_pid_filter_ctrl, ptr @stk70x0p_pid_filter, ptr @stk7070p_frontend_attach, ptr @dib7070p_tuner_attach, { i32, i32, i32, { %struct.anon.132, [8 x i8] } } { i32 1, i32 4, i32 2, { %struct.anon.132, [8 x i8] } { %struct.anon.132 { i32 39480 }, [8 x i8] undef } }, i32 0 }, %struct.dvb_usb_adapter_fe_properties zeroinitializer, %struct.dvb_usb_adapter_fe_properties zeroinitializer }> }, %struct.dvb_usb_adapter_properties zeroinitializer }>, ptr null, ptr null, ptr @dib0700_identify_state, %struct.anon.134 { i32 0, %struct.dvb_rc_legacy zeroinitializer, %struct.dvb_rc { ptr @.str.1, i64 0, i64 524804, i32 0, ptr @dib0700_change_protocol, ptr @.str.16, ptr @dib0700_rc_query_old_firmware, i32 50, i8 0, i32 0 } }, ptr @dib0700_i2c_algo, i32 0, i32 0, i32 12, [12 x { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }] [{ ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] } { ptr @.str.20, <{ ptr, [14 x ptr] }> <{ ptr getelementptr (i8, ptr @dib0700_usb_id_table, i64 360), [14 x ptr] zeroinitializer }>, [15 x ptr] zeroinitializer }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] } { ptr @.str.21, <{ ptr, [14 x ptr] }> <{ ptr getelementptr (i8, ptr @dib0700_usb_id_table, i64 384), [14 x ptr] zeroinitializer }>, [15 x ptr] zeroinitializer }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] } { ptr @.str.22, <{ ptr, [14 x ptr] }> <{ ptr getelementptr (i8, ptr @dib0700_usb_id_table, i64 528), [14 x ptr] zeroinitializer }>, [15 x ptr] zeroinitializer }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] } { ptr @.str.23, <{ ptr, [14 x ptr] }> <{ ptr getelementptr (i8, ptr @dib0700_usb_id_table, i64 576), [14 x ptr] zeroinitializer }>, [15 x ptr] zeroinitializer }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] } { ptr @.str.3, <{ ptr, [14 x ptr] }> <{ ptr getelementptr (i8, ptr @dib0700_usb_id_table, i64 600), [14 x ptr] zeroinitializer }>, [15 x ptr] zeroinitializer }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] } { ptr @.str.24, <{ ptr, [14 x ptr] }> <{ ptr getelementptr (i8, ptr @dib0700_usb_id_table, i64 624), [14 x ptr] zeroinitializer }>, [15 x ptr] zeroinitializer }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] } { ptr @.str.25, <{ ptr, [14 x ptr] }> <{ ptr getelementptr (i8, ptr @dib0700_usb_id_table, i64 696), [14 x ptr] zeroinitializer }>, [15 x ptr] zeroinitializer }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] } { ptr @.str.26, <{ ptr, [14 x ptr] }> <{ ptr getelementptr (i8, ptr @dib0700_usb_id_table, i64 720), [14 x ptr] zeroinitializer }>, [15 x ptr] zeroinitializer }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] } { ptr @.str.27, <{ ptr, [14 x ptr] }> <{ ptr getelementptr (i8, ptr @dib0700_usb_id_table, i64 1176), [14 x ptr] zeroinitializer }>, [15 x ptr] zeroinitializer }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] } { ptr @.str.28, <{ ptr, [14 x ptr] }> <{ ptr getelementptr (i8, ptr @dib0700_usb_id_table, i64 1080), [14 x ptr] zeroinitializer }>, [15 x ptr] zeroinitializer }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] } { ptr @.str.29, <{ ptr, [14 x ptr] }> <{ ptr getelementptr (i8, ptr @dib0700_usb_id_table, i64 1200), [14 x ptr] zeroinitializer }>, [15 x ptr] zeroinitializer }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] } { ptr @.str.30, <{ ptr, [14 x ptr] }> <{ ptr getelementptr (i8, ptr @dib0700_usb_id_table, i64 1920), [14 x ptr] zeroinitializer }>, [15 x ptr] zeroinitializer }] }, { i32, i32, ptr, ptr, i32, i32, ptr, ptr, i32, <{ { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> }, %struct.dvb_usb_adapter_properties }>, ptr, ptr, ptr, %struct.anon.134, ptr, i32, i32, i32, <{ { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, { ptr, <{ ptr, ptr, [13 x ptr] }>, [15 x ptr] }, { ptr, <{ ptr, ptr, [13 x ptr] }>, [15 x ptr] }, [9 x %struct.dvb_usb_device_description] }> } { i32 1, i32 0, ptr @dib0700_download_firmware, ptr @.str, i32 1, i32 292, ptr null, ptr null, i32 1, <{ { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> }, %struct.dvb_usb_adapter_properties }> <{ { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> } { i32 144, ptr null, i32 1, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 } { i32 3, i32 32, ptr @dib0700_streaming_ctrl, ptr @stk70x0p_pid_filter_ctrl, ptr @stk70x0p_pid_filter, ptr @stk7070p_frontend_attach, ptr @dib7070p_tuner_attach, { i32, i32, i32, { %struct.anon.132, [8 x i8] } } { i32 1, i32 4, i32 2, { %struct.anon.132, [8 x i8] } { %struct.anon.132 { i32 39480 }, [8 x i8] undef } }, i32 0 }, %struct.dvb_usb_adapter_fe_properties zeroinitializer, %struct.dvb_usb_adapter_fe_properties zeroinitializer }> }, %struct.dvb_usb_adapter_properties zeroinitializer }>, ptr null, ptr null, ptr @dib0700_identify_state, %struct.anon.134 { i32 0, %struct.dvb_rc_legacy zeroinitializer, %struct.dvb_rc { ptr @.str.1, i64 0, i64 524804, i32 0, ptr @dib0700_change_protocol, ptr @.str.16, ptr @dib0700_rc_query_old_firmware, i32 50, i8 0, i32 0 } }, ptr @dib0700_i2c_algo, i32 0, i32 0, i32 3, <{ { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, { ptr, <{ ptr, ptr, [13 x ptr] }>, [15 x ptr] }, { ptr, <{ ptr, ptr, [13 x ptr] }>, [15 x ptr] }, [9 x %struct.dvb_usb_device_description] }> <{ { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] } { ptr @.str.31, <{ ptr, [14 x ptr] }> <{ ptr getelementptr (i8, ptr @dib0700_usb_id_table, i64 1344), [14 x ptr] zeroinitializer }>, [15 x ptr] zeroinitializer }, { ptr, <{ ptr, ptr, [13 x ptr] }>, [15 x ptr] } { ptr @.str.32, <{ ptr, ptr, [13 x ptr] }> <{ ptr getelementptr (i8, ptr @dib0700_usb_id_table, i64 1368), ptr getelementptr (i8, ptr @dib0700_usb_id_table, i64 1560), [13 x ptr] zeroinitializer }>, [15 x ptr] zeroinitializer }, { ptr, <{ ptr, ptr, [13 x ptr] }>, [15 x ptr] } { ptr @.str.33, <{ ptr, ptr, [13 x ptr] }> <{ ptr getelementptr (i8, ptr @dib0700_usb_id_table, i64 1392), ptr getelementptr (i8, ptr @dib0700_usb_id_table, i64 1584), [13 x ptr] zeroinitializer }>, [15 x ptr] zeroinitializer }, [9 x %struct.dvb_usb_device_description] zeroinitializer }> }, { i32, i32, ptr, ptr, i32, i32, ptr, ptr, i32, [2 x { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> }], ptr, ptr, ptr, %struct.anon.134, ptr, i32, i32, i32, <{ { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, [9 x { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }] }> } { i32 1, i32 0, ptr @dib0700_download_firmware, ptr @.str, i32 1, i32 292, ptr null, ptr null, i32 2, [2 x { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> }] [{ i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> } { i32 144, ptr null, i32 1, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 } { i32 3, i32 32, ptr @dib0700_streaming_ctrl, ptr @stk70x0p_pid_filter_ctrl, ptr @stk70x0p_pid_filter, ptr @novatd_frontend_attach, ptr @dib7070p_tuner_attach, { i32, i32, i32, { %struct.anon.132, [8 x i8] } } { i32 1, i32 4, i32 2, { %struct.anon.132, [8 x i8] } { %struct.anon.132 { i32 39480 }, [8 x i8] undef } }, i32 0 }, %struct.dvb_usb_adapter_fe_properties zeroinitializer, %struct.dvb_usb_adapter_fe_properties zeroinitializer }> }, { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> } { i32 144, ptr null, i32 1, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 } { i32 3, i32 32, ptr @dib0700_streaming_ctrl, ptr @stk70x0p_pid_filter_ctrl, ptr @stk70x0p_pid_filter, ptr @novatd_frontend_attach, ptr @dib7070p_tuner_attach, { i32, i32, i32, { %struct.anon.132, [8 x i8] } } { i32 1, i32 4, i32 3, { %struct.anon.132, [8 x i8] } { %struct.anon.132 { i32 39480 }, [8 x i8] undef } }, i32 0 }, %struct.dvb_usb_adapter_fe_properties zeroinitializer, %struct.dvb_usb_adapter_fe_properties zeroinitializer }> }], ptr null, ptr null, ptr @dib0700_identify_state, %struct.anon.134 { i32 0, %struct.dvb_rc_legacy zeroinitializer, %struct.dvb_rc { ptr @.str.1, i64 0, i64 524804, i32 0, ptr @dib0700_change_protocol, ptr @.str.16, ptr @dib0700_rc_query_old_firmware, i32 50, i8 0, i32 0 } }, ptr @dib0700_i2c_algo, i32 0, i32 0, i32 3, <{ { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, [9 x { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }] }> <{ { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] } { ptr @.str.34, <{ ptr, [14 x ptr] }> <{ ptr getelementptr (i8, ptr @dib0700_usb_id_table, i64 840), [14 x ptr] zeroinitializer }>, [15 x ptr] zeroinitializer }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] } { ptr @.str.35, <{ ptr, [14 x ptr] }> <{ ptr getelementptr (i8, ptr @dib0700_usb_id_table, i64 1944), [14 x ptr] zeroinitializer }>, [15 x ptr] zeroinitializer }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] } { ptr @.str.36, <{ ptr, [14 x ptr] }> <{ ptr getelementptr (i8, ptr @dib0700_usb_id_table, i64 1968), [14 x ptr] zeroinitializer }>, [15 x ptr] zeroinitializer }, [9 x { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }] zeroinitializer }> }, { i32, i32, ptr, ptr, i32, i32, ptr, ptr, i32, [2 x { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> }], ptr, ptr, ptr, %struct.anon.134, ptr, i32, i32, i32, <{ { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, { ptr, <{ ptr, ptr, [13 x ptr] }>, [15 x ptr] }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, %struct.dvb_usb_device_description, %struct.dvb_usb_device_description, %struct.dvb_usb_device_description, %struct.dvb_usb_device_description, %struct.dvb_usb_device_description, %struct.dvb_usb_device_description, %struct.dvb_usb_device_description }> } { i32 1, i32 0, ptr @dib0700_download_firmware, ptr @.str, i32 1, i32 292, ptr null, ptr null, i32 2, [2 x { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> }] [{ i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> } { i32 144, ptr null, i32 1, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 } { i32 3, i32 32, ptr @dib0700_streaming_ctrl, ptr @stk70x0p_pid_filter_ctrl, ptr @stk70x0p_pid_filter, ptr @stk7070pd_frontend_attach0, ptr @dib7070p_tuner_attach, { i32, i32, i32, { %struct.anon.132, [8 x i8] } } { i32 1, i32 4, i32 2, { %struct.anon.132, [8 x i8] } { %struct.anon.132 { i32 39480 }, [8 x i8] undef } }, i32 0 }, %struct.dvb_usb_adapter_fe_properties zeroinitializer, %struct.dvb_usb_adapter_fe_properties zeroinitializer }> }, { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> } { i32 144, ptr null, i32 1, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 } { i32 3, i32 32, ptr @dib0700_streaming_ctrl, ptr @stk70x0p_pid_filter_ctrl, ptr @stk70x0p_pid_filter, ptr @stk7070pd_frontend_attach1, ptr @dib7070p_tuner_attach, { i32, i32, i32, { %struct.anon.132, [8 x i8] } } { i32 1, i32 4, i32 3, { %struct.anon.132, [8 x i8] } { %struct.anon.132 { i32 39480 }, [8 x i8] undef } }, i32 0 }, %struct.dvb_usb_adapter_fe_properties zeroinitializer, %struct.dvb_usb_adapter_fe_properties zeroinitializer }> }], ptr null, ptr null, ptr @dib0700_identify_state, %struct.anon.134 { i32 0, %struct.dvb_rc_legacy zeroinitializer, %struct.dvb_rc { ptr @.str.1, i64 0, i64 524804, i32 0, ptr @dib0700_change_protocol, ptr @.str.16, ptr @dib0700_rc_query_old_firmware, i32 50, i8 0, i32 0 } }, ptr @dib0700_i2c_algo, i32 0, i32 0, i32 5, <{ { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, { ptr, <{ ptr, ptr, [13 x ptr] }>, [15 x ptr] }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, %struct.dvb_usb_device_description, %struct.dvb_usb_device_description, %struct.dvb_usb_device_description, %struct.dvb_usb_device_description, %struct.dvb_usb_device_description, %struct.dvb_usb_device_description, %struct.dvb_usb_device_description }> <{ { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] } { ptr @.str.37, <{ ptr, [14 x ptr] }> <{ ptr getelementptr (i8, ptr @dib0700_usb_id_table, i64 408), [14 x ptr] zeroinitializer }>, [15 x ptr] zeroinitializer }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] } { ptr @.str.38, <{ ptr, [14 x ptr] }> <{ ptr getelementptr (i8, ptr @dib0700_usb_id_table, i64 432), [14 x ptr] zeroinitializer }>, [15 x ptr] zeroinitializer }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] } { ptr @.str.39, <{ ptr, [14 x ptr] }> <{ ptr getelementptr (i8, ptr @dib0700_usb_id_table, i64 864), [14 x ptr] zeroinitializer }>, [15 x ptr] zeroinitializer }, { ptr, <{ ptr, ptr, [13 x ptr] }>, [15 x ptr] } { ptr @.str.40, <{ ptr, ptr, [13 x ptr] }> <{ ptr getelementptr (i8, ptr @dib0700_usb_id_table, i64 1032), ptr getelementptr (i8, ptr @dib0700_usb_id_table, i64 1272), [13 x ptr] zeroinitializer }>, [15 x ptr] zeroinitializer }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] } { ptr @.str.41, <{ ptr, [14 x ptr] }> <{ ptr getelementptr (i8, ptr @dib0700_usb_id_table, i64 1056), [14 x ptr] zeroinitializer }>, [15 x ptr] zeroinitializer }, %struct.dvb_usb_device_description zeroinitializer, %struct.dvb_usb_device_description zeroinitializer, %struct.dvb_usb_device_description zeroinitializer, %struct.dvb_usb_device_description zeroinitializer, %struct.dvb_usb_device_description zeroinitializer, %struct.dvb_usb_device_description zeroinitializer, %struct.dvb_usb_device_description zeroinitializer }> }, { i32, i32, ptr, ptr, i32, i32, ptr, ptr, i32, [2 x { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> }], ptr, ptr, ptr, %struct.anon.134, ptr, i32, i32, i32, <{ { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, [11 x { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }] }> } { i32 1, i32 0, ptr @dib0700_download_firmware, ptr @.str, i32 1, i32 292, ptr null, ptr null, i32 2, [2 x { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> }] [{ i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> } { i32 144, ptr null, i32 1, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 } { i32 3, i32 32, ptr @dib0700_streaming_ctrl, ptr @stk70x0p_pid_filter_ctrl, ptr @stk70x0p_pid_filter, ptr @stk7070pd_frontend_attach0, ptr @dib7070p_tuner_attach, { i32, i32, i32, { %struct.anon.132, [8 x i8] } } { i32 1, i32 4, i32 2, { %struct.anon.132, [8 x i8] } { %struct.anon.132 { i32 39480 }, [8 x i8] undef } }, i32 0 }, %struct.dvb_usb_adapter_fe_properties zeroinitializer, %struct.dvb_usb_adapter_fe_properties zeroinitializer }> }, { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> } { i32 144, ptr null, i32 1, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 } { i32 3, i32 32, ptr @dib0700_streaming_ctrl, ptr @stk70x0p_pid_filter_ctrl, ptr @stk70x0p_pid_filter, ptr @stk7070pd_frontend_attach1, ptr @dib7070p_tuner_attach, { i32, i32, i32, { %struct.anon.132, [8 x i8] } } { i32 1, i32 4, i32 3, { %struct.anon.132, [8 x i8] } { %struct.anon.132 { i32 39480 }, [8 x i8] undef } }, i32 0 }, %struct.dvb_usb_adapter_fe_properties zeroinitializer, %struct.dvb_usb_adapter_fe_properties zeroinitializer }> }], ptr null, ptr null, ptr @dib0700_identify_state, %struct.anon.134 { i32 0, %struct.dvb_rc_legacy zeroinitializer, %struct.dvb_rc { ptr @.str.42, i64 0, i64 524804, i32 0, ptr @dib0700_change_protocol, ptr @.str.16, ptr @dib0700_rc_query_old_firmware, i32 50, i8 0, i32 0 } }, ptr @dib0700_i2c_algo, i32 0, i32 0, i32 1, <{ { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, [11 x { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }] }> <{ { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] } { ptr @.str.43, <{ ptr, [14 x ptr] }> <{ ptr getelementptr (i8, ptr @dib0700_usb_id_table, i64 1632), [14 x ptr] zeroinitializer }>, [15 x ptr] zeroinitializer }, [11 x { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }] zeroinitializer }> }, { i32, i32, ptr, ptr, i32, i32, ptr, ptr, i32, <{ { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> }, %struct.dvb_usb_adapter_properties }>, ptr, ptr, ptr, %struct.anon.134, ptr, i32, i32, i32, <{ { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, %struct.dvb_usb_device_description, %struct.dvb_usb_device_description }> } { i32 1, i32 0, ptr @dib0700_download_firmware, ptr @.str, i32 1, i32 292, ptr null, ptr null, i32 1, <{ { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> }, %struct.dvb_usb_adapter_properties }> <{ { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> } { i32 144, ptr null, i32 1, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 } { i32 3, i32 32, ptr @dib0700_streaming_ctrl, ptr @stk70x0p_pid_filter_ctrl, ptr @stk70x0p_pid_filter, ptr @stk7700ph_frontend_attach, ptr @stk7700ph_tuner_attach, { i32, i32, i32, { %struct.anon.132, [8 x i8] } } { i32 1, i32 4, i32 2, { %struct.anon.132, [8 x i8] } { %struct.anon.132 { i32 39480 }, [8 x i8] undef } }, i32 0 }, %struct.dvb_usb_adapter_fe_properties zeroinitializer, %struct.dvb_usb_adapter_fe_properties zeroinitializer }> }, %struct.dvb_usb_adapter_properties zeroinitializer }>, ptr null, ptr null, ptr @dib0700_identify_state, %struct.anon.134 { i32 0, %struct.dvb_rc_legacy zeroinitializer, %struct.dvb_rc { ptr @.str.1, i64 0, i64 524804, i32 0, ptr @dib0700_change_protocol, ptr @.str.16, ptr @dib0700_rc_query_old_firmware, i32 50, i8 0, i32 0 } }, ptr @dib0700_i2c_algo, i32 0, i32 0, i32 10, <{ { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, %struct.dvb_usb_device_description, %struct.dvb_usb_device_description }> <{ { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] } { ptr @.str.44, <{ ptr, [14 x ptr] }> <{ ptr getelementptr (i8, ptr @dib0700_usb_id_table, i64 648), [14 x ptr] zeroinitializer }>, [15 x ptr] zeroinitializer }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] } { ptr @.str.45, <{ ptr, [14 x ptr] }> <{ ptr getelementptr (i8, ptr @dib0700_usb_id_table, i64 672), [14 x ptr] zeroinitializer }>, [15 x ptr] zeroinitializer }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] } { ptr @.str.46, <{ ptr, [14 x ptr] }> <{ ptr getelementptr (i8, ptr @dib0700_usb_id_table, i64 768), [14 x ptr] zeroinitializer }>, [15 x ptr] zeroinitializer }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] } { ptr @.str.47, <{ ptr, [14 x ptr] }> <{ ptr getelementptr (i8, ptr @dib0700_usb_id_table, i64 888), [14 x ptr] zeroinitializer }>, [15 x ptr] zeroinitializer }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] } { ptr @.str.48, <{ ptr, [14 x ptr] }> <{ ptr getelementptr (i8, ptr @dib0700_usb_id_table, i64 912), [14 x ptr] zeroinitializer }>, [15 x ptr] zeroinitializer }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] } { ptr @.str.49, <{ ptr, [14 x ptr] }> <{ ptr getelementptr (i8, ptr @dib0700_usb_id_table, i64 936), [14 x ptr] zeroinitializer }>, [15 x ptr] zeroinitializer }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] } { ptr @.str.50, <{ ptr, [14 x ptr] }> <{ ptr getelementptr (i8, ptr @dib0700_usb_id_table, i64 1152), [14 x ptr] zeroinitializer }>, [15 x ptr] zeroinitializer }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] } { ptr @.str.51, <{ ptr, [14 x ptr] }> <{ ptr getelementptr (i8, ptr @dib0700_usb_id_table, i64 1224), [14 x ptr] zeroinitializer }>, [15 x ptr] zeroinitializer }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] } { ptr @.str.52, <{ ptr, [14 x ptr] }> <{ ptr getelementptr (i8, ptr @dib0700_usb_id_table, i64 1296), [14 x ptr] zeroinitializer }>, [15 x ptr] zeroinitializer }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] } { ptr @.str.53, <{ ptr, [14 x ptr] }> <{ ptr getelementptr (i8, ptr @dib0700_usb_id_table, i64 2040), [14 x ptr] zeroinitializer }>, [15 x ptr] zeroinitializer }, %struct.dvb_usb_device_description zeroinitializer, %struct.dvb_usb_device_description zeroinitializer }> }, { i32, i32, ptr, ptr, i32, i32, ptr, ptr, i32, <{ { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> }, %struct.dvb_usb_adapter_properties }>, ptr, ptr, ptr, %struct.anon.134, ptr, i32, i32, i32, <{ { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, [10 x { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }] }> } { i32 1, i32 0, ptr @dib0700_download_firmware, ptr @.str, i32 1, i32 292, ptr null, ptr null, i32 1, <{ { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> }, %struct.dvb_usb_adapter_properties }> <{ { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> } { i32 144, ptr null, i32 1, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 } { i32 0, i32 0, ptr @dib0700_streaming_ctrl, ptr null, ptr null, ptr @s5h1411_frontend_attach, ptr @xc5000_tuner_attach, { i32, i32, i32, { %struct.anon.132, [8 x i8] } } { i32 1, i32 4, i32 2, { %struct.anon.132, [8 x i8] } { %struct.anon.132 { i32 39480 }, [8 x i8] undef } }, i32 0 }, %struct.dvb_usb_adapter_fe_properties zeroinitializer, %struct.dvb_usb_adapter_fe_properties zeroinitializer }> }, %struct.dvb_usb_adapter_properties zeroinitializer }>, ptr null, ptr null, ptr @dib0700_identify_state, %struct.anon.134 { i32 0, %struct.dvb_rc_legacy zeroinitializer, %struct.dvb_rc { ptr @.str.1, i64 0, i64 524804, i32 0, ptr @dib0700_change_protocol, ptr @.str.16, ptr @dib0700_rc_query_old_firmware, i32 50, i8 0, i32 0 } }, ptr @dib0700_i2c_algo, i32 0, i32 0, i32 2, <{ { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, [10 x { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }] }> <{ { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] } { ptr @.str.54, <{ ptr, [14 x ptr] }> <{ ptr getelementptr (i8, ptr @dib0700_usb_id_table, i64 960), [14 x ptr] zeroinitializer }>, [15 x ptr] zeroinitializer }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] } { ptr @.str.55, <{ ptr, [14 x ptr] }> <{ ptr getelementptr (i8, ptr @dib0700_usb_id_table, i64 984), [14 x ptr] zeroinitializer }>, [15 x ptr] zeroinitializer }, [10 x { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }] zeroinitializer }> }, { i32, i32, ptr, ptr, i32, i32, ptr, ptr, i32, <{ { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> }, %struct.dvb_usb_adapter_properties }>, ptr, ptr, ptr, %struct.anon.134, ptr, i32, i32, i32, <{ { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, [10 x { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }] }> } { i32 1, i32 0, ptr @dib0700_download_firmware, ptr @.str, i32 1, i32 292, ptr null, ptr null, i32 1, <{ { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> }, %struct.dvb_usb_adapter_properties }> <{ { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> } { i32 144, ptr null, i32 1, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 } { i32 0, i32 0, ptr @dib0700_streaming_ctrl, ptr null, ptr null, ptr @lgdt3305_frontend_attach, ptr @mxl5007t_tuner_attach, { i32, i32, i32, { %struct.anon.132, [8 x i8] } } { i32 1, i32 4, i32 2, { %struct.anon.132, [8 x i8] } { %struct.anon.132 { i32 39480 }, [8 x i8] undef } }, i32 0 }, %struct.dvb_usb_adapter_fe_properties zeroinitializer, %struct.dvb_usb_adapter_fe_properties zeroinitializer }> }, %struct.dvb_usb_adapter_properties zeroinitializer }>, ptr null, ptr null, ptr @dib0700_identify_state, %struct.anon.134 zeroinitializer, ptr @dib0700_i2c_algo, i32 0, i32 0, i32 2, <{ { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, [10 x { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }] }> <{ { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] } { ptr @.str.56, <{ ptr, [14 x ptr] }> <{ ptr getelementptr (i8, ptr @dib0700_usb_id_table, i64 1104), [14 x ptr] zeroinitializer }>, [15 x ptr] zeroinitializer }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] } { ptr @.str.57, <{ ptr, [14 x ptr] }> <{ ptr getelementptr (i8, ptr @dib0700_usb_id_table, i64 1128), [14 x ptr] zeroinitializer }>, [15 x ptr] zeroinitializer }, [10 x { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }] zeroinitializer }> }, { i32, i32, ptr, ptr, i32, i32, ptr, ptr, i32, <{ { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> }, %struct.dvb_usb_adapter_properties }>, ptr, ptr, ptr, %struct.anon.134, ptr, i32, i32, i32, <{ { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, { ptr, <{ ptr, ptr, ptr, [12 x ptr] }>, [15 x ptr] }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, [8 x %struct.dvb_usb_device_description] }> } { i32 1, i32 0, ptr @dib0700_download_firmware, ptr @.str, i32 1, i32 292, ptr null, ptr null, i32 1, <{ { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> }, %struct.dvb_usb_adapter_properties }> <{ { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> } { i32 144, ptr null, i32 1, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 } { i32 3, i32 32, ptr @dib0700_streaming_ctrl, ptr @stk70x0p_pid_filter_ctrl, ptr @stk70x0p_pid_filter, ptr @stk7770p_frontend_attach, ptr @dib7770p_tuner_attach, { i32, i32, i32, { %struct.anon.132, [8 x i8] } } { i32 1, i32 4, i32 2, { %struct.anon.132, [8 x i8] } { %struct.anon.132 { i32 39480 }, [8 x i8] undef } }, i32 0 }, %struct.dvb_usb_adapter_fe_properties zeroinitializer, %struct.dvb_usb_adapter_fe_properties zeroinitializer }> }, %struct.dvb_usb_adapter_properties zeroinitializer }>, ptr null, ptr null, ptr @dib0700_identify_state, %struct.anon.134 { i32 0, %struct.dvb_rc_legacy zeroinitializer, %struct.dvb_rc { ptr @.str.1, i64 0, i64 524804, i32 0, ptr @dib0700_change_protocol, ptr @.str.16, ptr @dib0700_rc_query_old_firmware, i32 50, i8 0, i32 0 } }, ptr @dib0700_i2c_algo, i32 0, i32 0, i32 4, <{ { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, { ptr, <{ ptr, ptr, ptr, [12 x ptr] }>, [15 x ptr] }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, [8 x %struct.dvb_usb_device_description] }> <{ { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] } { ptr @.str.58, <{ ptr, [14 x ptr] }> <{ ptr getelementptr (i8, ptr @dib0700_usb_id_table, i64 1416), [14 x ptr] zeroinitializer }>, [15 x ptr] zeroinitializer }, { ptr, <{ ptr, ptr, ptr, [12 x ptr] }>, [15 x ptr] } { ptr @.str.59, <{ ptr, ptr, ptr, [12 x ptr] }> <{ ptr getelementptr (i8, ptr @dib0700_usb_id_table, i64 792), ptr getelementptr (i8, ptr @dib0700_usb_id_table, i64 1248), ptr getelementptr (i8, ptr @dib0700_usb_id_table, i64 1440), [12 x ptr] zeroinitializer }>, [15 x ptr] zeroinitializer }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] } { ptr @.str.60, <{ ptr, [14 x ptr] }> <{ ptr getelementptr (i8, ptr @dib0700_usb_id_table, i64 1776), [14 x ptr] zeroinitializer }>, [15 x ptr] zeroinitializer }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] } { ptr @.str.61, <{ ptr, [14 x ptr] }> <{ ptr getelementptr (i8, ptr @dib0700_usb_id_table, i64 1800), [14 x ptr] zeroinitializer }>, [15 x ptr] zeroinitializer }, [8 x %struct.dvb_usb_device_description] zeroinitializer }> }, { i32, i32, ptr, ptr, i32, i32, ptr, ptr, i32, <{ { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> }, %struct.dvb_usb_adapter_properties }>, ptr, ptr, ptr, %struct.anon.134, ptr, i32, i32, i32, <{ { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, [9 x { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }] }> } { i32 1, i32 0, ptr @dib0700_download_firmware, ptr @.str, i32 1, i32 292, ptr null, ptr null, i32 1, <{ { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> }, %struct.dvb_usb_adapter_properties }> <{ { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> } { i32 144, ptr null, i32 1, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 } { i32 3, i32 32, ptr @dib0700_streaming_ctrl, ptr @stk80xx_pid_filter_ctrl, ptr @stk80xx_pid_filter, ptr @stk807x_frontend_attach, ptr @dib807x_tuner_attach, { i32, i32, i32, { %struct.anon.132, [8 x i8] } } { i32 1, i32 4, i32 2, { %struct.anon.132, [8 x i8] } { %struct.anon.132 { i32 39480 }, [8 x i8] undef } }, i32 0 }, %struct.dvb_usb_adapter_fe_properties zeroinitializer, %struct.dvb_usb_adapter_fe_properties zeroinitializer }> }, %struct.dvb_usb_adapter_properties zeroinitializer }>, ptr null, ptr null, ptr @dib0700_identify_state, %struct.anon.134 { i32 0, %struct.dvb_rc_legacy zeroinitializer, %struct.dvb_rc { ptr @.str.42, i64 0, i64 524804, i32 0, ptr @dib0700_change_protocol, ptr @.str.16, ptr @dib0700_rc_query_old_firmware, i32 50, i8 0, i32 0 } }, ptr @dib0700_i2c_algo, i32 0, i32 0, i32 3, <{ { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, [9 x { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }] }> <{ { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] } { ptr @.str.62, <{ ptr, [14 x ptr] }> <{ ptr getelementptr (i8, ptr @dib0700_usb_id_table, i64 1488), [14 x ptr] zeroinitializer }>, [15 x ptr] zeroinitializer }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] } { ptr @.str.63, <{ ptr, [14 x ptr] }> <{ ptr getelementptr (i8, ptr @dib0700_usb_id_table, i64 1512), [14 x ptr] zeroinitializer }>, [15 x ptr] zeroinitializer }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] } { ptr @.str.64, <{ ptr, [14 x ptr] }> <{ ptr getelementptr (i8, ptr @dib0700_usb_id_table, i64 1536), [14 x ptr] zeroinitializer }>, [15 x ptr] zeroinitializer }, [9 x { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }] zeroinitializer }> }, { i32, i32, ptr, ptr, i32, i32, ptr, ptr, i32, [2 x { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> }], ptr, ptr, ptr, %struct.anon.134, ptr, i32, i32, i32, <{ { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, [11 x { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }] }> } { i32 1, i32 0, ptr @dib0700_download_firmware, ptr @.str, i32 1, i32 292, ptr null, ptr null, i32 2, [2 x { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> }] [{ i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> } { i32 144, ptr null, i32 1, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 } { i32 3, i32 32, ptr @dib0700_streaming_ctrl, ptr @stk80xx_pid_filter_ctrl, ptr @stk80xx_pid_filter, ptr @stk807xpvr_frontend_attach0, ptr @dib807x_tuner_attach, { i32, i32, i32, { %struct.anon.132, [8 x i8] } } { i32 1, i32 4, i32 2, { %struct.anon.132, [8 x i8] } { %struct.anon.132 { i32 39480 }, [8 x i8] undef } }, i32 0 }, %struct.dvb_usb_adapter_fe_properties zeroinitializer, %struct.dvb_usb_adapter_fe_properties zeroinitializer }> }, { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> } { i32 144, ptr null, i32 1, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 } { i32 3, i32 32, ptr @dib0700_streaming_ctrl, ptr @stk80xx_pid_filter_ctrl, ptr @stk80xx_pid_filter, ptr @stk807xpvr_frontend_attach1, ptr @dib807x_tuner_attach, { i32, i32, i32, { %struct.anon.132, [8 x i8] } } { i32 1, i32 4, i32 3, { %struct.anon.132, [8 x i8] } { %struct.anon.132 { i32 39480 }, [8 x i8] undef } }, i32 0 }, %struct.dvb_usb_adapter_fe_properties zeroinitializer, %struct.dvb_usb_adapter_fe_properties zeroinitializer }> }], ptr null, ptr null, ptr @dib0700_identify_state, %struct.anon.134 { i32 0, %struct.dvb_rc_legacy zeroinitializer, %struct.dvb_rc { ptr @.str.1, i64 0, i64 524804, i32 0, ptr @dib0700_change_protocol, ptr @.str.16, ptr @dib0700_rc_query_old_firmware, i32 50, i8 0, i32 0 } }, ptr @dib0700_i2c_algo, i32 0, i32 0, i32 1, <{ { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, [11 x { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }] }> <{ { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] } { ptr @.str.65, <{ ptr, [14 x ptr] }> <{ ptr getelementptr (i8, ptr @dib0700_usb_id_table, i64 1464), [14 x ptr] zeroinitializer }>, [15 x ptr] zeroinitializer }, [11 x { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }] zeroinitializer }> }, { i32, i32, ptr, ptr, i32, i32, ptr, ptr, i32, <{ { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> }, %struct.dvb_usb_adapter_properties }>, ptr, ptr, ptr, %struct.anon.134, ptr, i32, i32, i32, <{ { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, [11 x { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }] }> } { i32 1, i32 0, ptr @dib0700_download_firmware, ptr @.str, i32 1, i32 292, ptr null, ptr null, i32 1, <{ { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> }, %struct.dvb_usb_adapter_properties }> <{ { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> } { i32 144, ptr null, i32 1, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 } { i32 3, i32 32, ptr @dib0700_streaming_ctrl, ptr @stk80xx_pid_filter_ctrl, ptr @stk80xx_pid_filter, ptr @stk809x_frontend_attach, ptr @dib809x_tuner_attach, { i32, i32, i32, { %struct.anon.132, [8 x i8] } } { i32 1, i32 4, i32 2, { %struct.anon.132, [8 x i8] } { %struct.anon.132 { i32 39480 }, [8 x i8] undef } }, i32 0 }, %struct.dvb_usb_adapter_fe_properties zeroinitializer, %struct.dvb_usb_adapter_fe_properties zeroinitializer }> }, %struct.dvb_usb_adapter_properties zeroinitializer }>, ptr null, ptr null, ptr @dib0700_identify_state, %struct.anon.134 { i32 0, %struct.dvb_rc_legacy zeroinitializer, %struct.dvb_rc { ptr @.str.1, i64 0, i64 524804, i32 0, ptr @dib0700_change_protocol, ptr @.str.16, ptr @dib0700_rc_query_old_firmware, i32 50, i8 0, i32 0 } }, ptr @dib0700_i2c_algo, i32 0, i32 0, i32 1, <{ { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, [11 x { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }] }> <{ { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] } { ptr @.str.66, <{ ptr, [14 x ptr] }> <{ ptr getelementptr (i8, ptr @dib0700_usb_id_table, i64 1608), [14 x ptr] zeroinitializer }>, [15 x ptr] zeroinitializer }, [11 x { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }] zeroinitializer }> }, { i32, i32, ptr, ptr, i32, i32, ptr, ptr, i32, <{ { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> }, %struct.dvb_usb_adapter_properties }>, ptr, ptr, ptr, %struct.anon.134, ptr, i32, i32, i32, <{ { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, [11 x { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }] }> } { i32 1, i32 0, ptr @dib0700_download_firmware, ptr @.str, i32 1, i32 292, ptr null, ptr null, i32 1, <{ { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> }, %struct.dvb_usb_adapter_properties }> <{ { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> } { i32 144, ptr null, i32 1, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 } { i32 3, i32 32, ptr @dib0700_streaming_ctrl, ptr @dib90x0_pid_filter_ctrl, ptr @dib90x0_pid_filter, ptr @stk9090m_frontend_attach, ptr @dib9090_tuner_attach, { i32, i32, i32, { %struct.anon.132, [8 x i8] } } { i32 1, i32 4, i32 2, { %struct.anon.132, [8 x i8] } { %struct.anon.132 { i32 39480 }, [8 x i8] undef } }, i32 0 }, %struct.dvb_usb_adapter_fe_properties zeroinitializer, %struct.dvb_usb_adapter_fe_properties zeroinitializer }> }, %struct.dvb_usb_adapter_properties zeroinitializer }>, ptr null, ptr null, ptr @dib0700_identify_state, %struct.anon.134 { i32 0, %struct.dvb_rc_legacy zeroinitializer, %struct.dvb_rc { ptr @.str.1, i64 0, i64 524804, i32 0, ptr @dib0700_change_protocol, ptr @.str.16, ptr @dib0700_rc_query_old_firmware, i32 50, i8 0, i32 0 } }, ptr @dib0700_i2c_algo, i32 0, i32 0, i32 1, <{ { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, [11 x { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }] }> <{ { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] } { ptr @.str.67, <{ ptr, [14 x ptr] }> <{ ptr getelementptr (i8, ptr @dib0700_usb_id_table, i64 1656), [14 x ptr] zeroinitializer }>, [15 x ptr] zeroinitializer }, [11 x { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }] zeroinitializer }> }, { i32, i32, ptr, ptr, i32, i32, ptr, ptr, i32, <{ { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> }, %struct.dvb_usb_adapter_properties }>, ptr, ptr, ptr, %struct.anon.134, ptr, i32, i32, i32, <{ { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, [11 x { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }] }> } { i32 1, i32 0, ptr @dib0700_download_firmware, ptr @.str, i32 1, i32 292, ptr null, ptr null, i32 1, <{ { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> }, %struct.dvb_usb_adapter_properties }> <{ { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> } { i32 144, ptr null, i32 1, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 } { i32 3, i32 32, ptr @dib0700_streaming_ctrl, ptr @stk80xx_pid_filter_ctrl, ptr @stk80xx_pid_filter, ptr @nim8096md_frontend_attach, ptr @nim8096md_tuner_attach, { i32, i32, i32, { %struct.anon.132, [8 x i8] } } { i32 1, i32 4, i32 2, { %struct.anon.132, [8 x i8] } { %struct.anon.132 { i32 39480 }, [8 x i8] undef } }, i32 0 }, %struct.dvb_usb_adapter_fe_properties zeroinitializer, %struct.dvb_usb_adapter_fe_properties zeroinitializer }> }, %struct.dvb_usb_adapter_properties zeroinitializer }>, ptr null, ptr null, ptr @dib0700_identify_state, %struct.anon.134 { i32 0, %struct.dvb_rc_legacy zeroinitializer, %struct.dvb_rc { ptr @.str.1, i64 0, i64 524804, i32 0, ptr @dib0700_change_protocol, ptr @.str.16, ptr @dib0700_rc_query_old_firmware, i32 50, i8 0, i32 0 } }, ptr @dib0700_i2c_algo, i32 0, i32 0, i32 1, <{ { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, [11 x { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }] }> <{ { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] } { ptr @.str.68, <{ ptr, [14 x ptr] }> <{ ptr getelementptr (i8, ptr @dib0700_usb_id_table, i64 1680), [14 x ptr] zeroinitializer }>, [15 x ptr] zeroinitializer }, [11 x { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }] zeroinitializer }> }, { i32, i32, ptr, ptr, i32, i32, ptr, ptr, i32, <{ { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> }, %struct.dvb_usb_adapter_properties }>, ptr, ptr, ptr, %struct.anon.134, ptr, i32, i32, i32, <{ { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, [11 x { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }] }> } { i32 1, i32 0, ptr @dib0700_download_firmware, ptr @.str, i32 1, i32 292, ptr null, ptr null, i32 1, <{ { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> }, %struct.dvb_usb_adapter_properties }> <{ { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> } { i32 144, ptr null, i32 1, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 } { i32 3, i32 32, ptr @dib0700_streaming_ctrl, ptr @dib90x0_pid_filter_ctrl, ptr @dib90x0_pid_filter, ptr @nim9090md_frontend_attach, ptr @nim9090md_tuner_attach, { i32, i32, i32, { %struct.anon.132, [8 x i8] } } { i32 1, i32 4, i32 2, { %struct.anon.132, [8 x i8] } { %struct.anon.132 { i32 39480 }, [8 x i8] undef } }, i32 0 }, %struct.dvb_usb_adapter_fe_properties zeroinitializer, %struct.dvb_usb_adapter_fe_properties zeroinitializer }> }, %struct.dvb_usb_adapter_properties zeroinitializer }>, ptr null, ptr null, ptr @dib0700_identify_state, %struct.anon.134 { i32 0, %struct.dvb_rc_legacy zeroinitializer, %struct.dvb_rc { ptr @.str.1, i64 0, i64 524804, i32 0, ptr @dib0700_change_protocol, ptr @.str.16, ptr @dib0700_rc_query_old_firmware, i32 50, i8 0, i32 0 } }, ptr @dib0700_i2c_algo, i32 0, i32 0, i32 1, <{ { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, [11 x { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }] }> <{ { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] } { ptr @.str.69, <{ ptr, [14 x ptr] }> <{ ptr getelementptr (i8, ptr @dib0700_usb_id_table, i64 1704), [14 x ptr] zeroinitializer }>, [15 x ptr] zeroinitializer }, [11 x { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }] zeroinitializer }> }, { i32, i32, ptr, ptr, i32, i32, ptr, ptr, i32, <{ { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> }, %struct.dvb_usb_adapter_properties }>, ptr, ptr, ptr, %struct.anon.134, ptr, i32, i32, i32, <{ { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, [11 x { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }] }> } { i32 1, i32 0, ptr @dib0700_download_firmware, ptr @.str, i32 1, i32 292, ptr null, ptr null, i32 1, <{ { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> }, %struct.dvb_usb_adapter_properties }> <{ { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> } { i32 144, ptr null, i32 1, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 } { i32 3, i32 32, ptr @dib0700_streaming_ctrl, ptr @stk70x0p_pid_filter_ctrl, ptr @stk70x0p_pid_filter, ptr @nim7090_frontend_attach, ptr @nim7090_tuner_attach, { i32, i32, i32, { %struct.anon.132, [8 x i8] } } { i32 1, i32 4, i32 2, { %struct.anon.132, [8 x i8] } { %struct.anon.132 { i32 39480 }, [8 x i8] undef } }, i32 0 }, %struct.dvb_usb_adapter_fe_properties zeroinitializer, %struct.dvb_usb_adapter_fe_properties zeroinitializer }> }, %struct.dvb_usb_adapter_properties zeroinitializer }>, ptr null, ptr null, ptr @dib0700_identify_state, %struct.anon.134 { i32 0, %struct.dvb_rc_legacy zeroinitializer, %struct.dvb_rc { ptr @.str.1, i64 0, i64 524804, i32 0, ptr @dib0700_change_protocol, ptr @.str.16, ptr @dib0700_rc_query_old_firmware, i32 50, i8 0, i32 0 } }, ptr @dib0700_i2c_algo, i32 0, i32 0, i32 1, <{ { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, [11 x { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }] }> <{ { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] } { ptr @.str.70, <{ ptr, [14 x ptr] }> <{ ptr getelementptr (i8, ptr @dib0700_usb_id_table, i64 1728), [14 x ptr] zeroinitializer }>, [15 x ptr] zeroinitializer }, [11 x { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }] zeroinitializer }> }, { i32, i32, ptr, ptr, i32, i32, ptr, ptr, i32, [2 x { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> }], ptr, ptr, ptr, %struct.anon.134, ptr, i32, i32, i32, <{ { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, [11 x { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }] }> } { i32 1, i32 0, ptr @dib0700_download_firmware, ptr @.str, i32 1, i32 292, ptr null, ptr null, i32 2, [2 x { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> }] [{ i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> } { i32 144, ptr null, i32 1, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 } { i32 3, i32 32, ptr @dib0700_streaming_ctrl, ptr @stk70x0p_pid_filter_ctrl, ptr @stk70x0p_pid_filter, ptr @tfe7090pvr_frontend0_attach, ptr @tfe7090pvr_tuner0_attach, { i32, i32, i32, { %struct.anon.132, [8 x i8] } } { i32 1, i32 4, i32 3, { %struct.anon.132, [8 x i8] } { %struct.anon.132 { i32 39480 }, [8 x i8] undef } }, i32 0 }, %struct.dvb_usb_adapter_fe_properties zeroinitializer, %struct.dvb_usb_adapter_fe_properties zeroinitializer }> }, { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> } { i32 144, ptr null, i32 1, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 } { i32 3, i32 32, ptr @dib0700_streaming_ctrl, ptr @stk70x0p_pid_filter_ctrl, ptr @stk70x0p_pid_filter, ptr @tfe7090pvr_frontend1_attach, ptr @tfe7090pvr_tuner1_attach, { i32, i32, i32, { %struct.anon.132, [8 x i8] } } { i32 1, i32 4, i32 2, { %struct.anon.132, [8 x i8] } { %struct.anon.132 { i32 39480 }, [8 x i8] undef } }, i32 0 }, %struct.dvb_usb_adapter_fe_properties zeroinitializer, %struct.dvb_usb_adapter_fe_properties zeroinitializer }> }], ptr null, ptr null, ptr @dib0700_identify_state, %struct.anon.134 { i32 0, %struct.dvb_rc_legacy zeroinitializer, %struct.dvb_rc { ptr @.str.1, i64 0, i64 524804, i32 0, ptr @dib0700_change_protocol, ptr @.str.16, ptr @dib0700_rc_query_old_firmware, i32 50, i8 0, i32 0 } }, ptr @dib0700_i2c_algo, i32 0, i32 0, i32 1, <{ { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, [11 x { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }] }> <{ { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] } { ptr @.str.71, <{ ptr, [14 x ptr] }> <{ ptr getelementptr (i8, ptr @dib0700_usb_id_table, i64 1752), [14 x ptr] zeroinitializer }>, [15 x ptr] zeroinitializer }, [11 x { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }] zeroinitializer }> }, { i32, i32, ptr, ptr, i32, i32, ptr, ptr, i32, <{ { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> }, %struct.dvb_usb_adapter_properties }>, ptr, ptr, ptr, %struct.anon.134, ptr, i32, i32, i32, <{ { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, [10 x { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }] }> } { i32 1, i32 0, ptr @dib0700_download_firmware, ptr @.str, i32 1, i32 292, ptr null, ptr null, i32 1, <{ { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> }, %struct.dvb_usb_adapter_properties }> <{ { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> } { i32 144, ptr null, i32 1, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 } { i32 0, i32 0, ptr @dib0700_streaming_ctrl, ptr null, ptr null, ptr @pctv340e_frontend_attach, ptr @xc4000_tuner_attach, { i32, i32, i32, { %struct.anon.132, [8 x i8] } } { i32 1, i32 4, i32 2, { %struct.anon.132, [8 x i8] } { %struct.anon.132 { i32 39480 }, [8 x i8] undef } }, i32 0 }, %struct.dvb_usb_adapter_fe_properties zeroinitializer, %struct.dvb_usb_adapter_fe_properties zeroinitializer }> }, %struct.dvb_usb_adapter_properties zeroinitializer }>, ptr null, ptr null, ptr @dib0700_identify_state, %struct.anon.134 { i32 0, %struct.dvb_rc_legacy zeroinitializer, %struct.dvb_rc { ptr @.str.1, i64 0, i64 524804, i32 0, ptr @dib0700_change_protocol, ptr @.str.16, ptr @dib0700_rc_query_old_firmware, i32 50, i8 0, i32 0 } }, ptr @dib0700_i2c_algo, i32 0, i32 0, i32 2, <{ { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, [10 x { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }] }> <{ { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] } { ptr @.str.72, <{ ptr, [14 x ptr] }> <{ ptr getelementptr (i8, ptr @dib0700_usb_id_table, i64 1824), [14 x ptr] zeroinitializer }>, [15 x ptr] zeroinitializer }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] } { ptr @.str.73, <{ ptr, [14 x ptr] }> <{ ptr getelementptr (i8, ptr @dib0700_usb_id_table, i64 1848), [14 x ptr] zeroinitializer }>, [15 x ptr] zeroinitializer }, [10 x { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }] zeroinitializer }> }, { i32, i32, ptr, ptr, i32, i32, ptr, ptr, i32, <{ { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> }, %struct.dvb_usb_adapter_properties }>, ptr, ptr, ptr, %struct.anon.134, ptr, i32, i32, i32, <{ { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, [11 x { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }] }> } { i32 1, i32 0, ptr @dib0700_download_firmware, ptr @.str, i32 1, i32 292, ptr null, ptr null, i32 1, <{ { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> }, %struct.dvb_usb_adapter_properties }> <{ { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> } { i32 144, ptr null, i32 1, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 } { i32 3, i32 32, ptr @dib0700_streaming_ctrl, ptr @stk70x0p_pid_filter_ctrl, ptr @stk70x0p_pid_filter, ptr @tfe7790p_frontend_attach, ptr @tfe7790p_tuner_attach, { i32, i32, i32, { %struct.anon.132, [8 x i8] } } { i32 1, i32 4, i32 3, { %struct.anon.132, [8 x i8] } { %struct.anon.132 { i32 39480 }, [8 x i8] undef } }, i32 0 }, %struct.dvb_usb_adapter_fe_properties zeroinitializer, %struct.dvb_usb_adapter_fe_properties zeroinitializer }> }, %struct.dvb_usb_adapter_properties zeroinitializer }>, ptr null, ptr null, ptr @dib0700_identify_state, %struct.anon.134 { i32 0, %struct.dvb_rc_legacy zeroinitializer, %struct.dvb_rc { ptr @.str.1, i64 0, i64 524804, i32 0, ptr @dib0700_change_protocol, ptr @.str.16, ptr @dib0700_rc_query_old_firmware, i32 50, i8 0, i32 0 } }, ptr @dib0700_i2c_algo, i32 0, i32 0, i32 1, <{ { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, [11 x { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }] }> <{ { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] } { ptr @.str.74, <{ ptr, [14 x ptr] }> <{ ptr getelementptr (i8, ptr @dib0700_usb_id_table, i64 1872), [14 x ptr] zeroinitializer }>, [15 x ptr] zeroinitializer }, [11 x { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }] zeroinitializer }> }, { i32, i32, ptr, ptr, i32, i32, ptr, ptr, i32, <{ { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> }, %struct.dvb_usb_adapter_properties }>, ptr, ptr, ptr, %struct.anon.134, ptr, i32, i32, i32, <{ { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, [11 x { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }] }> } { i32 1, i32 0, ptr @dib0700_download_firmware, ptr @.str, i32 1, i32 292, ptr null, ptr null, i32 1, <{ { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> }, %struct.dvb_usb_adapter_properties }> <{ { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> } { i32 144, ptr null, i32 1, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 } { i32 3, i32 32, ptr @dib0700_streaming_ctrl, ptr @stk80xx_pid_filter_ctrl, ptr @stk80xx_pid_filter, ptr @tfe8096p_frontend_attach, ptr @tfe8096p_tuner_attach, { i32, i32, i32, { %struct.anon.132, [8 x i8] } } { i32 1, i32 4, i32 2, { %struct.anon.132, [8 x i8] } { %struct.anon.132 { i32 39480 }, [8 x i8] undef } }, i32 0 }, %struct.dvb_usb_adapter_fe_properties zeroinitializer, %struct.dvb_usb_adapter_fe_properties zeroinitializer }> }, %struct.dvb_usb_adapter_properties zeroinitializer }>, ptr null, ptr null, ptr @dib0700_identify_state, %struct.anon.134 { i32 0, %struct.dvb_rc_legacy zeroinitializer, %struct.dvb_rc { ptr @.str.1, i64 0, i64 524804, i32 0, ptr @dib0700_change_protocol, ptr @.str.16, ptr @dib0700_rc_query_old_firmware, i32 50, i8 0, i32 0 } }, ptr @dib0700_i2c_algo, i32 0, i32 0, i32 1, <{ { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, [11 x { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }] }> <{ { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] } { ptr @.str.75, <{ ptr, [14 x ptr] }> <{ ptr getelementptr (i8, ptr @dib0700_usb_id_table, i64 1896), [14 x ptr] zeroinitializer }>, [15 x ptr] zeroinitializer }, [11 x { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }] zeroinitializer }> }, { i32, i32, ptr, ptr, i32, i32, ptr, ptr, i32, [2 x { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> }], ptr, ptr, ptr, %struct.anon.134, ptr, i32, i32, i32, <{ { ptr, <{ ptr, ptr, [13 x ptr] }>, [15 x ptr] }, [11 x { ptr, <{ ptr, ptr, [13 x ptr] }>, [15 x ptr] }] }> } { i32 1, i32 0, ptr @dib0700_download_firmware, ptr @.str, i32 1, i32 292, ptr null, ptr null, i32 2, [2 x { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> }] [{ i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> } { i32 144, ptr null, i32 1, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 } { i32 3, i32 32, ptr @dib0700_streaming_ctrl, ptr @stk80xx_pid_filter_ctrl, ptr @stk80xx_pid_filter, ptr @stk809x_frontend_attach, ptr @dib809x_tuner_attach, { i32, i32, i32, { %struct.anon.132, [8 x i8] } } { i32 1, i32 4, i32 2, { %struct.anon.132, [8 x i8] } { %struct.anon.132 { i32 39480 }, [8 x i8] undef } }, i32 0 }, %struct.dvb_usb_adapter_fe_properties zeroinitializer, %struct.dvb_usb_adapter_fe_properties zeroinitializer }> }, { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> } { i32 144, ptr null, i32 1, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 } { i32 3, i32 32, ptr @dib0700_streaming_ctrl, ptr @stk80xx_pid_filter_ctrl, ptr @stk80xx_pid_filter, ptr @stk809x_frontend1_attach, ptr @dib809x_tuner_attach, { i32, i32, i32, { %struct.anon.132, [8 x i8] } } { i32 1, i32 4, i32 3, { %struct.anon.132, [8 x i8] } { %struct.anon.132 { i32 39480 }, [8 x i8] undef } }, i32 0 }, %struct.dvb_usb_adapter_fe_properties zeroinitializer, %struct.dvb_usb_adapter_fe_properties zeroinitializer }> }], ptr null, ptr null, ptr @dib0700_identify_state, %struct.anon.134 { i32 0, %struct.dvb_rc_legacy zeroinitializer, %struct.dvb_rc { ptr @.str.1, i64 0, i64 524804, i32 0, ptr @dib0700_change_protocol, ptr @.str.16, ptr @dib0700_rc_query_old_firmware, i32 50, i8 0, i32 0 } }, ptr @dib0700_i2c_algo, i32 0, i32 0, i32 1, <{ { ptr, <{ ptr, ptr, [13 x ptr] }>, [15 x ptr] }, [11 x { ptr, <{ ptr, ptr, [13 x ptr] }>, [15 x ptr] }] }> <{ { ptr, <{ ptr, ptr, [13 x ptr] }>, [15 x ptr] } { ptr @.str.76, <{ ptr, ptr, [13 x ptr] }> <{ ptr getelementptr (i8, ptr @dib0700_usb_id_table, i64 1992), ptr getelementptr (i8, ptr @dib0700_usb_id_table, i64 2016), [13 x ptr] zeroinitializer }>, [15 x ptr] zeroinitializer }, [11 x { ptr, <{ ptr, ptr, [13 x ptr] }>, [15 x ptr] }] zeroinitializer }> }, { i32, i32, ptr, ptr, i32, i32, ptr, ptr, i32, <{ { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> }, %struct.dvb_usb_adapter_properties }>, ptr, ptr, ptr, %struct.anon.134, ptr, i32, i32, i32, <{ { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, [11 x { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }] }> } { i32 1, i32 0, ptr @dib0700_download_firmware, ptr @.str, i32 1, i32 292, ptr null, ptr null, i32 1, <{ { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> }, %struct.dvb_usb_adapter_properties }> <{ { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> } { i32 144, ptr null, i32 1, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 } { i32 0, i32 0, ptr @dib0700_streaming_ctrl, ptr null, ptr null, ptr @xbox_one_attach, ptr null, { i32, i32, i32, { %struct.anon.132, [8 x i8] } } { i32 1, i32 4, i32 130, { %struct.anon.132, [8 x i8] } { %struct.anon.132 { i32 39480 }, [8 x i8] undef } }, i32 0 }, %struct.dvb_usb_adapter_fe_properties zeroinitializer, %struct.dvb_usb_adapter_fe_properties zeroinitializer }> }, %struct.dvb_usb_adapter_properties zeroinitializer }>, ptr null, ptr null, ptr @dib0700_identify_state, %struct.anon.134 zeroinitializer, ptr @dib0700_i2c_algo, i32 0, i32 0, i32 1, <{ { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, [11 x { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }] }> <{ { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] } { ptr @.str.77, <{ ptr, [14 x ptr] }> <{ ptr getelementptr (i8, ptr @dib0700_usb_id_table, i64 2064), [14 x ptr] zeroinitializer }>, [15 x ptr] zeroinitializer }, [11 x { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }] zeroinitializer }> } }>, [12944 x i8] zeroinitializer }, align 32
@dib0700_device_count = dso_local global { i32, [28 x i8] } { i32 26, [28 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"dib7000p_attach\00", [16 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"symbol:dib7000p_attach\00", [41 x i8] zeroinitializer }, align 32
@stk7700p_frontend_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.81, ptr @.str.82, i32 706, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013DVB: Unable to find symbol dib7000p_attach()\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"stk7700p_frontend_attach\00", [39 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"drivers/media/usb/dvb-usb/dib0700_devices.c\00", [52 x i8] zeroinitializer }, align 32
@stk7700p_frontend_attach._entry_ptr = internal global ptr @stk7700p_frontend_attach._entry, section ".printk_index", align 4
@stk7700p_dib7000p_config = internal global { %struct.dib7000p_config, [52 x i8] } { %struct.dib7000p_config { i8 1, i8 0, i8 0, ptr null, i8 1, ptr @stk7700p_7000p_mt2060_agc_config, ptr @stk7700p_pll_config, i16 -1, i16 0, i16 -1, i16 0, i8 0, i8 0, ptr null, i8 0, i8 0, i16 0, i8 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"dib7000m_attach\00", [16 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"symbol:dib7000m_attach\00", [41 x i8] zeroinitializer }, align 32
@stk7700p_dib7000m_config = internal global { %struct.dib7000m_config, [56 x i8] } { %struct.dib7000m_config { i8 1, i8 1, i8 0, i8 0, i8 0, ptr null, i8 1, ptr @stk7700p_7000m_mt2060_agc_config, ptr @stk7700p_pll_config, i16 -1, i16 0, i16 -1, i16 0, i8 1, i8 0, ptr null }, [56 x i8] zeroinitializer }, align 32
@stk7700p_frontend_attach._entry.85 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.81, ptr @.str.82, i32 730, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013DVB: Unable to find symbol dib7000m_attach()\0A\00", [48 x i8] zeroinitializer }, align 32
@stk7700p_frontend_attach._entry_ptr.87 = internal global ptr @stk7700p_frontend_attach._entry.85, section ".printk_index", align 4
@stk7700p_7000p_mt2060_agc_config = internal global { %struct.dibx000_agc_config, [48 x i8] } { %struct.dibx000_agc_config { i8 6, i16 10340, i16 712, i16 41, i8 0, i16 118, i8 0, i16 4095, i8 0, i8 0, i16 -22938, i16 16384, i16 -22938, i16 0, i8 0, i8 -119, i8 -1, i8 0, i8 -1, i8 0, i8 0, i8 0, i8 41, i8 15, i8 25, i8 28, i8 48, i8 0, %struct.anon.144 zeroinitializer }, [48 x i8] zeroinitializer }, align 32
@stk7700p_pll_config = internal global { %struct.dibx000_bandwidth_config, [32 x i8] } { %struct.dibx000_bandwidth_config { i32 60000, i32 30000, i8 1, i8 8, i8 3, i8 1, i8 0, i8 0, i8 0, i8 1, i8 1, i8 0, i16 -11764, i32 60258167, i32 20452225, i32 30000000 }, [32 x i8] zeroinitializer }, align 32
@stk7700p_7000m_mt2060_agc_config = internal global { %struct.dibx000_agc_config, [48 x i8] } { %struct.dibx000_agc_config { i8 6, i16 10340, i16 712, i16 41, i8 0, i16 118, i8 0, i16 4095, i8 0, i8 0, i16 -22938, i16 17694, i16 -19661, i16 2621, i8 0, i8 76, i8 -117, i8 52, i8 59, i8 107, i8 -84, i8 57, i8 70, i8 21, i8 25, i8 28, i8 48, i8 1, %struct.anon.144 { i16 0, i16 107, i16 -13736, i16 24700 } }, [48 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mt2060_attach\00", [18 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"symbol:mt2060_attach\00", [43 x i8] zeroinitializer }, align 32
@stk7700p_mt2060_config = internal global { %struct.mt2060_config, [30 x i8] } { %struct.mt2060_config { i8 96, i8 0 }, [30 x i8] zeroinitializer }, align 32
@stk7700p_tuner_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @.str.91, ptr @.str.82, i32 759, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013DVB: Unable to find symbol mt2060_attach()\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"stk7700p_tuner_attach\00", [42 x i8] zeroinitializer }, align 32
@stk7700p_tuner_attach._entry_ptr = internal global ptr @stk7700p_tuner_attach._entry, section ".printk_index", align 4
@dib0700_rc_query_old_firmware._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.92, ptr @.str.93, ptr @.str.82, i32 537, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\013dib0700: RC Query Failed\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"dib0700_rc_query_old_firmware\00", [34 x i8] zeroinitializer }, align 32
@dib0700_rc_query_old_firmware._entry_ptr = internal global ptr @dib0700_rc_query_old_firmware._entry, section ".printk_index", align 4
@bristol_dib3000mc_config = internal global { [2 x %struct.dib3000mc_config], [56 x i8] } { [2 x %struct.dib3000mc_config] [%struct.dib3000mc_config { ptr @bristol_dib3000p_mt2060_agc_config, i8 0, i8 0, i8 0, i8 0, i16 0, i16 406, i16 7367, i8 0, i8 0, i8 1 }, %struct.dib3000mc_config { ptr @bristol_dib3000p_mt2060_agc_config, i8 0, i8 0, i8 0, i8 0, i16 0, i16 406, i16 7367, i8 0, i8 0, i8 1 }], [56 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"dib3000mc_attach\00", [47 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"symbol:dib3000mc_attach\00", [40 x i8] zeroinitializer }, align 32
@bristol_frontend_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.96, ptr @.str.97, ptr @.str.82, i32 106, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013DVB: Unable to find symbol dib3000mc_attach()\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"bristol_frontend_attach\00", [40 x i8] zeroinitializer }, align 32
@bristol_frontend_attach._entry_ptr = internal global ptr @bristol_frontend_attach._entry, section ".printk_index", align 4
@bristol_dib3000p_mt2060_agc_config = internal global { %struct.dibx000_agc_config, [48 x i8] } { %struct.dibx000_agc_config { i8 6, i16 418, i16 0, i16 0, i8 0, i16 0, i8 0, i16 0, i8 0, i8 0, i16 -22938, i16 17694, i16 -19661, i16 0, i8 0, i8 59, i8 0, i8 0, i8 69, i8 0, i8 59, i8 111, i8 28, i8 0, i8 0, i8 0, i8 0, i8 0, %struct.anon.144 zeroinitializer }, [48 x i8] zeroinitializer }, align 32
@bristol_mt2060_config = internal global { [2 x %struct.mt2060_config], [28 x i8] } { [2 x %struct.mt2060_config] [%struct.mt2060_config { i8 96, i8 3 }, %struct.mt2060_config { i8 97, i8 0 }], [28 x i8] zeroinitializer }, align 32
@bristol_tuner_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @.str.98, ptr @.str.82, i32 130, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"bristol_tuner_attach\00", [43 x i8] zeroinitializer }, align 32
@bristol_tuner_attach._entry_ptr = internal global ptr @bristol_tuner_attach._entry, section ".printk_index", align 4
@stk7700d_frontend_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.99, ptr @.str.82, i32 310, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"stk7700d_frontend_attach\00", [39 x i8] zeroinitializer }, align 32
@stk7700d_frontend_attach._entry_ptr = internal global ptr @stk7700d_frontend_attach._entry, section ".printk_index", align 4
@stk7700d_dib7000p_mt2266_config = internal global { [2 x %struct.dib7000p_config], [40 x i8] } { [2 x %struct.dib7000p_config] [%struct.dib7000p_config { i8 1, i8 1, i8 1, ptr null, i8 2, ptr @stk7700d_7000p_mt2266_agc_config, ptr @stk7700d_mt2266_pll_config, i16 -1, i16 0, i16 -1, i16 0, i8 0, i8 0, ptr null, i8 0, i8 0, i16 0, i8 0, i8 0 }, %struct.dib7000p_config { i8 1, i8 1, i8 1, ptr null, i8 2, ptr @stk7700d_7000p_mt2266_agc_config, ptr @stk7700d_mt2266_pll_config, i16 -1, i16 0, i16 -1, i16 0, i8 0, i8 0, ptr null, i8 0, i8 0, i16 0, i8 0, i8 0 }], [40 x i8] zeroinitializer }, align 32
@stk7700d_frontend_attach._entry.100 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.101, ptr @.str.99, ptr @.str.82, i32 327, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"\013dib0700: %s: state->dib7000p_ops.i2c_enumeration failed.  Cannot continue\0A\0A\00", [50 x i8] zeroinitializer }, align 32
@stk7700d_frontend_attach._entry_ptr.102 = internal global ptr @stk7700d_frontend_attach._entry.100, section ".printk_index", align 4
@stk7700d_7000p_mt2266_agc_config = internal global { [2 x %struct.dibx000_agc_config], [32 x i8] } { [2 x %struct.dibx000_agc_config] [%struct.dibx000_agc_config { i8 2, i16 3690, i16 1130, i16 21, i8 0, i16 118, i8 0, i16 3530, i8 1, i8 0, i16 -1, i16 -31766, i16 -1, i16 23592, i8 0, i8 62, i8 -1, i8 64, i8 64, i8 -124, i8 -64, i8 80, i8 80, i8 17, i8 27, i8 23, i8 51, i8 1, %struct.anon.144 zeroinitializer }, %struct.dibx000_agc_config { i8 5, i16 3684, i16 2372, i16 21, i8 0, i16 118, i8 0, i16 3530, i8 1, i8 0, i16 -1, i16 0, i16 -1, i16 23592, i8 0, i8 -128, i8 -128, i8 -128, i8 0, i8 -128, i8 -3, i8 81, i8 0, i8 17, i8 27, i8 23, i8 51, i8 1, %struct.anon.144 zeroinitializer }], [32 x i8] zeroinitializer }, align 32
@stk7700d_mt2266_pll_config = internal global { %struct.dibx000_bandwidth_config, [32 x i8] } { %struct.dibx000_bandwidth_config { i32 60000, i32 30000, i8 1, i8 8, i8 3, i8 1, i8 0, i8 0, i8 0, i8 1, i8 1, i8 2, i16 -11764, i32 0, i32 20452225, i32 0 }, [32 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mt2266_attach\00", [18 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"symbol:mt2266_attach\00", [43 x i8] zeroinitializer }, align 32
@stk7700d_mt2266_config = internal global { [2 x %struct.mt2266_config], [30 x i8] } { [2 x %struct.mt2266_config] [%struct.mt2266_config { i8 96 }, %struct.mt2266_config { i8 96 }], [30 x i8] zeroinitializer }, align 32
@stk7700d_tuner_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.105, ptr @.str.106, ptr @.str.82, i32 348, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013DVB: Unable to find symbol mt2266_attach()\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"stk7700d_tuner_attach\00", [42 x i8] zeroinitializer }, align 32
@stk7700d_tuner_attach._entry_ptr = internal global ptr @stk7700d_tuner_attach._entry, section ".printk_index", align 4
@stk7700P2_frontend_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.107, ptr @.str.82, i32 277, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"stk7700P2_frontend_attach\00", [38 x i8] zeroinitializer }, align 32
@stk7700P2_frontend_attach._entry_ptr = internal global ptr @stk7700P2_frontend_attach._entry, section ".printk_index", align 4
@stk7700P2_frontend_attach._entry.108 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.101, ptr @.str.107, ptr @.str.82, i32 293, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@stk7700P2_frontend_attach._entry_ptr.109 = internal global ptr @stk7700P2_frontend_attach._entry.108, section ".printk_index", align 4
@stk7070p_frontend_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.110, ptr @.str.82, i32 989, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"stk7070p_frontend_attach\00", [39 x i8] zeroinitializer }, align 32
@stk7070p_frontend_attach._entry_ptr = internal global ptr @stk7070p_frontend_attach._entry, section ".printk_index", align 4
@dib7070p_dib7000p_config = internal global { %struct.dib7000p_config, [52 x i8] } { %struct.dib7000p_config { i8 1, i8 1, i8 1, ptr null, i8 1, ptr @dib7070_agc_config, ptr @dib7070_bw_config_12_mhz, i16 -1, i16 0, i16 -1, i16 0, i8 0, i8 1, ptr null, i8 0, i8 0, i16 0, i8 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@stk7070p_frontend_attach._entry.111 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.101, ptr @.str.110, ptr @.str.82, i32 1013, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@stk7070p_frontend_attach._entry_ptr.112 = internal global ptr @stk7070p_frontend_attach._entry.111, section ".printk_index", align 4
@dib7070_agc_config = internal global { %struct.dibx000_agc_config, [48 x i8] } { %struct.dibx000_agc_config { i8 15, i16 10346, i16 600, i16 10, i8 0, i16 118, i8 0, i16 3530, i8 1, i8 5, i16 -1, i16 0, i16 -1, i16 0, i8 0, i8 40, i8 -73, i8 -50, i8 -1, i8 72, i8 -104, i8 88, i8 90, i8 17, i8 27, i8 23, i8 51, i8 0, %struct.anon.144 zeroinitializer }, [48 x i8] zeroinitializer }, align 32
@dib7070_bw_config_12_mhz = internal global { %struct.dibx000_bandwidth_config, [32 x i8] } { %struct.dibx000_bandwidth_config { i32 60000, i32 15000, i8 1, i8 20, i8 3, i8 1, i8 0, i8 0, i8 0, i8 1, i8 1, i8 2, i16 -11764, i32 0, i32 20452225, i32 12000000 }, [32 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"dib0070_attach\00", [17 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"symbol:dib0070_attach\00", [42 x i8] zeroinitializer }, align 32
@dib7070p_dib0070_config = internal global { [2 x %struct.dib0070_config], [40 x i8] } { [2 x %struct.dib0070_config] [%struct.dib0070_config { i8 96, ptr @dib7070_tuner_reset, ptr @dib7070_tuner_sleep, i32 0, i32 0, i8 0, i32 12000, i8 4, i8 0, i8 0, i8 0, i8 0, i8 2, ptr null, i8 0 }, %struct.dib0070_config { i8 96, ptr @dib7070_tuner_reset, ptr @dib7070_tuner_sleep, i32 0, i32 0, i8 0, i32 12000, i8 0, i8 0, i8 0, i8 0, i8 0, i8 2, ptr null, i8 0 }], [40 x i8] zeroinitializer }, align 32
@dib7070p_tuner_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.115, ptr @.str.116, ptr @.str.82, i32 904, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013DVB: Unable to find symbol dib0070_attach()\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"dib7070p_tuner_attach\00", [42 x i8] zeroinitializer }, align 32
@dib7070p_tuner_attach._entry_ptr = internal global ptr @dib7070p_tuner_attach._entry, section ".printk_index", align 4
@dib7070p_tuner_attach._entry.117 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.115, ptr @.str.116, ptr @.str.82, i32 907, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dib7070p_tuner_attach._entry_ptr.118 = internal global ptr @dib7070p_tuner_attach._entry.117, section ".printk_index", align 4
@dvb_usb_dib0700_debug = external dso_local local_unnamed_addr global i32, align 4
@dib7070_tuner_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.119, ptr @.str.120, ptr @.str.82, i32 801, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"reset: %d\00", [22 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"dib7070_tuner_reset\00", [44 x i8] zeroinitializer }, align 32
@dib7070_tuner_reset._entry_ptr = internal global ptr @dib7070_tuner_reset._entry, section ".printk_index", align 4
@dib7070_tuner_sleep._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.121, ptr @.str.122, ptr @.str.82, i32 810, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sleep: %d\00", [22 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"dib7070_tuner_sleep\00", [44 x i8] zeroinitializer }, align 32
@dib7070_tuner_sleep._entry_ptr = internal global ptr @dib7070_tuner_sleep._entry, section ".printk_index", align 4
@dib7070_set_param_override._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.123, ptr @.str.124, ptr @.str.82, i32 854, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"WBD for DiB7000P: %d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"dib7070_set_param_override\00", [37 x i8] zeroinitializer }, align 32
@dib7070_set_param_override._entry_ptr = internal global ptr @dib7070_set_param_override._entry, section ".printk_index", align 4
@novatd_frontend_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.125, ptr @.str.82, i32 3377, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"novatd_frontend_attach\00", [41 x i8] zeroinitializer }, align 32
@novatd_frontend_attach._entry_ptr = internal global ptr @novatd_frontend_attach._entry, section ".printk_index", align 4
@stk7070pd_dib7000p_config = internal global { [2 x %struct.dib7000p_config], [40 x i8] } { [2 x %struct.dib7000p_config] [%struct.dib7000p_config { i8 1, i8 1, i8 1, ptr null, i8 1, ptr @dib7070_agc_config, ptr @dib7070_bw_config_12_mhz, i16 -1, i16 0, i16 -1, i16 0, i8 0, i8 1, ptr null, i8 0, i8 0, i16 0, i8 0, i8 0 }, %struct.dib7000p_config { i8 1, i8 1, i8 1, ptr null, i8 1, ptr @dib7070_agc_config, ptr @dib7070_bw_config_12_mhz, i16 -1, i16 0, i16 -1, i16 0, i8 0, i8 1, ptr null, i8 0, i8 0, i16 0, i8 0, i8 0 }], [40 x i8] zeroinitializer }, align 32
@novatd_frontend_attach._entry.126 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.101, ptr @.str.125, ptr @.str.82, i32 3391, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@novatd_frontend_attach._entry_ptr.127 = internal global ptr @novatd_frontend_attach._entry.126, section ".printk_index", align 4
@stk7070pd_frontend_attach0._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.128, ptr @.str.82, i32 3305, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"stk7070pd_frontend_attach0\00", [37 x i8] zeroinitializer }, align 32
@stk7070pd_frontend_attach0._entry_ptr = internal global ptr @stk7070pd_frontend_attach0._entry, section ".printk_index", align 4
@stk7070pd_frontend_attach0._entry.129 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.101, ptr @.str.128, ptr @.str.82, i32 3316, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@stk7070pd_frontend_attach0._entry_ptr.130 = internal global ptr @stk7070pd_frontend_attach0._entry.129, section ".printk_index", align 4
@stk7070pd_frontend_attach1._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.131, ptr @.str.82, i32 3329, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"stk7070pd_frontend_attach1\00", [37 x i8] zeroinitializer }, align 32
@stk7070pd_frontend_attach1._entry_ptr = internal global ptr @stk7070pd_frontend_attach1._entry, section ".printk_index", align 4
@stk7700ph_frontend_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.132, ptr @.str.82, i32 459, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"stk7700ph_frontend_attach\00", [38 x i8] zeroinitializer }, align 32
@stk7700ph_frontend_attach._entry_ptr = internal global ptr @stk7700ph_frontend_attach._entry, section ".printk_index", align 4
@stk7700ph_dib7700_xc3028_config = internal global { %struct.dib7000p_config, [52 x i8] } { %struct.dib7000p_config { i8 1, i8 0, i8 1, ptr null, i8 1, ptr @xc3028_agc_config, ptr @xc3028_bw_config, i16 -1, i16 0, i16 -1, i16 0, i8 0, i8 0, ptr null, i8 0, i8 0, i16 0, i8 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@stk7700ph_frontend_attach._entry.133 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.101, ptr @.str.132, ptr @.str.82, i32 481, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@stk7700ph_frontend_attach._entry_ptr.134 = internal global ptr @stk7700ph_frontend_attach._entry.133, section ".printk_index", align 4
@xc3028_agc_config = internal global { %struct.dibx000_agc_config, [48 x i8] } { %struct.dibx000_agc_config { i8 6, i16 100, i16 712, i16 21, i8 0, i16 118, i8 0, i16 2867, i8 0, i8 2, i16 0, i16 0, i16 -25818, i16 9930, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 -128, i8 29, i8 29, i8 17, i8 27, i8 23, i8 51, i8 1, %struct.anon.144 zeroinitializer }, [48 x i8] zeroinitializer }, align 32
@xc3028_bw_config = internal global { %struct.dibx000_bandwidth_config, [32 x i8] } { %struct.dibx000_bandwidth_config { i32 60000, i32 30000, i8 1, i8 8, i8 3, i8 1, i8 0, i8 0, i8 0, i8 1, i8 1, i8 0, i16 -11764, i32 39370534, i32 20452225, i32 30000000 }, [32 x i8] zeroinitializer }, align 32
@stk7700ph_xc3028_config = internal global { %struct.xc2028_config, [20 x i8] } { %struct.xc2028_config { ptr null, i8 97, ptr @stk7700ph_xc3028_ctrl }, [20 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"xc2028_attach\00", [18 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"symbol:xc2028_attach\00", [43 x i8] zeroinitializer }, align 32
@stk7700ph_tuner_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.137, ptr @.str.138, ptr @.str.82, i32 505, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013DVB: Unable to find symbol xc2028_attach()\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"stk7700ph_tuner_attach\00", [41 x i8] zeroinitializer }, align 32
@stk7700ph_tuner_attach._entry_ptr = internal global ptr @stk7700ph_tuner_attach._entry, section ".printk_index", align 4
@stk7700ph_xc3028_ctrl = internal global { %struct.xc2028_ctrl, [36 x i8] } { %struct.xc2028_ctrl { ptr @.str.139, i32 64, i32 0, i32 0, i8 0, i32 5200, i8 0 }, [36 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"xc3028-v27.fw\00", [18 x i8] zeroinitializer }, align 32
@stk7700ph_xc3028_callback._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.140, ptr @.str.141, ptr @.str.82, i32 437, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013dib0700: %s: unknown command %d, arg %d\0A\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"stk7700ph_xc3028_callback\00", [38 x i8] zeroinitializer }, align 32
@stk7700ph_xc3028_callback._entry_ptr = internal global ptr @stk7700ph_xc3028_callback._entry, section ".printk_index", align 4
@.str.142 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"s5h1411_attach\00", [17 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"symbol:s5h1411_attach\00", [42 x i8] zeroinitializer }, align 32
@pinnacle_801e_config = internal global { %struct.s5h1411_config, [22 x i8] } { %struct.s5h1411_config { i8 0, i8 0, i16 3, i16 -21536, i16 -21536, i8 0, i8 1 }, [22 x i8] zeroinitializer }, align 32
@s5h1411_frontend_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.144, ptr @.str.145, ptr @.str.82, i32 3465, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013DVB: Unable to find symbol s5h1411_attach()\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"s5h1411_frontend_attach\00", [40 x i8] zeroinitializer }, align 32
@s5h1411_frontend_attach._entry_ptr = internal global ptr @s5h1411_frontend_attach._entry, section ".printk_index", align 4
@.str.146 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"xc5000_attach\00", [18 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"symbol:xc5000_attach\00", [43 x i8] zeroinitializer }, align 32
@s5h1411_xc5000_tunerconfig = internal global { %struct.xc5000_config, [44 x i8] } { %struct.xc5000_config { i8 100, i32 5380, i8 0, i16 0, i16 0, i32 0 }, [44 x i8] zeroinitializer }, align 32
@xc5000_tuner_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.148, ptr @.str.149, ptr @.str.82, i32 3499, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013DVB: Unable to find symbol xc5000_attach()\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"xc5000_tuner_attach\00", [44 x i8] zeroinitializer }, align 32
@xc5000_tuner_attach._entry_ptr = internal global ptr @xc5000_tuner_attach._entry, section ".printk_index", align 4
@dib0700_xc5000_tuner_callback._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.150, ptr @.str.151, ptr @.str.82, i32 3481, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\013dib0700: xc5000: unknown tuner callback command: %d\0A\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"dib0700_xc5000_tuner_callback\00", [34 x i8] zeroinitializer }, align 32
@dib0700_xc5000_tuner_callback._entry_ptr = internal global ptr @dib0700_xc5000_tuner_callback._entry, section ".printk_index", align 4
@.str.152 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"lgdt3305_attach\00", [16 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"symbol:lgdt3305_attach\00", [41 x i8] zeroinitializer }, align 32
@hcw_lgdt3305_config = internal global { %struct.lgdt3305_config, [60 x i8] } { %struct.lgdt3305_config { i8 14, i16 6000, i16 6000, i16 1280, i16 0, i16 0, i8 64, i32 0, i32 1, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@lgdt3305_frontend_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.154, ptr @.str.155, ptr @.str.82, i32 3721, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013DVB: Unable to find symbol lgdt3305_attach()\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"lgdt3305_frontend_attach\00", [39 x i8] zeroinitializer }, align 32
@lgdt3305_frontend_attach._entry_ptr = internal global ptr @lgdt3305_frontend_attach._entry, section ".printk_index", align 4
@.str.156 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"mxl5007t_attach\00", [16 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"symbol:mxl5007t_attach\00", [41 x i8] zeroinitializer }, align 32
@hcw_mxl5007t_config = internal global { %struct.mxl5007t_config, [44 x i8] } { %struct.mxl5007t_config { i32 0, i32 0, i32 5, i32 5, i8 -128 }, [44 x i8] zeroinitializer }, align 32
@mxl5007t_tuner_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.158, ptr @.str.159, ptr @.str.82, i32 3730, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013DVB: Unable to find symbol mxl5007t_attach()\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"mxl5007t_tuner_attach\00", [42 x i8] zeroinitializer }, align 32
@mxl5007t_tuner_attach._entry_ptr = internal global ptr @mxl5007t_tuner_attach._entry, section ".printk_index", align 4
@stk7770p_frontend_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.160, ptr @.str.82, i32 1047, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"stk7770p_frontend_attach\00", [39 x i8] zeroinitializer }, align 32
@stk7770p_frontend_attach._entry_ptr = internal global ptr @stk7770p_frontend_attach._entry, section ".printk_index", align 4
@dib7770p_dib7000p_config = internal global { %struct.dib7000p_config, [52 x i8] } { %struct.dib7000p_config { i8 1, i8 1, i8 1, ptr null, i8 1, ptr @dib7070_agc_config, ptr @dib7070_bw_config_12_mhz, i16 -1, i16 0, i16 -1, i16 0, i8 0, i8 1, ptr null, i8 0, i8 64, i16 0, i8 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@stk7770p_frontend_attach._entry.161 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.101, ptr @.str.160, ptr @.str.82, i32 1071, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@stk7770p_frontend_attach._entry_ptr.162 = internal global ptr @stk7770p_frontend_attach._entry.161, section ".printk_index", align 4
@dib7770p_dib0070_config = internal global { %struct.dib0070_config, [52 x i8] } { %struct.dib0070_config { i8 96, ptr @dib7070_tuner_reset, ptr @dib7070_tuner_sleep, i32 0, i32 0, i8 0, i32 12000, i8 0, i8 0, i8 0, i8 1, i8 0, i8 2, ptr null, i8 0 }, [52 x i8] zeroinitializer }, align 32
@dib7770p_tuner_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.115, ptr @.str.163, ptr @.str.82, i32 890, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"dib7770p_tuner_attach\00", [42 x i8] zeroinitializer }, align 32
@dib7770p_tuner_attach._entry_ptr = internal global ptr @dib7770p_tuner_attach._entry, section ".printk_index", align 4
@dib7770_set_param_override._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.123, ptr @.str.164, ptr @.str.82, i32 878, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"dib7770_set_param_override\00", [37 x i8] zeroinitializer }, align 32
@dib7770_set_param_override._entry_ptr = internal global ptr @dib7770_set_param_override._entry, section ".printk_index", align 4
@.str.165 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"dib8000_attach\00", [17 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"symbol:dib8000_attach\00", [42 x i8] zeroinitializer }, align 32
@stk807x_frontend_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.167, ptr @.str.168, ptr @.str.82, i32 1347, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013DVB: Unable to find symbol dib8000_attach()\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"stk807x_frontend_attach\00", [40 x i8] zeroinitializer }, align 32
@stk807x_frontend_attach._entry_ptr = internal global ptr @stk807x_frontend_attach._entry, section ".printk_index", align 4
@dib807x_dib8000_config = internal global { [2 x %struct.dib8000_config], [40 x i8] } { [2 x %struct.dib8000_config] [%struct.dib8000_config { i8 1, i8 1, i8 1, ptr null, i8 2, ptr @dib807x_agc_config, ptr @dib807x_bw_config_12_mhz, i16 -1, i16 0, i16 -1, i16 0, ptr @dib0070_ctrl_agc_filter, i16 11672, i16 0, i8 1, i8 5, i8 0, i8 0, ptr null }, %struct.dib8000_config { i8 1, i8 1, i8 1, ptr null, i8 2, ptr @dib807x_agc_config, ptr @dib807x_bw_config_12_mhz, i16 -1, i16 0, i16 -1, i16 0, ptr @dib0070_ctrl_agc_filter, i16 11672, i16 0, i8 0, i8 5, i8 0, i8 0, ptr null }], [40 x i8] zeroinitializer }, align 32
@dib807x_agc_config = internal global { [2 x %struct.dibx000_agc_config], [32 x i8] } { [2 x %struct.dibx000_agc_config] [%struct.dibx000_agc_config { i8 4, i16 14442, i16 600, i16 10, i8 0, i16 118, i8 0, i16 3530, i8 1, i8 5, i16 -1, i16 0, i16 -1, i16 0, i8 0, i8 40, i8 -73, i8 -50, i8 -1, i8 72, i8 -104, i8 88, i8 90, i8 17, i8 27, i8 23, i8 51, i8 0, %struct.anon.144 zeroinitializer }, %struct.dibx000_agc_config { i8 2, i16 2154, i16 600, i16 10, i8 0, i16 118, i8 0, i16 3530, i8 1, i8 5, i16 -1, i16 0, i16 -1, i16 0, i8 0, i8 40, i8 -73, i8 -50, i8 -1, i8 72, i8 -104, i8 88, i8 90, i8 17, i8 27, i8 23, i8 51, i8 0, %struct.anon.144 zeroinitializer }], [32 x i8] zeroinitializer }, align 32
@dib807x_bw_config_12_mhz = internal global { %struct.dibx000_bandwidth_config, [32 x i8] } { %struct.dibx000_bandwidth_config { i32 60000, i32 15000, i8 1, i8 20, i8 3, i8 1, i8 0, i8 0, i8 0, i8 1, i8 1, i8 2, i16 -11689, i32 0, i32 18179755, i32 12000000 }, [32 x i8] zeroinitializer }, align 32
@dib807x_dib0070_config = internal global { [2 x %struct.dib0070_config], [40 x i8] } { [2 x %struct.dib0070_config] [%struct.dib0070_config { i8 96, ptr @dib80xx_tuner_reset, ptr @dib80xx_tuner_sleep, i32 -100, i32 -100, i8 0, i32 12000, i8 4, i8 0, i8 1, i8 0, i8 1, i8 0, ptr @dib8070_wbd_gain_cfg, i8 1 }, %struct.dib0070_config { i8 96, ptr @dib80xx_tuner_reset, ptr @dib80xx_tuner_sleep, i32 -25, i32 -25, i8 0, i32 12000, i8 2, i8 0, i8 1, i8 0, i8 1, i8 0, ptr @dib8070_wbd_gain_cfg, i8 1 }], [40 x i8] zeroinitializer }, align 32
@dib807x_tuner_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.115, ptr @.str.169, ptr @.str.82, i32 1313, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"dib807x_tuner_attach\00", [43 x i8] zeroinitializer }, align 32
@dib807x_tuner_attach._entry_ptr = internal global ptr @dib807x_tuner_attach._entry, section ".printk_index", align 4
@dib807x_tuner_attach._entry.170 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.115, ptr @.str.169, ptr @.str.82, i32 1317, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dib807x_tuner_attach._entry_ptr.171 = internal global ptr @dib807x_tuner_attach._entry.170, section ".printk_index", align 4
@dib8070_wbd_gain_cfg = internal constant { [2 x %struct.dib0070_wbd_gain_cfg], [24 x i8] } { [2 x %struct.dib0070_wbd_gain_cfg] [%struct.dib0070_wbd_gain_cfg { i16 240, i16 7 }, %struct.dib0070_wbd_gain_cfg { i16 -1, i16 6 }], [24 x i8] zeroinitializer }, align 32
@dib807x_set_param_override._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.172, ptr @.str.173, ptr @.str.82, i32 1299, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"WBD for DiB8000: %d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"dib807x_set_param_override\00", [37 x i8] zeroinitializer }, align 32
@dib807x_set_param_override._entry_ptr = internal global ptr @dib807x_set_param_override._entry, section ".printk_index", align 4
@stk807xpvr_frontend_attach0._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.167, ptr @.str.174, ptr @.str.82, i32 1379, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"stk807xpvr_frontend_attach0\00", [36 x i8] zeroinitializer }, align 32
@stk807xpvr_frontend_attach0._entry_ptr = internal global ptr @stk807xpvr_frontend_attach0._entry, section ".printk_index", align 4
@stk807xpvr_frontend_attach1._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.167, ptr @.str.175, ptr @.str.82, i32 1412, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"stk807xpvr_frontend_attach1\00", [36 x i8] zeroinitializer }, align 32
@stk807xpvr_frontend_attach1._entry_ptr = internal global ptr @stk807xpvr_frontend_attach1._entry, section ".printk_index", align 4
@stk809x_frontend_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.167, ptr @.str.176, ptr @.str.82, i32 1754, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.176 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"stk809x_frontend_attach\00", [40 x i8] zeroinitializer }, align 32
@stk809x_frontend_attach._entry_ptr = internal global ptr @stk809x_frontend_attach._entry, section ".printk_index", align 4
@dib809x_dib8000_config = internal global { [2 x %struct.dib8000_config], [40 x i8] } { [2 x %struct.dib8000_config] [%struct.dib8000_config { i8 1, i8 1, i8 1, ptr null, i8 2, ptr @dib8090_agc_config, ptr @dib8090_pll_config_12mhz, i16 -1, i16 0, i16 -1, i16 0, ptr @dib8090_agc_control, i16 11672, i16 48, i8 49, i8 5, i8 3, i8 0, ptr null }, %struct.dib8000_config { i8 1, i8 1, i8 1, ptr null, i8 2, ptr @dib8090_agc_config, ptr @dib8090_pll_config_12mhz, i16 -1, i16 0, i16 -1, i16 0, ptr @dib8090_agc_control, i16 11528, i16 1, i8 49, i8 4, i8 3, i8 0, ptr null }], [40 x i8] zeroinitializer }, align 32
@dib8090_agc_config = internal global { [2 x %struct.dibx000_agc_config], [32 x i8] } { [2 x %struct.dibx000_agc_config] [%struct.dibx000_agc_config { i8 15, i16 10346, i16 787, i16 10, i8 0, i16 118, i8 0, i16 3530, i8 1, i8 5, i16 -1, i16 0, i16 -1, i16 0, i8 0, i8 32, i8 114, i8 -113, i8 -112, i8 114, i8 -29, i8 116, i8 117, i8 28, i8 26, i8 31, i8 51, i8 0, %struct.anon.144 zeroinitializer }, %struct.dibx000_agc_config { i8 32, i16 10346, i16 787, i16 10, i8 0, i16 118, i8 0, i16 3530, i8 1, i8 5, i16 0, i16 0, i16 -1, i16 0, i8 0, i8 32, i8 114, i8 -113, i8 -112, i8 114, i8 -29, i8 116, i8 117, i8 28, i8 26, i8 31, i8 51, i8 0, %struct.anon.144 zeroinitializer }], [32 x i8] zeroinitializer }, align 32
@dib8090_pll_config_12mhz = internal global { %struct.dibx000_bandwidth_config, [32 x i8] } { %struct.dibx000_bandwidth_config { i32 54000, i32 13500, i8 1, i8 18, i8 3, i8 1, i8 0, i8 0, i8 0, i8 1, i8 1, i8 2, i16 -11689, i32 0, i32 20199727, i32 12000000 }, [32 x i8] zeroinitializer }, align 32
@dib8090_agc_control._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.177, ptr @.str.178, ptr @.str.82, i32 1546, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.177 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"AGC control callback: %i\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.178 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"dib8090_agc_control\00", [44 x i8] zeroinitializer }, align 32
@dib8090_agc_control._entry_ptr = internal global ptr @dib8090_agc_control._entry, section ".printk_index", align 4
@.str.179 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"dib0090_register\00", [47 x i8] zeroinitializer }, align 32
@.str.180 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"symbol:dib0090_register\00", [40 x i8] zeroinitializer }, align 32
@dib809x_tuner_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.181, ptr @.str.182, ptr @.str.82, i32 1742, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.181 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013DVB: Unable to find symbol dib0090_register()\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.182 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"dib809x_tuner_attach\00", [43 x i8] zeroinitializer }, align 32
@dib809x_tuner_attach._entry_ptr = internal global ptr @dib809x_tuner_attach._entry, section ".printk_index", align 4
@dib8090_wbd_table = internal global { [5 x %struct.dib0090_wbd_slope], [36 x i8] } { [5 x %struct.dib0090_wbd_slope] [%struct.dib0090_wbd_slope { i16 120, i16 0, i16 500, i16 0, i16 500, i8 4 }, %struct.dib0090_wbd_slope { i16 170, i16 0, i16 450, i16 0, i16 450, i8 4 }, %struct.dib0090_wbd_slope { i16 380, i16 48, i16 373, i16 28, i16 259, i8 6 }, %struct.dib0090_wbd_slope { i16 860, i16 34, i16 700, i16 36, i16 616, i8 6 }, %struct.dib0090_wbd_slope { i16 -1, i16 34, i16 700, i16 36, i16 616, i8 6 }], [36 x i8] zeroinitializer }, align 32
@dib809x_dib0090_config = internal global { { { i32, i8, i8, i8, i16 }, ptr, ptr, i32, i32, ptr, i8, i8, i8, i16, i16, i8, i8, i8, i8, i8, ptr, i8, i16, ptr, i8, i8 }, [32 x i8] } { { { i32, i8, i8, i8, i16 }, ptr, ptr, i32, i32, ptr, i8, i8, i8, i16, i16, i8, i8, i8, i8, i8, ptr, i8, i16, ptr, i8, i8 } { { i32, i8, i8, i8, i16 } { i32 12000, i8 -63, i8 80, i8 8, i16 0 }, ptr @dib80xx_tuner_reset, ptr @dib80xx_tuner_sleep, i32 -63, i32 -143, ptr @dib8090_get_adc_power, i8 -128, i8 1, i8 96, i16 0, i16 0, i8 1, i8 1, i8 0, i8 0, i8 0, ptr null, i8 6, i16 0, ptr @dib8090_wbd_table, i8 0, i8 0 }, [32 x i8] zeroinitializer }, align 32
@dib8096_set_param_override._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.184, ptr @.str.185, ptr @.str.82, i32 1662, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.184 = internal constant { [80 x i8], [48 x i8] } { [80 x i8] c"Warning : Rf frequency  (%iHz) is not in the supported range, using VHF switch \00", [48 x i8] zeroinitializer }, align 32
@.str.185 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"dib8096_set_param_override\00", [37 x i8] zeroinitializer }, align 32
@dib8096_set_param_override._entry_ptr = internal global ptr @dib8096_set_param_override._entry, section ".printk_index", align 4
@dib8096_set_param_override._entry.186 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.187, ptr @.str.185, ptr @.str.82, i32 1677, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.187 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"only 6MHz bandwidth is supported\0A\00", [62 x i8] zeroinitializer }, align 32
@dib8096_set_param_override._entry_ptr.188 = internal global ptr @dib8096_set_param_override._entry.186, section ".printk_index", align 4
@dib8096_set_param_override._entry.189 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.190, ptr @.str.185, ptr @.str.82, i32 1707, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.190 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"tuning in CBAND - soft-AGC startup\0A\00", [60 x i8] zeroinitializer }, align 32
@dib8096_set_param_override._entry_ptr.191 = internal global ptr @dib8096_set_param_override._entry.189, section ".printk_index", align 4
@dib8096_set_param_override._entry.192 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.193, ptr @.str.185, ptr @.str.82, i32 1723, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.193 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"switching to PWM AGC\0A\00", [42 x i8] zeroinitializer }, align 32
@dib8096_set_param_override._entry_ptr.194 = internal global ptr @dib8096_set_param_override._entry.192, section ".printk_index", align 4
@dib8096_set_param_override._entry.195 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.196, ptr @.str.185, ptr @.str.82, i32 1729, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.196 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"not tuning in CBAND - standard AGC startup\0A\00", [52 x i8] zeroinitializer }, align 32
@dib8096_set_param_override._entry_ptr.197 = internal global ptr @dib8096_set_param_override._entry.195, section ".printk_index", align 4
@dib8090_compute_pll_parameters._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.198, ptr @.str.199, ptr @.str.82, i32 1639, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.198 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"PLL ratio=%i rest=%i\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.199 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"dib8090_compute_pll_parameters\00", [33 x i8] zeroinitializer }, align 32
@dib8090_compute_pll_parameters._entry_ptr = internal global ptr @dib8090_compute_pll_parameters._entry, section ".printk_index", align 4
@dib8090_compute_pll_parameters._entry.200 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.201, ptr @.str.199, ptr @.str.82, i32 1645, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.201 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"optimal PLL ratio=%i\0A\00", [42 x i8] zeroinitializer }, align 32
@dib8090_compute_pll_parameters._entry_ptr.202 = internal global ptr @dib8090_compute_pll_parameters._entry.200, section ".printk_index", align 4
@.str.203 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"dib9090.fw\00", [21 x i8] zeroinitializer }, align 32
@stk9090m_frontend_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.204, ptr @.str.205, ptr @.str.82, i32 2412, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.204 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s: Upload failed. (file not found?)\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.205 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"stk9090m_frontend_attach\00", [39 x i8] zeroinitializer }, align 32
@stk9090m_frontend_attach._entry_ptr = internal global ptr @stk9090m_frontend_attach._entry, section ".printk_index", align 4
@stk9090m_frontend_attach._entry.206 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.207, ptr @.str.205, ptr @.str.82, i32 2415, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.207 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s: firmware read %zu bytes.\0A\00", [34 x i8] zeroinitializer }, align 32
@stk9090m_frontend_attach._entry_ptr.208 = internal global ptr @stk9090m_frontend_attach._entry.206, section ".printk_index", align 4
@stk9090m_config = internal global { %struct.dib9000_config, [52 x i8] } { %struct.dib9000_config { i8 0, i8 1, i8 0, ptr null, i16 11402, i32 20452225, i32 30000, i32 279620, i32 60000, ptr null, i32 0, [2 x %struct.dibGPIOFunction] [%struct.dibGPIOFunction { i8 2, i8 3, i32 49, i32 0, i32 48 }, %struct.dibGPIOFunction { i8 2, i8 4, i32 49, i32 0, i32 33 }], %struct.dibSubbandSelection { i8 2, [8 x %struct.anon.145] [%struct.anon.145 { i16 240, %struct.dibGPIOFunction { i8 2, i8 6, i32 8, i32 0, i32 8 } }, %struct.anon.145 { i16 890, %struct.dibGPIOFunction { i8 2, i8 6, i32 8, i32 0, i32 0 } }, %struct.anon.145 zeroinitializer, %struct.anon.145 zeroinitializer, %struct.anon.145 zeroinitializer, %struct.anon.145 zeroinitializer, %struct.anon.145 zeroinitializer, %struct.anon.145 zeroinitializer] }, i8 5 }, [52 x i8] zeroinitializer }, align 32
@.str.209 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"dib9000_attach\00", [17 x i8] zeroinitializer }, align 32
@.str.210 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"symbol:dib9000_attach\00", [42 x i8] zeroinitializer }, align 32
@stk9090m_frontend_attach._entry.211 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.212, ptr @.str.205, ptr @.str.82, i32 2420, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.212 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013DVB: Unable to find symbol dib9000_attach()\0A\00", [49 x i8] zeroinitializer }, align 32
@stk9090m_frontend_attach._entry_ptr.213 = internal global ptr @stk9090m_frontend_attach._entry.211, section ".printk_index", align 4
@__const.dib9090_tuner_attach.data_dib190 = private unnamed_addr constant [10 x i16] [i16 1, i16 4980, i16 2, i16 418, i16 7, i16 32, i16 0, i16 239, i16 8, i16 1158], align 2
@.str.214 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"dib0090_fw_register\00", [44 x i8] zeroinitializer }, align 32
@.str.215 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"symbol:dib0090_fw_register\00", [37 x i8] zeroinitializer }, align 32
@dib9090_tuner_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.216, ptr @.str.217, ptr @.str.82, i32 2439, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.216 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\013DVB: Unable to find symbol dib0090_fw_register()\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.217 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"dib9090_tuner_attach\00", [43 x i8] zeroinitializer }, align 32
@dib9090_tuner_attach._entry_ptr = internal global ptr @dib9090_tuner_attach._entry, section ".printk_index", align 4
@dib9090_dib0090_config = internal global { { { i32, i8, i8, i8, i16 }, ptr, ptr, i32, i32, ptr, i8, i8, i8, i16, i16, i8, i8, i8, i8, i8, ptr, i8, i16, ptr, i8, i8 }, [32 x i8] } { { { i32, i8, i8, i8, i16 }, ptr, ptr, i32, i32, ptr, i8, i8, i8, i16, i16, i8, i8, i8, i8, i8, ptr, i8, i16, ptr, i8, i8 } { { i32, i8, i8, i8, i16 } { i32 30000, i8 65, i8 32, i8 8, i16 0 }, ptr @dib90x0_tuner_reset, ptr @dib90x0_tuner_sleep, i32 0, i32 0, ptr null, i8 0, i8 0, i8 0, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, ptr null, i8 0, i16 0, ptr null, i8 0, i8 0 }, [32 x i8] zeroinitializer }, align 32
@dib01x0_pmu_update._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.219, ptr @.str.220, ptr @.str.82, i32 2238, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.219 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"Found DiB0170 rev1: This version of DiB0170 is not supported any longer.\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.220 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"dib01x0_pmu_update\00", [45 x i8] zeroinitializer }, align 32
@dib01x0_pmu_update._entry_ptr = internal global ptr @dib01x0_pmu_update._entry, section ".printk_index", align 4
@dib01x0_pmu_update._entry.221 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.222, ptr @.str.220, ptr @.str.82, i32 2241, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.222 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Found DiB0170 rev2\00", [45 x i8] zeroinitializer }, align 32
@dib01x0_pmu_update._entry_ptr.223 = internal global ptr @dib01x0_pmu_update._entry.221, section ".printk_index", align 4
@dib01x0_pmu_update._entry.224 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.225, ptr @.str.220, ptr @.str.82, i32 2244, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.225 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Found DiB0190 rev2\00", [45 x i8] zeroinitializer }, align 32
@dib01x0_pmu_update._entry_ptr.226 = internal global ptr @dib01x0_pmu_update._entry.224, section ".printk_index", align 4
@dib01x0_pmu_update._entry.227 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.228, ptr @.str.220, ptr @.str.82, i32 2247, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.228 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"DiB01x0 not found\00", [46 x i8] zeroinitializer }, align 32
@dib01x0_pmu_update._entry_ptr.229 = internal global ptr @dib01x0_pmu_update._entry.227, section ".printk_index", align 4
@nim8096md_frontend_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.167, ptr @.str.230, ptr @.str.82, i32 1821, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.230 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"nim8096md_frontend_attach\00", [38 x i8] zeroinitializer }, align 32
@nim8096md_frontend_attach._entry_ptr = internal global ptr @nim8096md_frontend_attach._entry, section ".printk_index", align 4
@nim8096md_frontend_attach._entry.231 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.167, ptr @.str.230, ptr @.str.82, i32 1848, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@nim8096md_frontend_attach._entry_ptr.232 = internal global ptr @nim8096md_frontend_attach._entry.231, section ".printk_index", align 4
@nim8096md_tuner_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.181, ptr @.str.233, ptr @.str.82, i32 1801, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.233 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"nim8096md_tuner_attach\00", [41 x i8] zeroinitializer }, align 32
@nim8096md_tuner_attach._entry_ptr = internal global ptr @nim8096md_tuner_attach._entry, section ".printk_index", align 4
@nim8096md_tuner_attach._entry.234 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.181, ptr @.str.233, ptr @.str.82, i32 1807, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@nim8096md_tuner_attach._entry_ptr.235 = internal global ptr @nim8096md_tuner_attach._entry.234, section ".printk_index", align 4
@nim9090md_frontend_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.204, ptr @.str.236, ptr @.str.82, i32 2482, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.236 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"nim9090md_frontend_attach\00", [38 x i8] zeroinitializer }, align 32
@nim9090md_frontend_attach._entry_ptr = internal global ptr @nim9090md_frontend_attach._entry, section ".printk_index", align 4
@nim9090md_frontend_attach._entry.237 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.207, ptr @.str.236, ptr @.str.82, i32 2485, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@nim9090md_frontend_attach._entry_ptr.238 = internal global ptr @nim9090md_frontend_attach._entry.237, section ".printk_index", align 4
@nim9090md_config = internal global { [2 x %struct.dib9000_config], [104 x i8] } { [2 x %struct.dib9000_config] [%struct.dib9000_config { i8 0, i8 1, i8 0, ptr null, i16 11402, i32 20452225, i32 30000, i32 279620, i32 60000, ptr null, i32 0, [2 x %struct.dibGPIOFunction] zeroinitializer, %struct.dibSubbandSelection zeroinitializer, i8 5 }, %struct.dib9000_config { i8 0, i8 1, i8 0, ptr null, i16 11402, i32 20452225, i32 30000, i32 279620, i32 60000, ptr null, i32 0, [2 x %struct.dibGPIOFunction] [%struct.dibGPIOFunction { i8 2, i8 3, i32 49, i32 0, i32 48 }, %struct.dibGPIOFunction { i8 2, i8 4, i32 49, i32 0, i32 33 }], %struct.dibSubbandSelection { i8 2, [8 x %struct.anon.145] [%struct.anon.145 { i16 240, %struct.dibGPIOFunction { i8 2, i8 6, i32 6, i32 0, i32 6 } }, %struct.anon.145 { i16 890, %struct.dibGPIOFunction { i8 2, i8 6, i32 6, i32 0, i32 0 } }, %struct.anon.145 zeroinitializer, %struct.anon.145 zeroinitializer, %struct.anon.145 zeroinitializer, %struct.anon.145 zeroinitializer, %struct.anon.145 zeroinitializer, %struct.anon.145 zeroinitializer] }, i8 4 }], [104 x i8] zeroinitializer }, align 32
@nim9090md_frontend_attach._entry.239 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.212, ptr @.str.236, ptr @.str.82, i32 2493, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@nim9090md_frontend_attach._entry_ptr.240 = internal global ptr @nim9090md_frontend_attach._entry.239, section ".printk_index", align 4
@nim9090md_frontend_attach._entry.241 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.212, ptr @.str.236, ptr @.str.82, i32 2501, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@nim9090md_frontend_attach._entry_ptr.242 = internal global ptr @nim9090md_frontend_attach._entry.241, section ".printk_index", align 4
@__const.nim9090md_tuner_attach.data_dib190 = private unnamed_addr constant [10 x i16] [i16 1, i16 21364, i16 2, i16 430, i16 7, i16 32, i16 0, i16 239, i16 8, i16 1030], align 2
@nim9090md_tuner_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.216, ptr @.str.243, ptr @.str.82, i32 2522, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.243 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"nim9090md_tuner_attach\00", [41 x i8] zeroinitializer }, align 32
@nim9090md_tuner_attach._entry_ptr = internal global ptr @nim9090md_tuner_attach._entry, section ".printk_index", align 4
@nim9090md_tuner_attach._entry.244 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.216, ptr @.str.243, ptr @.str.82, i32 2540, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@nim9090md_tuner_attach._entry_ptr.245 = internal global ptr @nim9090md_tuner_attach._entry.244, section ".printk_index", align 4
@nim9090md_dib0090_config = internal global { [2 x { { i32, i8, i8, i8, i16 }, ptr, ptr, i32, i32, ptr, i8, i8, i8, i16, i16, i8, i8, i8, i8, i8, ptr, i8, i16, ptr, i8, i8 }], [32 x i8] } { [2 x { { i32, i8, i8, i8, i16 }, ptr, ptr, i32, i32, ptr, i8, i8, i8, i16, i16, i8, i8, i8, i8, i8, ptr, i8, i16, ptr, i8, i8 }] [{ { i32, i8, i8, i8, i16 }, ptr, ptr, i32, i32, ptr, i8, i8, i8, i16, i16, i8, i8, i8, i8, i8, ptr, i8, i16, ptr, i8, i8 } { { i32, i8, i8, i8, i16 } { i32 30000, i8 65, i8 32, i8 8, i16 0 }, ptr @dib90x0_tuner_reset, ptr @dib90x0_tuner_sleep, i32 0, i32 0, ptr null, i8 -128, i8 0, i8 0, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, ptr null, i8 0, i16 0, ptr null, i8 0, i8 0 }, { { i32, i8, i8, i8, i16 }, ptr, ptr, i32, i32, ptr, i8, i8, i8, i16, i16, i8, i8, i8, i8, i8, ptr, i8, i16, ptr, i8, i8 } { { i32, i8, i8, i8, i16 } { i32 30000, i8 65, i8 32, i8 8, i16 0 }, ptr @dib90x0_tuner_reset, ptr @dib90x0_tuner_sleep, i32 0, i32 0, ptr null, i8 0, i8 0, i8 0, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, ptr null, i8 0, i16 0, ptr null, i8 0, i8 0 }], [32 x i8] zeroinitializer }, align 32
@nim7090_frontend_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.247, ptr @.str.82, i32 3047, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.247 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"nim7090_frontend_attach\00", [40 x i8] zeroinitializer }, align 32
@nim7090_frontend_attach._entry_ptr = internal global ptr @nim7090_frontend_attach._entry, section ".printk_index", align 4
@nim7090_dib7000p_config = internal global { %struct.dib7000p_config, [52 x i8] } { %struct.dib7000p_config { i8 1, i8 1, i8 1, ptr @tfe7790p_update_lna, i8 2, ptr @dib7090_agc_config, ptr @dib7090_clock_config_12_mhz, i16 -1, i16 0, i16 -1, i16 0, i8 0, i8 0, ptr @dib7090_agc_restart, i8 5, i8 0, i16 0, i8 0, i8 -128 }, [52 x i8] zeroinitializer }, align 32
@nim7090_frontend_attach._entry.248 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.101, ptr @.str.247, ptr @.str.82, i32 3063, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@nim7090_frontend_attach._entry_ptr.249 = internal global ptr @nim7090_frontend_attach._entry.248, section ".printk_index", align 4
@dib7090_agc_config = internal global { [2 x %struct.dibx000_agc_config], [32 x i8] } { [2 x %struct.dibx000_agc_config] [%struct.dibx000_agc_config { i8 2, i16 10346, i16 687, i16 10, i8 0, i16 118, i8 0, i16 1200, i8 3, i8 5, i16 -1, i16 -32768, i16 -1, i16 0, i8 0, i8 32, i8 114, i8 -113, i8 -112, i8 114, i8 -29, i8 116, i8 117, i8 18, i8 0, i8 20, i8 59, i8 0, %struct.anon.144 zeroinitializer }, %struct.dibx000_agc_config { i8 52, i16 10346, i16 732, i16 10, i8 0, i16 118, i8 0, i16 1200, i8 3, i8 5, i16 -1, i16 0, i16 -1, i16 0, i8 0, i8 0, i8 98, i8 0, i8 -89, i8 98, i8 -1, i8 104, i8 0, i8 18, i8 0, i8 20, i8 59, i8 0, %struct.anon.144 zeroinitializer }], [32 x i8] zeroinitializer }, align 32
@dib7090_clock_config_12_mhz = internal global { %struct.dibx000_bandwidth_config, [32 x i8] } { %struct.dibx000_bandwidth_config { i32 60000, i32 15000, i8 1, i8 5, i8 0, i8 0, i8 0, i8 0, i8 0, i8 1, i8 1, i8 2, i16 -11764, i32 0, i32 20452225, i32 15000000 }, [32 x i8] zeroinitializer }, align 32
@tfe7790p_update_lna._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.250, ptr @.str.251, ptr @.str.82, i32 2667, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.250 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"update LNA: agc global=%i\00", [38 x i8] zeroinitializer }, align 32
@.str.251 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"tfe7790p_update_lna\00", [44 x i8] zeroinitializer }, align 32
@tfe7790p_update_lna._entry_ptr = internal global ptr @tfe7790p_update_lna._entry, section ".printk_index", align 4
@dib7090_agc_restart._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.252, ptr @.str.253, ptr @.str.82, i32 2656, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.252 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"AGC restart callback: %d\00", [39 x i8] zeroinitializer }, align 32
@.str.253 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"dib7090_agc_restart\00", [44 x i8] zeroinitializer }, align 32
@dib7090_agc_restart._entry_ptr = internal global ptr @dib7090_agc_restart._entry, section ".printk_index", align 4
@nim7090_tuner_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.181, ptr @.str.254, ptr @.str.82, i32 3081, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.254 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"nim7090_tuner_attach\00", [43 x i8] zeroinitializer }, align 32
@nim7090_tuner_attach._entry_ptr = internal global ptr @nim7090_tuner_attach._entry, section ".printk_index", align 4
@dib7090_wbd_table = internal global { [5 x %struct.dib0090_wbd_slope], [36 x i8] } { [5 x %struct.dib0090_wbd_slope] [%struct.dib0090_wbd_slope { i16 380, i16 81, i16 850, i16 64, i16 540, i8 4 }, %struct.dib0090_wbd_slope { i16 860, i16 51, i16 866, i16 21, i16 375, i8 4 }, %struct.dib0090_wbd_slope { i16 1700, i16 0, i16 250, i16 0, i16 100, i8 6 }, %struct.dib0090_wbd_slope { i16 2600, i16 0, i16 250, i16 0, i16 100, i8 6 }, %struct.dib0090_wbd_slope { i16 -1, i16 0, i16 0, i16 0, i16 0, i8 0 }], [36 x i8] zeroinitializer }, align 32
@nim7090_dib0090_config = internal global { { { i32, i8, i8, i8, i16 }, ptr, ptr, i32, i32, ptr, i8, i8, i8, i16, i16, i8, i8, i8, i8, i8, ptr, i8, i16, ptr, i8, i8 }, [32 x i8] } { { { i32, i8, i8, i8, i16 }, ptr, ptr, i32, i32, ptr, i8, i8, i8, i16, i16, i8, i8, i8, i8, i8, ptr, i8, i16, ptr, i8, i8 } { { i32, i8, i8, i8, i16 } { i32 12000, i8 3, i8 24, i8 0, i16 0 }, ptr null, ptr null, i32 0, i32 0, ptr null, i8 -128, i8 0, i8 0, i16 0, i16 0, i8 1, i8 0, i8 0, i8 0, i8 1, ptr null, i8 0, i16 0, ptr @dib7090_wbd_table, i8 0, i8 0 }, [32 x i8] zeroinitializer }, align 32
@dib7090p_get_best_sampling._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.256, ptr @.str.257, ptr @.str.82, i32 2569, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.256 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"bandwidth = %d fdem_min =%d\00", [36 x i8] zeroinitializer }, align 32
@.str.257 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"dib7090p_get_best_sampling\00", [37 x i8] zeroinitializer }, align 32
@dib7090p_get_best_sampling._entry_ptr = internal global ptr @dib7090p_get_best_sampling._entry, section ".printk_index", align 4
@dib7090p_get_best_sampling._entry.258 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.259, ptr @.str.257, ptr @.str.82, i32 2582, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.259 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"MIN prediv = %d : MAX prediv = %d\00", [62 x i8] zeroinitializer }, align 32
@dib7090p_get_best_sampling._entry_ptr.260 = internal global ptr @dib7090p_get_best_sampling._entry.258, section ".printk_index", align 4
@dib7090p_get_best_sampling._entry.261 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.262, ptr @.str.257, ptr @.str.82, i32 2609, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.262 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"loopdiv=%i prediv=%i timf=%i\00", [35 x i8] zeroinitializer }, align 32
@dib7090p_get_best_sampling._entry_ptr.263 = internal global ptr @dib7090p_get_best_sampling._entry.261, section ".printk_index", align 4
@tfe7090pvr_frontend0_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.264, ptr @.str.82, i32 3096, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.264 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"tfe7090pvr_frontend0_attach\00", [36 x i8] zeroinitializer }, align 32
@tfe7090pvr_frontend0_attach._entry_ptr = internal global ptr @tfe7090pvr_frontend0_attach._entry, section ".printk_index", align 4
@tfe7090pvr_dib7000p_config = internal global { [2 x %struct.dib7000p_config], [40 x i8] } { [2 x %struct.dib7000p_config] [%struct.dib7000p_config { i8 1, i8 1, i8 1, ptr @tfe7090p_pvr_update_lna, i8 2, ptr @dib7090_agc_config, ptr @dib7090_clock_config_12_mhz, i16 -1, i16 0, i16 -1, i16 0, i8 0, i8 0, ptr @dib7090_agc_restart, i8 1, i8 0, i16 0, i8 -112, i8 -128 }, %struct.dib7000p_config { i8 1, i8 1, i8 1, ptr @tfe7090p_pvr_update_lna, i8 2, ptr @dib7090_agc_config, ptr @dib7090_clock_config_12_mhz, i16 -1, i16 0, i16 -1, i16 0, i8 0, i8 0, ptr @dib7090_agc_restart, i8 1, i8 0, i16 0, i8 -110, i8 0 }], [40 x i8] zeroinitializer }, align 32
@tfe7090pvr_frontend0_attach._entry.265 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.101, ptr @.str.264, ptr @.str.82, i32 3116, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@tfe7090pvr_frontend0_attach._entry_ptr.266 = internal global ptr @tfe7090pvr_frontend0_attach._entry.265, section ".printk_index", align 4
@tfe7090p_pvr_update_lna._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.267, ptr @.str.268, ptr @.str.82, i32 2822, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.267 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"TFE7090P-PVR update LNA: agc global=%i\00", [57 x i8] zeroinitializer }, align 32
@.str.268 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"tfe7090p_pvr_update_lna\00", [40 x i8] zeroinitializer }, align 32
@tfe7090p_pvr_update_lna._entry_ptr = internal global ptr @tfe7090p_pvr_update_lna._entry, section ".printk_index", align 4
@tfe7090pvr_tuner0_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.181, ptr @.str.269, ptr @.str.82, i32 3166, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.269 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"tfe7090pvr_tuner0_attach\00", [39 x i8] zeroinitializer }, align 32
@tfe7090pvr_tuner0_attach._entry_ptr = internal global ptr @tfe7090pvr_tuner0_attach._entry, section ".printk_index", align 4
@tfe7090pvr_dib0090_config = internal global { [2 x { { i32, i8, i8, i8, i16 }, ptr, ptr, i32, i32, ptr, i8, i8, i8, i16, i16, i8, i8, i8, i8, i8, ptr, i8, i16, ptr, i8, i8 }], [32 x i8] } { [2 x { { i32, i8, i8, i8, i16 }, ptr, ptr, i32, i32, ptr, i8, i8, i8, i16, i16, i8, i8, i8, i8, i8, ptr, i8, i16, ptr, i8, i8 }] [{ { i32, i8, i8, i8, i16 }, ptr, ptr, i32, i32, ptr, i8, i8, i8, i16, i16, i8, i8, i8, i8, i8, ptr, i8, i16, ptr, i8, i8 } { { i32, i8, i8, i8, i16 } { i32 12000, i8 3, i8 24, i8 0, i16 0 }, ptr null, ptr null, i32 50, i32 70, ptr null, i8 -128, i8 0, i8 0, i16 0, i16 0, i8 1, i8 0, i8 0, i8 0, i8 1, ptr null, i8 0, i16 0, ptr @dib7090_wbd_table, i8 0, i8 0 }, { { i32, i8, i8, i8, i16 }, ptr, ptr, i32, i32, ptr, i8, i8, i8, i16, i16, i8, i8, i8, i8, i8, ptr, i8, i16, ptr, i8, i8 } { { i32, i8, i8, i8, i16 } { i32 12000, i8 3, i8 24, i8 0, i16 0 }, ptr null, ptr null, i32 -50, i32 -70, ptr null, i8 -128, i8 0, i8 0, i16 0, i16 0, i8 1, i8 0, i8 0, i8 0, i8 1, ptr null, i8 0, i16 0, ptr @dib7090_wbd_table, i8 0, i8 0 }], [32 x i8] zeroinitializer }, align 32
@tfe7090pvr_frontend1_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.271, ptr @.str.272, ptr @.str.82, i32 3137, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.271 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\013dib0700: the master dib7090 has to be initialized first\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.272 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"tfe7090pvr_frontend1_attach\00", [36 x i8] zeroinitializer }, align 32
@tfe7090pvr_frontend1_attach._entry_ptr = internal global ptr @tfe7090pvr_frontend1_attach._entry, section ".printk_index", align 4
@tfe7090pvr_frontend1_attach._entry.273 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.272, ptr @.str.82, i32 3141, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@tfe7090pvr_frontend1_attach._entry_ptr.274 = internal global ptr @tfe7090pvr_frontend1_attach._entry.273, section ".printk_index", align 4
@tfe7090pvr_frontend1_attach._entry.275 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.101, ptr @.str.272, ptr @.str.82, i32 3146, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@tfe7090pvr_frontend1_attach._entry_ptr.276 = internal global ptr @tfe7090pvr_frontend1_attach._entry.275, section ".printk_index", align 4
@tfe7090pvr_tuner1_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.181, ptr @.str.277, ptr @.str.82, i32 3185, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.277 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"tfe7090pvr_tuner1_attach\00", [39 x i8] zeroinitializer }, align 32
@tfe7090pvr_tuner1_attach._entry_ptr = internal global ptr @tfe7090pvr_tuner1_attach._entry, section ".printk_index", align 4
@pctv340e_frontend_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.278, ptr @.str.82, i32 3601, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.278 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"pctv340e_frontend_attach\00", [39 x i8] zeroinitializer }, align 32
@pctv340e_frontend_attach._entry_ptr = internal global ptr @pctv340e_frontend_attach._entry, section ".printk_index", align 4
@pctv_340e_config = internal global { %struct.dib7000p_config, [52 x i8] } { %struct.dib7000p_config { i8 1, i8 0, i8 0, ptr null, i8 1, ptr @stk7700p_7000p_xc4000_agc_config, ptr @stk7700p_xc4000_pll_config, i16 -1, i16 0, i16 -1, i16 0, i8 0, i8 0, ptr null, i8 0, i8 0, i16 0, i8 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@stk7700p_7000p_xc4000_agc_config = internal global { %struct.dibx000_agc_config, [48 x i8] } { %struct.dibx000_agc_config { i8 6, i16 100, i16 712, i16 21, i8 0, i16 118, i8 1, i16 2867, i8 0, i8 2, i16 0, i16 0, i16 -25818, i16 9930, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 -128, i8 29, i8 29, i8 17, i8 27, i8 23, i8 51, i8 0, %struct.anon.144 zeroinitializer }, [48 x i8] zeroinitializer }, align 32
@stk7700p_xc4000_pll_config = internal global { %struct.dibx000_bandwidth_config, [32 x i8] } { %struct.dibx000_bandwidth_config { i32 60000, i32 30000, i8 1, i8 8, i8 3, i8 1, i8 0, i8 0, i8 0, i8 1, i8 1, i8 0, i16 -11764, i32 39370534, i32 20452225, i32 30000000 }, [32 x i8] zeroinitializer }, align 32
@xc4000_tuner_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.279, ptr @.str.280, ptr @.str.82, i32 3656, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.279 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013Could not reach tuner i2c bus\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.280 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"xc4000_tuner_attach\00", [44 x i8] zeroinitializer }, align 32
@xc4000_tuner_attach._entry_ptr = internal global ptr @xc4000_tuner_attach._entry, section ".printk_index", align 4
@.str.281 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"xc4000_attach\00", [18 x i8] zeroinitializer }, align 32
@.str.282 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"symbol:xc4000_attach\00", [43 x i8] zeroinitializer }, align 32
@dib7000p_xc4000_tunerconfig = internal global { %struct.xc4000_config, [24 x i8] } { %struct.xc4000_config { i8 97, i8 1, i8 0, i8 0, i32 5400 }, [24 x i8] zeroinitializer }, align 32
@xc4000_tuner_attach._entry.283 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.284, ptr @.str.280, ptr @.str.82, i32 3664, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.284 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013DVB: Unable to find symbol xc4000_attach()\0A\00", [50 x i8] zeroinitializer }, align 32
@xc4000_tuner_attach._entry_ptr.285 = internal global ptr @xc4000_tuner_attach._entry.283, section ".printk_index", align 4
@dib0700_xc4000_tuner_callback._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.286, ptr @.str.287, ptr @.str.82, i32 3515, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.286 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\013dib0700: xc4000: unknown tuner callback command: %d\0A\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.287 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"dib0700_xc4000_tuner_callback\00", [34 x i8] zeroinitializer }, align 32
@dib0700_xc4000_tuner_callback._entry_ptr = internal global ptr @dib0700_xc4000_tuner_callback._entry, section ".printk_index", align 4
@tfe7790p_frontend_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.288, ptr @.str.82, i32 3200, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.288 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"tfe7790p_frontend_attach\00", [39 x i8] zeroinitializer }, align 32
@tfe7790p_frontend_attach._entry_ptr = internal global ptr @tfe7790p_frontend_attach._entry, section ".printk_index", align 4
@tfe7790p_dib7000p_config = internal global { %struct.dib7000p_config, [52 x i8] } { %struct.dib7000p_config { i8 1, i8 1, i8 1, ptr @tfe7790p_update_lna, i8 2, ptr @dib7090_agc_config, ptr @dib7090_clock_config_12_mhz, i16 -1, i16 0, i16 -1, i16 0, i8 0, i8 0, ptr @dib7090_agc_restart, i8 1, i8 0, i16 0, i8 0, i8 -128 }, [52 x i8] zeroinitializer }, align 32
@tfe7790p_frontend_attach._entry.289 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.101, ptr @.str.288, ptr @.str.82, i32 3221, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@tfe7790p_frontend_attach._entry_ptr.290 = internal global ptr @tfe7790p_frontend_attach._entry.289, section ".printk_index", align 4
@tfe7790p_tuner_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.181, ptr @.str.291, ptr @.str.82, i32 3243, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.291 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"tfe7790p_tuner_attach\00", [42 x i8] zeroinitializer }, align 32
@tfe7790p_tuner_attach._entry_ptr = internal global ptr @tfe7790p_tuner_attach._entry, section ".printk_index", align 4
@tfe7790p_dib0090_config = internal global { { { i32, i8, i8, i8, i16 }, ptr, ptr, i32, i32, ptr, i8, i8, i8, i16, i16, i8, i8, i8, i8, i8, ptr, i8, i16, ptr, i8, i8 }, [32 x i8] } { { { i32, i8, i8, i8, i16 }, ptr, ptr, i32, i32, ptr, i8, i8, i8, i16, i16, i8, i8, i8, i8, i8, ptr, i8, i16, ptr, i8, i8 } { { i32, i8, i8, i8, i16 } { i32 12000, i8 3, i8 24, i8 0, i16 0 }, ptr null, ptr null, i32 0, i32 0, ptr null, i8 -128, i8 0, i8 0, i16 0, i16 0, i8 1, i8 0, i8 0, i8 0, i8 1, ptr null, i8 0, i16 0, ptr @dib7090_wbd_table, i8 0, i8 1 }, [32 x i8] zeroinitializer }, align 32
@tfe8096p_frontend_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.167, ptr @.str.293, ptr @.str.82, i32 2150, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.293 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"tfe8096p_frontend_attach\00", [39 x i8] zeroinitializer }, align 32
@tfe8096p_frontend_attach._entry_ptr = internal global ptr @tfe8096p_frontend_attach._entry, section ".printk_index", align 4
@tfe8096p_dib8000_config = internal global { %struct.dib8000_config, [52 x i8] } { %struct.dib8000_config { i8 1, i8 1, i8 0, ptr null, i8 2, ptr @dib8096p_agc_config, ptr @dib8096p_clock_config_12_mhz, i16 -1, i16 0, i16 -1, i16 0, ptr null, i16 0, i16 48, i8 0, i8 5, i8 0, i8 -128, ptr null }, [52 x i8] zeroinitializer }, align 32
@dib8096p_agc_config = internal global { [2 x %struct.dibx000_agc_config], [32 x i8] } { [2 x %struct.dibx000_agc_config] [%struct.dibx000_agc_config { i8 2, i16 10346, i16 684, i16 10, i8 0, i16 118, i8 0, i16 1200, i8 3, i8 5, i16 -1, i16 0, i16 32767, i16 0, i8 0, i8 0, i8 105, i8 0, i8 -100, i8 105, i8 -1, i8 54, i8 0, i8 28, i8 26, i8 31, i8 51, i8 0, %struct.anon.144 zeroinitializer }, %struct.dibx000_agc_config { i8 52, i16 10346, i16 732, i16 10, i8 0, i16 118, i8 0, i16 1200, i8 3, i8 5, i16 -1, i16 0, i16 32767, i16 0, i8 0, i8 0, i8 98, i8 0, i8 -89, i8 98, i8 -1, i8 52, i8 0, i8 28, i8 26, i8 31, i8 51, i8 0, %struct.anon.144 zeroinitializer }], [32 x i8] zeroinitializer }, align 32
@dib8096p_clock_config_12_mhz = internal global { %struct.dibx000_bandwidth_config, [32 x i8] } { %struct.dibx000_bandwidth_config { i32 108000, i32 13500, i8 1, i8 9, i8 1, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 2, i16 -11764, i32 0, i32 20199729, i32 12000000 }, [32 x i8] zeroinitializer }, align 32
@dib8096p_wbd_table = internal global { [5 x %struct.dib0090_wbd_slope], [36 x i8] } { [5 x %struct.dib0090_wbd_slope] [%struct.dib0090_wbd_slope { i16 380, i16 81, i16 850, i16 64, i16 540, i8 4 }, %struct.dib0090_wbd_slope { i16 860, i16 51, i16 866, i16 21, i16 375, i8 4 }, %struct.dib0090_wbd_slope { i16 1700, i16 0, i16 250, i16 0, i16 100, i8 6 }, %struct.dib0090_wbd_slope { i16 2600, i16 0, i16 250, i16 0, i16 100, i8 6 }, %struct.dib0090_wbd_slope { i16 -1, i16 0, i16 0, i16 0, i16 0, i8 0 }], [36 x i8] zeroinitializer }, align 32
@tfe8096p_tuner_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.181, ptr @.str.294, ptr @.str.82, i32 2190, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.294 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"tfe8096p_tuner_attach\00", [42 x i8] zeroinitializer }, align 32
@tfe8096p_tuner_attach._entry_ptr = internal global ptr @tfe8096p_tuner_attach._entry, section ".printk_index", align 4
@tfe8096p_dib0090_config = internal global { { { i32, i8, i8, i8, i16 }, ptr, ptr, i32, i32, ptr, i8, i8, i8, i16, i16, i8, i8, i8, i8, i8, ptr, i8, i16, ptr, i8, i8 }, [32 x i8] } { { { i32, i8, i8, i8, i16 }, ptr, ptr, i32, i32, ptr, i8, i8, i8, i16, i16, i8, i8, i8, i8, i8, ptr, i8, i16, ptr, i8, i8 } { { i32, i8, i8, i8, i16 } { i32 12000, i8 3, i8 24, i8 0, i16 0 }, ptr null, ptr null, i32 -143, i32 -143, ptr @dib8090_get_adc_power, i8 -128, i8 0, i8 0, i16 0, i16 0, i8 1, i8 0, i8 0, i8 0, i8 1, ptr null, i8 1, i16 0, ptr null, i8 0, i8 0 }, [32 x i8] zeroinitializer }, align 32
@dib8096p_get_best_sampling._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.296, ptr @.str.297, ptr @.str.82, i32 2055, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.296 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"bandwidth = %d\00", [17 x i8] zeroinitializer }, align 32
@.str.297 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"dib8096p_get_best_sampling\00", [37 x i8] zeroinitializer }, align 32
@dib8096p_get_best_sampling._entry_ptr = internal global ptr @dib8096p_get_best_sampling._entry, section ".printk_index", align 4
@dib8096p_get_best_sampling._entry.298 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.259, ptr @.str.297, ptr @.str.82, i32 2068, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dib8096p_get_best_sampling._entry_ptr.299 = internal global ptr @dib8096p_get_best_sampling._entry.298, section ".printk_index", align 4
@dib8096p_get_best_sampling._entry.300 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.301, ptr @.str.297, ptr @.str.82, i32 2097, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.301 = internal constant { [89 x i8], [39 x i8] } { [89 x i8] c"RF %6d; BW %6d; Xtal %6d; Fmem %6d; Fdem %6d; Fs %6d; Prediv %2d; Loopdiv %2d; Timf %8d;\00", [39 x i8] zeroinitializer }, align 32
@dib8096p_get_best_sampling._entry_ptr.302 = internal global ptr @dib8096p_get_best_sampling._entry.300, section ".printk_index", align 4
@stk809x_frontend1_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.167, ptr @.str.303, ptr @.str.82, i32 1783, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.303 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"stk809x_frontend1_attach\00", [39 x i8] zeroinitializer }, align 32
@stk809x_frontend1_attach._entry_ptr = internal global ptr @stk809x_frontend1_attach._entry, section ".printk_index", align 4
@.str.304 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mn88472\00", [24 x i8] zeroinitializer }, align 32
@.str.305 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"tda18250\00", [23 x i8] zeroinitializer }, align 32
@switch.table.dib8096_set_param_override = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 21387946, i32 20199727, i32 19136583], [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.306 = internal global [4 x i64] [i64 2, i64 32, i64 21, i64 22]
@__sancov_gen_cov_switch_values.307 = internal global [5 x i64] [i64 3, i64 16, i64 0, i64 1, i64 2]
@___asan_gen_.308 = private unnamed_addr constant [21 x i8] c"force_lna_activation\00", align 1
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1479, i32 27, i32 12 }
@___asan_gen_.311 = private unnamed_addr constant [21 x i8] c"dib0700_usb_id_table\00", align 1
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1479, i32 3819, i32 22 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1479, i32 3943, i32 3 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1479, i32 4000, i32 24 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1479, i32 3964, i32 8 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1479, i32 3968, i32 8 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1479, i32 3972, i32 8 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1479, i32 3976, i32 8 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1479, i32 3980, i32 8 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1479, i32 3984, i32 8 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1479, i32 3988, i32 8 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1479, i32 3992, i32 8 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1479, i32 4032, i32 8 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1479, i32 4080, i32 8 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1479, i32 4084, i32 8 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1479, i32 4088, i32 8 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1479, i32 4092, i32 8 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1479, i32 4096, i32 8 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1479, i32 4150, i32 21 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1479, i32 4133, i32 8 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1479, i32 4137, i32 8 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1479, i32 4141, i32 8 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1479, i32 4178, i32 8 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1479, i32 4182, i32 8 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1479, i32 4186, i32 8 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1479, i32 4190, i32 8 }
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1479, i32 4198, i32 8 }
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1479, i32 4202, i32 8 }
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1479, i32 4206, i32 8 }
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1479, i32 4210, i32 8 }
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1479, i32 4214, i32 8 }
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1479, i32 4218, i32 8 }
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1479, i32 4222, i32 8 }
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1479, i32 4259, i32 8 }
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1479, i32 4263, i32 8 }
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1479, i32 4267, i32 8 }
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1479, i32 4316, i32 8 }
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1479, i32 4320, i32 8 }
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1479, i32 4324, i32 8 }
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1479, i32 4373, i32 8 }
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1479, i32 4377, i32 8 }
@___asan_gen_.433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1479, i32 4381, i32 8 }
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1479, i32 4385, i32 7 }
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1479, i32 4390, i32 7 }
@___asan_gen_.442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1479, i32 4447, i32 24 }
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1479, i32 4439, i32 8 }
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1479, i32 4476, i32 8 }
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1479, i32 4480, i32 8 }
@___asan_gen_.454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1479, i32 4484, i32 8 }
@___asan_gen_.457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1479, i32 4488, i32 8 }
@___asan_gen_.460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1479, i32 4492, i32 8 }
@___asan_gen_.463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1479, i32 4496, i32 8 }
@___asan_gen_.466 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1479, i32 4500, i32 8 }
@___asan_gen_.469 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1479, i32 4504, i32 8 }
@___asan_gen_.472 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1479, i32 4508, i32 8 }
@___asan_gen_.475 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1479, i32 4512, i32 8 }
@___asan_gen_.478 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1479, i32 4544, i32 8 }
@___asan_gen_.481 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1479, i32 4548, i32 8 }
@___asan_gen_.484 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1479, i32 4580, i32 8 }
@___asan_gen_.487 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1479, i32 4584, i32 8 }
@___asan_gen_.490 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1479, i32 4610, i32 8 }
@___asan_gen_.493 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1479, i32 4614, i32 8 }
@___asan_gen_.496 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1479, i32 4620, i32 8 }
@___asan_gen_.499 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1479, i32 4624, i32 8 }
@___asan_gen_.502 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1479, i32 4660, i32 8 }
@___asan_gen_.505 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1479, i32 4664, i32 8 }
@___asan_gen_.508 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1479, i32 4668, i32 8 }
@___asan_gen_.511 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1479, i32 4717, i32 8 }
@___asan_gen_.514 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1479, i32 4754, i32 8 }
@___asan_gen_.517 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1479, i32 4791, i32 8 }
@___asan_gen_.520 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1479, i32 4828, i32 8 }
@___asan_gen_.523 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1479, i32 4865, i32 8 }
@___asan_gen_.526 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1479, i32 4902, i32 8 }
@___asan_gen_.529 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1479, i32 4953, i32 8 }
@___asan_gen_.532 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1479, i32 4985, i32 8 }
@___asan_gen_.535 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1479, i32 4989, i32 8 }
@___asan_gen_.538 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1479, i32 5025, i32 8 }
@___asan_gen_.541 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1479, i32 5063, i32 8 }
@___asan_gen_.544 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1479, i32 5116, i32 8 }
@___asan_gen_.547 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1479, i32 5147, i32 6 }
@___asan_gen_.548 = private unnamed_addr constant [16 x i8] c"dib0700_devices\00", align 1
@___asan_gen_.550 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1479, i32 3941, i32 34 }
@___asan_gen_.551 = private unnamed_addr constant [21 x i8] c"dib0700_device_count\00", align 1
@___asan_gen_.553 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1479, i32 5155, i32 5 }
@___asan_gen_.571 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1479, i32 706, i32 7 }
@___asan_gen_.572 = private unnamed_addr constant [25 x i8] c"stk7700p_dib7000p_config\00", align 1
@___asan_gen_.574 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1479, i32 689, i32 31 }
@___asan_gen_.581 = private unnamed_addr constant [25 x i8] c"stk7700p_dib7000m_config\00", align 1
@___asan_gen_.583 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1479, i32 675, i32 31 }
@___asan_gen_.589 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1479, i32 730, i32 25 }
@___asan_gen_.590 = private unnamed_addr constant [33 x i8] c"stk7700p_7000p_mt2060_agc_config\00", align 1
@___asan_gen_.592 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1479, i32 623, i32 34 }
@___asan_gen_.593 = private unnamed_addr constant [20 x i8] c"stk7700p_pll_config\00", align 1
@___asan_gen_.595 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1479, i32 656, i32 40 }
@___asan_gen_.596 = private unnamed_addr constant [33 x i8] c"stk7700p_7000m_mt2060_agc_config\00", align 1
@___asan_gen_.598 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1479, i32 577, i32 34 }
@___asan_gen_.605 = private unnamed_addr constant [23 x i8] c"stk7700p_mt2060_config\00", align 1
@___asan_gen_.607 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1479, i32 736, i32 29 }
@___asan_gen_.616 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1479, i32 758, i32 9 }
@___asan_gen_.625 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1479, i32 537, i32 3 }
@___asan_gen_.626 = private unnamed_addr constant [25 x i8] c"bristol_dib3000mc_config\00", align 1
@___asan_gen_.628 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1479, i32 72, i32 32 }
@___asan_gen_.643 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1479, i32 105, i32 32 }
@___asan_gen_.644 = private unnamed_addr constant [35 x i8] c"bristol_dib3000p_mt2060_agc_config\00", align 1
@___asan_gen_.646 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1479, i32 50, i32 34 }
@___asan_gen_.647 = private unnamed_addr constant [22 x i8] c"bristol_mt2060_config\00", align 1
@___asan_gen_.649 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1479, i32 40, i32 29 }
@___asan_gen_.655 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1479, i32 129, i32 9 }
@___asan_gen_.661 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1479, i32 310, i32 7 }
@___asan_gen_.662 = private unnamed_addr constant [32 x i8] c"stk7700d_dib7000p_mt2266_config\00", align 1
@___asan_gen_.664 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1479, i32 239, i32 31 }
@___asan_gen_.670 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1479, i32 327, i32 4 }
@___asan_gen_.671 = private unnamed_addr constant [33 x i8] c"stk7700d_7000p_mt2266_agc_config\00", align 1
@___asan_gen_.673 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1479, i32 137, i32 34 }
@___asan_gen_.674 = private unnamed_addr constant [27 x i8] c"stk7700d_mt2266_pll_config\00", align 1
@___asan_gen_.676 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1479, i32 221, i32 40 }
@___asan_gen_.683 = private unnamed_addr constant [23 x i8] c"stk7700d_mt2266_config\00", align 1
@___asan_gen_.685 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1479, i32 266, i32 29 }
@___asan_gen_.694 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1479, i32 347, i32 9 }
@___asan_gen_.700 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1479, i32 277, i32 7 }
@___asan_gen_.703 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1479, i32 293, i32 4 }
@___asan_gen_.709 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1479, i32 989, i32 7 }
@___asan_gen_.710 = private unnamed_addr constant [25 x i8] c"dib7070p_dib7000p_config\00", align 1
@___asan_gen_.712 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1479, i32 967, i32 31 }
@___asan_gen_.715 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1479, i32 1012, i32 3 }
@___asan_gen_.716 = private unnamed_addr constant [19 x i8] c"dib7070_agc_config\00", align 1
@___asan_gen_.718 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1479, i32 763, i32 34 }
@___asan_gen_.719 = private unnamed_addr constant [25 x i8] c"dib7070_bw_config_12_mhz\00", align 1
@___asan_gen_.721 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1479, i32 948, i32 40 }
@___asan_gen_.728 = private unnamed_addr constant [24 x i8] c"dib7070p_dib0070_config\00", align 1
@___asan_gen_.730 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1479, i32 814, i32 30 }
@___asan_gen_.739 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1479, i32 904, i32 7 }
@___asan_gen_.742 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1479, i32 907, i32 7 }
@___asan_gen_.751 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1479, i32 801, i32 2 }
@___asan_gen_.760 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1479, i32 810, i32 2 }
@___asan_gen_.769 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1479, i32 854, i32 2 }
@___asan_gen_.775 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1479, i32 3377, i32 7 }
@___asan_gen_.776 = private unnamed_addr constant [26 x i8] c"stk7070pd_dib7000p_config\00", align 1
@___asan_gen_.778 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1479, i32 3254, i32 31 }
@___asan_gen_.781 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1479, i32 3390, i32 4 }
@___asan_gen_.787 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1479, i32 3305, i32 7 }
@___asan_gen_.790 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1479, i32 3315, i32 3 }
@___asan_gen_.796 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1479, i32 3329, i32 7 }
@___asan_gen_.802 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1479, i32 459, i32 7 }
@___asan_gen_.803 = private unnamed_addr constant [32 x i8] c"stk7700ph_dib7700_xc3028_config\00", align 1
@___asan_gen_.805 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1479, i32 406, i32 31 }
@___asan_gen_.808 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1479, i32 480, i32 3 }
@___asan_gen_.809 = private unnamed_addr constant [18 x i8] c"xc3028_agc_config\00", align 1
@___asan_gen_.811 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1479, i32 352, i32 34 }
@___asan_gen_.812 = private unnamed_addr constant [17 x i8] c"xc3028_bw_config\00", align 1
@___asan_gen_.814 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1479, i32 387, i32 40 }
@___asan_gen_.815 = private unnamed_addr constant [24 x i8] c"stk7700ph_xc3028_config\00", align 1
@___asan_gen_.817 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1479, i32 449, i32 29 }
@___asan_gen_.832 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1479, i32 505, i32 9 }
@___asan_gen_.833 = private unnamed_addr constant [22 x i8] c"stk7700ph_xc3028_ctrl\00", align 1
@___asan_gen_.835 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1479, i32 443, i32 27 }
@___asan_gen_.838 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1479, i32 444, i32 11 }
@___asan_gen_.847 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1479, i32 436, i32 3 }
@___asan_gen_.854 = private unnamed_addr constant [21 x i8] c"pinnacle_801e_config\00", align 1
@___asan_gen_.856 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1479, i32 3413, i32 30 }
@___asan_gen_.865 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1479, i32 3464, i32 24 }
@___asan_gen_.872 = private unnamed_addr constant [27 x i8] c"s5h1411_xc5000_tunerconfig\00", align 1
@___asan_gen_.874 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1479, i32 3488, i32 29 }
@___asan_gen_.883 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1479, i32 3498, i32 9 }
@___asan_gen_.892 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1479, i32 3481, i32 3 }
@___asan_gen_.899 = private unnamed_addr constant [20 x i8] c"hcw_lgdt3305_config\00", align 1
@___asan_gen_.901 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1479, i32 3668, i32 31 }
@___asan_gen_.910 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1479, i32 3719, i32 24 }
@___asan_gen_.917 = private unnamed_addr constant [20 x i8] c"hcw_mxl5007t_config\00", align 1
@___asan_gen_.919 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1479, i32 3680, i32 31 }
@___asan_gen_.928 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1479, i32 3728, i32 9 }
@___asan_gen_.934 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1479, i32 1047, i32 7 }
@___asan_gen_.935 = private unnamed_addr constant [25 x i8] c"dib7770p_dib7000p_config\00", align 1
@___asan_gen_.937 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1479, i32 1024, i32 31 }
@___asan_gen_.940 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1479, i32 1070, i32 3 }
@___asan_gen_.941 = private unnamed_addr constant [24 x i8] c"dib7770p_dib0070_config\00", align 1
@___asan_gen_.943 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1479, i32 831, i32 30 }
@___asan_gen_.949 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1479, i32 889, i32 6 }
@___asan_gen_.955 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1479, i32 878, i32 2 }
@___asan_gen_.970 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1479, i32 1347, i32 7 }
@___asan_gen_.971 = private unnamed_addr constant [23 x i8] c"dib807x_dib8000_config\00", align 1
@___asan_gen_.973 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1479, i32 1193, i32 30 }
@___asan_gen_.974 = private unnamed_addr constant [19 x i8] c"dib807x_agc_config\00", align 1
@___asan_gen_.976 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1479, i32 1082, i32 34 }
@___asan_gen_.977 = private unnamed_addr constant [25 x i8] c"dib807x_bw_config_12_mhz\00", align 1
@___asan_gen_.979 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1479, i32 1174, i32 40 }
@___asan_gen_.980 = private unnamed_addr constant [23 x i8] c"dib807x_dib0070_config\00", align 1
@___asan_gen_.982 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1479, i32 1251, i32 30 }
@___asan_gen_.988 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1479, i32 1312, i32 7 }
@___asan_gen_.991 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1479, i32 1316, i32 7 }
@___asan_gen_.992 = private unnamed_addr constant [21 x i8] c"dib8070_wbd_gain_cfg\00", align 1
@___asan_gen_.994 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1479, i32 1246, i32 42 }
@___asan_gen_.1003 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1479, i32 1299, i32 2 }
@___asan_gen_.1009 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1479, i32 1379, i32 7 }
@___asan_gen_.1015 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1479, i32 1412, i32 7 }
@___asan_gen_.1021 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1479, i32 1754, i32 7 }
@___asan_gen_.1022 = private unnamed_addr constant [23 x i8] c"dib809x_dib8000_config\00", align 1
@___asan_gen_.1024 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1479, i32 1553, i32 30 }
@___asan_gen_.1025 = private unnamed_addr constant [19 x i8] c"dib8090_agc_config\00", align 1
@___asan_gen_.1027 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1479, i32 1425, i32 34 }
@___asan_gen_.1028 = private unnamed_addr constant [25 x i8] c"dib8090_pll_config_12mhz\00", align 1
@___asan_gen_.1030 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1479, i32 1512, i32 40 }
@___asan_gen_.1039 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1479, i32 1546, i32 2 }
@___asan_gen_.1054 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1479, i32 1742, i32 7 }
@___asan_gen_.1055 = private unnamed_addr constant [18 x i8] c"dib8090_wbd_table\00", align 1
@___asan_gen_.1057 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1479, i32 1595, i32 33 }
@___asan_gen_.1058 = private unnamed_addr constant [23 x i8] c"dib809x_dib0090_config\00", align 1
@___asan_gen_.1060 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1479, i32 1604, i32 30 }
@___asan_gen_.1069 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1479, i32 1662, i32 3 }
@___asan_gen_.1075 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1479, i32 1677, i32 3 }
@___asan_gen_.1081 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1479, i32 1707, i32 3 }
@___asan_gen_.1087 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1479, i32 1723, i32 3 }
@___asan_gen_.1093 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1479, i32 1729, i32 3 }
@___asan_gen_.1102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1479, i32 1639, i32 3 }
@___asan_gen_.1108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1479, i32 1645, i32 2 }
@___asan_gen_.1111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1479, i32 2411, i32 50 }
@___asan_gen_.1120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1479, i32 2412, i32 3 }
@___asan_gen_.1126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1479, i32 2415, i32 3 }
@___asan_gen_.1127 = private unnamed_addr constant [16 x i8] c"stk9090m_config\00", align 1
@___asan_gen_.1129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1479, i32 2274, i32 30 }
@___asan_gen_.1141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1479, i32 2420, i32 24 }
@___asan_gen_.1156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1479, i32 2439, i32 6 }
@___asan_gen_.1157 = private unnamed_addr constant [23 x i8] c"dib9090_dib0090_config\00", align 1
@___asan_gen_.1159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1479, i32 2328, i32 30 }
@___asan_gen_.1168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1479, i32 2238, i32 4 }
@___asan_gen_.1174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1479, i32 2241, i32 4 }
@___asan_gen_.1180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1479, i32 2244, i32 4 }
@___asan_gen_.1186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1479, i32 2247, i32 4 }
@___asan_gen_.1192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1479, i32 1821, i32 7 }
@___asan_gen_.1195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1479, i32 1848, i32 7 }
@___asan_gen_.1201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1479, i32 1801, i32 7 }
@___asan_gen_.1204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1479, i32 1807, i32 6 }
@___asan_gen_.1210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1479, i32 2482, i32 3 }
@___asan_gen_.1213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1479, i32 2485, i32 3 }
@___asan_gen_.1214 = private unnamed_addr constant [17 x i8] c"nim9090md_config\00", align 1
@___asan_gen_.1216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1479, i32 2296, i32 30 }
@___asan_gen_.1219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1479, i32 2493, i32 24 }
@___asan_gen_.1222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1479, i32 2501, i32 13 }
@___asan_gen_.1228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1479, i32 2522, i32 6 }
@___asan_gen_.1231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1479, i32 2540, i32 7 }
@___asan_gen_.1232 = private unnamed_addr constant [25 x i8] c"nim9090md_dib0090_config\00", align 1
@___asan_gen_.1234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1479, i32 2346, i32 30 }
@___asan_gen_.1240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1479, i32 3047, i32 7 }
@___asan_gen_.1241 = private unnamed_addr constant [24 x i8] c"nim7090_dib7000p_config\00", align 1
@___asan_gen_.1243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1479, i32 2789, i32 31 }
@___asan_gen_.1246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1479, i32 3063, i32 3 }
@___asan_gen_.1247 = private unnamed_addr constant [19 x i8] c"dib7090_agc_config\00", align 1
@___asan_gen_.1249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1479, i32 2688, i32 34 }
@___asan_gen_.1250 = private unnamed_addr constant [28 x i8] c"dib7090_clock_config_12_mhz\00", align 1
@___asan_gen_.1252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1479, i32 2770, i32 40 }
@___asan_gen_.1261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1479, i32 2667, i32 2 }
@___asan_gen_.1270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1479, i32 2656, i32 2 }
@___asan_gen_.1276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1479, i32 3081, i32 6 }
@___asan_gen_.1277 = private unnamed_addr constant [18 x i8] c"dib7090_wbd_table\00", align 1
@___asan_gen_.1279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1479, i32 2680, i32 33 }
@___asan_gen_.1280 = private unnamed_addr constant [23 x i8] c"nim7090_dib0090_config\00", align 1
@___asan_gen_.1282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1479, i32 2892, i32 30 }
@___asan_gen_.1291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1479, i32 2569, i32 2 }
@___asan_gen_.1297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1479, i32 2582, i32 2 }
@___asan_gen_.1303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1479, i32 2609, i32 7 }
@___asan_gen_.1309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1479, i32 3096, i32 7 }
@___asan_gen_.1310 = private unnamed_addr constant [27 x i8] c"tfe7090pvr_dib7000p_config\00", align 1
@___asan_gen_.1312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1479, i32 2834, i32 31 }
@___asan_gen_.1315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1479, i32 3116, i32 3 }
@___asan_gen_.1324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1479, i32 2822, i32 2 }
@___asan_gen_.1330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1479, i32 3166, i32 6 }
@___asan_gen_.1331 = private unnamed_addr constant [26 x i8] c"tfe7090pvr_dib0090_config\00", align 1
@___asan_gen_.1333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1479, i32 2983, i32 30 }
@___asan_gen_.1342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1479, i32 3137, i32 3 }
@___asan_gen_.1345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1479, i32 3141, i32 7 }
@___asan_gen_.1348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1479, i32 3146, i32 3 }
@___asan_gen_.1354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1479, i32 3185, i32 6 }
@___asan_gen_.1360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1479, i32 3601, i32 7 }
@___asan_gen_.1361 = private unnamed_addr constant [17 x i8] c"pctv_340e_config\00", align 1
@___asan_gen_.1363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1479, i32 3573, i32 31 }
@___asan_gen_.1364 = private unnamed_addr constant [33 x i8] c"stk7700p_7000p_xc4000_agc_config\00", align 1
@___asan_gen_.1366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1479, i32 3522, i32 34 }
@___asan_gen_.1367 = private unnamed_addr constant [27 x i8] c"stk7700p_xc4000_pll_config\00", align 1
@___asan_gen_.1369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1479, i32 3553, i32 40 }
@___asan_gen_.1378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1479, i32 3656, i32 3 }
@___asan_gen_.1385 = private unnamed_addr constant [28 x i8] c"dib7000p_xc4000_tunerconfig\00", align 1
@___asan_gen_.1387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1479, i32 3639, i32 29 }
@___asan_gen_.1393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1479, i32 3663, i32 9 }
@___asan_gen_.1402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1479, i32 3515, i32 3 }
@___asan_gen_.1408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1479, i32 3200, i32 7 }
@___asan_gen_.1409 = private unnamed_addr constant [25 x i8] c"tfe7790p_dib7000p_config\00", align 1
@___asan_gen_.1411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1479, i32 2922, i32 31 }
@___asan_gen_.1414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1479, i32 3220, i32 3 }
@___asan_gen_.1420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1479, i32 3242, i32 6 }
@___asan_gen_.1421 = private unnamed_addr constant [24 x i8] c"tfe7790p_dib0090_config\00", align 1
@___asan_gen_.1423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1479, i32 2950, i32 30 }
@___asan_gen_.1429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1479, i32 2150, i32 7 }
@___asan_gen_.1430 = private unnamed_addr constant [24 x i8] c"tfe8096p_dib8000_config\00", align 1
@___asan_gen_.1432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1479, i32 1969, i32 30 }
@___asan_gen_.1433 = private unnamed_addr constant [20 x i8] c"dib8096p_agc_config\00", align 1
@___asan_gen_.1435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1479, i32 1858, i32 34 }
@___asan_gen_.1436 = private unnamed_addr constant [29 x i8] c"dib8096p_clock_config_12_mhz\00", align 1
@___asan_gen_.1438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1479, i32 1950, i32 40 }
@___asan_gen_.1439 = private unnamed_addr constant [19 x i8] c"dib8096p_wbd_table\00", align 1
@___asan_gen_.1441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1479, i32 1988, i32 33 }
@___asan_gen_.1447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1479, i32 2189, i32 6 }
@___asan_gen_.1448 = private unnamed_addr constant [24 x i8] c"tfe8096p_dib0090_config\00", align 1
@___asan_gen_.1450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1479, i32 1996, i32 30 }
@___asan_gen_.1459 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1479, i32 2055, i32 2 }
@___asan_gen_.1462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1479, i32 2068, i32 2 }
@___asan_gen_.1468 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1479, i32 2097, i32 7 }
@___asan_gen_.1469 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.1474 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1479, i32 1783, i32 7 }
@___asan_gen_.1477 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1479, i32 3766, i32 21 }
@___asan_gen_.1478 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.1479 = private constant [47 x i8] c"../drivers/media/usb/dvb-usb/dib0700_devices.c\00", align 1
@___asan_gen_.1480 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1479, i32 3793, i32 21 }
@___asan_gen_.1481 = private unnamed_addr constant [40 x i8] c"switch.table.dib8096_set_param_override\00", align 1
@llvm.compiler.used = appending global [494 x ptr] [ptr @__UNIQUE_ID_force_lna_activation387, ptr @__UNIQUE_ID_force_lna_activationtype386, ptr @__param_force_lna_activation, ptr @bristol_frontend_attach._entry, ptr @bristol_frontend_attach._entry_ptr, ptr @bristol_tuner_attach._entry, ptr @bristol_tuner_attach._entry_ptr, ptr @dib01x0_pmu_update._entry, ptr @dib01x0_pmu_update._entry.221, ptr @dib01x0_pmu_update._entry.224, ptr @dib01x0_pmu_update._entry.227, ptr @dib01x0_pmu_update._entry_ptr, ptr @dib01x0_pmu_update._entry_ptr.223, ptr @dib01x0_pmu_update._entry_ptr.226, ptr @dib01x0_pmu_update._entry_ptr.229, ptr @dib0700_rc_query_old_firmware._entry, ptr @dib0700_rc_query_old_firmware._entry_ptr, ptr @dib0700_xc4000_tuner_callback._entry, ptr @dib0700_xc4000_tuner_callback._entry_ptr, ptr @dib0700_xc5000_tuner_callback._entry, ptr @dib0700_xc5000_tuner_callback._entry_ptr, ptr @dib7070_set_param_override._entry, ptr @dib7070_set_param_override._entry_ptr, ptr @dib7070_tuner_reset._entry, ptr @dib7070_tuner_reset._entry_ptr, ptr @dib7070_tuner_sleep._entry, ptr @dib7070_tuner_sleep._entry_ptr, ptr @dib7070p_tuner_attach._entry, ptr @dib7070p_tuner_attach._entry.117, ptr @dib7070p_tuner_attach._entry_ptr, ptr @dib7070p_tuner_attach._entry_ptr.118, ptr @dib7090_agc_restart._entry, ptr @dib7090_agc_restart._entry_ptr, ptr @dib7090p_get_best_sampling._entry, ptr @dib7090p_get_best_sampling._entry.258, ptr @dib7090p_get_best_sampling._entry.261, ptr @dib7090p_get_best_sampling._entry_ptr, ptr @dib7090p_get_best_sampling._entry_ptr.260, ptr @dib7090p_get_best_sampling._entry_ptr.263, ptr @dib7770_set_param_override._entry, ptr @dib7770_set_param_override._entry_ptr, ptr @dib7770p_tuner_attach._entry, ptr @dib7770p_tuner_attach._entry_ptr, ptr @dib807x_set_param_override._entry, ptr @dib807x_set_param_override._entry_ptr, ptr @dib807x_tuner_attach._entry, ptr @dib807x_tuner_attach._entry.170, ptr @dib807x_tuner_attach._entry_ptr, ptr @dib807x_tuner_attach._entry_ptr.171, ptr @dib8090_agc_control._entry, ptr @dib8090_agc_control._entry_ptr, ptr @dib8090_compute_pll_parameters._entry, ptr @dib8090_compute_pll_parameters._entry.200, ptr @dib8090_compute_pll_parameters._entry_ptr, ptr @dib8090_compute_pll_parameters._entry_ptr.202, ptr @dib8096_set_param_override._entry, ptr @dib8096_set_param_override._entry.186, ptr @dib8096_set_param_override._entry.189, ptr @dib8096_set_param_override._entry.192, ptr @dib8096_set_param_override._entry.195, ptr @dib8096_set_param_override._entry_ptr, ptr @dib8096_set_param_override._entry_ptr.188, ptr @dib8096_set_param_override._entry_ptr.191, ptr @dib8096_set_param_override._entry_ptr.194, ptr @dib8096_set_param_override._entry_ptr.197, ptr @dib8096p_get_best_sampling._entry, ptr @dib8096p_get_best_sampling._entry.298, ptr @dib8096p_get_best_sampling._entry.300, ptr @dib8096p_get_best_sampling._entry_ptr, ptr @dib8096p_get_best_sampling._entry_ptr.299, ptr @dib8096p_get_best_sampling._entry_ptr.302, ptr @dib809x_tuner_attach._entry, ptr @dib809x_tuner_attach._entry_ptr, ptr @dib9090_tuner_attach._entry, ptr @dib9090_tuner_attach._entry_ptr, ptr @lgdt3305_frontend_attach._entry, ptr @lgdt3305_frontend_attach._entry_ptr, ptr @mxl5007t_tuner_attach._entry, ptr @mxl5007t_tuner_attach._entry_ptr, ptr @nim7090_frontend_attach._entry, ptr @nim7090_frontend_attach._entry.248, ptr @nim7090_frontend_attach._entry_ptr, ptr @nim7090_frontend_attach._entry_ptr.249, ptr @nim7090_tuner_attach._entry, ptr @nim7090_tuner_attach._entry_ptr, ptr @nim8096md_frontend_attach._entry, ptr @nim8096md_frontend_attach._entry.231, ptr @nim8096md_frontend_attach._entry_ptr, ptr @nim8096md_frontend_attach._entry_ptr.232, ptr @nim8096md_tuner_attach._entry, ptr @nim8096md_tuner_attach._entry.234, ptr @nim8096md_tuner_attach._entry_ptr, ptr @nim8096md_tuner_attach._entry_ptr.235, ptr @nim9090md_frontend_attach._entry, ptr @nim9090md_frontend_attach._entry.237, ptr @nim9090md_frontend_attach._entry.239, ptr @nim9090md_frontend_attach._entry.241, ptr @nim9090md_frontend_attach._entry_ptr, ptr @nim9090md_frontend_attach._entry_ptr.238, ptr @nim9090md_frontend_attach._entry_ptr.240, ptr @nim9090md_frontend_attach._entry_ptr.242, ptr @nim9090md_tuner_attach._entry, ptr @nim9090md_tuner_attach._entry.244, ptr @nim9090md_tuner_attach._entry_ptr, ptr @nim9090md_tuner_attach._entry_ptr.245, ptr @novatd_frontend_attach._entry, ptr @novatd_frontend_attach._entry.126, ptr @novatd_frontend_attach._entry_ptr, ptr @novatd_frontend_attach._entry_ptr.127, ptr @pctv340e_frontend_attach._entry, ptr @pctv340e_frontend_attach._entry_ptr, ptr @s5h1411_frontend_attach._entry, ptr @s5h1411_frontend_attach._entry_ptr, ptr @stk7070p_frontend_attach._entry, ptr @stk7070p_frontend_attach._entry.111, ptr @stk7070p_frontend_attach._entry_ptr, ptr @stk7070p_frontend_attach._entry_ptr.112, ptr @stk7070pd_frontend_attach0._entry, ptr @stk7070pd_frontend_attach0._entry.129, ptr @stk7070pd_frontend_attach0._entry_ptr, ptr @stk7070pd_frontend_attach0._entry_ptr.130, ptr @stk7070pd_frontend_attach1._entry, ptr @stk7070pd_frontend_attach1._entry_ptr, ptr @stk7700P2_frontend_attach._entry, ptr @stk7700P2_frontend_attach._entry.108, ptr @stk7700P2_frontend_attach._entry_ptr, ptr @stk7700P2_frontend_attach._entry_ptr.109, ptr @stk7700d_frontend_attach._entry, ptr @stk7700d_frontend_attach._entry.100, ptr @stk7700d_frontend_attach._entry_ptr, ptr @stk7700d_frontend_attach._entry_ptr.102, ptr @stk7700d_tuner_attach._entry, ptr @stk7700d_tuner_attach._entry_ptr, ptr @stk7700p_frontend_attach._entry, ptr @stk7700p_frontend_attach._entry.85, ptr @stk7700p_frontend_attach._entry_ptr, ptr @stk7700p_frontend_attach._entry_ptr.87, ptr @stk7700p_tuner_attach._entry, ptr @stk7700p_tuner_attach._entry_ptr, ptr @stk7700ph_frontend_attach._entry, ptr @stk7700ph_frontend_attach._entry.133, ptr @stk7700ph_frontend_attach._entry_ptr, ptr @stk7700ph_frontend_attach._entry_ptr.134, ptr @stk7700ph_tuner_attach._entry, ptr @stk7700ph_tuner_attach._entry_ptr, ptr @stk7700ph_xc3028_callback._entry, ptr @stk7700ph_xc3028_callback._entry_ptr, ptr @stk7770p_frontend_attach._entry, ptr @stk7770p_frontend_attach._entry.161, ptr @stk7770p_frontend_attach._entry_ptr, ptr @stk7770p_frontend_attach._entry_ptr.162, ptr @stk807x_frontend_attach._entry, ptr @stk807x_frontend_attach._entry_ptr, ptr @stk807xpvr_frontend_attach0._entry, ptr @stk807xpvr_frontend_attach0._entry_ptr, ptr @stk807xpvr_frontend_attach1._entry, ptr @stk807xpvr_frontend_attach1._entry_ptr, ptr @stk809x_frontend1_attach._entry, ptr @stk809x_frontend1_attach._entry_ptr, ptr @stk809x_frontend_attach._entry, ptr @stk809x_frontend_attach._entry_ptr, ptr @stk9090m_frontend_attach._entry, ptr @stk9090m_frontend_attach._entry.206, ptr @stk9090m_frontend_attach._entry.211, ptr @stk9090m_frontend_attach._entry_ptr, ptr @stk9090m_frontend_attach._entry_ptr.208, ptr @stk9090m_frontend_attach._entry_ptr.213, ptr @tfe7090p_pvr_update_lna._entry, ptr @tfe7090p_pvr_update_lna._entry_ptr, ptr @tfe7090pvr_frontend0_attach._entry, ptr @tfe7090pvr_frontend0_attach._entry.265, ptr @tfe7090pvr_frontend0_attach._entry_ptr, ptr @tfe7090pvr_frontend0_attach._entry_ptr.266, ptr @tfe7090pvr_frontend1_attach._entry, ptr @tfe7090pvr_frontend1_attach._entry.273, ptr @tfe7090pvr_frontend1_attach._entry.275, ptr @tfe7090pvr_frontend1_attach._entry_ptr, ptr @tfe7090pvr_frontend1_attach._entry_ptr.274, ptr @tfe7090pvr_frontend1_attach._entry_ptr.276, ptr @tfe7090pvr_tuner0_attach._entry, ptr @tfe7090pvr_tuner0_attach._entry_ptr, ptr @tfe7090pvr_tuner1_attach._entry, ptr @tfe7090pvr_tuner1_attach._entry_ptr, ptr @tfe7790p_frontend_attach._entry, ptr @tfe7790p_frontend_attach._entry.289, ptr @tfe7790p_frontend_attach._entry_ptr, ptr @tfe7790p_frontend_attach._entry_ptr.290, ptr @tfe7790p_tuner_attach._entry, ptr @tfe7790p_tuner_attach._entry_ptr, ptr @tfe7790p_update_lna._entry, ptr @tfe7790p_update_lna._entry_ptr, ptr @tfe8096p_frontend_attach._entry, ptr @tfe8096p_frontend_attach._entry_ptr, ptr @tfe8096p_tuner_attach._entry, ptr @tfe8096p_tuner_attach._entry_ptr, ptr @xc4000_tuner_attach._entry, ptr @xc4000_tuner_attach._entry.283, ptr @xc4000_tuner_attach._entry_ptr, ptr @xc4000_tuner_attach._entry_ptr.285, ptr @xc5000_tuner_attach._entry, ptr @xc5000_tuner_attach._entry_ptr, ptr @force_lna_activation, ptr @dib0700_usb_id_table, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @dib0700_devices, ptr @dib0700_device_count, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @stk7700p_dib7000p_config, ptr @.str.83, ptr @.str.84, ptr @stk7700p_dib7000m_config, ptr @.str.86, ptr @stk7700p_7000p_mt2060_agc_config, ptr @stk7700p_pll_config, ptr @stk7700p_7000m_mt2060_agc_config, ptr @.str.88, ptr @.str.89, ptr @stk7700p_mt2060_config, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @bristol_dib3000mc_config, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @bristol_dib3000p_mt2060_agc_config, ptr @bristol_mt2060_config, ptr @.str.98, ptr @.str.99, ptr @stk7700d_dib7000p_mt2266_config, ptr @.str.101, ptr @stk7700d_7000p_mt2266_agc_config, ptr @stk7700d_mt2266_pll_config, ptr @.str.103, ptr @.str.104, ptr @stk7700d_mt2266_config, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.110, ptr @dib7070p_dib7000p_config, ptr @dib7070_agc_config, ptr @dib7070_bw_config_12_mhz, ptr @.str.113, ptr @.str.114, ptr @dib7070p_dib0070_config, ptr @.str.115, ptr @.str.116, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @stk7070pd_dib7000p_config, ptr @.str.128, ptr @.str.131, ptr @.str.132, ptr @stk7700ph_dib7700_xc3028_config, ptr @xc3028_agc_config, ptr @xc3028_bw_config, ptr @stk7700ph_xc3028_config, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @stk7700ph_xc3028_ctrl, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @pinnacle_801e_config, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @s5h1411_xc5000_tunerconfig, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @hcw_lgdt3305_config, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @hcw_mxl5007t_config, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @dib7770p_dib7000p_config, ptr @dib7770p_dib0070_config, ptr @.str.163, ptr @.str.164, ptr @.str.165, ptr @.str.166, ptr @.str.167, ptr @.str.168, ptr @dib807x_dib8000_config, ptr @dib807x_agc_config, ptr @dib807x_bw_config_12_mhz, ptr @dib807x_dib0070_config, ptr @.str.169, ptr @dib8070_wbd_gain_cfg, ptr @.str.172, ptr @.str.173, ptr @.str.174, ptr @.str.175, ptr @.str.176, ptr @dib809x_dib8000_config, ptr @dib8090_agc_config, ptr @dib8090_pll_config_12mhz, ptr @.str.177, ptr @.str.178, ptr @.str.179, ptr @.str.180, ptr @.str.181, ptr @.str.182, ptr @dib8090_wbd_table, ptr @dib809x_dib0090_config, ptr @.str.184, ptr @.str.185, ptr @.str.187, ptr @.str.190, ptr @.str.193, ptr @.str.196, ptr @.str.198, ptr @.str.199, ptr @.str.201, ptr @.str.203, ptr @.str.204, ptr @.str.205, ptr @.str.207, ptr @stk9090m_config, ptr @.str.209, ptr @.str.210, ptr @.str.212, ptr @.str.214, ptr @.str.215, ptr @.str.216, ptr @.str.217, ptr @dib9090_dib0090_config, ptr @.str.219, ptr @.str.220, ptr @.str.222, ptr @.str.225, ptr @.str.228, ptr @.str.230, ptr @.str.233, ptr @.str.236, ptr @nim9090md_config, ptr @.str.243, ptr @nim9090md_dib0090_config, ptr @.str.247, ptr @nim7090_dib7000p_config, ptr @dib7090_agc_config, ptr @dib7090_clock_config_12_mhz, ptr @.str.250, ptr @.str.251, ptr @.str.252, ptr @.str.253, ptr @.str.254, ptr @dib7090_wbd_table, ptr @nim7090_dib0090_config, ptr @.str.256, ptr @.str.257, ptr @.str.259, ptr @.str.262, ptr @.str.264, ptr @tfe7090pvr_dib7000p_config, ptr @.str.267, ptr @.str.268, ptr @.str.269, ptr @tfe7090pvr_dib0090_config, ptr @.str.271, ptr @.str.272, ptr @.str.277, ptr @.str.278, ptr @pctv_340e_config, ptr @stk7700p_7000p_xc4000_agc_config, ptr @stk7700p_xc4000_pll_config, ptr @.str.279, ptr @.str.280, ptr @.str.281, ptr @.str.282, ptr @dib7000p_xc4000_tunerconfig, ptr @.str.284, ptr @.str.286, ptr @.str.287, ptr @.str.288, ptr @tfe7790p_dib7000p_config, ptr @.str.291, ptr @tfe7790p_dib0090_config, ptr @.str.293, ptr @tfe8096p_dib8000_config, ptr @dib8096p_agc_config, ptr @dib8096p_clock_config_12_mhz, ptr @dib8096p_wbd_table, ptr @.str.294, ptr @tfe8096p_dib0090_config, ptr @.str.296, ptr @.str.297, ptr @.str.301, ptr @.str.303, ptr @.str.304, ptr @.str.305, ptr @switch.table.dib8096_set_param_override], section "llvm.metadata"
@0 = internal global [392 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @force_lna_activation to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib0700_usb_id_table to i32), i32 2112, i32 2624, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1478 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1478 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1478 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1478 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1478 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1478 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1478 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1478 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1478 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1478 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1478 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1478 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1478 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1478 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1478 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1478 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1478 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1478 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1478 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1478 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1478 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1478 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1478 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1478 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1478 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1478 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1478 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1478 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1478 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1478 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1478 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1478 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1478 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1478 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1478 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1478 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1478 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1478 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1478 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1478 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1478 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1478 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1478 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1478 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1478 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1478 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1478 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1478 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1478 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1478 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1478 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1478 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1478 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1478 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1478 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1478 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1478 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1478 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1478 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1478 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1478 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1478 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1478 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1478 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1478 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1478 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1478 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1478 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1478 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1478 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1478 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1478 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1478 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1478 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1478 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1478 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1478 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1478 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib0700_devices to i32), i32 51792, i32 64736, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib0700_device_count to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1478 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1478 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stk7700p_frontend_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1469 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1478 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1478 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1478 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stk7700p_dib7000p_config to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1478 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1478 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stk7700p_dib7000m_config to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stk7700p_frontend_attach._entry.85 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1469 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1478 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stk7700p_7000p_mt2060_agc_config to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stk7700p_pll_config to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stk7700p_7000m_mt2060_agc_config to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1478 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1478 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stk7700p_mt2060_config to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stk7700p_tuner_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1469 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.1478 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1478 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib0700_rc_query_old_firmware._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1469 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1478 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1478 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bristol_dib3000mc_config to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1478 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1478 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bristol_frontend_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1469 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.1478 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1478 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bristol_dib3000p_mt2060_agc_config to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bristol_mt2060_config to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bristol_tuner_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1469 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1478 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stk7700d_frontend_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1469 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1478 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stk7700d_dib7000p_mt2266_config to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stk7700d_frontend_attach._entry.100 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1469 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.1478 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stk7700d_7000p_mt2266_agc_config to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stk7700d_mt2266_pll_config to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1478 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1478 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stk7700d_mt2266_config to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stk7700d_tuner_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1469 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.1478 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1478 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stk7700P2_frontend_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1469 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1478 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stk7700P2_frontend_attach._entry.108 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1469 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stk7070p_frontend_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1469 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1478 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib7070p_dib7000p_config to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stk7070p_frontend_attach._entry.111 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1469 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib7070_agc_config to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib7070_bw_config_12_mhz to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1478 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1478 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib7070p_dib0070_config to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib7070p_tuner_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1469 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.1478 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1478 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib7070p_tuner_attach._entry.117 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1469 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib7070_tuner_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1469 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1478 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1478 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib7070_tuner_sleep._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1469 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1478 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1478 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib7070_set_param_override._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1469 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1478 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1478 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @novatd_frontend_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1469 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1478 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stk7070pd_dib7000p_config to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @novatd_frontend_attach._entry.126 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1469 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stk7070pd_frontend_attach0._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1469 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1478 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stk7070pd_frontend_attach0._entry.129 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1469 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stk7070pd_frontend_attach1._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1469 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1478 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stk7700ph_frontend_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1469 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1478 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stk7700ph_dib7700_xc3028_config to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stk7700ph_frontend_attach._entry.133 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1469 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.808 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xc3028_agc_config to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.809 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.811 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xc3028_bw_config to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stk7700ph_xc3028_config to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1478 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1478 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stk7700ph_tuner_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1469 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.1478 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1478 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stk7700ph_xc3028_ctrl to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1478 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stk7700ph_xc3028_callback._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1469 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1478 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1478 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1478 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1478 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pinnacle_801e_config to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5h1411_frontend_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1469 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.1478 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1478 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1478 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1478 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5h1411_xc5000_tunerconfig to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xc5000_tuner_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1469 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.1478 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1478 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib0700_xc5000_tuner_callback._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1469 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.1478 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1478 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1478 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1478 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hcw_lgdt3305_config to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgdt3305_frontend_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1469 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1478 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1478 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1478 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.928 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1478 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.928 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hcw_mxl5007t_config to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl5007t_tuner_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1469 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.928 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1478 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.928 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1478 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.928 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stk7770p_frontend_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1469 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.934 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1478 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.934 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib7770p_dib7000p_config to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.935 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stk7770p_frontend_attach._entry.161 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1469 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.940 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib7770p_dib0070_config to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib7770p_tuner_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1469 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1478 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib7770_set_param_override._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1469 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1478 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1478 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1478 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stk807x_frontend_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1469 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.1478 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1478 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib807x_dib8000_config to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib807x_agc_config to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.974 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib807x_bw_config_12_mhz to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.979 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib807x_dib0070_config to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.982 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib807x_tuner_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1469 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1478 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib807x_tuner_attach._entry.170 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1469 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.991 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib8070_wbd_gain_cfg to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib807x_set_param_override._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1469 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1478 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1478 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stk807xpvr_frontend_attach0._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1469 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1478 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stk807xpvr_frontend_attach1._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1469 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1478 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stk809x_frontend_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1469 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1478 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib809x_dib8000_config to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib8090_agc_config to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib8090_pll_config_12mhz to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1030 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib8090_agc_control._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1469 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1478 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1478 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1478 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1478 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib809x_tuner_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1469 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.1478 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1478 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib8090_wbd_table to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib809x_dib0090_config to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1060 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib8096_set_param_override._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1469 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1069 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.1478 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1069 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.185 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1478 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1069 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib8096_set_param_override._entry.186 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1469 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.187 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1478 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib8096_set_param_override._entry.189 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1469 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1081 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.190 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1478 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1081 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib8096_set_param_override._entry.192 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1469 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1087 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.193 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1478 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1087 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib8096_set_param_override._entry.195 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1469 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.196 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1478 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib8090_compute_pll_parameters._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1469 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.198 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1478 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.199 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1478 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib8090_compute_pll_parameters._entry.200 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1469 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.201 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1478 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.203 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1478 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stk9090m_frontend_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1469 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.204 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1478 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.205 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1478 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stk9090m_frontend_attach._entry.206 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1469 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.207 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1478 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stk9090m_config to i32), i32 236, i32 288, i32 ptrtoint (ptr @___asan_gen_.1127 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.209 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1478 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.210 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1478 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stk9090m_frontend_attach._entry.211 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1469 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.212 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.1478 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.214 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1478 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.215 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1478 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib9090_tuner_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1469 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.216 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.1478 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.217 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1478 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib9090_dib0090_config to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1157 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib01x0_pmu_update._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1469 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.219 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.1478 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.220 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1478 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib01x0_pmu_update._entry.221 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1469 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.222 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1478 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib01x0_pmu_update._entry.224 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1469 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.225 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1478 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib01x0_pmu_update._entry.227 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1469 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.228 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1478 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nim8096md_frontend_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1469 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.230 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1478 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nim8096md_frontend_attach._entry.231 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1469 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nim8096md_tuner_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1469 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.233 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1478 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nim8096md_tuner_attach._entry.234 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1469 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nim9090md_frontend_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1469 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.236 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1478 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nim9090md_frontend_attach._entry.237 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1469 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nim9090md_config to i32), i32 472, i32 576, i32 ptrtoint (ptr @___asan_gen_.1214 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nim9090md_frontend_attach._entry.239 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1469 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nim9090md_frontend_attach._entry.241 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1469 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nim9090md_tuner_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1469 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.243 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1478 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nim9090md_tuner_attach._entry.244 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1469 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nim9090md_dib0090_config to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.1232 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nim7090_frontend_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1469 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.247 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1478 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nim7090_dib7000p_config to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1241 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nim7090_frontend_attach._entry.248 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1469 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib7090_agc_config to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.1247 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib7090_clock_config_12_mhz to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1250 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tfe7790p_update_lna._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1469 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.250 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1478 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.251 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1478 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib7090_agc_restart._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1469 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.252 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1478 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.253 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1478 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nim7090_tuner_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1469 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.254 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1478 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib7090_wbd_table to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.1277 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nim7090_dib0090_config to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib7090p_get_best_sampling._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1469 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.256 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1478 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.257 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1478 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib7090p_get_best_sampling._entry.258 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1469 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.259 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1478 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib7090p_get_best_sampling._entry.261 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1469 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.262 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1478 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tfe7090pvr_frontend0_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1469 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.264 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1478 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tfe7090pvr_dib7000p_config to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.1310 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tfe7090pvr_frontend0_attach._entry.265 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1469 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tfe7090p_pvr_update_lna._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1469 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.267 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1478 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.268 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1478 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tfe7090pvr_tuner0_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1469 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.269 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1478 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tfe7090pvr_dib0090_config to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tfe7090pvr_frontend1_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1469 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.271 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.1478 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.272 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1478 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tfe7090pvr_frontend1_attach._entry.273 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1469 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tfe7090pvr_frontend1_attach._entry.275 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1469 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tfe7090pvr_tuner1_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1469 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.277 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1478 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pctv340e_frontend_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1469 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.278 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1478 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pctv_340e_config to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1361 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stk7700p_7000p_xc4000_agc_config to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stk7700p_xc4000_pll_config to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1367 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xc4000_tuner_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1469 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.279 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1478 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.280 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1478 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.281 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1478 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.282 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1478 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib7000p_xc4000_tunerconfig to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xc4000_tuner_attach._entry.283 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1469 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.284 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.1478 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib0700_xc4000_tuner_callback._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1469 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.286 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.1478 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.287 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1478 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tfe7790p_frontend_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1469 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.288 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1478 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tfe7790p_dib7000p_config to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1409 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tfe7790p_frontend_attach._entry.289 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1469 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tfe7790p_tuner_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1469 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.291 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1478 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tfe7790p_dib0090_config to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tfe8096p_frontend_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1469 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.293 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1478 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tfe8096p_dib8000_config to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib8096p_agc_config to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib8096p_clock_config_12_mhz to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1436 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib8096p_wbd_table to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.1439 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tfe8096p_tuner_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1469 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.294 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1478 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tfe8096p_dib0090_config to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib8096p_get_best_sampling._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1469 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.296 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1478 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.297 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1478 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib8096p_get_best_sampling._entry.298 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1469 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib8096p_get_best_sampling._entry.300 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1469 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.301 to i32), i32 89, i32 128, i32 ptrtoint (ptr @___asan_gen_.1478 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stk809x_frontend1_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1469 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.303 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1478 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.304 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1478 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.305 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1478 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.dib8096_set_param_override to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dib0700_download_firmware(ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dib0700_streaming_ctrl(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stk7700p_pid_filter_ctrl(ptr nocapture noundef readonly %adapter, i32 noundef %onoff) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 8
  %priv = getelementptr inbounds %struct.dvb_usb_device, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 8
  %is_dib7000pc = getelementptr inbounds %struct.dib0700_state, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %is_dib7000pc to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %is_dib7000pc, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %priv1 = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adapter, i32 0, i32 12
  %6 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %priv1, align 8
  %pid_filter_ctrl = getelementptr inbounds %struct.dib0700_adapter_state, ptr %7, i32 0, i32 2, i32 8
  %8 = ptrtoint ptr %pid_filter_ctrl to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pid_filter_ctrl, align 4
  %fe_adap = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adapter, i32 0, i32 9
  %10 = ptrtoint ptr %fe_adap to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %fe_adap, align 8
  %conv = trunc i32 %onoff to i8
  %call = tail call i32 %9(ptr noundef %11, i8 noundef zeroext %conv) #4
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %fe_adap2 = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adapter, i32 0, i32 9
  %12 = ptrtoint ptr %fe_adap2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %fe_adap2, align 8
  %conv5 = trunc i32 %onoff to i8
  %call6 = tail call i32 @dib7000m_pid_filter_ctrl(ptr noundef %13, i8 noundef zeroext %conv5) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ %call6, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stk7700p_pid_filter(ptr nocapture noundef readonly %adapter, i32 noundef %index, i16 noundef zeroext %pid, i32 noundef %onoff) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 8
  %priv1 = getelementptr inbounds %struct.dvb_usb_device, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv1, align 8
  %is_dib7000pc = getelementptr inbounds %struct.dib0700_state, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %is_dib7000pc to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %is_dib7000pc, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %priv = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adapter, i32 0, i32 12
  %6 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %priv, align 8
  %pid_filter = getelementptr inbounds %struct.dib0700_adapter_state, ptr %7, i32 0, i32 2, i32 9
  %8 = ptrtoint ptr %pid_filter to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pid_filter, align 4
  %fe_adap = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adapter, i32 0, i32 9
  %10 = ptrtoint ptr %fe_adap to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %fe_adap, align 8
  %conv = trunc i32 %index to i8
  %conv2 = trunc i32 %onoff to i8
  %call = tail call i32 %9(ptr noundef %11, i8 noundef zeroext %conv, i16 noundef zeroext %pid, i8 noundef zeroext %conv2) #4
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %fe_adap3 = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adapter, i32 0, i32 9
  %12 = ptrtoint ptr %fe_adap3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %fe_adap3, align 8
  %conv6 = trunc i32 %index to i8
  %conv7 = trunc i32 %onoff to i8
  %call8 = tail call i32 @dib7000m_pid_filter(ptr noundef %13, i8 noundef zeroext %conv6, i16 noundef zeroext %pid, i8 noundef zeroext %conv7) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ %call8, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stk7700p_frontend_attach(ptr nocapture noundef %adap) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adap, align 8
  %priv = getelementptr inbounds %struct.dvb_usb_device, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 8
  %priv1 = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 12
  %4 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv1, align 8
  %call = tail call ptr @__symbol_get(ptr noundef nonnull @.str.78) #4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %cond.end, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

cond.end:                                         ; preds = %entry
  %call2 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.79) #4
  %call3 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.78) #4
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %do.end, label %cond.end.if.then_crit_edge

cond.end.if.then_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

if.then:                                          ; preds = %cond.end.if.then_crit_edge, %entry.if.then_crit_edge
  %cond102 = phi ptr [ %call3, %cond.end.if.then_crit_edge ], [ %call, %entry.if.then_crit_edge ]
  %dib7000p_ops = getelementptr inbounds %struct.dib0700_adapter_state, ptr %5, i32 0, i32 2
  %call5 = tail call ptr %cond102(ptr noundef %dib7000p_ops) #4
  %cmp = icmp eq ptr %call5, null
  br i1 %cmp, label %if.then6, label %if.end12

if.then6:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @__symbol_put(ptr noundef nonnull @.str.78) #4
  br label %cleanup

do.end:                                           ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #6
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.80) #7
  br label %cleanup

if.end12:                                         ; preds = %if.then
  %6 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %adap, align 8
  %call14 = tail call i32 @dib0700_set_gpio(ptr noundef %7, i32 noundef 15, i8 noundef zeroext 1, i8 noundef zeroext 0) #4
  %8 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %adap, align 8
  %call16 = tail call i32 @dib0700_set_gpio(ptr noundef %9, i32 noundef 8, i8 noundef zeroext 1, i8 noundef zeroext 0) #4
  tail call void @msleep(i32 noundef 50) #4
  %10 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %adap, align 8
  %call18 = tail call i32 @dib0700_set_gpio(ptr noundef %11, i32 noundef 8, i8 noundef zeroext 1, i8 noundef zeroext 1) #4
  tail call void @msleep(i32 noundef 10) #4
  %12 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %adap, align 8
  %call20 = tail call i32 @dib0700_set_gpio(ptr noundef %13, i32 noundef 14, i8 noundef zeroext 1, i8 noundef zeroext 1) #4
  %14 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %adap, align 8
  %call22 = tail call i32 @dib0700_set_gpio(ptr noundef %15, i32 noundef 15, i8 noundef zeroext 1, i8 noundef zeroext 0) #4
  tail call void @msleep(i32 noundef 10) #4
  %16 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %adap, align 8
  %call24 = tail call i32 @dib0700_ctrl_clock(ptr noundef %17, i32 noundef 72, i8 noundef zeroext 1) #4
  %18 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %adap, align 8
  %call26 = tail call i32 @dib0700_set_gpio(ptr noundef %19, i32 noundef 15, i8 noundef zeroext 1, i8 noundef zeroext 1) #4
  tail call void @msleep(i32 noundef 100) #4
  %20 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %adap, align 8
  %call28 = tail call i32 @dib0700_set_gpio(ptr noundef %21, i32 noundef 0, i8 noundef zeroext 1, i8 noundef zeroext 1) #4
  %mt2060_if1 = getelementptr inbounds %struct.dib0700_state, ptr %3, i32 0, i32 1
  %22 = ptrtoint ptr %mt2060_if1 to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 1220, ptr %mt2060_if1, align 2
  %dib7000pc_detection = getelementptr inbounds %struct.dib0700_adapter_state, ptr %5, i32 0, i32 2, i32 6
  %23 = ptrtoint ptr %dib7000pc_detection to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dib7000pc_detection, align 4
  %25 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %adap, align 8
  %i2c_adap = getelementptr inbounds %struct.dvb_usb_device, ptr %26, i32 0, i32 8
  %call31 = tail call i32 %24(ptr noundef %i2c_adap) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.else39, label %if.then33

if.then33:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #6
  %init = getelementptr inbounds %struct.dib0700_adapter_state, ptr %5, i32 0, i32 2, i32 15
  %27 = ptrtoint ptr %init to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %init, align 4
  %29 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %adap, align 8
  %i2c_adap36 = getelementptr inbounds %struct.dvb_usb_device, ptr %30, i32 0, i32 8
  %call37 = tail call ptr %28(ptr noundef %i2c_adap36, i8 noundef zeroext 18, ptr noundef nonnull @stk7700p_dib7000p_config) #4
  %fe_adap = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 9
  %31 = ptrtoint ptr %fe_adap to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call37, ptr %fe_adap, align 8
  %is_dib7000pc = getelementptr inbounds %struct.dib0700_state, ptr %3, i32 0, i32 4
  %32 = ptrtoint ptr %is_dib7000pc to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 1, ptr %is_dib7000pc, align 4
  br label %if.end70

if.else39:                                        ; preds = %if.end12
  %33 = call ptr @memset(ptr %dib7000p_ops, i32 0, i32 64)
  %call43 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.83) #4
  %tobool44.not = icmp eq ptr %call43, null
  br i1 %tobool44.not, label %cond.end49, label %if.else39.if.then52_crit_edge

if.else39.if.then52_crit_edge:                    ; preds = %if.else39
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then52

cond.end49:                                       ; preds = %if.else39
  %call47 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.84) #4
  %call48 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.83) #4
  %tobool51.not = icmp eq ptr %call48, null
  br i1 %tobool51.not, label %do.end62, label %cond.end49.if.then52_crit_edge

cond.end49.if.then52_crit_edge:                   ; preds = %cond.end49
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then52

if.then52:                                        ; preds = %cond.end49.if.then52_crit_edge, %if.else39.if.then52_crit_edge
  %cond50107 = phi ptr [ %call48, %cond.end49.if.then52_crit_edge ], [ %call43, %if.else39.if.then52_crit_edge ]
  %34 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %adap, align 8
  %i2c_adap54 = getelementptr inbounds %struct.dvb_usb_device, ptr %35, i32 0, i32 8
  %call55 = tail call ptr %cond50107(ptr noundef %i2c_adap54, i8 noundef zeroext 18, ptr noundef nonnull @stk7700p_dib7000m_config) #4
  %cmp56 = icmp eq ptr %call55, null
  br i1 %cmp56, label %if.then57, label %if.then52.if.end65_crit_edge

if.then52.if.end65_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end65

if.then57:                                        ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @__symbol_put(ptr noundef nonnull @.str.83) #4
  br label %if.end65

do.end62:                                         ; preds = %cond.end49
  call void @__sanitizer_cov_trace_pc() #6
  %call64 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.86) #7
  br label %if.end65

if.end65:                                         ; preds = %do.end62, %if.then57, %if.then52.if.end65_crit_edge
  %__r41.0 = phi ptr [ null, %if.then57 ], [ %call55, %if.then52.if.end65_crit_edge ], [ null, %do.end62 ]
  %fe_adap67 = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 9
  %36 = ptrtoint ptr %fe_adap67 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %__r41.0, ptr %fe_adap67, align 8
  br label %if.end70

if.end70:                                         ; preds = %if.end65, %if.then33
  %fe_adap71 = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 9
  %37 = ptrtoint ptr %fe_adap71 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %fe_adap71, align 8
  %cmp74 = icmp eq ptr %38, null
  %cond75 = select i1 %cmp74, i32 -19, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end70, %do.end, %if.then6
  %retval.0 = phi i32 [ %cond75, %if.end70 ], [ -19, %if.then6 ], [ -19, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stk7700p_tuner_attach(ptr nocapture noundef readonly %adap) #1 align 64 {
entry:
  %adrs.addr.i = alloca i8, align 1
  %msg.i = alloca [2 x %struct.i2c_msg], align 4
  %a = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adap, align 8
  %i2c_adap = getelementptr inbounds %struct.dvb_usb_device, ptr %1, i32 0, i32 8
  %priv = getelementptr inbounds %struct.dvb_usb_device, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 8
  %priv2 = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 12
  %4 = ptrtoint ptr %priv2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv2, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %a) #4
  %6 = ptrtoint ptr %a to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -1, ptr %a, align 1, !annotation !751
  %udev = getelementptr inbounds %struct.dvb_usb_device, ptr %1, i32 0, i32 2
  %7 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %udev, align 4
  %idVendor = getelementptr inbounds %struct.usb_device, ptr %8, i32 0, i32 16, i32 7
  %9 = ptrtoint ptr %idVendor to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %idVendor, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 16416, i16 %10)
  %cmp = icmp eq i16 %10, 16416
  br i1 %cmp, label %land.lhs.true, label %entry.if.end13_crit_edge

entry.if.end13_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end13

land.lhs.true:                                    ; preds = %entry
  %idProduct = getelementptr inbounds %struct.usb_device, ptr %8, i32 0, i32 16, i32 8
  %11 = ptrtoint ptr %idProduct to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %idProduct, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 20592, i16 %12)
  %cmp9 = icmp eq i16 %12, 20592
  br i1 %cmp9, label %if.then, label %land.lhs.true.if.end13_crit_edge

land.lhs.true.if.end13_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end13

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %adrs.addr.i)
  %13 = ptrtoint ptr %adrs.addr.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 88, ptr %adrs.addr.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #4
  %14 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %15 = call ptr @memset(ptr %14, i32 255, i32 16)
  %16 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 80, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %17 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 0, ptr %flags.i, align 2
  %18 = ptrtoint ptr %14 to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 1, ptr %14, align 4
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %19 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %adrs.addr.i, ptr %buf.i, align 4
  %arrayinit.element.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1
  %20 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 80, ptr %arrayinit.element.i, align 4
  %flags2.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 1
  %21 = ptrtoint ptr %flags2.i to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 1, ptr %flags2.i, align 2
  %len3.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 2
  %22 = ptrtoint ptr %len3.i to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 1, ptr %len3.i, align 4
  %buf4.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 3
  %23 = ptrtoint ptr %buf4.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %a, ptr %buf4.i, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %i2c_adap, ptr noundef nonnull %msg.i, i32 noundef 2) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 2
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %adrs.addr.i)
  br i1 %cmp.not.i, label %if.then11, label %if.then.if.end13_crit_edge

if.then.if.end13_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end13

if.then11:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %24 = ptrtoint ptr %a to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %a, align 1
  %conv12 = sext i8 %25 to i16
  %add = add nsw i16 %conv12, 1220
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %if.then.if.end13_crit_edge, %land.lhs.true.if.end13_crit_edge, %entry.if.end13_crit_edge
  %if1.0 = phi i16 [ 1220, %if.then.if.end13_crit_edge ], [ %add, %if.then11 ], [ 1220, %land.lhs.true.if.end13_crit_edge ], [ 1220, %entry.if.end13_crit_edge ]
  %is_dib7000pc = getelementptr inbounds %struct.dib0700_state, ptr %3, i32 0, i32 4
  %26 = ptrtoint ptr %is_dib7000pc to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %is_dib7000pc, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool14.not = icmp eq i8 %27, 0
  br i1 %tobool14.not, label %if.else, label %if.then15

if.then15:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #6
  %get_i2c_master = getelementptr inbounds %struct.dib0700_adapter_state, ptr %5, i32 0, i32 2, i32 7
  %28 = ptrtoint ptr %get_i2c_master to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %get_i2c_master, align 4
  %fe_adap = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 9
  %30 = ptrtoint ptr %fe_adap to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %fe_adap, align 8
  %call16 = call ptr %29(ptr noundef %31, i32 noundef 0, i32 noundef 1) #4
  br label %if.end21

if.else:                                          ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #6
  %fe_adap17 = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 9
  %32 = ptrtoint ptr %fe_adap17 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %fe_adap17, align 8
  %call20 = call ptr @dib7000m_get_i2c_master(ptr noundef %33, i32 noundef 0, i32 noundef 1) #4
  br label %if.end21

if.end21:                                         ; preds = %if.else, %if.then15
  %tun_i2c.0 = phi ptr [ %call16, %if.then15 ], [ %call20, %if.else ]
  %call22 = call ptr @__symbol_get(ptr noundef nonnull @.str.88) #4
  %tobool23.not = icmp eq ptr %call22, null
  br i1 %tobool23.not, label %cond.end, label %if.end21.if.then27_crit_edge

if.end21.if.then27_crit_edge:                     ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then27

cond.end:                                         ; preds = %if.end21
  %call24 = call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.89) #4
  %call25 = call ptr @__symbol_get(ptr noundef nonnull @.str.88) #4
  %tobool26.not = icmp eq ptr %call25, null
  br i1 %tobool26.not, label %do.end, label %cond.end.if.then27_crit_edge

cond.end.if.then27_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then27

if.then27:                                        ; preds = %cond.end.if.then27_crit_edge, %if.end21.if.then27_crit_edge
  %cond55 = phi ptr [ %call25, %cond.end.if.then27_crit_edge ], [ %call22, %if.end21.if.then27_crit_edge ]
  %fe_adap28 = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 9
  %34 = ptrtoint ptr %fe_adap28 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %fe_adap28, align 8
  %call32 = call ptr %cond55(ptr noundef %35, ptr noundef %tun_i2c.0, ptr noundef nonnull @stk7700p_mt2060_config, i16 noundef zeroext %if1.0) #4
  %cmp33 = icmp eq ptr %call32, null
  br i1 %cmp33, label %if.then35, label %if.then27.if.end39_crit_edge

if.then27.if.end39_crit_edge:                     ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end39

if.then35:                                        ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #6
  call void @__symbol_put(ptr noundef nonnull @.str.88) #4
  br label %if.end39

do.end:                                           ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #6
  %call38 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.90) #7
  br label %if.end39

if.end39:                                         ; preds = %do.end, %if.then35, %if.then27.if.end39_crit_edge
  %__r.0 = phi ptr [ null, %if.then35 ], [ %call32, %if.then27.if.end39_crit_edge ], [ null, %do.end ]
  %cmp41 = icmp eq ptr %__r.0, null
  %cond43 = select i1 %cmp41, i32 -19, i32 0
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %a) #4
  ret i32 %cond43
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dib0700_identify_state(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dib0700_change_protocol(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dib0700_rc_query_old_firmware(ptr noundef %d) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 18
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %fw_version = getelementptr inbounds %struct.dib0700_state, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %fw_version to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fw_version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 66047, i32 %3)
  %cmp = icmp ugt i32 %3, 66047
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %buf = getelementptr inbounds %struct.dib0700_state, ptr %1, i32 0, i32 11
  %4 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 4, ptr %buf, align 4
  %arrayidx2 = getelementptr %struct.dib0700_state, ptr %1, i32 0, i32 11, i32 1
  %5 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %arrayidx2, align 1
  %call = tail call i32 @dib0700_ctrl_rd(ptr noundef %d, ptr noundef %buf, i8 noundef zeroext 2, ptr noundef %buf, i8 noundef zeroext 4) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp6 = icmp slt i32 %call, 1
  br i1 %cmp6, label %do.end, label %if.end9

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.92) #7
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %6 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %buf, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %cmp12 = icmp eq i8 %7, 0
  br i1 %cmp12, label %land.lhs.true, label %if.end9.if.end32_crit_edge

if.end9.if.end32_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end32

land.lhs.true:                                    ; preds = %if.end9
  %8 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp17 = icmp eq i8 %9, 0
  br i1 %cmp17, label %land.lhs.true19, label %land.lhs.true.if.end32_crit_edge

land.lhs.true.if.end32_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end32

land.lhs.true19:                                  ; preds = %land.lhs.true
  %arrayidx21 = getelementptr %struct.dib0700_state, ptr %1, i32 0, i32 11, i32 2
  %10 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx21, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %cmp23 = icmp eq i8 %11, 0
  br i1 %cmp23, label %land.lhs.true25, label %land.lhs.true19.if.end32_crit_edge

land.lhs.true19.if.end32_crit_edge:               ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end32

land.lhs.true25:                                  ; preds = %land.lhs.true19
  %arrayidx27 = getelementptr %struct.dib0700_state, ptr %1, i32 0, i32 11, i32 3
  %12 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx27, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %cmp29 = icmp eq i8 %13, 0
  br i1 %cmp29, label %land.lhs.true25.cleanup_crit_edge, label %land.lhs.true25.if.end32_crit_edge

land.lhs.true25.if.end32_crit_edge:               ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end32

land.lhs.true25.cleanup_crit_edge:                ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end32:                                         ; preds = %land.lhs.true25.if.end32_crit_edge, %land.lhs.true19.if.end32_crit_edge, %land.lhs.true.if.end32_crit_edge, %if.end9.if.end32_crit_edge
  %call33 = tail call i32 @dib0700_rc_setup(ptr noundef %d, ptr noundef null) #4
  %protocol34 = getelementptr inbounds %struct.dvb_usb_device_properties, ptr %d, i32 0, i32 13, i32 2, i32 1
  %14 = ptrtoint ptr %protocol34 to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %protocol34, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 512, i64 %15)
  %cond = icmp eq i64 %15, 512
  %16 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx2, align 1
  br i1 %cond, label %sw.bb, label %sw.default

sw.bb:                                            ; preds = %if.end32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %cmp38 = icmp eq i8 %17, 0
  br i1 %cmp38, label %land.lhs.true40, label %sw.bb.if.end53_crit_edge

sw.bb.if.end53_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end53

land.lhs.true40:                                  ; preds = %sw.bb
  %18 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %buf, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %cmp44 = icmp eq i8 %19, 0
  br i1 %cmp44, label %land.lhs.true46, label %land.lhs.true40.if.end53_crit_edge

land.lhs.true40.if.end53_crit_edge:               ; preds = %land.lhs.true40
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end53

land.lhs.true46:                                  ; preds = %land.lhs.true40
  %arrayidx48 = getelementptr %struct.dib0700_state, ptr %1, i32 0, i32 11, i32 3
  %20 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx48, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %21)
  %cmp50 = icmp eq i8 %21, -1
  br i1 %cmp50, label %if.then52, label %land.lhs.true46.if.end53_crit_edge

land.lhs.true46.if.end53_crit_edge:               ; preds = %land.lhs.true46
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end53

if.then52:                                        ; preds = %land.lhs.true46
  call void @__sanitizer_cov_trace_pc() #6
  %rc_dev = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 11
  %22 = ptrtoint ptr %rc_dev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %rc_dev, align 8
  tail call void @rc_repeat(ptr noundef %23) #4
  br label %cleanup

if.end53:                                         ; preds = %land.lhs.true46.if.end53_crit_edge, %land.lhs.true40.if.end53_crit_edge, %sw.bb.if.end53_crit_edge
  %conv56 = zext i8 %17 to i32
  %shl = shl nuw nsw i32 %conv56, 8
  %24 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %buf, align 4
  %conv59 = zext i8 %25 to i32
  %or = or i32 %shl, %conv59
  br label %sw.epilog

sw.default:                                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #6
  %conv62 = zext i8 %17 to i32
  %shl63 = shl nuw nsw i32 %conv62, 8
  %26 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %buf, align 4
  %conv66 = zext i8 %27 to i32
  %or67 = or i32 %shl63, %conv66
  %arrayidx69 = getelementptr %struct.dib0700_state, ptr %1, i32 0, i32 11, i32 2
  %28 = ptrtoint ptr %arrayidx69 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx69, align 2
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end53
  %protocol.0 = phi i32 [ 9, %if.end53 ], [ 2, %sw.default ]
  %scancode.0 = phi i32 [ %or, %if.end53 ], [ %or67, %sw.default ]
  %toggle.0 = phi i8 [ 0, %if.end53 ], [ %29, %sw.default ]
  %rc_dev70 = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 11
  %30 = ptrtoint ptr %rc_dev70 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %rc_dev70, align 8
  %conv71 = zext i32 %scancode.0 to i64
  tail call void @rc_keydown(ptr noundef %31, i32 noundef %protocol.0, i64 noundef %conv71, i8 noundef zeroext %toggle.0) #4
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.then52, %land.lhs.true25.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %do.end ], [ 0, %if.then52 ], [ 0, %sw.epilog ], [ 0, %entry.cleanup_crit_edge ], [ 0, %land.lhs.true25.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bristol_frontend_attach(ptr nocapture noundef %adap) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adap, align 8
  %priv = getelementptr inbounds %struct.dvb_usb_device, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 8
  %id = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 3
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp = icmp eq i8 %5, 0
  br i1 %cmp, label %if.then, label %entry.if.end22_crit_edge

entry.if.end22_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end22

if.then:                                          ; preds = %entry
  %call = tail call i32 @dib0700_set_gpio(ptr noundef %1, i32 noundef 8, i8 noundef zeroext 1, i8 noundef zeroext 0) #4
  tail call void @msleep(i32 noundef 10) #4
  %6 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %adap, align 8
  %call4 = tail call i32 @dib0700_set_gpio(ptr noundef %7, i32 noundef 8, i8 noundef zeroext 1, i8 noundef zeroext 1) #4
  tail call void @msleep(i32 noundef 10) #4
  %8 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %adap, align 8
  %call6 = tail call i32 @dib0700_set_gpio(ptr noundef %9, i32 noundef 15, i8 noundef zeroext 1, i8 noundef zeroext 0) #4
  tail call void @msleep(i32 noundef 10) #4
  %10 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %adap, align 8
  %call8 = tail call i32 @dib0700_set_gpio(ptr noundef %11, i32 noundef 15, i8 noundef zeroext 1, i8 noundef zeroext 1) #4
  tail call void @msleep(i32 noundef 10) #4
  %12 = load i32, ptr @force_lna_activation, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not = icmp ne i32 %12, 0
  %13 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %adap, align 8
  %. = zext i1 %tobool.not to i8
  %call13 = tail call i32 @dib0700_set_gpio(ptr noundef %14, i32 noundef 0, i8 noundef zeroext 1, i8 noundef zeroext %.) #4
  %15 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %adap, align 8
  %i2c_adap = getelementptr inbounds %struct.dvb_usb_device, ptr %16, i32 0, i32 8
  %call15 = tail call i32 @dib3000mc_i2c_enumeration(ptr noundef %i2c_adap, i32 noundef 2, i8 noundef zeroext 24, ptr noundef nonnull @bristol_dib3000mc_config) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp16.not = icmp eq i32 %call15, 0
  br i1 %cmp16.not, label %if.then.if.end22_crit_edge, label %if.then18

if.then.if.end22_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end22

if.then18:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %17 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %adap, align 8
  %call20 = tail call i32 @dib0700_set_gpio(ptr noundef %18, i32 noundef 8, i8 noundef zeroext 1, i8 noundef zeroext 0) #4
  tail call void @msleep(i32 noundef 10) #4
  br label %cleanup

if.end22:                                         ; preds = %if.then.if.end22_crit_edge, %entry.if.end22_crit_edge
  %19 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %id, align 4
  %idxprom = zext i8 %20 to i32
  %arrayidx = getelementptr %struct.dib0700_state, ptr %3, i32 0, i32 1, i32 %idxprom
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 1220, ptr %arrayidx, align 2
  %call24 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.94) #4
  %tobool25.not = icmp eq ptr %call24, null
  br i1 %tobool25.not, label %cond.end, label %if.end22.if.then29_crit_edge

if.end22.if.then29_crit_edge:                     ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then29

cond.end:                                         ; preds = %if.end22
  %call26 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.95) #4
  %call27 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.94) #4
  %tobool28.not = icmp eq ptr %call27, null
  br i1 %tobool28.not, label %do.end, label %cond.end.if.then29_crit_edge

cond.end.if.then29_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then29

if.then29:                                        ; preds = %cond.end.if.then29_crit_edge, %if.end22.if.then29_crit_edge
  %cond69 = phi ptr [ %call27, %cond.end.if.then29_crit_edge ], [ %call24, %if.end22.if.then29_crit_edge ]
  %22 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %adap, align 8
  %i2c_adap31 = getelementptr inbounds %struct.dvb_usb_device, ptr %23, i32 0, i32 8
  %24 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %id, align 4
  %conv33 = zext i8 %25 to i32
  %add = shl i8 %25, 1
  %shl = add i8 %add, 20
  %arrayidx37 = getelementptr [2 x %struct.dib3000mc_config], ptr @bristol_dib3000mc_config, i32 0, i32 %conv33
  %call38 = tail call ptr %cond69(ptr noundef %i2c_adap31, i8 noundef zeroext %shl, ptr noundef %arrayidx37) #4
  %cmp39 = icmp eq ptr %call38, null
  br i1 %cmp39, label %if.then41, label %if.then29.if.end45_crit_edge

if.then29.if.end45_crit_edge:                     ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end45

if.then41:                                        ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @__symbol_put(ptr noundef nonnull @.str.94) #4
  br label %if.end45

do.end:                                           ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #6
  %call44 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.96) #7
  br label %if.end45

if.end45:                                         ; preds = %do.end, %if.then41, %if.then29.if.end45_crit_edge
  %__r.0 = phi ptr [ null, %if.then41 ], [ %call38, %if.then29.if.end45_crit_edge ], [ null, %do.end ]
  %fe_adap = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 9
  %26 = ptrtoint ptr %fe_adap to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %__r.0, ptr %fe_adap, align 8
  %cmp48 = icmp eq ptr %__r.0, null
  %cond50 = select i1 %cmp48, i32 -19, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end45, %if.then18
  %retval.0 = phi i32 [ -19, %if.then18 ], [ %cond50, %if.end45 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bristol_tuner_attach(ptr nocapture noundef readonly %adap) #1 align 64 {
entry:
  %adrs.addr.i = alloca i8, align 1
  %msg.i = alloca [2 x %struct.i2c_msg], align 4
  %a = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adap, align 8
  %i2c_adap = getelementptr inbounds %struct.dvb_usb_device, ptr %1, i32 0, i32 8
  %fe_adap = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 9
  %2 = ptrtoint ptr %fe_adap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fe_adap, align 8
  %call = tail call ptr @dib3000mc_get_tuner_i2c_master(ptr noundef %3, i32 noundef 1) #4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %a) #4
  %4 = ptrtoint ptr %a to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %a, align 1, !annotation !751
  %5 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %adap, align 8
  %udev = getelementptr inbounds %struct.dvb_usb_device, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %udev, align 4
  %idVendor = getelementptr inbounds %struct.usb_device, ptr %8, i32 0, i32 16, i32 7
  %9 = ptrtoint ptr %idVendor to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %idVendor, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 16416, i16 %10)
  %cmp = icmp eq i16 %10, 16416
  br i1 %cmp, label %land.lhs.true, label %entry.if.end15_crit_edge

entry.if.end15_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end15

land.lhs.true:                                    ; preds = %entry
  %idProduct = getelementptr inbounds %struct.usb_device, ptr %8, i32 0, i32 16, i32 8
  %11 = ptrtoint ptr %idProduct to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %idProduct, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 20633, i16 %12)
  %cmp7 = icmp eq i16 %12, 20633
  br i1 %cmp7, label %if.then, label %land.lhs.true.if.end15_crit_edge

land.lhs.true.if.end15_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end15

if.then:                                          ; preds = %land.lhs.true
  %id = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 3
  %13 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %id, align 4
  %add = add i8 %14, 89
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %adrs.addr.i)
  %15 = ptrtoint ptr %adrs.addr.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %add, ptr %adrs.addr.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #4
  %16 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %17 = call ptr @memset(ptr %16, i32 255, i32 16)
  %18 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 80, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %19 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 0, ptr %flags.i, align 2
  %20 = ptrtoint ptr %16 to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 1, ptr %16, align 4
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %21 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %adrs.addr.i, ptr %buf.i, align 4
  %arrayinit.element.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1
  %22 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 80, ptr %arrayinit.element.i, align 4
  %flags2.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 1
  %23 = ptrtoint ptr %flags2.i to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 1, ptr %flags2.i, align 2
  %len3.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 2
  %24 = ptrtoint ptr %len3.i to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 1, ptr %len3.i, align 4
  %buf4.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 3
  %25 = ptrtoint ptr %buf4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %a, ptr %buf4.i, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %i2c_adap, ptr noundef nonnull %msg.i, i32 noundef 2) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 2
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %adrs.addr.i)
  br i1 %cmp.not.i, label %if.then12, label %if.then.if.end15_crit_edge

if.then.if.end15_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end15

if.then12:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %26 = ptrtoint ptr %a to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %a, align 1
  %conv13 = sext i8 %27 to i16
  %add14 = add nsw i16 %conv13, 1220
  br label %if.end15

if.end15:                                         ; preds = %if.then12, %if.then.if.end15_crit_edge, %land.lhs.true.if.end15_crit_edge, %entry.if.end15_crit_edge
  %if1.0 = phi i16 [ 1220, %if.then.if.end15_crit_edge ], [ %add14, %if.then12 ], [ 1220, %land.lhs.true.if.end15_crit_edge ], [ 1220, %entry.if.end15_crit_edge ]
  %call16 = call ptr @__symbol_get(ptr noundef nonnull @.str.88) #4
  %tobool17.not = icmp eq ptr %call16, null
  br i1 %tobool17.not, label %cond.end, label %if.end15.if.then21_crit_edge

if.end15.if.then21_crit_edge:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then21

cond.end:                                         ; preds = %if.end15
  %call18 = call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.89) #4
  %call19 = call ptr @__symbol_get(ptr noundef nonnull @.str.88) #4
  %tobool20.not = icmp eq ptr %call19, null
  br i1 %tobool20.not, label %do.end, label %cond.end.if.then21_crit_edge

cond.end.if.then21_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then21

if.then21:                                        ; preds = %cond.end.if.then21_crit_edge, %if.end15.if.then21_crit_edge
  %cond49 = phi ptr [ %call19, %cond.end.if.then21_crit_edge ], [ %call16, %if.end15.if.then21_crit_edge ]
  %28 = ptrtoint ptr %fe_adap to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %fe_adap, align 8
  %id25 = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 3
  %30 = ptrtoint ptr %id25 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %id25, align 4
  %idxprom = zext i8 %31 to i32
  %arrayidx26 = getelementptr [2 x %struct.mt2060_config], ptr @bristol_mt2060_config, i32 0, i32 %idxprom
  %call28 = call ptr %cond49(ptr noundef %29, ptr noundef %call, ptr noundef %arrayidx26, i16 noundef zeroext %if1.0) #4
  %cmp29 = icmp eq ptr %call28, null
  br i1 %cmp29, label %if.then31, label %if.then21.if.end34_crit_edge

if.then21.if.end34_crit_edge:                     ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end34

if.then31:                                        ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #6
  call void @__symbol_put(ptr noundef nonnull @.str.88) #4
  br label %if.end34

do.end:                                           ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #6
  %call33 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.90) #7
  br label %if.end34

if.end34:                                         ; preds = %do.end, %if.then31, %if.then21.if.end34_crit_edge
  %__r.0 = phi ptr [ null, %if.then31 ], [ %call28, %if.then21.if.end34_crit_edge ], [ null, %do.end ]
  %cmp36 = icmp eq ptr %__r.0, null
  %cond38 = select i1 %cmp36, i32 -19, i32 0
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %a) #4
  ret i32 %cond38
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stk70x0p_pid_filter_ctrl(ptr nocapture noundef readonly %adapter, i32 noundef %onoff) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adapter, i32 0, i32 12
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %pid_filter_ctrl = getelementptr inbounds %struct.dib0700_adapter_state, ptr %1, i32 0, i32 2, i32 8
  %2 = ptrtoint ptr %pid_filter_ctrl to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pid_filter_ctrl, align 4
  %fe_adap = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adapter, i32 0, i32 9
  %4 = ptrtoint ptr %fe_adap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fe_adap, align 8
  %conv = trunc i32 %onoff to i8
  %call = tail call i32 %3(ptr noundef %5, i8 noundef zeroext %conv) #4
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stk70x0p_pid_filter(ptr nocapture noundef readonly %adapter, i32 noundef %index, i16 noundef zeroext %pid, i32 noundef %onoff) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adapter, i32 0, i32 12
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %pid_filter = getelementptr inbounds %struct.dib0700_adapter_state, ptr %1, i32 0, i32 2, i32 9
  %2 = ptrtoint ptr %pid_filter to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pid_filter, align 4
  %fe_adap = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adapter, i32 0, i32 9
  %4 = ptrtoint ptr %fe_adap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fe_adap, align 8
  %conv = trunc i32 %index to i8
  %conv1 = trunc i32 %onoff to i8
  %call = tail call i32 %3(ptr noundef %5, i8 noundef zeroext %conv, i16 noundef zeroext %pid, i8 noundef zeroext %conv1) #4
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stk7700d_frontend_attach(ptr nocapture noundef %adap) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 12
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %call = tail call ptr @__symbol_get(ptr noundef nonnull @.str.78) #4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %cond.end, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

cond.end:                                         ; preds = %entry
  %call1 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.79) #4
  %call2 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.78) #4
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %do.end, label %cond.end.if.then_crit_edge

cond.end.if.then_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

if.then:                                          ; preds = %cond.end.if.then_crit_edge, %entry.if.then_crit_edge
  %cond78 = phi ptr [ %call2, %cond.end.if.then_crit_edge ], [ %call, %entry.if.then_crit_edge ]
  %dib7000p_ops = getelementptr inbounds %struct.dib0700_adapter_state, ptr %1, i32 0, i32 2
  %call4 = tail call ptr %cond78(ptr noundef %dib7000p_ops) #4
  %cmp = icmp eq ptr %call4, null
  br i1 %cmp, label %if.then5, label %if.end11

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @__symbol_put(ptr noundef nonnull @.str.78) #4
  br label %cleanup

do.end:                                           ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #6
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.80) #7
  br label %cleanup

if.end11:                                         ; preds = %if.then
  %id = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 3
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp12 = icmp eq i8 %3, 0
  br i1 %cmp12, label %if.then14, label %if.end11.if.end41_crit_edge

if.end11.if.end41_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end41

if.then14:                                        ; preds = %if.end11
  %4 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %adap, align 8
  %call15 = tail call i32 @dib0700_set_gpio(ptr noundef %5, i32 noundef 8, i8 noundef zeroext 1, i8 noundef zeroext 1) #4
  tail call void @msleep(i32 noundef 10) #4
  %6 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %adap, align 8
  %call17 = tail call i32 @dib0700_set_gpio(ptr noundef %7, i32 noundef 14, i8 noundef zeroext 1, i8 noundef zeroext 1) #4
  %8 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %adap, align 8
  %call19 = tail call i32 @dib0700_set_gpio(ptr noundef %9, i32 noundef 5, i8 noundef zeroext 1, i8 noundef zeroext 1) #4
  %10 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %adap, align 8
  %call21 = tail call i32 @dib0700_set_gpio(ptr noundef %11, i32 noundef 10, i8 noundef zeroext 1, i8 noundef zeroext 1) #4
  %12 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %adap, align 8
  %call23 = tail call i32 @dib0700_set_gpio(ptr noundef %13, i32 noundef 15, i8 noundef zeroext 1, i8 noundef zeroext 0) #4
  tail call void @msleep(i32 noundef 10) #4
  %14 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %adap, align 8
  %call25 = tail call i32 @dib0700_set_gpio(ptr noundef %15, i32 noundef 15, i8 noundef zeroext 1, i8 noundef zeroext 1) #4
  tail call void @msleep(i32 noundef 10) #4
  %16 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %adap, align 8
  %call27 = tail call i32 @dib0700_set_gpio(ptr noundef %17, i32 noundef 0, i8 noundef zeroext 1, i8 noundef zeroext 1) #4
  %i2c_enumeration = getelementptr inbounds %struct.dib0700_adapter_state, ptr %1, i32 0, i32 2, i32 10
  %18 = ptrtoint ptr %i2c_enumeration to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %i2c_enumeration, align 4
  %20 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %adap, align 8
  %i2c_adap = getelementptr inbounds %struct.dvb_usb_device, ptr %21, i32 0, i32 8
  %call30 = tail call i32 %19(ptr noundef %i2c_adap, i32 noundef 2, i8 noundef zeroext 18, ptr noundef nonnull @stk7700d_dib7000p_mt2266_config) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %cmp31.not = icmp eq i32 %call30, 0
  br i1 %cmp31.not, label %if.then14.if.end41_crit_edge, label %do.end36

if.then14.if.end41_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end41

do.end36:                                         ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #6
  %call38 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.101, ptr noundef nonnull @.str.99) #7
  %22 = ptrtoint ptr %dib7000p_ops to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dib7000p_ops, align 4
  tail call void @symbol_put_addr(ptr noundef %23) #4
  br label %cleanup

if.end41:                                         ; preds = %if.then14.if.end41_crit_edge, %if.end11.if.end41_crit_edge
  %init = getelementptr inbounds %struct.dib0700_adapter_state, ptr %1, i32 0, i32 2, i32 15
  %24 = ptrtoint ptr %init to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %init, align 4
  %26 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %adap, align 8
  %i2c_adap44 = getelementptr inbounds %struct.dvb_usb_device, ptr %27, i32 0, i32 8
  %28 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %id, align 4
  %conv46 = zext i8 %29 to i32
  %shl = shl i8 %29, 1
  %add = xor i8 %shl, -128
  %arrayidx = getelementptr [2 x %struct.dib7000p_config], ptr @stk7700d_dib7000p_mt2266_config, i32 0, i32 %conv46
  %call49 = tail call ptr %25(ptr noundef %i2c_adap44, i8 noundef zeroext %add, ptr noundef %arrayidx) #4
  %fe_adap = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 9
  %30 = ptrtoint ptr %fe_adap to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call49, ptr %fe_adap, align 8
  %cmp54 = icmp eq ptr %call49, null
  %cond56 = select i1 %cmp54, i32 -19, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end41, %do.end36, %do.end, %if.then5
  %retval.0 = phi i32 [ -19, %do.end36 ], [ %cond56, %if.end41 ], [ -19, %if.then5 ], [ -19, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stk7700d_tuner_attach(ptr nocapture noundef readonly %adap) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 12
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %get_i2c_master = getelementptr inbounds %struct.dib0700_adapter_state, ptr %1, i32 0, i32 2, i32 7
  %2 = ptrtoint ptr %get_i2c_master to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %get_i2c_master, align 4
  %fe_adap = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 9
  %4 = ptrtoint ptr %fe_adap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fe_adap, align 8
  %call = tail call ptr %3(ptr noundef %5, i32 noundef 0, i32 noundef 1) #4
  %call1 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.103) #4
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %cond.end, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

cond.end:                                         ; preds = %entry
  %call2 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.104) #4
  %call3 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.103) #4
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %do.end, label %cond.end.if.then_crit_edge

cond.end.if.then_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

if.then:                                          ; preds = %cond.end.if.then_crit_edge, %entry.if.then_crit_edge
  %cond23 = phi ptr [ %call3, %cond.end.if.then_crit_edge ], [ %call1, %entry.if.then_crit_edge ]
  %6 = ptrtoint ptr %fe_adap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fe_adap, align 8
  %id = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 3
  %8 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %id, align 4
  %idxprom = zext i8 %9 to i32
  %arrayidx8 = getelementptr [2 x %struct.mt2266_config], ptr @stk7700d_mt2266_config, i32 0, i32 %idxprom
  %call9 = tail call ptr %cond23(ptr noundef %7, ptr noundef %call, ptr noundef %arrayidx8) #4
  %cmp = icmp eq ptr %call9, null
  br i1 %cmp, label %if.then10, label %if.then.if.end12_crit_edge

if.then.if.end12_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end12

if.then10:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @__symbol_put(ptr noundef nonnull @.str.103) #4
  br label %if.end12

do.end:                                           ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #6
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.105) #7
  br label %if.end12

if.end12:                                         ; preds = %do.end, %if.then10, %if.then.if.end12_crit_edge
  %__r.0 = phi ptr [ null, %if.then10 ], [ %call9, %if.then.if.end12_crit_edge ], [ null, %do.end ]
  %cmp14 = icmp eq ptr %__r.0, null
  %cond15 = select i1 %cmp14, i32 -19, i32 0
  ret i32 %cond15
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stk7700P2_frontend_attach(ptr nocapture noundef %adap) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 12
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %call = tail call ptr @__symbol_get(ptr noundef nonnull @.str.78) #4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %cond.end, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

cond.end:                                         ; preds = %entry
  %call1 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.79) #4
  %call2 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.78) #4
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %do.end, label %cond.end.if.then_crit_edge

cond.end.if.then_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

if.then:                                          ; preds = %cond.end.if.then_crit_edge, %entry.if.then_crit_edge
  %cond75 = phi ptr [ %call2, %cond.end.if.then_crit_edge ], [ %call, %entry.if.then_crit_edge ]
  %dib7000p_ops = getelementptr inbounds %struct.dib0700_adapter_state, ptr %1, i32 0, i32 2
  %call4 = tail call ptr %cond75(ptr noundef %dib7000p_ops) #4
  %cmp = icmp eq ptr %call4, null
  br i1 %cmp, label %if.then5, label %if.end11

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @__symbol_put(ptr noundef nonnull @.str.78) #4
  br label %cleanup

do.end:                                           ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #6
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.80) #7
  br label %cleanup

if.end11:                                         ; preds = %if.then
  %id = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 3
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp12 = icmp eq i8 %3, 0
  br i1 %cmp12, label %if.then14, label %if.end11.if.end39_crit_edge

if.end11.if.end39_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end39

if.then14:                                        ; preds = %if.end11
  %4 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %adap, align 8
  %call15 = tail call i32 @dib0700_set_gpio(ptr noundef %5, i32 noundef 8, i8 noundef zeroext 1, i8 noundef zeroext 1) #4
  tail call void @msleep(i32 noundef 10) #4
  %6 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %adap, align 8
  %call17 = tail call i32 @dib0700_set_gpio(ptr noundef %7, i32 noundef 14, i8 noundef zeroext 1, i8 noundef zeroext 1) #4
  %8 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %adap, align 8
  %call19 = tail call i32 @dib0700_set_gpio(ptr noundef %9, i32 noundef 5, i8 noundef zeroext 1, i8 noundef zeroext 1) #4
  %10 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %adap, align 8
  %call21 = tail call i32 @dib0700_set_gpio(ptr noundef %11, i32 noundef 10, i8 noundef zeroext 1, i8 noundef zeroext 1) #4
  %12 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %adap, align 8
  %call23 = tail call i32 @dib0700_set_gpio(ptr noundef %13, i32 noundef 15, i8 noundef zeroext 1, i8 noundef zeroext 0) #4
  tail call void @msleep(i32 noundef 10) #4
  %14 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %adap, align 8
  %call25 = tail call i32 @dib0700_set_gpio(ptr noundef %15, i32 noundef 15, i8 noundef zeroext 1, i8 noundef zeroext 1) #4
  tail call void @msleep(i32 noundef 10) #4
  %i2c_enumeration = getelementptr inbounds %struct.dib0700_adapter_state, ptr %1, i32 0, i32 2, i32 10
  %16 = ptrtoint ptr %i2c_enumeration to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %i2c_enumeration, align 4
  %18 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %adap, align 8
  %i2c_adap = getelementptr inbounds %struct.dvb_usb_device, ptr %19, i32 0, i32 8
  %call28 = tail call i32 %17(ptr noundef %i2c_adap, i32 noundef 1, i8 noundef zeroext 18, ptr noundef nonnull @stk7700d_dib7000p_mt2266_config) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %cmp29.not = icmp eq i32 %call28, 0
  br i1 %cmp29.not, label %if.then14.if.end39_crit_edge, label %do.end34

if.then14.if.end39_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end39

do.end34:                                         ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #6
  %call36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.101, ptr noundef nonnull @.str.107) #7
  %20 = ptrtoint ptr %dib7000p_ops to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dib7000p_ops, align 4
  tail call void @symbol_put_addr(ptr noundef %21) #4
  br label %cleanup

if.end39:                                         ; preds = %if.then14.if.end39_crit_edge, %if.end11.if.end39_crit_edge
  %init = getelementptr inbounds %struct.dib0700_adapter_state, ptr %1, i32 0, i32 2, i32 15
  %22 = ptrtoint ptr %init to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %init, align 4
  %24 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %adap, align 8
  %i2c_adap42 = getelementptr inbounds %struct.dvb_usb_device, ptr %25, i32 0, i32 8
  %26 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %id, align 4
  %conv44 = zext i8 %27 to i32
  %shl = shl i8 %27, 1
  %add = xor i8 %shl, -128
  %arrayidx = getelementptr [2 x %struct.dib7000p_config], ptr @stk7700d_dib7000p_mt2266_config, i32 0, i32 %conv44
  %call47 = tail call ptr %23(ptr noundef %i2c_adap42, i8 noundef zeroext %add, ptr noundef %arrayidx) #4
  %fe_adap = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 9
  %28 = ptrtoint ptr %fe_adap to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call47, ptr %fe_adap, align 8
  %cmp52 = icmp eq ptr %call47, null
  %cond54 = select i1 %cmp52, i32 -19, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end39, %do.end34, %do.end, %if.then5
  %retval.0 = phi i32 [ -19, %do.end34 ], [ %cond54, %if.end39 ], [ -19, %if.then5 ], [ -19, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stk7070p_frontend_attach(ptr nocapture noundef %adap) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adap, align 8
  %udev = getelementptr inbounds %struct.dvb_usb_device, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %udev, align 4
  %priv = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 12
  %4 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv, align 8
  %call = tail call ptr @__symbol_get(ptr noundef nonnull @.str.78) #4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %cond.end, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

cond.end:                                         ; preds = %entry
  %call1 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.79) #4
  %call2 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.78) #4
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %do.end, label %cond.end.if.then_crit_edge

cond.end.if.then_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

if.then:                                          ; preds = %cond.end.if.then_crit_edge, %entry.if.then_crit_edge
  %cond84 = phi ptr [ %call2, %cond.end.if.then_crit_edge ], [ %call, %entry.if.then_crit_edge ]
  %dib7000p_ops = getelementptr inbounds %struct.dib0700_adapter_state, ptr %5, i32 0, i32 2
  %call4 = tail call ptr %cond84(ptr noundef %dib7000p_ops) #4
  %cmp = icmp eq ptr %call4, null
  br i1 %cmp, label %if.then5, label %if.end11

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @__symbol_put(ptr noundef nonnull @.str.78) #4
  br label %cleanup

do.end:                                           ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #6
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.80) #7
  br label %cleanup

if.end11:                                         ; preds = %if.then
  %idVendor = getelementptr inbounds %struct.usb_device, ptr %3, i32 0, i32 16, i32 7
  %6 = ptrtoint ptr %idVendor to i32
  call void @__asan_loadN_noabort(i32 %6, i32 2)
  %7 = load i16, ptr %idVendor, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 1059, i16 %7)
  %cmp12 = icmp eq i16 %7, 1059
  br i1 %cmp12, label %land.lhs.true, label %if.end11.if.else20_crit_edge

if.end11.if.else20_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else20

land.lhs.true:                                    ; preds = %if.end11
  %idProduct = getelementptr inbounds %struct.usb_device, ptr %3, i32 0, i32 16, i32 8
  %8 = ptrtoint ptr %idProduct to i32
  call void @__asan_loadN_noabort(i32 %8, i32 2)
  %9 = load i16, ptr %idProduct, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 13826, i16 %9)
  %cmp15 = icmp eq i16 %9, 13826
  br i1 %cmp15, label %land.lhs.true.if.end23_crit_edge, label %land.lhs.true.if.else20_crit_edge

land.lhs.true.if.else20_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else20

land.lhs.true.if.end23_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end23

if.else20:                                        ; preds = %land.lhs.true.if.else20_crit_edge, %if.end11.if.else20_crit_edge
  br label %if.end23

if.end23:                                         ; preds = %if.else20, %land.lhs.true.if.end23_crit_edge
  %.sink87 = phi i8 [ 1, %if.else20 ], [ 0, %land.lhs.true.if.end23_crit_edge ]
  %10 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %adap, align 8
  %call22 = tail call i32 @dib0700_set_gpio(ptr noundef %11, i32 noundef 8, i8 noundef zeroext 1, i8 noundef zeroext %.sink87) #4
  tail call void @msleep(i32 noundef 10) #4
  %12 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %adap, align 8
  %call25 = tail call i32 @dib0700_set_gpio(ptr noundef %13, i32 noundef 14, i8 noundef zeroext 1, i8 noundef zeroext 1) #4
  %14 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %adap, align 8
  %call27 = tail call i32 @dib0700_set_gpio(ptr noundef %15, i32 noundef 5, i8 noundef zeroext 1, i8 noundef zeroext 1) #4
  %16 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %adap, align 8
  %call29 = tail call i32 @dib0700_set_gpio(ptr noundef %17, i32 noundef 10, i8 noundef zeroext 1, i8 noundef zeroext 1) #4
  %18 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %adap, align 8
  %call31 = tail call i32 @dib0700_set_gpio(ptr noundef %19, i32 noundef 15, i8 noundef zeroext 1, i8 noundef zeroext 0) #4
  %20 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %adap, align 8
  %call33 = tail call i32 @dib0700_ctrl_clock(ptr noundef %21, i32 noundef 72, i8 noundef zeroext 1) #4
  tail call void @msleep(i32 noundef 10) #4
  %22 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %adap, align 8
  %call35 = tail call i32 @dib0700_set_gpio(ptr noundef %23, i32 noundef 15, i8 noundef zeroext 1, i8 noundef zeroext 1) #4
  tail call void @msleep(i32 noundef 10) #4
  %24 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %adap, align 8
  %call37 = tail call i32 @dib0700_set_gpio(ptr noundef %25, i32 noundef 0, i8 noundef zeroext 1, i8 noundef zeroext 1) #4
  %i2c_enumeration = getelementptr inbounds %struct.dib0700_adapter_state, ptr %5, i32 0, i32 2, i32 10
  %26 = ptrtoint ptr %i2c_enumeration to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %i2c_enumeration, align 4
  %28 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %adap, align 8
  %i2c_adap = getelementptr inbounds %struct.dvb_usb_device, ptr %29, i32 0, i32 8
  %call40 = tail call i32 %27(ptr noundef %i2c_adap, i32 noundef 1, i8 noundef zeroext 18, ptr noundef nonnull @dib7070p_dib7000p_config) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %cmp41.not = icmp eq i32 %call40, 0
  br i1 %cmp41.not, label %if.end50, label %do.end46

do.end46:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #6
  %call48 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.101, ptr noundef nonnull @.str.110) #7
  %30 = ptrtoint ptr %dib7000p_ops to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dib7000p_ops, align 4
  tail call void @symbol_put_addr(ptr noundef %31) #4
  br label %cleanup

if.end50:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #6
  %init = getelementptr inbounds %struct.dib0700_adapter_state, ptr %5, i32 0, i32 2, i32 15
  %32 = ptrtoint ptr %init to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %init, align 4
  %34 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %adap, align 8
  %i2c_adap53 = getelementptr inbounds %struct.dvb_usb_device, ptr %35, i32 0, i32 8
  %call54 = tail call ptr %33(ptr noundef %i2c_adap53, i8 noundef zeroext -128, ptr noundef nonnull @dib7070p_dib7000p_config) #4
  %fe_adap = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 9
  %36 = ptrtoint ptr %fe_adap to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call54, ptr %fe_adap, align 8
  %cmp58 = icmp eq ptr %call54, null
  %cond60 = select i1 %cmp58, i32 -19, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end50, %do.end46, %do.end, %if.then5
  %retval.0 = phi i32 [ -19, %do.end46 ], [ %cond60, %if.end50 ], [ -19, %if.then5 ], [ -19, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dib7070p_tuner_attach(ptr nocapture noundef readonly %adap) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 12
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %get_i2c_master = getelementptr inbounds %struct.dib0700_adapter_state, ptr %1, i32 0, i32 2, i32 7
  %2 = ptrtoint ptr %get_i2c_master to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %get_i2c_master, align 4
  %fe_adap = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 9
  %4 = ptrtoint ptr %fe_adap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fe_adap, align 8
  %call = tail call ptr %3(ptr noundef %5, i32 noundef 0, i32 noundef 1) #4
  %id = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 3
  %6 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %cmp = icmp eq i8 %7, 0
  %call2 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.113) #4
  %tobool.not = icmp eq ptr %call2, null
  br i1 %cmp, label %if.then, label %if.else21

if.then:                                          ; preds = %entry
  br i1 %tobool.not, label %cond.end, label %if.then.if.then6_crit_edge

if.then.if.then6_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then6

cond.end:                                         ; preds = %if.then
  %call3 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.114) #4
  %call4 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.113) #4
  %tobool5.not = icmp eq ptr %call4, null
  br i1 %tobool5.not, label %do.end, label %cond.end.if.then6_crit_edge

cond.end.if.then6_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then6

if.then6:                                         ; preds = %cond.end.if.then6_crit_edge, %if.then.if.then6_crit_edge
  %cond79 = phi ptr [ %call4, %cond.end.if.then6_crit_edge ], [ %call2, %if.then.if.then6_crit_edge ]
  %8 = ptrtoint ptr %fe_adap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fe_adap, align 8
  %call10 = tail call ptr %cond79(ptr noundef %9, ptr noundef %call, ptr noundef nonnull @dib7070p_dib0070_config) #4
  %cmp11 = icmp eq ptr %call10, null
  br i1 %cmp11, label %if.then13, label %if.then6.if.end54_crit_edge

if.then6.if.end54_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end54

if.then13:                                        ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @__symbol_put(ptr noundef nonnull @.str.113) #4
  br label %cleanup

do.end:                                           ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #6
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.115) #7
  br label %cleanup

if.else21:                                        ; preds = %entry
  br i1 %tobool.not, label %cond.end30, label %if.else21.if.then33_crit_edge

if.else21.if.then33_crit_edge:                    ; preds = %if.else21
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then33

cond.end30:                                       ; preds = %if.else21
  %call28 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.114) #4
  %call29 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.113) #4
  %tobool32.not = icmp eq ptr %call29, null
  br i1 %tobool32.not, label %do.end45, label %cond.end30.if.then33_crit_edge

cond.end30.if.then33_crit_edge:                   ; preds = %cond.end30
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then33

if.then33:                                        ; preds = %cond.end30.if.then33_crit_edge, %if.else21.if.then33_crit_edge
  %cond3184 = phi ptr [ %call29, %cond.end30.if.then33_crit_edge ], [ %call2, %if.else21.if.then33_crit_edge ]
  %10 = ptrtoint ptr %fe_adap to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %fe_adap, align 8
  %call37 = tail call ptr %cond3184(ptr noundef %11, ptr noundef %call, ptr noundef getelementptr inbounds ([2 x %struct.dib0070_config], ptr @dib7070p_dib0070_config, i32 0, i32 1)) #4
  %cmp38 = icmp eq ptr %call37, null
  br i1 %cmp38, label %if.then40, label %if.then33.if.end54_crit_edge

if.then33.if.end54_crit_edge:                     ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end54

if.then40:                                        ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @__symbol_put(ptr noundef nonnull @.str.113) #4
  br label %cleanup

do.end45:                                         ; preds = %cond.end30
  call void @__sanitizer_cov_trace_pc() #6
  %call47 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.115) #7
  br label %cleanup

if.end54:                                         ; preds = %if.then33.if.end54_crit_edge, %if.then6.if.end54_crit_edge
  %12 = ptrtoint ptr %fe_adap to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %fe_adap, align 8
  %set_params = getelementptr inbounds %struct.dvb_frontend, ptr %13, i32 0, i32 1, i32 32, i32 6
  %14 = ptrtoint ptr %set_params to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %set_params, align 4
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %15, ptr %1, align 4
  %17 = load ptr, ptr %fe_adap, align 8
  %set_params63 = getelementptr inbounds %struct.dvb_frontend, ptr %17, i32 0, i32 1, i32 32, i32 6
  %18 = ptrtoint ptr %set_params63 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @dib7070_set_param_override, ptr %set_params63, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end54, %do.end45, %if.then40, %do.end, %if.then13
  %retval.0 = phi i32 [ 0, %if.end54 ], [ -19, %if.then13 ], [ -19, %do.end ], [ -19, %if.then40 ], [ -19, %do.end45 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @novatd_frontend_attach(ptr nocapture noundef %adap) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adap, align 8
  %priv = getelementptr inbounds %struct.dvb_usb_device, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 8
  %priv2 = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 12
  %4 = ptrtoint ptr %priv2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv2, align 8
  %call = tail call ptr @__symbol_get(ptr noundef nonnull @.str.78) #4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %cond.end, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

cond.end:                                         ; preds = %entry
  %call3 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.79) #4
  %call4 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.78) #4
  %tobool5.not = icmp eq ptr %call4, null
  br i1 %tobool5.not, label %do.end, label %cond.end.if.then_crit_edge

cond.end.if.then_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

if.then:                                          ; preds = %cond.end.if.then_crit_edge, %entry.if.then_crit_edge
  %cond96 = phi ptr [ %call4, %cond.end.if.then_crit_edge ], [ %call, %entry.if.then_crit_edge ]
  %dib7000p_ops = getelementptr inbounds %struct.dib0700_adapter_state, ptr %5, i32 0, i32 2
  %call6 = tail call ptr %cond96(ptr noundef %dib7000p_ops) #4
  %cmp = icmp eq ptr %call6, null
  br i1 %cmp, label %if.then7, label %if.end13

if.then7:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @__symbol_put(ptr noundef nonnull @.str.78) #4
  br label %cleanup

do.end:                                           ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #6
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.80) #7
  br label %cleanup

if.end13:                                         ; preds = %if.then
  %id = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 3
  %6 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %cmp14 = icmp eq i8 %7, 0
  br i1 %cmp14, label %if.then16, label %if.end13.if.end32_crit_edge

if.end13.if.end32_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end32

if.then16:                                        ; preds = %if.end13
  tail call fastcc void @stk7070pd_init(ptr noundef %1)
  %call17 = tail call i32 @dib0700_set_gpio(ptr noundef %1, i32 noundef 0, i8 noundef zeroext 1, i8 noundef zeroext 0) #4
  %call18 = tail call i32 @dib0700_set_gpio(ptr noundef %1, i32 noundef 2, i8 noundef zeroext 1, i8 noundef zeroext 0) #4
  %call19 = tail call i32 @dib0700_set_gpio(ptr noundef %1, i32 noundef 3, i8 noundef zeroext 1, i8 noundef zeroext 1) #4
  %i2c_enumeration = getelementptr inbounds %struct.dib0700_adapter_state, ptr %5, i32 0, i32 2, i32 10
  %8 = ptrtoint ptr %i2c_enumeration to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %i2c_enumeration, align 4
  %i2c_adap = getelementptr inbounds %struct.dvb_usb_device, ptr %1, i32 0, i32 8
  %call21 = tail call i32 %9(ptr noundef %i2c_adap, i32 noundef 2, i8 noundef zeroext 18, ptr noundef nonnull @stk7070pd_dib7000p_config) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %cmp22.not = icmp eq i32 %call21, 0
  br i1 %cmp22.not, label %if.then16.if.end32_crit_edge, label %do.end27

if.then16.if.end32_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end32

do.end27:                                         ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #6
  %call29 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.101, ptr noundef nonnull @.str.125) #7
  %10 = ptrtoint ptr %dib7000p_ops to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dib7000p_ops, align 4
  tail call void @symbol_put_addr(ptr noundef %11) #4
  br label %cleanup

if.end32:                                         ; preds = %if.then16.if.end32_crit_edge, %if.end13.if.end32_crit_edge
  %init = getelementptr inbounds %struct.dib0700_adapter_state, ptr %5, i32 0, i32 2, i32 15
  %12 = ptrtoint ptr %init to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %init, align 4
  %i2c_adap34 = getelementptr inbounds %struct.dvb_usb_device, ptr %1, i32 0, i32 8
  %14 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %id, align 4
  %conv36 = zext i8 %15 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %cmp37 = icmp eq i8 %15, 0
  %conv40 = select i1 %cmp37, i8 -128, i8 -126
  %arrayidx = getelementptr [2 x %struct.dib7000p_config], ptr @stk7070pd_dib7000p_config, i32 0, i32 %conv36
  %call42 = tail call ptr %13(ptr noundef %i2c_adap34, i8 noundef zeroext %conv40, ptr noundef %arrayidx) #4
  %fe_adap = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 9
  %16 = ptrtoint ptr %fe_adap to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call42, ptr %fe_adap, align 8
  %cmp47 = icmp eq ptr %call42, null
  br i1 %cmp47, label %if.end32.cleanup_crit_edge, label %if.end50

if.end32.cleanup_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end50:                                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #6
  %read_status = getelementptr inbounds %struct.dvb_frontend, ptr %call42, i32 0, i32 1, i32 15
  %17 = ptrtoint ptr %read_status to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %read_status, align 4
  %read_status54 = getelementptr inbounds %struct.dib0700_state, ptr %3, i32 0, i32 9
  %19 = ptrtoint ptr %read_status54 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %18, ptr %read_status54, align 4
  %20 = ptrtoint ptr %fe_adap to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %fe_adap, align 8
  %read_status59 = getelementptr inbounds %struct.dvb_frontend, ptr %21, i32 0, i32 1, i32 15
  %22 = ptrtoint ptr %read_status59 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @novatd_read_status_override, ptr %read_status59, align 4
  %23 = load ptr, ptr %fe_adap, align 8
  %sleep = getelementptr inbounds %struct.dvb_frontend, ptr %23, i32 0, i32 1, i32 6
  %24 = ptrtoint ptr %sleep to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %sleep, align 4
  %sleep64 = getelementptr inbounds %struct.dib0700_state, ptr %3, i32 0, i32 10
  %26 = ptrtoint ptr %sleep64 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %25, ptr %sleep64, align 4
  %27 = load ptr, ptr %fe_adap, align 8
  %sleep69 = getelementptr inbounds %struct.dvb_frontend, ptr %27, i32 0, i32 1, i32 6
  %28 = ptrtoint ptr %sleep69 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @novatd_sleep_override, ptr %sleep69, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end50, %if.end32.cleanup_crit_edge, %do.end27, %do.end, %if.then7
  %retval.0 = phi i32 [ -19, %do.end27 ], [ 0, %if.end50 ], [ -19, %if.end32.cleanup_crit_edge ], [ -19, %if.then7 ], [ -19, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stk7070pd_frontend_attach0(ptr nocapture noundef %adap) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 12
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %call = tail call ptr @__symbol_get(ptr noundef nonnull @.str.78) #4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %cond.end, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

cond.end:                                         ; preds = %entry
  %call1 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.79) #4
  %call2 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.78) #4
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %do.end, label %cond.end.if.then_crit_edge

cond.end.if.then_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

if.then:                                          ; preds = %cond.end.if.then_crit_edge, %entry.if.then_crit_edge
  %cond48 = phi ptr [ %call2, %cond.end.if.then_crit_edge ], [ %call, %entry.if.then_crit_edge ]
  %dib7000p_ops = getelementptr inbounds %struct.dib0700_adapter_state, ptr %1, i32 0, i32 2
  %call4 = tail call ptr %cond48(ptr noundef %dib7000p_ops) #4
  %cmp = icmp eq ptr %call4, null
  br i1 %cmp, label %if.then5, label %if.end11

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @__symbol_put(ptr noundef nonnull @.str.78) #4
  br label %cleanup

do.end:                                           ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #6
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.80) #7
  br label %cleanup

if.end11:                                         ; preds = %if.then
  %2 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %adap, align 8
  tail call fastcc void @stk7070pd_init(ptr noundef %3)
  tail call void @msleep(i32 noundef 10) #4
  %4 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %adap, align 8
  %call13 = tail call i32 @dib0700_set_gpio(ptr noundef %5, i32 noundef 0, i8 noundef zeroext 1, i8 noundef zeroext 1) #4
  %i2c_enumeration = getelementptr inbounds %struct.dib0700_adapter_state, ptr %1, i32 0, i32 2, i32 10
  %6 = ptrtoint ptr %i2c_enumeration to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %i2c_enumeration, align 4
  %8 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %adap, align 8
  %i2c_adap = getelementptr inbounds %struct.dvb_usb_device, ptr %9, i32 0, i32 8
  %call16 = tail call i32 %7(ptr noundef %i2c_adap, i32 noundef 2, i8 noundef zeroext 18, ptr noundef nonnull @stk7070pd_dib7000p_config) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %cmp17.not = icmp eq i32 %call16, 0
  br i1 %cmp17.not, label %if.end25, label %do.end21

do.end21:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #6
  %call23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.101, ptr noundef nonnull @.str.128) #7
  %10 = ptrtoint ptr %dib7000p_ops to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dib7000p_ops, align 4
  tail call void @symbol_put_addr(ptr noundef %11) #4
  br label %cleanup

if.end25:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #6
  %init = getelementptr inbounds %struct.dib0700_adapter_state, ptr %1, i32 0, i32 2, i32 15
  %12 = ptrtoint ptr %init to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %init, align 4
  %14 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %adap, align 8
  %i2c_adap28 = getelementptr inbounds %struct.dvb_usb_device, ptr %15, i32 0, i32 8
  %call29 = tail call ptr %13(ptr noundef %i2c_adap28, i8 noundef zeroext -128, ptr noundef nonnull @stk7070pd_dib7000p_config) #4
  %fe_adap = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 9
  %16 = ptrtoint ptr %fe_adap to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call29, ptr %fe_adap, align 8
  %cmp33 = icmp eq ptr %call29, null
  %cond34 = select i1 %cmp33, i32 -19, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end25, %do.end21, %do.end, %if.then5
  %retval.0 = phi i32 [ -19, %do.end21 ], [ %cond34, %if.end25 ], [ -19, %if.then5 ], [ -19, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stk7070pd_frontend_attach1(ptr nocapture noundef %adap) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 12
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %call = tail call ptr @__symbol_get(ptr noundef nonnull @.str.78) #4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %cond.end, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

cond.end:                                         ; preds = %entry
  %call1 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.79) #4
  %call2 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.78) #4
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %do.end, label %cond.end.if.then_crit_edge

cond.end.if.then_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

if.then:                                          ; preds = %cond.end.if.then_crit_edge, %entry.if.then_crit_edge
  %cond27 = phi ptr [ %call2, %cond.end.if.then_crit_edge ], [ %call, %entry.if.then_crit_edge ]
  %dib7000p_ops = getelementptr inbounds %struct.dib0700_adapter_state, ptr %1, i32 0, i32 2
  %call4 = tail call ptr %cond27(ptr noundef %dib7000p_ops) #4
  %cmp = icmp eq ptr %call4, null
  br i1 %cmp, label %if.then5, label %if.end11

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @__symbol_put(ptr noundef nonnull @.str.78) #4
  br label %cleanup

do.end:                                           ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #6
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.80) #7
  br label %cleanup

if.end11:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %init = getelementptr inbounds %struct.dib0700_adapter_state, ptr %1, i32 0, i32 2, i32 15
  %2 = ptrtoint ptr %init to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %init, align 4
  %4 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %adap, align 8
  %i2c_adap = getelementptr inbounds %struct.dvb_usb_device, ptr %5, i32 0, i32 8
  %call13 = tail call ptr %3(ptr noundef %i2c_adap, i8 noundef zeroext -126, ptr noundef getelementptr inbounds ([2 x %struct.dib7000p_config], ptr @stk7070pd_dib7000p_config, i32 0, i32 1)) #4
  %fe_adap = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 9
  %6 = ptrtoint ptr %fe_adap to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call13, ptr %fe_adap, align 8
  %cmp17 = icmp eq ptr %call13, null
  %cond18 = select i1 %cmp17, i32 -19, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %do.end, %if.then5
  %retval.0 = phi i32 [ %cond18, %if.end11 ], [ -19, %if.then5 ], [ -19, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stk7700ph_frontend_attach(ptr nocapture noundef %adap) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adap, align 8
  %udev = getelementptr inbounds %struct.dvb_usb_device, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %udev, align 4
  %priv = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 12
  %4 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv, align 8
  %call = tail call ptr @__symbol_get(ptr noundef nonnull @.str.78) #4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %cond.end, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

cond.end:                                         ; preds = %entry
  %call1 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.79) #4
  %call2 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.78) #4
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %do.end, label %cond.end.if.then_crit_edge

cond.end.if.then_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

if.then:                                          ; preds = %cond.end.if.then_crit_edge, %entry.if.then_crit_edge
  %cond81 = phi ptr [ %call2, %cond.end.if.then_crit_edge ], [ %call, %entry.if.then_crit_edge ]
  %dib7000p_ops = getelementptr inbounds %struct.dib0700_adapter_state, ptr %5, i32 0, i32 2
  %call4 = tail call ptr %cond81(ptr noundef %dib7000p_ops) #4
  %cmp = icmp eq ptr %call4, null
  br i1 %cmp, label %if.then5, label %if.end11

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @__symbol_put(ptr noundef nonnull @.str.78) #4
  br label %cleanup

do.end:                                           ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #6
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.80) #7
  br label %cleanup

if.end11:                                         ; preds = %if.then
  %idVendor = getelementptr inbounds %struct.usb_device, ptr %3, i32 0, i32 16, i32 7
  %6 = ptrtoint ptr %idVendor to i32
  call void @__asan_loadN_noabort(i32 %6, i32 2)
  %7 = load i16, ptr %idVendor, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 1059, i16 %7)
  %cmp12 = icmp eq i16 %7, 1059
  br i1 %cmp12, label %land.lhs.true, label %if.end11.if.else20_crit_edge

if.end11.if.else20_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else20

land.lhs.true:                                    ; preds = %if.end11
  %idProduct = getelementptr inbounds %struct.usb_device, ptr %3, i32 0, i32 16, i32 8
  %8 = ptrtoint ptr %idProduct to i32
  call void @__asan_loadN_noabort(i32 %8, i32 2)
  %9 = load i16, ptr %idProduct, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 11778, i16 %9)
  %cmp15 = icmp eq i16 %9, 11778
  br i1 %cmp15, label %land.lhs.true.if.end23_crit_edge, label %land.lhs.true.if.else20_crit_edge

land.lhs.true.if.else20_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else20

land.lhs.true.if.end23_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end23

if.else20:                                        ; preds = %land.lhs.true.if.else20_crit_edge, %if.end11.if.else20_crit_edge
  br label %if.end23

if.end23:                                         ; preds = %if.else20, %land.lhs.true.if.end23_crit_edge
  %.sink84 = phi i8 [ 1, %if.else20 ], [ 0, %land.lhs.true.if.end23_crit_edge ]
  %10 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %adap, align 8
  %call22 = tail call i32 @dib0700_set_gpio(ptr noundef %11, i32 noundef 8, i8 noundef zeroext 1, i8 noundef zeroext %.sink84) #4
  tail call void @msleep(i32 noundef 20) #4
  %12 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %adap, align 8
  %call25 = tail call i32 @dib0700_set_gpio(ptr noundef %13, i32 noundef 14, i8 noundef zeroext 1, i8 noundef zeroext 1) #4
  %14 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %adap, align 8
  %call27 = tail call i32 @dib0700_set_gpio(ptr noundef %15, i32 noundef 5, i8 noundef zeroext 1, i8 noundef zeroext 1) #4
  %16 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %adap, align 8
  %call29 = tail call i32 @dib0700_set_gpio(ptr noundef %17, i32 noundef 10, i8 noundef zeroext 1, i8 noundef zeroext 1) #4
  %18 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %adap, align 8
  %call31 = tail call i32 @dib0700_set_gpio(ptr noundef %19, i32 noundef 15, i8 noundef zeroext 1, i8 noundef zeroext 0) #4
  tail call void @msleep(i32 noundef 10) #4
  %20 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %adap, align 8
  %call33 = tail call i32 @dib0700_set_gpio(ptr noundef %21, i32 noundef 15, i8 noundef zeroext 1, i8 noundef zeroext 1) #4
  tail call void @msleep(i32 noundef 20) #4
  %22 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %adap, align 8
  %call35 = tail call i32 @dib0700_set_gpio(ptr noundef %23, i32 noundef 0, i8 noundef zeroext 1, i8 noundef zeroext 1) #4
  tail call void @msleep(i32 noundef 10) #4
  %i2c_enumeration = getelementptr inbounds %struct.dib0700_adapter_state, ptr %5, i32 0, i32 2, i32 10
  %24 = ptrtoint ptr %i2c_enumeration to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %i2c_enumeration, align 4
  %26 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %adap, align 8
  %i2c_adap = getelementptr inbounds %struct.dvb_usb_device, ptr %27, i32 0, i32 8
  %call38 = tail call i32 %25(ptr noundef %i2c_adap, i32 noundef 1, i8 noundef zeroext 18, ptr noundef nonnull @stk7700ph_dib7700_xc3028_config) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %cmp39.not = icmp eq i32 %call38, 0
  br i1 %cmp39.not, label %if.end48, label %do.end44

do.end44:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #6
  %call46 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.101, ptr noundef nonnull @.str.132) #7
  %28 = ptrtoint ptr %dib7000p_ops to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dib7000p_ops, align 4
  tail call void @symbol_put_addr(ptr noundef %29) #4
  br label %cleanup

if.end48:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #6
  %init = getelementptr inbounds %struct.dib0700_adapter_state, ptr %5, i32 0, i32 2, i32 15
  %30 = ptrtoint ptr %init to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %init, align 4
  %32 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %adap, align 8
  %i2c_adap51 = getelementptr inbounds %struct.dvb_usb_device, ptr %33, i32 0, i32 8
  %call52 = tail call ptr %31(ptr noundef %i2c_adap51, i8 noundef zeroext -128, ptr noundef nonnull @stk7700ph_dib7700_xc3028_config) #4
  %fe_adap = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 9
  %34 = ptrtoint ptr %fe_adap to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call52, ptr %fe_adap, align 8
  %cmp56 = icmp eq ptr %call52, null
  %cond58 = select i1 %cmp56, i32 -19, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end48, %do.end44, %do.end, %if.then5
  %retval.0 = phi i32 [ -19, %do.end44 ], [ %cond58, %if.end48 ], [ -19, %if.then5 ], [ -19, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stk7700ph_tuner_attach(ptr nocapture noundef readonly %adap) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 12
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %get_i2c_master = getelementptr inbounds %struct.dib0700_adapter_state, ptr %1, i32 0, i32 2, i32 7
  %2 = ptrtoint ptr %get_i2c_master to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %get_i2c_master, align 4
  %fe_adap = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 9
  %4 = ptrtoint ptr %fe_adap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fe_adap, align 8
  %call = tail call ptr %3(ptr noundef %5, i32 noundef 0, i32 noundef 1) #4
  store ptr %call, ptr @stk7700ph_xc3028_config, align 4
  %6 = ptrtoint ptr %fe_adap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fe_adap, align 8
  %callback = getelementptr inbounds %struct.dvb_frontend, ptr %7, i32 0, i32 9
  %8 = ptrtoint ptr %callback to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @stk7700ph_xc3028_callback, ptr %callback, align 4
  %call4 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.135) #4
  %tobool.not = icmp eq ptr %call4, null
  br i1 %tobool.not, label %cond.end, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

cond.end:                                         ; preds = %entry
  %call5 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.136) #4
  %call6 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.135) #4
  %tobool7.not = icmp eq ptr %call6, null
  br i1 %tobool7.not, label %do.end, label %cond.end.if.then_crit_edge

cond.end.if.then_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

if.then:                                          ; preds = %cond.end.if.then_crit_edge, %entry.if.then_crit_edge
  %cond25 = phi ptr [ %call6, %cond.end.if.then_crit_edge ], [ %call4, %entry.if.then_crit_edge ]
  %9 = ptrtoint ptr %fe_adap to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %fe_adap, align 8
  %call11 = tail call ptr %cond25(ptr noundef %10, ptr noundef nonnull @stk7700ph_xc3028_config) #4
  %cmp = icmp eq ptr %call11, null
  br i1 %cmp, label %if.then12, label %if.then.if.end14_crit_edge

if.then.if.end14_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end14

if.then12:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @__symbol_put(ptr noundef nonnull @.str.135) #4
  br label %if.end14

do.end:                                           ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #6
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.137) #7
  br label %if.end14

if.end14:                                         ; preds = %do.end, %if.then12, %if.then.if.end14_crit_edge
  %__r.0 = phi ptr [ null, %if.then12 ], [ %call11, %if.then.if.end14_crit_edge ], [ null, %do.end ]
  %cmp16 = icmp eq ptr %__r.0, null
  %cond17 = select i1 %cmp16, i32 -19, i32 0
  ret i32 %cond17
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s5h1411_frontend_attach(ptr nocapture noundef %adap) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adap, align 8
  %priv = getelementptr inbounds %struct.dvb_usb_device, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 8
  %fw_use_new_i2c_api = getelementptr inbounds %struct.dib0700_state, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %fw_use_new_i2c_api to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %fw_use_new_i2c_api, align 1
  %disable_streaming_master_mode = getelementptr inbounds %struct.dib0700_state, ptr %3, i32 0, i32 6
  %5 = ptrtoint ptr %disable_streaming_master_mode to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %disable_streaming_master_mode, align 2
  %6 = load ptr, ptr %adap, align 8
  %call = tail call i32 @dib0700_set_gpio(ptr noundef %6, i32 noundef 0, i8 noundef zeroext 1, i8 noundef zeroext 0) #4
  %7 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %adap, align 8
  %call3 = tail call i32 @dib0700_set_gpio(ptr noundef %8, i32 noundef 4, i8 noundef zeroext 1, i8 noundef zeroext 0) #4
  %9 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %adap, align 8
  %call5 = tail call i32 @dib0700_set_gpio(ptr noundef %10, i32 noundef 8, i8 noundef zeroext 1, i8 noundef zeroext 1) #4
  tail call void @msleep(i32 noundef 400) #4
  %11 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %adap, align 8
  %call7 = tail call i32 @dib0700_set_gpio(ptr noundef %12, i32 noundef 15, i8 noundef zeroext 1, i8 noundef zeroext 0) #4
  tail call void @msleep(i32 noundef 60) #4
  %13 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %adap, align 8
  %call9 = tail call i32 @dib0700_set_gpio(ptr noundef %14, i32 noundef 15, i8 noundef zeroext 1, i8 noundef zeroext 1) #4
  tail call void @msleep(i32 noundef 30) #4
  %15 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %adap, align 8
  %call11 = tail call i32 @dib0700_set_gpio(ptr noundef %16, i32 noundef 0, i8 noundef zeroext 1, i8 noundef zeroext 1) #4
  %17 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %adap, align 8
  %call13 = tail call i32 @dib0700_set_gpio(ptr noundef %18, i32 noundef 14, i8 noundef zeroext 1, i8 noundef zeroext 1) #4
  %19 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %adap, align 8
  %call15 = tail call i32 @dib0700_set_gpio(ptr noundef %20, i32 noundef 5, i8 noundef zeroext 1, i8 noundef zeroext 1) #4
  %21 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %adap, align 8
  %call17 = tail call i32 @dib0700_set_gpio(ptr noundef %22, i32 noundef 10, i8 noundef zeroext 1, i8 noundef zeroext 1) #4
  %23 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %adap, align 8
  %call19 = tail call i32 @dib0700_set_gpio(ptr noundef %24, i32 noundef 3, i8 noundef zeroext 1, i8 noundef zeroext 0) #4
  tail call void @msleep(i32 noundef 30) #4
  %25 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %adap, align 8
  %call21 = tail call i32 @dib0700_set_gpio(ptr noundef %26, i32 noundef 3, i8 noundef zeroext 1, i8 noundef zeroext 1) #4
  %call22 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.142) #4
  %tobool.not = icmp eq ptr %call22, null
  br i1 %tobool.not, label %cond.end, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

cond.end:                                         ; preds = %entry
  %call23 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.143) #4
  %call24 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.142) #4
  %tobool25.not = icmp eq ptr %call24, null
  br i1 %tobool25.not, label %do.end, label %cond.end.if.then_crit_edge

cond.end.if.then_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

if.then:                                          ; preds = %cond.end.if.then_crit_edge, %entry.if.then_crit_edge
  %cond56 = phi ptr [ %call24, %cond.end.if.then_crit_edge ], [ %call22, %entry.if.then_crit_edge ]
  %27 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %adap, align 8
  %i2c_adap = getelementptr inbounds %struct.dvb_usb_device, ptr %28, i32 0, i32 8
  %call27 = tail call ptr %cond56(ptr noundef nonnull @pinnacle_801e_config, ptr noundef %i2c_adap) #4
  %cmp = icmp eq ptr %call27, null
  br i1 %cmp, label %if.then28, label %if.then.if.end30_crit_edge

if.then.if.end30_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end30

if.then28:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @__symbol_put(ptr noundef nonnull @.str.142) #4
  br label %if.end30

do.end:                                           ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #6
  %call29 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.144) #7
  br label %if.end30

if.end30:                                         ; preds = %do.end, %if.then28, %if.then.if.end30_crit_edge
  %__r.0 = phi ptr [ null, %if.then28 ], [ %call27, %if.then.if.end30_crit_edge ], [ null, %do.end ]
  %fe_adap = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 9
  %29 = ptrtoint ptr %fe_adap to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %__r.0, ptr %fe_adap, align 8
  %cmp35 = icmp eq ptr %__r.0, null
  %cond36 = select i1 %cmp35, i32 -19, i32 0
  ret i32 %cond36
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xc5000_tuner_attach(ptr nocapture noundef readonly %adap) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %fe_adap = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 9
  %0 = ptrtoint ptr %fe_adap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fe_adap, align 8
  %callback = getelementptr inbounds %struct.dvb_frontend, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %callback to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @dib0700_xc5000_tuner_callback, ptr %callback, align 4
  %call = tail call ptr @__symbol_get(ptr noundef nonnull @.str.146) #4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %cond.end, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

cond.end:                                         ; preds = %entry
  %call1 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.147) #4
  %call2 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.146) #4
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %do.end, label %cond.end.if.then_crit_edge

cond.end.if.then_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

if.then:                                          ; preds = %cond.end.if.then_crit_edge, %entry.if.then_crit_edge
  %cond20 = phi ptr [ %call2, %cond.end.if.then_crit_edge ], [ %call, %entry.if.then_crit_edge ]
  %3 = ptrtoint ptr %fe_adap to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %fe_adap, align 8
  %5 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %adap, align 8
  %i2c_adap = getelementptr inbounds %struct.dvb_usb_device, ptr %6, i32 0, i32 8
  %call7 = tail call ptr %cond20(ptr noundef %4, ptr noundef %i2c_adap, ptr noundef nonnull @s5h1411_xc5000_tunerconfig) #4
  %cmp = icmp eq ptr %call7, null
  br i1 %cmp, label %if.then8, label %if.then.if.end10_crit_edge

if.then.if.end10_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end10

if.then8:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @__symbol_put(ptr noundef nonnull @.str.146) #4
  br label %if.end10

do.end:                                           ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #6
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.148) #7
  br label %if.end10

if.end10:                                         ; preds = %do.end, %if.then8, %if.then.if.end10_crit_edge
  %__r.0 = phi ptr [ null, %if.then8 ], [ %call7, %if.then.if.end10_crit_edge ], [ null, %do.end ]
  %cmp12 = icmp eq ptr %__r.0, null
  %cond13 = select i1 %cmp12, i32 -19, i32 0
  ret i32 %cond13
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lgdt3305_frontend_attach(ptr nocapture noundef %adap) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adap, align 8
  %priv = getelementptr inbounds %struct.dvb_usb_device, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 8
  %fw_use_new_i2c_api = getelementptr inbounds %struct.dib0700_state, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %fw_use_new_i2c_api to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %fw_use_new_i2c_api, align 1
  %disable_streaming_master_mode = getelementptr inbounds %struct.dib0700_state, ptr %3, i32 0, i32 6
  %5 = ptrtoint ptr %disable_streaming_master_mode to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %disable_streaming_master_mode, align 2
  %6 = load ptr, ptr %adap, align 8
  %call = tail call i32 @dib0700_set_gpio(ptr noundef %6, i32 noundef 8, i8 noundef zeroext 1, i8 noundef zeroext 0) #4
  tail call void @msleep(i32 noundef 30) #4
  %7 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %adap, align 8
  %call3 = tail call i32 @dib0700_set_gpio(ptr noundef %8, i32 noundef 8, i8 noundef zeroext 1, i8 noundef zeroext 1) #4
  tail call void @msleep(i32 noundef 30) #4
  %9 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %adap, align 8
  %call5 = tail call i32 @dib0700_set_gpio(ptr noundef %10, i32 noundef 15, i8 noundef zeroext 1, i8 noundef zeroext 1) #4
  tail call void @msleep(i32 noundef 30) #4
  %11 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %adap, align 8
  %call7 = tail call i32 @dib0700_set_gpio(ptr noundef %12, i32 noundef 15, i8 noundef zeroext 1, i8 noundef zeroext 0) #4
  tail call void @msleep(i32 noundef 30) #4
  %13 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %adap, align 8
  %call9 = tail call i32 @dib0700_set_gpio(ptr noundef %14, i32 noundef 15, i8 noundef zeroext 1, i8 noundef zeroext 1) #4
  tail call void @msleep(i32 noundef 30) #4
  %call10 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.152) #4
  %tobool.not = icmp eq ptr %call10, null
  br i1 %tobool.not, label %cond.end, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

cond.end:                                         ; preds = %entry
  %call11 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.153) #4
  %call12 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.152) #4
  %tobool13.not = icmp eq ptr %call12, null
  br i1 %tobool13.not, label %do.end, label %cond.end.if.then_crit_edge

cond.end.if.then_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

if.then:                                          ; preds = %cond.end.if.then_crit_edge, %entry.if.then_crit_edge
  %cond38 = phi ptr [ %call12, %cond.end.if.then_crit_edge ], [ %call10, %entry.if.then_crit_edge ]
  %15 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %adap, align 8
  %i2c_adap = getelementptr inbounds %struct.dvb_usb_device, ptr %16, i32 0, i32 8
  %call15 = tail call ptr %cond38(ptr noundef nonnull @hcw_lgdt3305_config, ptr noundef %i2c_adap) #4
  %cmp = icmp eq ptr %call15, null
  br i1 %cmp, label %if.then16, label %if.then.if.end18_crit_edge

if.then.if.end18_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end18

if.then16:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @__symbol_put(ptr noundef nonnull @.str.152) #4
  br label %if.end18

do.end:                                           ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #6
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.154) #7
  br label %if.end18

if.end18:                                         ; preds = %do.end, %if.then16, %if.then.if.end18_crit_edge
  %__r.0 = phi ptr [ null, %if.then16 ], [ %call15, %if.then.if.end18_crit_edge ], [ null, %do.end ]
  %fe_adap = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 9
  %17 = ptrtoint ptr %fe_adap to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %__r.0, ptr %fe_adap, align 8
  %cmp23 = icmp eq ptr %__r.0, null
  %cond24 = select i1 %cmp23, i32 -19, i32 0
  ret i32 %cond24
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mxl5007t_tuner_attach(ptr nocapture noundef readonly %adap) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @__symbol_get(ptr noundef nonnull @.str.156) #4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %cond.end, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

cond.end:                                         ; preds = %entry
  %call1 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.157) #4
  %call2 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.156) #4
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %do.end, label %cond.end.if.then_crit_edge

cond.end.if.then_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

if.then:                                          ; preds = %cond.end.if.then_crit_edge, %entry.if.then_crit_edge
  %cond16 = phi ptr [ %call2, %cond.end.if.then_crit_edge ], [ %call, %entry.if.then_crit_edge ]
  %fe_adap = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 9
  %0 = ptrtoint ptr %fe_adap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fe_adap, align 8
  %2 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %adap, align 8
  %i2c_adap = getelementptr inbounds %struct.dvb_usb_device, ptr %3, i32 0, i32 8
  %call4 = tail call ptr %cond16(ptr noundef %1, ptr noundef %i2c_adap, i8 noundef zeroext 96, ptr noundef nonnull @hcw_mxl5007t_config) #4
  %cmp = icmp eq ptr %call4, null
  br i1 %cmp, label %if.then5, label %if.then.if.end7_crit_edge

if.then.if.end7_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end7

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @__symbol_put(ptr noundef nonnull @.str.156) #4
  br label %if.end7

do.end:                                           ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #6
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.158) #7
  br label %if.end7

if.end7:                                          ; preds = %do.end, %if.then5, %if.then.if.end7_crit_edge
  %__r.0 = phi ptr [ null, %if.then5 ], [ %call4, %if.then.if.end7_crit_edge ], [ null, %do.end ]
  %cmp9 = icmp eq ptr %__r.0, null
  %cond10 = select i1 %cmp9, i32 -19, i32 0
  ret i32 %cond10
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stk7770p_frontend_attach(ptr nocapture noundef %adap) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adap, align 8
  %udev = getelementptr inbounds %struct.dvb_usb_device, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %udev, align 4
  %priv = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 12
  %4 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv, align 8
  %call = tail call ptr @__symbol_get(ptr noundef nonnull @.str.78) #4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %cond.end, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

cond.end:                                         ; preds = %entry
  %call1 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.79) #4
  %call2 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.78) #4
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %do.end, label %cond.end.if.then_crit_edge

cond.end.if.then_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

if.then:                                          ; preds = %cond.end.if.then_crit_edge, %entry.if.then_crit_edge
  %cond84 = phi ptr [ %call2, %cond.end.if.then_crit_edge ], [ %call, %entry.if.then_crit_edge ]
  %dib7000p_ops = getelementptr inbounds %struct.dib0700_adapter_state, ptr %5, i32 0, i32 2
  %call4 = tail call ptr %cond84(ptr noundef %dib7000p_ops) #4
  %cmp = icmp eq ptr %call4, null
  br i1 %cmp, label %if.then5, label %if.end11

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @__symbol_put(ptr noundef nonnull @.str.78) #4
  br label %cleanup

do.end:                                           ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #6
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.80) #7
  br label %cleanup

if.end11:                                         ; preds = %if.then
  %idVendor = getelementptr inbounds %struct.usb_device, ptr %3, i32 0, i32 16, i32 7
  %6 = ptrtoint ptr %idVendor to i32
  call void @__asan_loadN_noabort(i32 %6, i32 2)
  %7 = load i16, ptr %idVendor, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 1059, i16 %7)
  %cmp12 = icmp eq i16 %7, 1059
  br i1 %cmp12, label %land.lhs.true, label %if.end11.if.else20_crit_edge

if.end11.if.else20_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else20

land.lhs.true:                                    ; preds = %if.end11
  %idProduct = getelementptr inbounds %struct.usb_device, ptr %3, i32 0, i32 16, i32 8
  %8 = ptrtoint ptr %idProduct to i32
  call void @__asan_loadN_noabort(i32 %8, i32 2)
  %9 = load i16, ptr %idProduct, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 13826, i16 %9)
  %cmp15 = icmp eq i16 %9, 13826
  br i1 %cmp15, label %land.lhs.true.if.end23_crit_edge, label %land.lhs.true.if.else20_crit_edge

land.lhs.true.if.else20_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else20

land.lhs.true.if.end23_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end23

if.else20:                                        ; preds = %land.lhs.true.if.else20_crit_edge, %if.end11.if.else20_crit_edge
  br label %if.end23

if.end23:                                         ; preds = %if.else20, %land.lhs.true.if.end23_crit_edge
  %.sink87 = phi i8 [ 1, %if.else20 ], [ 0, %land.lhs.true.if.end23_crit_edge ]
  %10 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %adap, align 8
  %call22 = tail call i32 @dib0700_set_gpio(ptr noundef %11, i32 noundef 8, i8 noundef zeroext 1, i8 noundef zeroext %.sink87) #4
  tail call void @msleep(i32 noundef 10) #4
  %12 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %adap, align 8
  %call25 = tail call i32 @dib0700_set_gpio(ptr noundef %13, i32 noundef 14, i8 noundef zeroext 1, i8 noundef zeroext 1) #4
  %14 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %adap, align 8
  %call27 = tail call i32 @dib0700_set_gpio(ptr noundef %15, i32 noundef 5, i8 noundef zeroext 1, i8 noundef zeroext 1) #4
  %16 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %adap, align 8
  %call29 = tail call i32 @dib0700_set_gpio(ptr noundef %17, i32 noundef 10, i8 noundef zeroext 1, i8 noundef zeroext 1) #4
  %18 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %adap, align 8
  %call31 = tail call i32 @dib0700_set_gpio(ptr noundef %19, i32 noundef 15, i8 noundef zeroext 1, i8 noundef zeroext 0) #4
  %20 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %adap, align 8
  %call33 = tail call i32 @dib0700_ctrl_clock(ptr noundef %21, i32 noundef 72, i8 noundef zeroext 1) #4
  tail call void @msleep(i32 noundef 10) #4
  %22 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %adap, align 8
  %call35 = tail call i32 @dib0700_set_gpio(ptr noundef %23, i32 noundef 15, i8 noundef zeroext 1, i8 noundef zeroext 1) #4
  tail call void @msleep(i32 noundef 10) #4
  %24 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %adap, align 8
  %call37 = tail call i32 @dib0700_set_gpio(ptr noundef %25, i32 noundef 0, i8 noundef zeroext 1, i8 noundef zeroext 1) #4
  %i2c_enumeration = getelementptr inbounds %struct.dib0700_adapter_state, ptr %5, i32 0, i32 2, i32 10
  %26 = ptrtoint ptr %i2c_enumeration to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %i2c_enumeration, align 4
  %28 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %adap, align 8
  %i2c_adap = getelementptr inbounds %struct.dvb_usb_device, ptr %29, i32 0, i32 8
  %call40 = tail call i32 %27(ptr noundef %i2c_adap, i32 noundef 1, i8 noundef zeroext 18, ptr noundef nonnull @dib7770p_dib7000p_config) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %cmp41.not = icmp eq i32 %call40, 0
  br i1 %cmp41.not, label %if.end50, label %do.end46

do.end46:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #6
  %call48 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.101, ptr noundef nonnull @.str.160) #7
  %30 = ptrtoint ptr %dib7000p_ops to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dib7000p_ops, align 4
  tail call void @symbol_put_addr(ptr noundef %31) #4
  br label %cleanup

if.end50:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #6
  %init = getelementptr inbounds %struct.dib0700_adapter_state, ptr %5, i32 0, i32 2, i32 15
  %32 = ptrtoint ptr %init to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %init, align 4
  %34 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %adap, align 8
  %i2c_adap53 = getelementptr inbounds %struct.dvb_usb_device, ptr %35, i32 0, i32 8
  %call54 = tail call ptr %33(ptr noundef %i2c_adap53, i8 noundef zeroext -128, ptr noundef nonnull @dib7770p_dib7000p_config) #4
  %fe_adap = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 9
  %36 = ptrtoint ptr %fe_adap to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call54, ptr %fe_adap, align 8
  %cmp58 = icmp eq ptr %call54, null
  %cond60 = select i1 %cmp58, i32 -19, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end50, %do.end46, %do.end, %if.then5
  %retval.0 = phi i32 [ -19, %do.end46 ], [ %cond60, %if.end50 ], [ -19, %if.then5 ], [ -19, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dib7770p_tuner_attach(ptr nocapture noundef readonly %adap) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 12
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %get_i2c_master = getelementptr inbounds %struct.dib0700_adapter_state, ptr %1, i32 0, i32 2, i32 7
  %2 = ptrtoint ptr %get_i2c_master to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %get_i2c_master, align 4
  %fe_adap = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 9
  %4 = ptrtoint ptr %fe_adap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fe_adap, align 8
  %call = tail call ptr %3(ptr noundef %5, i32 noundef 0, i32 noundef 1) #4
  %call1 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.113) #4
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %cond.end, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

cond.end:                                         ; preds = %entry
  %call2 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.114) #4
  %call3 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.113) #4
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %do.end, label %cond.end.if.then_crit_edge

cond.end.if.then_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

if.then:                                          ; preds = %cond.end.if.then_crit_edge, %entry.if.then_crit_edge
  %cond35 = phi ptr [ %call3, %cond.end.if.then_crit_edge ], [ %call1, %entry.if.then_crit_edge ]
  %6 = ptrtoint ptr %fe_adap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fe_adap, align 8
  %call8 = tail call ptr %cond35(ptr noundef %7, ptr noundef %call, ptr noundef nonnull @dib7770p_dib0070_config) #4
  %cmp = icmp eq ptr %call8, null
  br i1 %cmp, label %if.then9, label %if.end15

if.then9:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @__symbol_put(ptr noundef nonnull @.str.113) #4
  br label %cleanup

do.end:                                           ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #6
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.115) #7
  br label %cleanup

if.end15:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %8 = ptrtoint ptr %fe_adap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fe_adap, align 8
  %set_params = getelementptr inbounds %struct.dvb_frontend, ptr %9, i32 0, i32 1, i32 32, i32 6
  %10 = ptrtoint ptr %set_params to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %set_params, align 4
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %11, ptr %1, align 4
  %13 = load ptr, ptr %fe_adap, align 8
  %set_params24 = getelementptr inbounds %struct.dvb_frontend, ptr %13, i32 0, i32 1, i32 32, i32 6
  %14 = ptrtoint ptr %set_params24 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @dib7770_set_param_override, ptr %set_params24, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %do.end, %if.then9
  %retval.0 = phi i32 [ 0, %if.end15 ], [ -19, %if.then9 ], [ -19, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stk80xx_pid_filter_ctrl(ptr nocapture noundef readonly %adapter, i32 noundef %onoff) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adapter, i32 0, i32 12
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %pid_filter_ctrl = getelementptr inbounds %struct.dib0700_adapter_state, ptr %1, i32 0, i32 3, i32 15
  %2 = ptrtoint ptr %pid_filter_ctrl to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pid_filter_ctrl, align 4
  %fe_adap = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adapter, i32 0, i32 9
  %4 = ptrtoint ptr %fe_adap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fe_adap, align 8
  %conv = trunc i32 %onoff to i8
  %call = tail call i32 %3(ptr noundef %5, i8 noundef zeroext %conv) #4
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stk80xx_pid_filter(ptr nocapture noundef readonly %adapter, i32 noundef %index, i16 noundef zeroext %pid, i32 noundef %onoff) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adapter, i32 0, i32 12
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %pid_filter = getelementptr inbounds %struct.dib0700_adapter_state, ptr %1, i32 0, i32 3, i32 16
  %2 = ptrtoint ptr %pid_filter to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pid_filter, align 4
  %fe_adap = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adapter, i32 0, i32 9
  %4 = ptrtoint ptr %fe_adap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fe_adap, align 8
  %conv = trunc i32 %index to i8
  %conv1 = trunc i32 %onoff to i8
  %call = tail call i32 %3(ptr noundef %5, i8 noundef zeroext %conv, i16 noundef zeroext %pid, i8 noundef zeroext %conv1) #4
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stk807x_frontend_attach(ptr nocapture noundef %adap) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 12
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %call = tail call ptr @__symbol_get(ptr noundef nonnull @.str.165) #4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %cond.end, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

cond.end:                                         ; preds = %entry
  %call1 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.166) #4
  %call2 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.165) #4
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %do.end, label %cond.end.if.then_crit_edge

cond.end.if.then_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

if.then:                                          ; preds = %cond.end.if.then_crit_edge, %entry.if.then_crit_edge
  %cond57 = phi ptr [ %call2, %cond.end.if.then_crit_edge ], [ %call, %entry.if.then_crit_edge ]
  %dib8000_ops = getelementptr inbounds %struct.dib0700_adapter_state, ptr %1, i32 0, i32 3
  %call4 = tail call ptr %cond57(ptr noundef %dib8000_ops) #4
  %cmp = icmp eq ptr %call4, null
  br i1 %cmp, label %if.then5, label %if.end11

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @__symbol_put(ptr noundef nonnull @.str.165) #4
  br label %cleanup

do.end:                                           ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #6
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.167) #7
  br label %cleanup

if.end11:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %2 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %adap, align 8
  %call12 = tail call i32 @dib0700_set_gpio(ptr noundef %3, i32 noundef 8, i8 noundef zeroext 1, i8 noundef zeroext 1) #4
  tail call void @msleep(i32 noundef 10) #4
  %4 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %adap, align 8
  %call14 = tail call i32 @dib0700_set_gpio(ptr noundef %5, i32 noundef 14, i8 noundef zeroext 1, i8 noundef zeroext 1) #4
  %6 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %adap, align 8
  %call16 = tail call i32 @dib0700_set_gpio(ptr noundef %7, i32 noundef 5, i8 noundef zeroext 1, i8 noundef zeroext 1) #4
  %8 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %adap, align 8
  %call18 = tail call i32 @dib0700_set_gpio(ptr noundef %9, i32 noundef 10, i8 noundef zeroext 1, i8 noundef zeroext 1) #4
  %10 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %adap, align 8
  %call20 = tail call i32 @dib0700_set_gpio(ptr noundef %11, i32 noundef 15, i8 noundef zeroext 1, i8 noundef zeroext 0) #4
  %12 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %adap, align 8
  %call22 = tail call i32 @dib0700_ctrl_clock(ptr noundef %13, i32 noundef 72, i8 noundef zeroext 1) #4
  tail call void @msleep(i32 noundef 10) #4
  %14 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %adap, align 8
  %call24 = tail call i32 @dib0700_set_gpio(ptr noundef %15, i32 noundef 15, i8 noundef zeroext 1, i8 noundef zeroext 1) #4
  tail call void @msleep(i32 noundef 10) #4
  %16 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %adap, align 8
  %call26 = tail call i32 @dib0700_set_gpio(ptr noundef %17, i32 noundef 0, i8 noundef zeroext 1, i8 noundef zeroext 1) #4
  %i2c_enumeration = getelementptr inbounds %struct.dib0700_adapter_state, ptr %1, i32 0, i32 3, i32 13
  %18 = ptrtoint ptr %i2c_enumeration to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %i2c_enumeration, align 4
  %20 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %adap, align 8
  %i2c_adap = getelementptr inbounds %struct.dvb_usb_device, ptr %21, i32 0, i32 8
  %call29 = tail call i32 %19(ptr noundef %i2c_adap, i32 noundef 1, i8 noundef zeroext 18, i8 noundef zeroext -128, i8 noundef zeroext 0) #4
  %init = getelementptr inbounds %struct.dib0700_adapter_state, ptr %1, i32 0, i32 3, i32 17
  %22 = ptrtoint ptr %init to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %init, align 4
  %24 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %adap, align 8
  %i2c_adap32 = getelementptr inbounds %struct.dvb_usb_device, ptr %25, i32 0, i32 8
  %call33 = tail call ptr %23(ptr noundef %i2c_adap32, i8 noundef zeroext -128, ptr noundef nonnull @dib807x_dib8000_config) #4
  %fe_adap = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 9
  %26 = ptrtoint ptr %fe_adap to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call33, ptr %fe_adap, align 8
  %cmp37 = icmp eq ptr %call33, null
  %cond38 = select i1 %cmp37, i32 -19, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %do.end, %if.then5
  %retval.0 = phi i32 [ %cond38, %if.end11 ], [ -19, %if.then5 ], [ -19, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dib807x_tuner_attach(ptr nocapture noundef readonly %adap) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 12
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %get_i2c_master = getelementptr inbounds %struct.dib0700_adapter_state, ptr %1, i32 0, i32 3, i32 14
  %2 = ptrtoint ptr %get_i2c_master to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %get_i2c_master, align 4
  %fe_adap = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 9
  %4 = ptrtoint ptr %fe_adap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fe_adap, align 8
  %call = tail call ptr %3(ptr noundef %5, i32 noundef 0, i32 noundef 1) #4
  %id = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 3
  %6 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %cmp = icmp eq i8 %7, 0
  %call2 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.113) #4
  %tobool.not = icmp eq ptr %call2, null
  br i1 %cmp, label %if.then, label %if.else21

if.then:                                          ; preds = %entry
  br i1 %tobool.not, label %cond.end, label %if.then.if.then6_crit_edge

if.then.if.then6_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then6

cond.end:                                         ; preds = %if.then
  %call3 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.114) #4
  %call4 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.113) #4
  %tobool5.not = icmp eq ptr %call4, null
  br i1 %tobool5.not, label %do.end, label %cond.end.if.then6_crit_edge

cond.end.if.then6_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then6

if.then6:                                         ; preds = %cond.end.if.then6_crit_edge, %if.then.if.then6_crit_edge
  %cond79 = phi ptr [ %call4, %cond.end.if.then6_crit_edge ], [ %call2, %if.then.if.then6_crit_edge ]
  %8 = ptrtoint ptr %fe_adap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fe_adap, align 8
  %call10 = tail call ptr %cond79(ptr noundef %9, ptr noundef %call, ptr noundef nonnull @dib807x_dib0070_config) #4
  %cmp11 = icmp eq ptr %call10, null
  br i1 %cmp11, label %if.then13, label %if.then6.if.end54_crit_edge

if.then6.if.end54_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end54

if.then13:                                        ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @__symbol_put(ptr noundef nonnull @.str.113) #4
  br label %cleanup

do.end:                                           ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #6
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.115) #7
  br label %cleanup

if.else21:                                        ; preds = %entry
  br i1 %tobool.not, label %cond.end30, label %if.else21.if.then33_crit_edge

if.else21.if.then33_crit_edge:                    ; preds = %if.else21
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then33

cond.end30:                                       ; preds = %if.else21
  %call28 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.114) #4
  %call29 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.113) #4
  %tobool32.not = icmp eq ptr %call29, null
  br i1 %tobool32.not, label %do.end45, label %cond.end30.if.then33_crit_edge

cond.end30.if.then33_crit_edge:                   ; preds = %cond.end30
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then33

if.then33:                                        ; preds = %cond.end30.if.then33_crit_edge, %if.else21.if.then33_crit_edge
  %cond3184 = phi ptr [ %call29, %cond.end30.if.then33_crit_edge ], [ %call2, %if.else21.if.then33_crit_edge ]
  %10 = ptrtoint ptr %fe_adap to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %fe_adap, align 8
  %call37 = tail call ptr %cond3184(ptr noundef %11, ptr noundef %call, ptr noundef getelementptr inbounds ([2 x %struct.dib0070_config], ptr @dib807x_dib0070_config, i32 0, i32 1)) #4
  %cmp38 = icmp eq ptr %call37, null
  br i1 %cmp38, label %if.then40, label %if.then33.if.end54_crit_edge

if.then33.if.end54_crit_edge:                     ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end54

if.then40:                                        ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @__symbol_put(ptr noundef nonnull @.str.113) #4
  br label %cleanup

do.end45:                                         ; preds = %cond.end30
  call void @__sanitizer_cov_trace_pc() #6
  %call47 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.115) #7
  br label %cleanup

if.end54:                                         ; preds = %if.then33.if.end54_crit_edge, %if.then6.if.end54_crit_edge
  %12 = ptrtoint ptr %fe_adap to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %fe_adap, align 8
  %set_params = getelementptr inbounds %struct.dvb_frontend, ptr %13, i32 0, i32 1, i32 32, i32 6
  %14 = ptrtoint ptr %set_params to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %set_params, align 4
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %15, ptr %1, align 4
  %17 = load ptr, ptr %fe_adap, align 8
  %set_params63 = getelementptr inbounds %struct.dvb_frontend, ptr %17, i32 0, i32 1, i32 32, i32 6
  %18 = ptrtoint ptr %set_params63 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @dib807x_set_param_override, ptr %set_params63, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end54, %do.end45, %if.then40, %do.end, %if.then13
  %retval.0 = phi i32 [ 0, %if.end54 ], [ -19, %if.then13 ], [ -19, %do.end ], [ -19, %if.then40 ], [ -19, %do.end45 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stk807xpvr_frontend_attach0(ptr nocapture noundef %adap) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 12
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %call = tail call ptr @__symbol_get(ptr noundef nonnull @.str.165) #4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %cond.end, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

cond.end:                                         ; preds = %entry
  %call1 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.166) #4
  %call2 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.165) #4
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %do.end, label %cond.end.if.then_crit_edge

cond.end.if.then_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

if.then:                                          ; preds = %cond.end.if.then_crit_edge, %entry.if.then_crit_edge
  %cond60 = phi ptr [ %call2, %cond.end.if.then_crit_edge ], [ %call, %entry.if.then_crit_edge ]
  %dib8000_ops = getelementptr inbounds %struct.dib0700_adapter_state, ptr %1, i32 0, i32 3
  %call4 = tail call ptr %cond60(ptr noundef %dib8000_ops) #4
  %cmp = icmp eq ptr %call4, null
  br i1 %cmp, label %if.then5, label %if.end11

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @__symbol_put(ptr noundef nonnull @.str.165) #4
  br label %cleanup

do.end:                                           ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #6
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.167) #7
  br label %cleanup

if.end11:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %2 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %adap, align 8
  %call12 = tail call i32 @dib0700_set_gpio(ptr noundef %3, i32 noundef 8, i8 noundef zeroext 1, i8 noundef zeroext 0) #4
  tail call void @msleep(i32 noundef 30) #4
  %4 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %adap, align 8
  %call14 = tail call i32 @dib0700_set_gpio(ptr noundef %5, i32 noundef 8, i8 noundef zeroext 1, i8 noundef zeroext 1) #4
  tail call void @msleep(i32 noundef 500) #4
  %6 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %adap, align 8
  %call16 = tail call i32 @dib0700_set_gpio(ptr noundef %7, i32 noundef 14, i8 noundef zeroext 1, i8 noundef zeroext 1) #4
  %8 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %adap, align 8
  %call18 = tail call i32 @dib0700_set_gpio(ptr noundef %9, i32 noundef 5, i8 noundef zeroext 1, i8 noundef zeroext 1) #4
  %10 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %adap, align 8
  %call20 = tail call i32 @dib0700_set_gpio(ptr noundef %11, i32 noundef 10, i8 noundef zeroext 1, i8 noundef zeroext 1) #4
  %12 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %adap, align 8
  %call22 = tail call i32 @dib0700_set_gpio(ptr noundef %13, i32 noundef 15, i8 noundef zeroext 1, i8 noundef zeroext 0) #4
  %14 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %adap, align 8
  %call24 = tail call i32 @dib0700_ctrl_clock(ptr noundef %15, i32 noundef 72, i8 noundef zeroext 1) #4
  tail call void @msleep(i32 noundef 10) #4
  %16 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %adap, align 8
  %call26 = tail call i32 @dib0700_set_gpio(ptr noundef %17, i32 noundef 15, i8 noundef zeroext 1, i8 noundef zeroext 1) #4
  tail call void @msleep(i32 noundef 10) #4
  %18 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %adap, align 8
  %call28 = tail call i32 @dib0700_set_gpio(ptr noundef %19, i32 noundef 0, i8 noundef zeroext 1, i8 noundef zeroext 1) #4
  %i2c_enumeration = getelementptr inbounds %struct.dib0700_adapter_state, ptr %1, i32 0, i32 3, i32 13
  %20 = ptrtoint ptr %i2c_enumeration to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %i2c_enumeration, align 4
  %22 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %adap, align 8
  %i2c_adap = getelementptr inbounds %struct.dvb_usb_device, ptr %23, i32 0, i32 8
  %call31 = tail call i32 %21(ptr noundef %i2c_adap, i32 noundef 1, i8 noundef zeroext 34, i8 noundef zeroext -128, i8 noundef zeroext 0) #4
  %init = getelementptr inbounds %struct.dib0700_adapter_state, ptr %1, i32 0, i32 3, i32 17
  %24 = ptrtoint ptr %init to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %init, align 4
  %26 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %adap, align 8
  %i2c_adap34 = getelementptr inbounds %struct.dvb_usb_device, ptr %27, i32 0, i32 8
  %call35 = tail call ptr %25(ptr noundef %i2c_adap34, i8 noundef zeroext -128, ptr noundef nonnull @dib807x_dib8000_config) #4
  %fe_adap = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 9
  %28 = ptrtoint ptr %fe_adap to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call35, ptr %fe_adap, align 8
  %cmp39 = icmp eq ptr %call35, null
  %cond40 = select i1 %cmp39, i32 -19, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %do.end, %if.then5
  %retval.0 = phi i32 [ %cond40, %if.end11 ], [ -19, %if.then5 ], [ -19, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stk807xpvr_frontend_attach1(ptr nocapture noundef %adap) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 12
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %call = tail call ptr @__symbol_get(ptr noundef nonnull @.str.165) #4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %cond.end, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

cond.end:                                         ; preds = %entry
  %call1 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.166) #4
  %call2 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.165) #4
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %do.end, label %cond.end.if.then_crit_edge

cond.end.if.then_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

if.then:                                          ; preds = %cond.end.if.then_crit_edge, %entry.if.then_crit_edge
  %cond33 = phi ptr [ %call2, %cond.end.if.then_crit_edge ], [ %call, %entry.if.then_crit_edge ]
  %dib8000_ops = getelementptr inbounds %struct.dib0700_adapter_state, ptr %1, i32 0, i32 3
  %call4 = tail call ptr %cond33(ptr noundef %dib8000_ops) #4
  %cmp = icmp eq ptr %call4, null
  br i1 %cmp, label %if.then5, label %if.end11

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @__symbol_put(ptr noundef nonnull @.str.165) #4
  br label %cleanup

do.end:                                           ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #6
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.167) #7
  br label %cleanup

if.end11:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %i2c_enumeration = getelementptr inbounds %struct.dib0700_adapter_state, ptr %1, i32 0, i32 3, i32 13
  %2 = ptrtoint ptr %i2c_enumeration to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i2c_enumeration, align 4
  %4 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %adap, align 8
  %i2c_adap = getelementptr inbounds %struct.dvb_usb_device, ptr %5, i32 0, i32 8
  %call13 = tail call i32 %3(ptr noundef %i2c_adap, i32 noundef 1, i8 noundef zeroext 18, i8 noundef zeroext -126, i8 noundef zeroext 0) #4
  %init = getelementptr inbounds %struct.dib0700_adapter_state, ptr %1, i32 0, i32 3, i32 17
  %6 = ptrtoint ptr %init to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %init, align 4
  %8 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %adap, align 8
  %i2c_adap16 = getelementptr inbounds %struct.dvb_usb_device, ptr %9, i32 0, i32 8
  %call17 = tail call ptr %7(ptr noundef %i2c_adap16, i8 noundef zeroext -126, ptr noundef getelementptr inbounds ([2 x %struct.dib8000_config], ptr @dib807x_dib8000_config, i32 0, i32 1)) #4
  %fe_adap = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 9
  %10 = ptrtoint ptr %fe_adap to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call17, ptr %fe_adap, align 8
  %cmp21 = icmp eq ptr %call17, null
  %cond22 = select i1 %cmp21, i32 -19, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %do.end, %if.then5
  %retval.0 = phi i32 [ %cond22, %if.end11 ], [ -19, %if.then5 ], [ -19, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stk809x_frontend_attach(ptr nocapture noundef %adap) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 12
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %call = tail call ptr @__symbol_get(ptr noundef nonnull @.str.165) #4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %cond.end, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

cond.end:                                         ; preds = %entry
  %call1 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.166) #4
  %call2 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.165) #4
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %do.end, label %cond.end.if.then_crit_edge

cond.end.if.then_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

if.then:                                          ; preds = %cond.end.if.then_crit_edge, %entry.if.then_crit_edge
  %cond57 = phi ptr [ %call2, %cond.end.if.then_crit_edge ], [ %call, %entry.if.then_crit_edge ]
  %dib8000_ops = getelementptr inbounds %struct.dib0700_adapter_state, ptr %1, i32 0, i32 3
  %call4 = tail call ptr %cond57(ptr noundef %dib8000_ops) #4
  %cmp = icmp eq ptr %call4, null
  br i1 %cmp, label %if.then5, label %if.end11

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @__symbol_put(ptr noundef nonnull @.str.165) #4
  br label %cleanup

do.end:                                           ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #6
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.167) #7
  br label %cleanup

if.end11:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %2 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %adap, align 8
  %call12 = tail call i32 @dib0700_set_gpio(ptr noundef %3, i32 noundef 8, i8 noundef zeroext 1, i8 noundef zeroext 1) #4
  tail call void @msleep(i32 noundef 10) #4
  %4 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %adap, align 8
  %call14 = tail call i32 @dib0700_set_gpio(ptr noundef %5, i32 noundef 14, i8 noundef zeroext 1, i8 noundef zeroext 1) #4
  %6 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %adap, align 8
  %call16 = tail call i32 @dib0700_set_gpio(ptr noundef %7, i32 noundef 5, i8 noundef zeroext 1, i8 noundef zeroext 1) #4
  %8 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %adap, align 8
  %call18 = tail call i32 @dib0700_set_gpio(ptr noundef %9, i32 noundef 10, i8 noundef zeroext 1, i8 noundef zeroext 1) #4
  %10 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %adap, align 8
  %call20 = tail call i32 @dib0700_set_gpio(ptr noundef %11, i32 noundef 15, i8 noundef zeroext 1, i8 noundef zeroext 0) #4
  %12 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %adap, align 8
  %call22 = tail call i32 @dib0700_ctrl_clock(ptr noundef %13, i32 noundef 72, i8 noundef zeroext 1) #4
  tail call void @msleep(i32 noundef 10) #4
  %14 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %adap, align 8
  %call24 = tail call i32 @dib0700_set_gpio(ptr noundef %15, i32 noundef 15, i8 noundef zeroext 1, i8 noundef zeroext 1) #4
  tail call void @msleep(i32 noundef 10) #4
  %16 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %adap, align 8
  %call26 = tail call i32 @dib0700_set_gpio(ptr noundef %17, i32 noundef 0, i8 noundef zeroext 1, i8 noundef zeroext 1) #4
  %i2c_enumeration = getelementptr inbounds %struct.dib0700_adapter_state, ptr %1, i32 0, i32 3, i32 13
  %18 = ptrtoint ptr %i2c_enumeration to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %i2c_enumeration, align 4
  %20 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %adap, align 8
  %i2c_adap = getelementptr inbounds %struct.dvb_usb_device, ptr %21, i32 0, i32 8
  %call29 = tail call i32 %19(ptr noundef %i2c_adap, i32 noundef 1, i8 noundef zeroext 18, i8 noundef zeroext -128, i8 noundef zeroext 0) #4
  %init = getelementptr inbounds %struct.dib0700_adapter_state, ptr %1, i32 0, i32 3, i32 17
  %22 = ptrtoint ptr %init to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %init, align 4
  %24 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %adap, align 8
  %i2c_adap32 = getelementptr inbounds %struct.dvb_usb_device, ptr %25, i32 0, i32 8
  %call33 = tail call ptr %23(ptr noundef %i2c_adap32, i8 noundef zeroext -128, ptr noundef nonnull @dib809x_dib8000_config) #4
  %fe_adap = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 9
  %26 = ptrtoint ptr %fe_adap to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call33, ptr %fe_adap, align 8
  %cmp37 = icmp eq ptr %call33, null
  %cond38 = select i1 %cmp37, i32 -19, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %do.end, %if.then5
  %retval.0 = phi i32 [ %cond38, %if.end11 ], [ -19, %if.then5 ], [ -19, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dib809x_tuner_attach(ptr nocapture noundef readonly %adap) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 12
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %get_i2c_master = getelementptr inbounds %struct.dib0700_adapter_state, ptr %1, i32 0, i32 3, i32 14
  %2 = ptrtoint ptr %get_i2c_master to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %get_i2c_master, align 4
  %fe_adap = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 9
  %4 = ptrtoint ptr %fe_adap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fe_adap, align 8
  %call = tail call ptr %3(ptr noundef %5, i32 noundef 0, i32 noundef 1) #4
  %call1 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.179) #4
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %cond.end, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

cond.end:                                         ; preds = %entry
  %call2 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.180) #4
  %call3 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.179) #4
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %do.end, label %cond.end.if.then_crit_edge

cond.end.if.then_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

if.then:                                          ; preds = %cond.end.if.then_crit_edge, %entry.if.then_crit_edge
  %cond35 = phi ptr [ %call3, %cond.end.if.then_crit_edge ], [ %call1, %entry.if.then_crit_edge ]
  %6 = ptrtoint ptr %fe_adap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fe_adap, align 8
  %call8 = tail call ptr %cond35(ptr noundef %7, ptr noundef %call, ptr noundef nonnull @dib809x_dib0090_config) #4
  %cmp = icmp eq ptr %call8, null
  br i1 %cmp, label %if.then9, label %if.end15

if.then9:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @__symbol_put(ptr noundef nonnull @.str.179) #4
  br label %cleanup

do.end:                                           ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #6
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.181) #7
  br label %cleanup

if.end15:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %8 = ptrtoint ptr %fe_adap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fe_adap, align 8
  %set_params = getelementptr inbounds %struct.dvb_frontend, ptr %9, i32 0, i32 1, i32 32, i32 6
  %10 = ptrtoint ptr %set_params to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %set_params, align 4
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %11, ptr %1, align 4
  %13 = load ptr, ptr %fe_adap, align 8
  %set_params24 = getelementptr inbounds %struct.dvb_frontend, ptr %13, i32 0, i32 1, i32 32, i32 6
  %14 = ptrtoint ptr %set_params24 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @dib8096_set_param_override, ptr %set_params24, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %do.end, %if.then9
  %retval.0 = phi i32 [ 0, %if.end15 ], [ -19, %if.then9 ], [ -19, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dib90x0_pid_filter_ctrl(ptr nocapture noundef readonly %adapter, i32 noundef %onoff) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %fe_adap = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adapter, i32 0, i32 9
  %0 = ptrtoint ptr %fe_adap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fe_adap, align 8
  %conv = trunc i32 %onoff to i8
  %call = tail call i32 @dib9000_fw_pid_filter_ctrl(ptr noundef %1, i8 noundef zeroext %conv) #4
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dib90x0_pid_filter(ptr nocapture noundef readonly %adapter, i32 noundef %index, i16 noundef zeroext %pid, i32 noundef %onoff) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %fe_adap = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adapter, i32 0, i32 9
  %0 = ptrtoint ptr %fe_adap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fe_adap, align 8
  %conv = trunc i32 %index to i8
  %conv1 = trunc i32 %onoff to i8
  %call = tail call i32 @dib9000_fw_pid_filter(ptr noundef %1, i8 noundef zeroext %conv, i16 noundef zeroext %pid, i8 noundef zeroext %conv1) #4
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stk9090m_frontend_attach(ptr nocapture noundef %adap) #1 align 64 {
entry:
  %fw_version = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 12
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %2 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %adap, align 8
  %priv1 = getelementptr inbounds %struct.dvb_usb_device, ptr %3, i32 0, i32 18
  %4 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv1, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fw_version) #4
  %6 = ptrtoint ptr %fw_version to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %fw_version, align 4, !annotation !751
  %call = call i32 @dib0700_get_version(ptr noundef %3, ptr noundef null, ptr noundef null, ptr noundef nonnull %fw_version, ptr noundef null) #4
  %7 = ptrtoint ptr %fw_version to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %fw_version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 66047, i32 %8)
  %cmp = icmp ugt i32 %8, 66047
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %fw_use_new_i2c_api = getelementptr inbounds %struct.dib0700_state, ptr %5, i32 0, i32 5
  %9 = ptrtoint ptr %fw_use_new_i2c_api to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %fw_use_new_i2c_api, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %10 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %adap, align 8
  %call4 = call i32 @dib0700_set_i2c_speed(ptr noundef %11, i16 noundef zeroext 340) #4
  %12 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %adap, align 8
  %call6 = call i32 @dib0700_set_gpio(ptr noundef %13, i32 noundef 8, i8 noundef zeroext 1, i8 noundef zeroext 1) #4
  call void @msleep(i32 noundef 20) #4
  %14 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %adap, align 8
  %call8 = call i32 @dib0700_set_gpio(ptr noundef %15, i32 noundef 14, i8 noundef zeroext 1, i8 noundef zeroext 1) #4
  %16 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %adap, align 8
  %call10 = call i32 @dib0700_set_gpio(ptr noundef %17, i32 noundef 5, i8 noundef zeroext 1, i8 noundef zeroext 1) #4
  %18 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %adap, align 8
  %call12 = call i32 @dib0700_set_gpio(ptr noundef %19, i32 noundef 10, i8 noundef zeroext 1, i8 noundef zeroext 1) #4
  %20 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %adap, align 8
  %call14 = call i32 @dib0700_set_gpio(ptr noundef %21, i32 noundef 15, i8 noundef zeroext 1, i8 noundef zeroext 0) #4
  %22 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %adap, align 8
  %call16 = call i32 @dib0700_ctrl_clock(ptr noundef %23, i32 noundef 72, i8 noundef zeroext 1) #4
  call void @msleep(i32 noundef 20) #4
  %24 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %adap, align 8
  %call18 = call i32 @dib0700_set_gpio(ptr noundef %25, i32 noundef 15, i8 noundef zeroext 1, i8 noundef zeroext 1) #4
  call void @msleep(i32 noundef 20) #4
  %26 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %adap, align 8
  %call20 = call i32 @dib0700_set_gpio(ptr noundef %27, i32 noundef 0, i8 noundef zeroext 1, i8 noundef zeroext 1) #4
  %28 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %adap, align 8
  %i2c_adap = getelementptr inbounds %struct.dvb_usb_device, ptr %29, i32 0, i32 8
  %call22 = call i32 @dib9000_i2c_enumeration(ptr noundef %i2c_adap, i32 noundef 1, i8 noundef zeroext 16, i8 noundef zeroext -128) #4
  %frontend_firmware = getelementptr inbounds %struct.dib0700_adapter_state, ptr %1, i32 0, i32 1
  %30 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %adap, align 8
  %udev = getelementptr inbounds %struct.dvb_usb_device, ptr %31, i32 0, i32 2
  %32 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %udev, align 4
  %dev24 = getelementptr inbounds %struct.usb_device, ptr %33, i32 0, i32 15
  %call25 = call i32 @request_firmware(ptr noundef %frontend_firmware, ptr noundef nonnull @.str.203, ptr noundef %dev24) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool.not = icmp eq i32 %call25, 0
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_dib0700_debug to i32))
  %34 = load i32, ptr @dvb_usb_dib0700_debug, align 4
  %and35 = and i32 %34, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35)
  %tobool36.not = icmp eq i32 %and35, 0
  br i1 %tobool.not, label %do.body34, label %do.body

do.body:                                          ; preds = %if.end
  br i1 %tobool36.not, label %do.body.cleanup_crit_edge, label %do.end

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  %call30 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.204, ptr noundef nonnull @.str.205) #7
  br label %cleanup

do.body34:                                        ; preds = %if.end
  br i1 %tobool36.not, label %do.body34.if.end47_crit_edge, label %do.end40

do.body34.if.end47_crit_edge:                     ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end47

do.end40:                                         ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #6
  %35 = ptrtoint ptr %frontend_firmware to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %frontend_firmware, align 4
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %36, align 4
  %call43 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.207, ptr noundef nonnull @.str.205, i32 noundef %38) #7
  br label %if.end47

if.end47:                                         ; preds = %do.end40, %do.body34.if.end47_crit_edge
  %39 = ptrtoint ptr %frontend_firmware to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %frontend_firmware, align 4
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %40, align 4
  store i32 %42, ptr getelementptr inbounds (%struct.dib9000_config, ptr @stk9090m_config, i32 0, i32 10), align 4
  %43 = load ptr, ptr %frontend_firmware, align 4
  %data = getelementptr inbounds %struct.firmware, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %data, align 4
  store ptr %45, ptr getelementptr inbounds (%struct.dib9000_config, ptr @stk9090m_config, i32 0, i32 9), align 4
  %call51 = call ptr @__symbol_get(ptr noundef nonnull @.str.209) #4
  %tobool52.not = icmp eq ptr %call51, null
  br i1 %tobool52.not, label %cond.end, label %if.end47.if.then56_crit_edge

if.end47.if.then56_crit_edge:                     ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then56

cond.end:                                         ; preds = %if.end47
  %call53 = call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.210) #4
  %call54 = call ptr @__symbol_get(ptr noundef nonnull @.str.209) #4
  %tobool55.not = icmp eq ptr %call54, null
  br i1 %tobool55.not, label %do.end66, label %cond.end.if.then56_crit_edge

cond.end.if.then56_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then56

if.then56:                                        ; preds = %cond.end.if.then56_crit_edge, %if.end47.if.then56_crit_edge
  %cond101 = phi ptr [ %call54, %cond.end.if.then56_crit_edge ], [ %call51, %if.end47.if.then56_crit_edge ]
  %46 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %adap, align 8
  %i2c_adap58 = getelementptr inbounds %struct.dvb_usb_device, ptr %47, i32 0, i32 8
  %call59 = call ptr %cond101(ptr noundef %i2c_adap58, i8 noundef zeroext -128, ptr noundef nonnull @stk9090m_config) #4
  %cmp60 = icmp eq ptr %call59, null
  br i1 %cmp60, label %if.then61, label %if.then56.if.end69_crit_edge

if.then56.if.end69_crit_edge:                     ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end69

if.then61:                                        ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #6
  call void @__symbol_put(ptr noundef nonnull @.str.209) #4
  br label %if.end69

do.end66:                                         ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #6
  %call68 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.212) #7
  br label %if.end69

if.end69:                                         ; preds = %do.end66, %if.then61, %if.then56.if.end69_crit_edge
  %__r.0 = phi ptr [ null, %if.then61 ], [ %call59, %if.then56.if.end69_crit_edge ], [ null, %do.end66 ]
  %fe_adap = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 9
  %48 = ptrtoint ptr %fe_adap to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %__r.0, ptr %fe_adap, align 8
  %cmp74 = icmp eq ptr %__r.0, null
  %cond75 = select i1 %cmp74, i32 -19, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end69, %do.end, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ %cond75, %if.end69 ], [ -19, %do.end ], [ -19, %do.body.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw_version) #4
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dib9090_tuner_attach(ptr nocapture noundef readonly %adap) #1 align 64 {
entry:
  %data_dib190 = alloca [10 x i16], align 2
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 12
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %fe_adap = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 9
  %2 = ptrtoint ptr %fe_adap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fe_adap, align 8
  %call = tail call ptr @dib9000_get_tuner_interface(ptr noundef %3) #4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %data_dib190) #4
  %4 = call ptr @memcpy(ptr %data_dib190, ptr @__const.dib9090_tuner_attach.data_dib190, i32 20)
  %call1 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.214) #4
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %cond.end, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

cond.end:                                         ; preds = %entry
  %call2 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.215) #4
  %call3 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.214) #4
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %do.end, label %cond.end.if.then_crit_edge

cond.end.if.then_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

if.then:                                          ; preds = %cond.end.if.then_crit_edge, %entry.if.then_crit_edge
  %cond48 = phi ptr [ %call3, %cond.end.if.then_crit_edge ], [ %call1, %entry.if.then_crit_edge ]
  %5 = ptrtoint ptr %fe_adap to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %fe_adap, align 8
  %call8 = tail call ptr %cond48(ptr noundef %6, ptr noundef %call, ptr noundef nonnull @dib9090_dib0090_config) #4
  %cmp = icmp eq ptr %call8, null
  br i1 %cmp, label %if.then9, label %if.end15

if.then9:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @__symbol_put(ptr noundef nonnull @.str.214) #4
  br label %cleanup

do.end:                                           ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #6
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.216) #7
  br label %cleanup

if.end15:                                         ; preds = %if.then
  %7 = ptrtoint ptr %fe_adap to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %fe_adap, align 8
  %call19 = tail call ptr @dib9000_get_i2c_master(ptr noundef %8, i32 noundef 1, i32 noundef 0) #4
  %tobool20.not = icmp eq ptr %call19, null
  br i1 %tobool20.not, label %if.end15.cleanup_crit_edge, label %if.end22

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end22:                                         ; preds = %if.end15
  %call23 = call fastcc i32 @dib01x0_pmu_update(ptr noundef nonnull %call19, ptr noundef nonnull %data_dib190)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %cmp24.not = icmp eq i32 %call23, 0
  br i1 %cmp24.not, label %if.end26, label %if.end22.cleanup_crit_edge

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end26:                                         ; preds = %if.end22
  %9 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %adap, align 8
  %call27 = tail call i32 @dib0700_set_i2c_speed(ptr noundef %10, i16 noundef zeroext 1500) #4
  %11 = ptrtoint ptr %fe_adap to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %fe_adap, align 8
  %call31 = tail call i32 @dib9000_firmware_post_pll_init(ptr noundef %12) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %cmp32 = icmp slt i32 %call31, 0
  br i1 %cmp32, label %if.end26.cleanup_crit_edge, label %if.end34

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end34:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #6
  %frontend_firmware = getelementptr inbounds %struct.dib0700_adapter_state, ptr %1, i32 0, i32 1
  %13 = ptrtoint ptr %frontend_firmware to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %frontend_firmware, align 4
  tail call void @release_firmware(ptr noundef %14) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end34, %if.end26.cleanup_crit_edge, %if.end22.cleanup_crit_edge, %if.end15.cleanup_crit_edge, %do.end, %if.then9
  %retval.0 = phi i32 [ 0, %if.end34 ], [ -19, %if.end15.cleanup_crit_edge ], [ -19, %if.end22.cleanup_crit_edge ], [ -19, %if.end26.cleanup_crit_edge ], [ -19, %if.then9 ], [ -19, %do.end ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %data_dib190) #4
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nim8096md_frontend_attach(ptr nocapture noundef %adap) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 12
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %call = tail call ptr @__symbol_get(ptr noundef nonnull @.str.165) #4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %cond.end, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

cond.end:                                         ; preds = %entry
  %call1 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.166) #4
  %call2 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.165) #4
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %do.end, label %cond.end.if.then_crit_edge

cond.end.if.then_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

if.then:                                          ; preds = %cond.end.if.then_crit_edge, %entry.if.then_crit_edge
  %cond110 = phi ptr [ %call2, %cond.end.if.then_crit_edge ], [ %call, %entry.if.then_crit_edge ]
  %dib8000_ops = getelementptr inbounds %struct.dib0700_adapter_state, ptr %1, i32 0, i32 3
  %call4 = tail call ptr %cond110(ptr noundef %dib8000_ops) #4
  %cmp = icmp eq ptr %call4, null
  br i1 %cmp, label %if.then5, label %if.end11

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @__symbol_put(ptr noundef nonnull @.str.165) #4
  br label %cleanup

do.end:                                           ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #6
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.167) #7
  br label %cleanup

if.end11:                                         ; preds = %if.then
  %2 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %adap, align 8
  %call12 = tail call i32 @dib0700_set_gpio(ptr noundef %3, i32 noundef 8, i8 noundef zeroext 1, i8 noundef zeroext 0) #4
  tail call void @msleep(i32 noundef 20) #4
  %4 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %adap, align 8
  %call14 = tail call i32 @dib0700_set_gpio(ptr noundef %5, i32 noundef 8, i8 noundef zeroext 1, i8 noundef zeroext 1) #4
  tail call void @msleep(i32 noundef 1000) #4
  %6 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %adap, align 8
  %call16 = tail call i32 @dib0700_set_gpio(ptr noundef %7, i32 noundef 14, i8 noundef zeroext 1, i8 noundef zeroext 1) #4
  %8 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %adap, align 8
  %call18 = tail call i32 @dib0700_set_gpio(ptr noundef %9, i32 noundef 5, i8 noundef zeroext 1, i8 noundef zeroext 1) #4
  %10 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %adap, align 8
  %call20 = tail call i32 @dib0700_set_gpio(ptr noundef %11, i32 noundef 10, i8 noundef zeroext 1, i8 noundef zeroext 1) #4
  %12 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %adap, align 8
  %call22 = tail call i32 @dib0700_set_gpio(ptr noundef %13, i32 noundef 15, i8 noundef zeroext 1, i8 noundef zeroext 0) #4
  %14 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %adap, align 8
  %call24 = tail call i32 @dib0700_ctrl_clock(ptr noundef %15, i32 noundef 72, i8 noundef zeroext 1) #4
  tail call void @msleep(i32 noundef 20) #4
  %16 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %adap, align 8
  %call26 = tail call i32 @dib0700_set_gpio(ptr noundef %17, i32 noundef 15, i8 noundef zeroext 1, i8 noundef zeroext 1) #4
  tail call void @msleep(i32 noundef 20) #4
  %18 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %adap, align 8
  %call28 = tail call i32 @dib0700_set_gpio(ptr noundef %19, i32 noundef 0, i8 noundef zeroext 1, i8 noundef zeroext 1) #4
  %i2c_enumeration = getelementptr inbounds %struct.dib0700_adapter_state, ptr %1, i32 0, i32 3, i32 13
  %20 = ptrtoint ptr %i2c_enumeration to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %i2c_enumeration, align 4
  %22 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %adap, align 8
  %i2c_adap = getelementptr inbounds %struct.dvb_usb_device, ptr %23, i32 0, i32 8
  %call31 = tail call i32 %21(ptr noundef %i2c_adap, i32 noundef 2, i8 noundef zeroext 18, i8 noundef zeroext -128, i8 noundef zeroext 0) #4
  %init = getelementptr inbounds %struct.dib0700_adapter_state, ptr %1, i32 0, i32 3, i32 17
  %24 = ptrtoint ptr %init to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %init, align 4
  %26 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %adap, align 8
  %i2c_adap34 = getelementptr inbounds %struct.dvb_usb_device, ptr %27, i32 0, i32 8
  %call35 = tail call ptr %25(ptr noundef %i2c_adap34, i8 noundef zeroext -128, ptr noundef nonnull @dib809x_dib8000_config) #4
  %fe_adap = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 9
  %28 = ptrtoint ptr %fe_adap to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call35, ptr %fe_adap, align 8
  %cmp39 = icmp eq ptr %call35, null
  br i1 %cmp39, label %if.end11.cleanup_crit_edge, label %if.end41

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end41:                                         ; preds = %if.end11
  %call44 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.165) #4
  %tobool45.not = icmp eq ptr %call44, null
  br i1 %tobool45.not, label %cond.end50, label %if.end41.if.then53_crit_edge

if.end41.if.then53_crit_edge:                     ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then53

cond.end50:                                       ; preds = %if.end41
  %call48 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.166) #4
  %call49 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.165) #4
  %tobool52.not = icmp eq ptr %call49, null
  br i1 %tobool52.not, label %do.end62, label %cond.end50.if.then53_crit_edge

cond.end50.if.then53_crit_edge:                   ; preds = %cond.end50
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then53

if.then53:                                        ; preds = %cond.end50.if.then53_crit_edge, %if.end41.if.then53_crit_edge
  %cond51115 = phi ptr [ %call49, %cond.end50.if.then53_crit_edge ], [ %call44, %if.end41.if.then53_crit_edge ]
  %call55 = tail call ptr %cond51115(ptr noundef %dib8000_ops) #4
  %cmp56 = icmp eq ptr %call55, null
  br i1 %cmp56, label %if.then57, label %if.end69

if.then57:                                        ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @__symbol_put(ptr noundef nonnull @.str.165) #4
  br label %cleanup

do.end62:                                         ; preds = %cond.end50
  call void @__sanitizer_cov_trace_pc() #6
  %call64 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.167) #7
  br label %cleanup

if.end69:                                         ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #6
  %29 = ptrtoint ptr %init to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %init, align 4
  %31 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %adap, align 8
  %i2c_adap73 = getelementptr inbounds %struct.dvb_usb_device, ptr %32, i32 0, i32 8
  %call74 = tail call ptr %30(ptr noundef %i2c_adap73, i8 noundef zeroext -126, ptr noundef getelementptr inbounds ([2 x %struct.dib8000_config], ptr @dib809x_dib8000_config, i32 0, i32 1)) #4
  %set_slave_frontend = getelementptr inbounds %struct.dib0700_adapter_state, ptr %1, i32 0, i32 3, i32 11
  %33 = ptrtoint ptr %set_slave_frontend to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %set_slave_frontend, align 4
  %35 = ptrtoint ptr %fe_adap to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %fe_adap, align 8
  %call79 = tail call i32 %34(ptr noundef %36, ptr noundef %call74) #4
  %cmp80 = icmp eq ptr %call74, null
  %cond81 = select i1 %cmp80, i32 -19, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end69, %do.end62, %if.then57, %if.end11.cleanup_crit_edge, %do.end, %if.then5
  %retval.0 = phi i32 [ %cond81, %if.end69 ], [ -19, %if.end11.cleanup_crit_edge ], [ -19, %if.then5 ], [ -19, %do.end ], [ -19, %if.then57 ], [ -19, %do.end62 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nim8096md_tuner_attach(ptr nocapture noundef readonly %adap) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 12
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %get_slave_frontend = getelementptr inbounds %struct.dib0700_adapter_state, ptr %1, i32 0, i32 3, i32 12
  %2 = ptrtoint ptr %get_slave_frontend to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %get_slave_frontend, align 4
  %fe_adap = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 9
  %4 = ptrtoint ptr %fe_adap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fe_adap, align 8
  %call = tail call ptr %3(ptr noundef %5, i32 noundef 1) #4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.if.end21_crit_edge, label %if.then

entry.if.end21_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end21

if.then:                                          ; preds = %entry
  %get_i2c_master = getelementptr inbounds %struct.dib0700_adapter_state, ptr %1, i32 0, i32 3, i32 14
  %6 = ptrtoint ptr %get_i2c_master to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %get_i2c_master, align 4
  %call2 = tail call ptr %7(ptr noundef nonnull %call, i32 noundef 0, i32 noundef 1) #4
  %call3 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.179) #4
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %cond.end, label %if.then.if.then8_crit_edge

if.then.if.then8_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then8

cond.end:                                         ; preds = %if.then
  %call5 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.180) #4
  %call6 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.179) #4
  %tobool7.not = icmp eq ptr %call6, null
  br i1 %tobool7.not, label %do.end, label %cond.end.if.then8_crit_edge

cond.end.if.then8_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then8

if.then8:                                         ; preds = %cond.end.if.then8_crit_edge, %if.then.if.then8_crit_edge
  %cond92 = phi ptr [ %call6, %cond.end.if.then8_crit_edge ], [ %call3, %if.then.if.then8_crit_edge ]
  %call9 = tail call ptr %cond92(ptr noundef nonnull %call, ptr noundef %call2, ptr noundef nonnull @dib809x_dib0090_config) #4
  %cmp = icmp eq ptr %call9, null
  br i1 %cmp, label %if.then10, label %if.end16

if.then10:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @__symbol_put(ptr noundef nonnull @.str.179) #4
  br label %cleanup

do.end:                                           ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #6
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.181) #7
  br label %cleanup

if.end16:                                         ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #6
  %8 = ptrtoint ptr %fe_adap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fe_adap, align 8
  %dvb = getelementptr inbounds %struct.dvb_frontend, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %dvb to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dvb, align 4
  %dvb20 = getelementptr inbounds %struct.dvb_frontend, ptr %call, i32 0, i32 2
  %12 = ptrtoint ptr %dvb20 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %11, ptr %dvb20, align 4
  %set_params = getelementptr inbounds %struct.dvb_frontend, ptr %call, i32 0, i32 1, i32 32, i32 6
  %13 = ptrtoint ptr %set_params to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @dib8096_set_param_override, ptr %set_params, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.end16, %entry.if.end21_crit_edge
  %get_i2c_master23 = getelementptr inbounds %struct.dib0700_adapter_state, ptr %1, i32 0, i32 3, i32 14
  %14 = ptrtoint ptr %get_i2c_master23 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %get_i2c_master23, align 4
  %16 = ptrtoint ptr %fe_adap to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %fe_adap, align 8
  %call27 = tail call ptr %15(ptr noundef %17, i32 noundef 0, i32 noundef 1) #4
  %call30 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.179) #4
  %tobool31.not = icmp eq ptr %call30, null
  br i1 %tobool31.not, label %cond.end36, label %if.end21.if.then39_crit_edge

if.end21.if.then39_crit_edge:                     ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then39

cond.end36:                                       ; preds = %if.end21
  %call34 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.180) #4
  %call35 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.179) #4
  %tobool38.not = icmp eq ptr %call35, null
  br i1 %tobool38.not, label %do.end50, label %cond.end36.if.then39_crit_edge

cond.end36.if.then39_crit_edge:                   ; preds = %cond.end36
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then39

if.then39:                                        ; preds = %cond.end36.if.then39_crit_edge, %if.end21.if.then39_crit_edge
  %cond3797 = phi ptr [ %call35, %cond.end36.if.then39_crit_edge ], [ %call30, %if.end21.if.then39_crit_edge ]
  %18 = ptrtoint ptr %fe_adap to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %fe_adap, align 8
  %call43 = tail call ptr %cond3797(ptr noundef %19, ptr noundef %call27, ptr noundef nonnull @dib809x_dib0090_config) #4
  %cmp44 = icmp eq ptr %call43, null
  br i1 %cmp44, label %if.then45, label %if.end57

if.then45:                                        ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @__symbol_put(ptr noundef nonnull @.str.179) #4
  br label %cleanup

do.end50:                                         ; preds = %cond.end36
  call void @__sanitizer_cov_trace_pc() #6
  %call52 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.181) #7
  br label %cleanup

if.end57:                                         ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #6
  %20 = ptrtoint ptr %fe_adap to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %fe_adap, align 8
  %set_params63 = getelementptr inbounds %struct.dvb_frontend, ptr %21, i32 0, i32 1, i32 32, i32 6
  %22 = ptrtoint ptr %set_params63 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %set_params63, align 4
  %24 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %23, ptr %1, align 4
  %25 = load ptr, ptr %fe_adap, align 8
  %set_params69 = getelementptr inbounds %struct.dvb_frontend, ptr %25, i32 0, i32 1, i32 32, i32 6
  %26 = ptrtoint ptr %set_params69 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @dib8096_set_param_override, ptr %set_params69, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end57, %do.end50, %if.then45, %do.end, %if.then10
  %retval.0 = phi i32 [ 0, %if.end57 ], [ -19, %if.then10 ], [ -19, %do.end ], [ -19, %if.then45 ], [ -19, %do.end50 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nim9090md_frontend_attach(ptr nocapture noundef %adap) #1 align 64 {
entry:
  %fw_version = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 12
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %2 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %adap, align 8
  %priv1 = getelementptr inbounds %struct.dvb_usb_device, ptr %3, i32 0, i32 18
  %4 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv1, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fw_version) #4
  %6 = ptrtoint ptr %fw_version to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %fw_version, align 4, !annotation !751
  %call = call i32 @dib0700_get_version(ptr noundef %3, ptr noundef null, ptr noundef null, ptr noundef nonnull %fw_version, ptr noundef null) #4
  %7 = ptrtoint ptr %fw_version to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %fw_version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 66047, i32 %8)
  %cmp = icmp ugt i32 %8, 66047
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %fw_use_new_i2c_api = getelementptr inbounds %struct.dib0700_state, ptr %5, i32 0, i32 5
  %9 = ptrtoint ptr %fw_use_new_i2c_api to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %fw_use_new_i2c_api, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %10 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %adap, align 8
  %call4 = call i32 @dib0700_set_i2c_speed(ptr noundef %11, i16 noundef zeroext 340) #4
  %12 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %adap, align 8
  %call6 = call i32 @dib0700_set_gpio(ptr noundef %13, i32 noundef 8, i8 noundef zeroext 1, i8 noundef zeroext 1) #4
  call void @msleep(i32 noundef 20) #4
  %14 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %adap, align 8
  %call8 = call i32 @dib0700_set_gpio(ptr noundef %15, i32 noundef 14, i8 noundef zeroext 1, i8 noundef zeroext 1) #4
  %16 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %adap, align 8
  %call10 = call i32 @dib0700_set_gpio(ptr noundef %17, i32 noundef 5, i8 noundef zeroext 1, i8 noundef zeroext 1) #4
  %18 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %adap, align 8
  %call12 = call i32 @dib0700_set_gpio(ptr noundef %19, i32 noundef 10, i8 noundef zeroext 1, i8 noundef zeroext 1) #4
  %20 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %adap, align 8
  %call14 = call i32 @dib0700_set_gpio(ptr noundef %21, i32 noundef 15, i8 noundef zeroext 1, i8 noundef zeroext 0) #4
  %22 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %adap, align 8
  %call16 = call i32 @dib0700_ctrl_clock(ptr noundef %23, i32 noundef 72, i8 noundef zeroext 1) #4
  call void @msleep(i32 noundef 20) #4
  %24 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %adap, align 8
  %call18 = call i32 @dib0700_set_gpio(ptr noundef %25, i32 noundef 15, i8 noundef zeroext 1, i8 noundef zeroext 1) #4
  call void @msleep(i32 noundef 20) #4
  %26 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %adap, align 8
  %call20 = call i32 @dib0700_set_gpio(ptr noundef %27, i32 noundef 0, i8 noundef zeroext 1, i8 noundef zeroext 1) #4
  %frontend_firmware = getelementptr inbounds %struct.dib0700_adapter_state, ptr %1, i32 0, i32 1
  %28 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %adap, align 8
  %udev = getelementptr inbounds %struct.dvb_usb_device, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %udev, align 4
  %dev22 = getelementptr inbounds %struct.usb_device, ptr %31, i32 0, i32 15
  %call23 = call i32 @request_firmware(ptr noundef %frontend_firmware, ptr noundef nonnull @.str.203, ptr noundef %dev22) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool.not = icmp eq i32 %call23, 0
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_dib0700_debug to i32))
  %32 = load i32, ptr @dvb_usb_dib0700_debug, align 4
  %and33 = and i32 %32, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33)
  %tobool34.not = icmp eq i32 %and33, 0
  br i1 %tobool.not, label %do.body32, label %do.body

do.body:                                          ; preds = %if.end
  br i1 %tobool34.not, label %do.body.cleanup_crit_edge, label %do.end

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  %call28 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.204, ptr noundef nonnull @.str.236) #7
  br label %cleanup

do.body32:                                        ; preds = %if.end
  br i1 %tobool34.not, label %do.body32.if.end45_crit_edge, label %do.end38

do.body32.if.end45_crit_edge:                     ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end45

do.end38:                                         ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #6
  %33 = ptrtoint ptr %frontend_firmware to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %frontend_firmware, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %34, align 4
  %call41 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.207, ptr noundef nonnull @.str.236, i32 noundef %36) #7
  br label %if.end45

if.end45:                                         ; preds = %do.end38, %do.body32.if.end45_crit_edge
  %37 = ptrtoint ptr %frontend_firmware to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %frontend_firmware, align 4
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %38, align 4
  store i32 %40, ptr getelementptr inbounds ([2 x %struct.dib9000_config], ptr @nim9090md_config, i32 0, i32 0, i32 10), align 4
  %41 = load ptr, ptr %frontend_firmware, align 4
  %data = getelementptr inbounds %struct.firmware, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %data, align 4
  store ptr %43, ptr getelementptr inbounds ([2 x %struct.dib9000_config], ptr @nim9090md_config, i32 0, i32 0, i32 9), align 4
  %44 = load ptr, ptr %frontend_firmware, align 4
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %44, align 4
  store i32 %46, ptr getelementptr inbounds ([2 x %struct.dib9000_config], ptr @nim9090md_config, i32 0, i32 1, i32 10), align 4
  %47 = load ptr, ptr %frontend_firmware, align 4
  %data52 = getelementptr inbounds %struct.firmware, ptr %47, i32 0, i32 1
  %48 = ptrtoint ptr %data52 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %data52, align 4
  store ptr %49, ptr getelementptr inbounds ([2 x %struct.dib9000_config], ptr @nim9090md_config, i32 0, i32 1, i32 9), align 4
  %50 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %adap, align 8
  %i2c_adap = getelementptr inbounds %struct.dvb_usb_device, ptr %51, i32 0, i32 8
  %call54 = call i32 @dib9000_i2c_enumeration(ptr noundef %i2c_adap, i32 noundef 1, i8 noundef zeroext 32, i8 noundef zeroext -128) #4
  %call55 = call ptr @__symbol_get(ptr noundef nonnull @.str.209) #4
  %tobool56.not = icmp eq ptr %call55, null
  br i1 %tobool56.not, label %cond.end, label %if.end45.if.then60_crit_edge

if.end45.if.then60_crit_edge:                     ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then60

cond.end:                                         ; preds = %if.end45
  %call57 = call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.210) #4
  %call58 = call ptr @__symbol_get(ptr noundef nonnull @.str.209) #4
  %tobool59.not = icmp eq ptr %call58, null
  br i1 %tobool59.not, label %do.end70, label %cond.end.if.then60_crit_edge

cond.end.if.then60_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then60

if.then60:                                        ; preds = %cond.end.if.then60_crit_edge, %if.end45.if.then60_crit_edge
  %cond151 = phi ptr [ %call58, %cond.end.if.then60_crit_edge ], [ %call55, %if.end45.if.then60_crit_edge ]
  %52 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %adap, align 8
  %i2c_adap62 = getelementptr inbounds %struct.dvb_usb_device, ptr %53, i32 0, i32 8
  %call63 = call ptr %cond151(ptr noundef %i2c_adap62, i8 noundef zeroext -128, ptr noundef nonnull @nim9090md_config) #4
  %cmp64 = icmp eq ptr %call63, null
  br i1 %cmp64, label %if.then65, label %if.end80

if.then65:                                        ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #6
  call void @__symbol_put(ptr noundef nonnull @.str.209) #4
  br label %if.end73.thread

do.end70:                                         ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #6
  %call72 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.212) #7
  br label %if.end73.thread

if.end73.thread:                                  ; preds = %do.end70, %if.then65
  %fe_adap153 = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 9
  %54 = ptrtoint ptr %fe_adap153 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr null, ptr %fe_adap153, align 8
  br label %cleanup

if.end80:                                         ; preds = %if.then60
  %fe_adap = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 9
  %55 = ptrtoint ptr %fe_adap to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %call63, ptr %fe_adap, align 8
  %call84 = call ptr @dib9000_get_i2c_master(ptr noundef nonnull %call63, i32 noundef 2, i32 noundef 0) #4
  %call85 = call i32 @dib9000_i2c_enumeration(ptr noundef %call84, i32 noundef 1, i8 noundef zeroext 18, i8 noundef zeroext -126) #4
  %call88 = call ptr @__symbol_get(ptr noundef nonnull @.str.209) #4
  %tobool89.not = icmp eq ptr %call88, null
  br i1 %tobool89.not, label %cond.end94, label %if.end80.if.then97_crit_edge

if.end80.if.then97_crit_edge:                     ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then97

cond.end94:                                       ; preds = %if.end80
  %call92 = call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.210) #4
  %call93 = call ptr @__symbol_get(ptr noundef nonnull @.str.209) #4
  %tobool96.not = icmp eq ptr %call93, null
  br i1 %tobool96.not, label %do.end105, label %cond.end94.if.then97_crit_edge

cond.end94.if.then97_crit_edge:                   ; preds = %cond.end94
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then97

if.then97:                                        ; preds = %cond.end94.if.then97_crit_edge, %if.end80.if.then97_crit_edge
  %cond95157 = phi ptr [ %call93, %cond.end94.if.then97_crit_edge ], [ %call88, %if.end80.if.then97_crit_edge ]
  %call98 = call ptr %cond95157(ptr noundef %call84, i8 noundef zeroext -126, ptr noundef getelementptr inbounds ([2 x %struct.dib9000_config], ptr @nim9090md_config, i32 0, i32 1)) #4
  %cmp99 = icmp eq ptr %call98, null
  br i1 %cmp99, label %if.then100, label %if.then97.if.end108_crit_edge

if.then97.if.end108_crit_edge:                    ; preds = %if.then97
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end108

if.then100:                                       ; preds = %if.then97
  call void @__sanitizer_cov_trace_pc() #6
  call void @__symbol_put(ptr noundef nonnull @.str.209) #4
  br label %if.end108

do.end105:                                        ; preds = %cond.end94
  call void @__sanitizer_cov_trace_pc() #6
  %call107 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.212) #7
  br label %if.end108

if.end108:                                        ; preds = %do.end105, %if.then100, %if.then97.if.end108_crit_edge
  %__r86.0 = phi ptr [ null, %if.then100 ], [ %call98, %if.then97.if.end108_crit_edge ], [ null, %do.end105 ]
  %56 = ptrtoint ptr %fe_adap to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %fe_adap, align 8
  %call113 = call i32 @dib9000_set_slave_frontend(ptr noundef %57, ptr noundef %__r86.0) #4
  %cmp114 = icmp eq ptr %__r86.0, null
  %cond115 = select i1 %cmp114, i32 -19, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end108, %if.end73.thread, %do.end, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ %cond115, %if.end108 ], [ -5, %do.end ], [ -5, %do.body.cleanup_crit_edge ], [ -19, %if.end73.thread ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw_version) #4
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nim9090md_tuner_attach(ptr nocapture noundef readonly %adap) #1 align 64 {
entry:
  %data_dib190 = alloca [10 x i16], align 2
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 12
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %data_dib190) #4
  %2 = call ptr @memcpy(ptr %data_dib190, ptr @__const.nim9090md_tuner_attach.data_dib190, i32 20)
  %fe_adap = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 9
  %3 = ptrtoint ptr %fe_adap to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %fe_adap, align 8
  %call = tail call ptr @dib9000_get_tuner_interface(ptr noundef %4) #4
  %call1 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.214) #4
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %cond.end, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

cond.end:                                         ; preds = %entry
  %call2 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.215) #4
  %call3 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.214) #4
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %do.end, label %cond.end.if.then_crit_edge

cond.end.if.then_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

if.then:                                          ; preds = %cond.end.if.then_crit_edge, %entry.if.then_crit_edge
  %cond114 = phi ptr [ %call3, %cond.end.if.then_crit_edge ], [ %call1, %entry.if.then_crit_edge ]
  %5 = ptrtoint ptr %fe_adap to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %fe_adap, align 8
  %call8 = tail call ptr %cond114(ptr noundef %6, ptr noundef %call, ptr noundef nonnull @nim9090md_dib0090_config) #4
  %cmp = icmp eq ptr %call8, null
  br i1 %cmp, label %if.then9, label %if.end15

if.then9:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @__symbol_put(ptr noundef nonnull @.str.214) #4
  br label %cleanup

do.end:                                           ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #6
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.216) #7
  br label %cleanup

if.end15:                                         ; preds = %if.then
  %7 = ptrtoint ptr %fe_adap to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %fe_adap, align 8
  %call19 = tail call ptr @dib9000_get_i2c_master(ptr noundef %8, i32 noundef 1, i32 noundef 0) #4
  %tobool20.not = icmp eq ptr %call19, null
  br i1 %tobool20.not, label %if.end15.cleanup_crit_edge, label %if.end22

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end22:                                         ; preds = %if.end15
  %call23 = call fastcc i32 @dib01x0_pmu_update(ptr noundef nonnull %call19, ptr noundef nonnull %data_dib190)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %cmp24 = icmp slt i32 %call23, 0
  br i1 %cmp24, label %if.end22.cleanup_crit_edge, label %if.end26

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end26:                                         ; preds = %if.end22
  %9 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %adap, align 8
  %call27 = tail call i32 @dib0700_set_i2c_speed(ptr noundef %10, i16 noundef zeroext 1500) #4
  %11 = ptrtoint ptr %fe_adap to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %fe_adap, align 8
  %call31 = tail call i32 @dib9000_firmware_post_pll_init(ptr noundef %12) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %cmp32 = icmp slt i32 %call31, 0
  br i1 %cmp32, label %if.end26.cleanup_crit_edge, label %if.end34

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end34:                                         ; preds = %if.end26
  %13 = ptrtoint ptr %fe_adap to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %fe_adap, align 8
  %call38 = tail call ptr @dib9000_get_slave_frontend(ptr noundef %14, i32 noundef 1) #4
  %cmp39.not = icmp eq ptr %call38, null
  br i1 %cmp39.not, label %if.end34.if.end86_crit_edge, label %if.then40

if.end34.if.end86_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end86

if.then40:                                        ; preds = %if.end34
  %15 = ptrtoint ptr %fe_adap to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %fe_adap, align 8
  %call44 = tail call ptr @dib9000_get_component_bus_interface(ptr noundef %16) #4
  %call45 = tail call i32 @dib9000_set_i2c_adapter(ptr noundef nonnull %call38, ptr noundef %call44) #4
  %call46 = tail call ptr @dib9000_get_tuner_interface(ptr noundef nonnull %call38) #4
  %call49 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.214) #4
  %tobool50.not = icmp eq ptr %call49, null
  br i1 %tobool50.not, label %cond.end55, label %if.then40.if.then58_crit_edge

if.then40.if.then58_crit_edge:                    ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then58

cond.end55:                                       ; preds = %if.then40
  %call53 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.215) #4
  %call54 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.214) #4
  %tobool57.not = icmp eq ptr %call54, null
  br i1 %tobool57.not, label %do.end66, label %cond.end55.if.then58_crit_edge

cond.end55.if.then58_crit_edge:                   ; preds = %cond.end55
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then58

if.then58:                                        ; preds = %cond.end55.if.then58_crit_edge, %if.then40.if.then58_crit_edge
  %cond56119 = phi ptr [ %call54, %cond.end55.if.then58_crit_edge ], [ %call49, %if.then40.if.then58_crit_edge ]
  %call59 = tail call ptr %cond56119(ptr noundef nonnull %call38, ptr noundef %call46, ptr noundef getelementptr inbounds ([2 x { { i32, i8, i8, i8, i16 }, ptr, ptr, i32, i32, ptr, i8, i8, i8, i16, i16, i8, i8, i8, i8, i8, ptr, i8, i16, ptr, i8, i8 }], ptr @nim9090md_dib0090_config, i32 0, i32 1, i32 0, i32 0)) #4
  %cmp60 = icmp eq ptr %call59, null
  br i1 %cmp60, label %if.then61, label %if.end73

if.then61:                                        ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @__symbol_put(ptr noundef nonnull @.str.214) #4
  br label %cleanup

do.end66:                                         ; preds = %cond.end55
  call void @__sanitizer_cov_trace_pc() #6
  %call68 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.216) #7
  br label %cleanup

if.end73:                                         ; preds = %if.then58
  %17 = ptrtoint ptr %fe_adap to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %fe_adap, align 8
  %dvb = getelementptr inbounds %struct.dvb_frontend, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %dvb to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dvb, align 4
  %dvb77 = getelementptr inbounds %struct.dvb_frontend, ptr %call38, i32 0, i32 2
  %21 = ptrtoint ptr %dvb77 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %20, ptr %dvb77, align 4
  %22 = load ptr, ptr %fe_adap, align 8
  %call81 = tail call i32 @dib9000_fw_set_component_bus_speed(ptr noundef %22, i16 noundef zeroext 1500) #4
  %call82 = tail call i32 @dib9000_firmware_post_pll_init(ptr noundef nonnull %call38) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call82)
  %cmp83 = icmp slt i32 %call82, 0
  br i1 %cmp83, label %if.end73.cleanup_crit_edge, label %if.end73.if.end86_crit_edge

if.end73.if.end86_crit_edge:                      ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end86

if.end73.cleanup_crit_edge:                       ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end86:                                         ; preds = %if.end73.if.end86_crit_edge, %if.end34.if.end86_crit_edge
  %frontend_firmware = getelementptr inbounds %struct.dib0700_adapter_state, ptr %1, i32 0, i32 1
  %23 = ptrtoint ptr %frontend_firmware to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %frontend_firmware, align 4
  tail call void @release_firmware(ptr noundef %24) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end86, %if.end73.cleanup_crit_edge, %do.end66, %if.then61, %if.end26.cleanup_crit_edge, %if.end22.cleanup_crit_edge, %if.end15.cleanup_crit_edge, %do.end, %if.then9
  %retval.0 = phi i32 [ 0, %if.end86 ], [ -19, %if.end15.cleanup_crit_edge ], [ -19, %if.end22.cleanup_crit_edge ], [ -19, %if.end26.cleanup_crit_edge ], [ -19, %if.end73.cleanup_crit_edge ], [ -19, %if.then9 ], [ -19, %do.end ], [ -19, %if.then61 ], [ -19, %do.end66 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %data_dib190) #4
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nim7090_frontend_attach(ptr nocapture noundef %adap) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 12
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %call = tail call ptr @__symbol_get(ptr noundef nonnull @.str.78) #4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %cond.end, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

cond.end:                                         ; preds = %entry
  %call1 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.79) #4
  %call2 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.78) #4
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %do.end, label %cond.end.if.then_crit_edge

cond.end.if.then_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

if.then:                                          ; preds = %cond.end.if.then_crit_edge, %entry.if.then_crit_edge
  %cond64 = phi ptr [ %call2, %cond.end.if.then_crit_edge ], [ %call, %entry.if.then_crit_edge ]
  %dib7000p_ops = getelementptr inbounds %struct.dib0700_adapter_state, ptr %1, i32 0, i32 2
  %call4 = tail call ptr %cond64(ptr noundef %dib7000p_ops) #4
  %cmp = icmp eq ptr %call4, null
  br i1 %cmp, label %if.then5, label %if.end11

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @__symbol_put(ptr noundef nonnull @.str.78) #4
  br label %cleanup

do.end:                                           ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #6
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.80) #7
  br label %cleanup

if.end11:                                         ; preds = %if.then
  %2 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %adap, align 8
  %call12 = tail call i32 @dib0700_set_gpio(ptr noundef %3, i32 noundef 8, i8 noundef zeroext 1, i8 noundef zeroext 1) #4
  tail call void @msleep(i32 noundef 20) #4
  %4 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %adap, align 8
  %call14 = tail call i32 @dib0700_set_gpio(ptr noundef %5, i32 noundef 14, i8 noundef zeroext 1, i8 noundef zeroext 1) #4
  %6 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %adap, align 8
  %call16 = tail call i32 @dib0700_set_gpio(ptr noundef %7, i32 noundef 5, i8 noundef zeroext 1, i8 noundef zeroext 1) #4
  %8 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %adap, align 8
  %call18 = tail call i32 @dib0700_set_gpio(ptr noundef %9, i32 noundef 10, i8 noundef zeroext 1, i8 noundef zeroext 1) #4
  %10 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %adap, align 8
  %call20 = tail call i32 @dib0700_set_gpio(ptr noundef %11, i32 noundef 15, i8 noundef zeroext 1, i8 noundef zeroext 0) #4
  tail call void @msleep(i32 noundef 20) #4
  %12 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %adap, align 8
  %call22 = tail call i32 @dib0700_set_gpio(ptr noundef %13, i32 noundef 15, i8 noundef zeroext 1, i8 noundef zeroext 1) #4
  tail call void @msleep(i32 noundef 20) #4
  %14 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %adap, align 8
  %call24 = tail call i32 @dib0700_set_gpio(ptr noundef %15, i32 noundef 0, i8 noundef zeroext 1, i8 noundef zeroext 1) #4
  %i2c_enumeration = getelementptr inbounds %struct.dib0700_adapter_state, ptr %1, i32 0, i32 2, i32 10
  %16 = ptrtoint ptr %i2c_enumeration to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %i2c_enumeration, align 4
  %18 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %adap, align 8
  %i2c_adap = getelementptr inbounds %struct.dvb_usb_device, ptr %19, i32 0, i32 8
  %call27 = tail call i32 %17(ptr noundef %i2c_adap, i32 noundef 1, i8 noundef zeroext 16, ptr noundef nonnull @nim7090_dib7000p_config) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %cmp28.not = icmp eq i32 %call27, 0
  br i1 %cmp28.not, label %if.end36, label %do.end32

do.end32:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #6
  %call34 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.101, ptr noundef nonnull @.str.247) #7
  %20 = ptrtoint ptr %dib7000p_ops to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dib7000p_ops, align 4
  tail call void @symbol_put_addr(ptr noundef %21) #4
  br label %cleanup

if.end36:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #6
  %init = getelementptr inbounds %struct.dib0700_adapter_state, ptr %1, i32 0, i32 2, i32 15
  %22 = ptrtoint ptr %init to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %init, align 4
  %24 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %adap, align 8
  %i2c_adap39 = getelementptr inbounds %struct.dvb_usb_device, ptr %25, i32 0, i32 8
  %call40 = tail call ptr %23(ptr noundef %i2c_adap39, i8 noundef zeroext -128, ptr noundef nonnull @nim7090_dib7000p_config) #4
  %fe_adap = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 9
  %26 = ptrtoint ptr %fe_adap to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call40, ptr %fe_adap, align 8
  %cmp44 = icmp eq ptr %call40, null
  %cond45 = select i1 %cmp44, i32 -19, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end36, %do.end32, %do.end, %if.then5
  %retval.0 = phi i32 [ -19, %do.end32 ], [ %cond45, %if.end36 ], [ -19, %if.then5 ], [ -19, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nim7090_tuner_attach(ptr nocapture noundef readonly %adap) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 12
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %get_i2c_tuner = getelementptr inbounds %struct.dib0700_adapter_state, ptr %1, i32 0, i32 2, i32 11
  %2 = ptrtoint ptr %get_i2c_tuner to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %get_i2c_tuner, align 4
  %fe_adap = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 9
  %4 = ptrtoint ptr %fe_adap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fe_adap, align 8
  %call = tail call ptr %3(ptr noundef %5) #4
  %tuner_sleep = getelementptr inbounds %struct.dib0700_adapter_state, ptr %1, i32 0, i32 2, i32 12
  %6 = ptrtoint ptr %tuner_sleep to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tuner_sleep, align 4
  store ptr %7, ptr getelementptr inbounds ({ { i32, i8, i8, i8, i16 }, ptr, ptr, i32, i32, ptr, i8, i8, i8, i16, i16, i8, i8, i8, i8, i8, ptr, i8, i16, ptr, i8, i8 }, ptr @nim7090_dib0090_config, i32 0, i32 1), align 4
  store ptr %7, ptr getelementptr inbounds ({ { i32, i8, i8, i8, i16 }, ptr, ptr, i32, i32, ptr, i8, i8, i8, i16, i16, i8, i8, i8, i8, i8, ptr, i8, i16, ptr, i8, i8 }, ptr @nim7090_dib0090_config, i32 0, i32 2), align 4
  %get_adc_power = getelementptr inbounds %struct.dib0700_adapter_state, ptr %1, i32 0, i32 2, i32 13
  %8 = ptrtoint ptr %get_adc_power to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %get_adc_power, align 4
  store ptr %9, ptr getelementptr inbounds ({ { i32, i8, i8, i8, i16 }, ptr, ptr, i32, i32, ptr, i8, i8, i8, i16, i16, i8, i8, i8, i8, i8, ptr, i8, i16, ptr, i8, i8 }, ptr @nim7090_dib0090_config, i32 0, i32 5), align 4
  %call5 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.179) #4
  %tobool.not = icmp eq ptr %call5, null
  br i1 %tobool.not, label %cond.end, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

cond.end:                                         ; preds = %entry
  %call6 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.180) #4
  %call7 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.179) #4
  %tobool8.not = icmp eq ptr %call7, null
  br i1 %tobool8.not, label %do.end, label %cond.end.if.then_crit_edge

cond.end.if.then_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

if.then:                                          ; preds = %cond.end.if.then_crit_edge, %entry.if.then_crit_edge
  %cond49 = phi ptr [ %call7, %cond.end.if.then_crit_edge ], [ %call5, %entry.if.then_crit_edge ]
  %10 = ptrtoint ptr %fe_adap to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %fe_adap, align 8
  %call12 = tail call ptr %cond49(ptr noundef %11, ptr noundef %call, ptr noundef nonnull @nim7090_dib0090_config) #4
  %cmp = icmp eq ptr %call12, null
  br i1 %cmp, label %if.then13, label %if.end19

if.then13:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @__symbol_put(ptr noundef nonnull @.str.179) #4
  br label %cleanup

do.end:                                           ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #6
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.181) #7
  br label %cleanup

if.end19:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %set_gpio = getelementptr inbounds %struct.dib0700_adapter_state, ptr %1, i32 0, i32 2, i32 4
  %12 = ptrtoint ptr %set_gpio to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %set_gpio, align 4
  %14 = ptrtoint ptr %fe_adap to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %fe_adap, align 8
  %call24 = tail call i32 %13(ptr noundef %15, i8 noundef zeroext 8, i8 noundef zeroext 0, i8 noundef zeroext 1) #4
  %16 = ptrtoint ptr %fe_adap to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %fe_adap, align 8
  %set_params = getelementptr inbounds %struct.dvb_frontend, ptr %17, i32 0, i32 1, i32 32, i32 6
  %18 = ptrtoint ptr %set_params to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %set_params, align 4
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %19, ptr %1, align 4
  %21 = load ptr, ptr %fe_adap, align 8
  %set_params33 = getelementptr inbounds %struct.dvb_frontend, ptr %21, i32 0, i32 1, i32 32, i32 6
  %22 = ptrtoint ptr %set_params33 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @dib7090_agc_startup, ptr %set_params33, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %do.end, %if.then13
  %retval.0 = phi i32 [ 0, %if.end19 ], [ -19, %if.then13 ], [ -19, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tfe7090pvr_frontend0_attach(ptr nocapture noundef %adap) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adap, align 8
  %priv = getelementptr inbounds %struct.dvb_usb_device, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 8
  %priv1 = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 12
  %4 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv1, align 8
  %call = tail call ptr @__symbol_get(ptr noundef nonnull @.str.78) #4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %cond.end, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

cond.end:                                         ; preds = %entry
  %call2 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.79) #4
  %call3 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.78) #4
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %do.end, label %cond.end.if.then_crit_edge

cond.end.if.then_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

if.then:                                          ; preds = %cond.end.if.then_crit_edge, %entry.if.then_crit_edge
  %cond79 = phi ptr [ %call3, %cond.end.if.then_crit_edge ], [ %call, %entry.if.then_crit_edge ]
  %dib7000p_ops = getelementptr inbounds %struct.dib0700_adapter_state, ptr %5, i32 0, i32 2
  %call5 = tail call ptr %cond79(ptr noundef %dib7000p_ops) #4
  %cmp = icmp eq ptr %call5, null
  br i1 %cmp, label %if.then6, label %if.end12

if.then6:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @__symbol_put(ptr noundef nonnull @.str.78) #4
  br label %cleanup

do.end:                                           ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #6
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.80) #7
  br label %cleanup

if.end12:                                         ; preds = %if.then
  %disable_streaming_master_mode = getelementptr inbounds %struct.dib0700_state, ptr %3, i32 0, i32 6
  %6 = ptrtoint ptr %disable_streaming_master_mode to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %disable_streaming_master_mode, align 2
  %7 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %adap, align 8
  %call14 = tail call i32 @dib0700_set_gpio(ptr noundef %8, i32 noundef 8, i8 noundef zeroext 1, i8 noundef zeroext 1) #4
  tail call void @msleep(i32 noundef 20) #4
  %9 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %adap, align 8
  %call16 = tail call i32 @dib0700_set_gpio(ptr noundef %10, i32 noundef 14, i8 noundef zeroext 1, i8 noundef zeroext 1) #4
  %11 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %adap, align 8
  %call18 = tail call i32 @dib0700_set_gpio(ptr noundef %12, i32 noundef 5, i8 noundef zeroext 1, i8 noundef zeroext 1) #4
  %13 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %adap, align 8
  %call20 = tail call i32 @dib0700_set_gpio(ptr noundef %14, i32 noundef 10, i8 noundef zeroext 1, i8 noundef zeroext 1) #4
  %15 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %adap, align 8
  %call22 = tail call i32 @dib0700_set_gpio(ptr noundef %16, i32 noundef 15, i8 noundef zeroext 1, i8 noundef zeroext 0) #4
  tail call void @msleep(i32 noundef 20) #4
  %17 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %adap, align 8
  %call24 = tail call i32 @dib0700_set_gpio(ptr noundef %18, i32 noundef 15, i8 noundef zeroext 1, i8 noundef zeroext 1) #4
  tail call void @msleep(i32 noundef 20) #4
  %19 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %adap, align 8
  %call26 = tail call i32 @dib0700_set_gpio(ptr noundef %20, i32 noundef 0, i8 noundef zeroext 1, i8 noundef zeroext 1) #4
  %i2c_enumeration = getelementptr inbounds %struct.dib0700_adapter_state, ptr %5, i32 0, i32 2, i32 10
  %21 = ptrtoint ptr %i2c_enumeration to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %i2c_enumeration, align 4
  %23 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %adap, align 8
  %i2c_adap = getelementptr inbounds %struct.dvb_usb_device, ptr %24, i32 0, i32 8
  %call29 = tail call i32 %22(ptr noundef %i2c_adap, i32 noundef 1, i8 noundef zeroext 32, ptr noundef nonnull @tfe7090pvr_dib7000p_config) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %cmp30.not = icmp eq i32 %call29, 0
  br i1 %cmp30.not, label %if.end38, label %do.end34

do.end34:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #6
  %call36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.101, ptr noundef nonnull @.str.264) #7
  %25 = ptrtoint ptr %dib7000p_ops to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dib7000p_ops, align 4
  tail call void @symbol_put_addr(ptr noundef %26) #4
  br label %cleanup

if.end38:                                         ; preds = %if.end12
  %27 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %adap, align 8
  %call40 = tail call i32 @dib0700_set_i2c_speed(ptr noundef %28, i16 noundef zeroext 340) #4
  %init = getelementptr inbounds %struct.dib0700_adapter_state, ptr %5, i32 0, i32 2, i32 15
  %29 = ptrtoint ptr %init to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %init, align 4
  %31 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %adap, align 8
  %i2c_adap43 = getelementptr inbounds %struct.dvb_usb_device, ptr %32, i32 0, i32 8
  %call44 = tail call ptr %30(ptr noundef %i2c_adap43, i8 noundef zeroext -112, ptr noundef nonnull @tfe7090pvr_dib7000p_config) #4
  %fe_adap = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 9
  %33 = ptrtoint ptr %fe_adap to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call44, ptr %fe_adap, align 8
  %cmp48 = icmp eq ptr %call44, null
  br i1 %cmp48, label %if.end38.cleanup_crit_edge, label %if.end50

if.end38.cleanup_crit_edge:                       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end50:                                         ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #6
  %slave_reset = getelementptr inbounds %struct.dib0700_adapter_state, ptr %5, i32 0, i32 2, i32 14
  %34 = ptrtoint ptr %slave_reset to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %slave_reset, align 4
  %call55 = tail call i32 %35(ptr noundef nonnull %call44) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end50, %if.end38.cleanup_crit_edge, %do.end34, %do.end, %if.then6
  %retval.0 = phi i32 [ -19, %do.end34 ], [ 0, %if.end50 ], [ -19, %if.end38.cleanup_crit_edge ], [ -19, %if.then6 ], [ -19, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tfe7090pvr_tuner0_attach(ptr nocapture noundef readonly %adap) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 12
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %get_i2c_tuner = getelementptr inbounds %struct.dib0700_adapter_state, ptr %1, i32 0, i32 2, i32 11
  %2 = ptrtoint ptr %get_i2c_tuner to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %get_i2c_tuner, align 4
  %fe_adap = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 9
  %4 = ptrtoint ptr %fe_adap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fe_adap, align 8
  %call = tail call ptr %3(ptr noundef %5) #4
  %tuner_sleep = getelementptr inbounds %struct.dib0700_adapter_state, ptr %1, i32 0, i32 2, i32 12
  %6 = ptrtoint ptr %tuner_sleep to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tuner_sleep, align 4
  store ptr %7, ptr getelementptr inbounds ([2 x { { i32, i8, i8, i8, i16 }, ptr, ptr, i32, i32, ptr, i8, i8, i8, i16, i16, i8, i8, i8, i8, i8, ptr, i8, i16, ptr, i8, i8 }], ptr @tfe7090pvr_dib0090_config, i32 0, i32 0, i32 1), align 4
  store ptr %7, ptr getelementptr inbounds ([2 x { { i32, i8, i8, i8, i16 }, ptr, ptr, i32, i32, ptr, i8, i8, i8, i16, i16, i8, i8, i8, i8, i8, ptr, i8, i16, ptr, i8, i8 }], ptr @tfe7090pvr_dib0090_config, i32 0, i32 0, i32 2), align 4
  %get_adc_power = getelementptr inbounds %struct.dib0700_adapter_state, ptr %1, i32 0, i32 2, i32 13
  %8 = ptrtoint ptr %get_adc_power to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %get_adc_power, align 4
  store ptr %9, ptr getelementptr inbounds ([2 x { { i32, i8, i8, i8, i16 }, ptr, ptr, i32, i32, ptr, i8, i8, i8, i16, i16, i8, i8, i8, i8, i8, ptr, i8, i16, ptr, i8, i8 }], ptr @tfe7090pvr_dib0090_config, i32 0, i32 0, i32 5), align 4
  %call5 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.179) #4
  %tobool.not = icmp eq ptr %call5, null
  br i1 %tobool.not, label %cond.end, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

cond.end:                                         ; preds = %entry
  %call6 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.180) #4
  %call7 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.179) #4
  %tobool8.not = icmp eq ptr %call7, null
  br i1 %tobool8.not, label %do.end, label %cond.end.if.then_crit_edge

cond.end.if.then_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

if.then:                                          ; preds = %cond.end.if.then_crit_edge, %entry.if.then_crit_edge
  %cond49 = phi ptr [ %call7, %cond.end.if.then_crit_edge ], [ %call5, %entry.if.then_crit_edge ]
  %10 = ptrtoint ptr %fe_adap to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %fe_adap, align 8
  %call12 = tail call ptr %cond49(ptr noundef %11, ptr noundef %call, ptr noundef nonnull @tfe7090pvr_dib0090_config) #4
  %cmp = icmp eq ptr %call12, null
  br i1 %cmp, label %if.then13, label %if.end19

if.then13:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @__symbol_put(ptr noundef nonnull @.str.179) #4
  br label %cleanup

do.end:                                           ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #6
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.181) #7
  br label %cleanup

if.end19:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %set_gpio = getelementptr inbounds %struct.dib0700_adapter_state, ptr %1, i32 0, i32 2, i32 4
  %12 = ptrtoint ptr %set_gpio to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %set_gpio, align 4
  %14 = ptrtoint ptr %fe_adap to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %fe_adap, align 8
  %call24 = tail call i32 %13(ptr noundef %15, i8 noundef zeroext 8, i8 noundef zeroext 0, i8 noundef zeroext 1) #4
  %16 = ptrtoint ptr %fe_adap to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %fe_adap, align 8
  %set_params = getelementptr inbounds %struct.dvb_frontend, ptr %17, i32 0, i32 1, i32 32, i32 6
  %18 = ptrtoint ptr %set_params to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %set_params, align 4
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %19, ptr %1, align 4
  %21 = load ptr, ptr %fe_adap, align 8
  %set_params33 = getelementptr inbounds %struct.dvb_frontend, ptr %21, i32 0, i32 1, i32 32, i32 6
  %22 = ptrtoint ptr %set_params33 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @dib7090_agc_startup, ptr %set_params33, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %do.end, %if.then13
  %retval.0 = phi i32 [ 0, %if.end19 ], [ -19, %if.then13 ], [ -19, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tfe7090pvr_frontend1_attach(ptr nocapture noundef %adap) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 12
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %2 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %adap, align 8
  %fe_adap = getelementptr inbounds %struct.dvb_usb_device, ptr %3, i32 0, i32 10, i32 0, i32 9
  %4 = ptrtoint ptr %fe_adap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fe_adap, align 8
  %cmp = icmp eq ptr %5, null
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.271) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.78) #4
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %cond.end, label %if.end.if.then6_crit_edge

if.end.if.then6_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then6

cond.end:                                         ; preds = %if.end
  %call3 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.79) #4
  %call4 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.78) #4
  %tobool5.not = icmp eq ptr %call4, null
  br i1 %tobool5.not, label %do.end13, label %cond.end.if.then6_crit_edge

cond.end.if.then6_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then6

if.then6:                                         ; preds = %cond.end.if.then6_crit_edge, %if.end.if.then6_crit_edge
  %cond67 = phi ptr [ %call4, %cond.end.if.then6_crit_edge ], [ %call2, %if.end.if.then6_crit_edge ]
  %dib7000p_ops = getelementptr inbounds %struct.dib0700_adapter_state, ptr %1, i32 0, i32 2
  %call7 = tail call ptr %cond67(ptr noundef %dib7000p_ops) #4
  %cmp8 = icmp eq ptr %call7, null
  br i1 %cmp8, label %if.then9, label %if.end20

if.then9:                                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @__symbol_put(ptr noundef nonnull @.str.78) #4
  br label %cleanup

do.end13:                                         ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #6
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.80) #7
  br label %cleanup

if.end20:                                         ; preds = %if.then6
  %get_i2c_master = getelementptr inbounds %struct.dib0700_adapter_state, ptr %1, i32 0, i32 2, i32 7
  %6 = ptrtoint ptr %get_i2c_master to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %get_i2c_master, align 4
  %8 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %adap, align 8
  %fe_adap25 = getelementptr inbounds %struct.dvb_usb_device, ptr %9, i32 0, i32 10, i32 0, i32 9
  %10 = ptrtoint ptr %fe_adap25 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %fe_adap25, align 8
  %call28 = tail call ptr %7(ptr noundef %11, i32 noundef 3, i32 noundef 1) #4
  %i2c_enumeration = getelementptr inbounds %struct.dib0700_adapter_state, ptr %1, i32 0, i32 2, i32 10
  %12 = ptrtoint ptr %i2c_enumeration to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %i2c_enumeration, align 4
  %call30 = tail call i32 %13(ptr noundef %call28, i32 noundef 1, i8 noundef zeroext 16, ptr noundef getelementptr inbounds ([2 x %struct.dib7000p_config], ptr @tfe7090pvr_dib7000p_config, i32 0, i32 1)) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %cmp31.not = icmp eq i32 %call30, 0
  br i1 %cmp31.not, label %if.end39, label %do.end35

do.end35:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #6
  %call37 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.101, ptr noundef nonnull @.str.272) #7
  %14 = ptrtoint ptr %dib7000p_ops to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dib7000p_ops, align 4
  tail call void @symbol_put_addr(ptr noundef %15) #4
  br label %cleanup

if.end39:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #6
  %init = getelementptr inbounds %struct.dib0700_adapter_state, ptr %1, i32 0, i32 2, i32 15
  %16 = ptrtoint ptr %init to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %init, align 4
  %call41 = tail call ptr %17(ptr noundef %call28, i8 noundef zeroext -110, ptr noundef getelementptr inbounds ([2 x %struct.dib7000p_config], ptr @tfe7090pvr_dib7000p_config, i32 0, i32 1)) #4
  %fe_adap42 = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 9
  %18 = ptrtoint ptr %fe_adap42 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call41, ptr %fe_adap42, align 8
  %19 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %adap, align 8
  %call46 = tail call i32 @dib0700_set_i2c_speed(ptr noundef %20, i16 noundef zeroext 200) #4
  %21 = ptrtoint ptr %fe_adap42 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %fe_adap42, align 8
  %cmp50 = icmp eq ptr %22, null
  %cond51 = select i1 %cmp50, i32 -19, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end39, %do.end35, %do.end13, %if.then9, %do.end
  %retval.0 = phi i32 [ -19, %do.end ], [ -19, %do.end35 ], [ %cond51, %if.end39 ], [ -19, %if.then9 ], [ -19, %do.end13 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tfe7090pvr_tuner1_attach(ptr nocapture noundef readonly %adap) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 12
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %get_i2c_tuner = getelementptr inbounds %struct.dib0700_adapter_state, ptr %1, i32 0, i32 2, i32 11
  %2 = ptrtoint ptr %get_i2c_tuner to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %get_i2c_tuner, align 4
  %fe_adap = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 9
  %4 = ptrtoint ptr %fe_adap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fe_adap, align 8
  %call = tail call ptr %3(ptr noundef %5) #4
  %tuner_sleep = getelementptr inbounds %struct.dib0700_adapter_state, ptr %1, i32 0, i32 2, i32 12
  %6 = ptrtoint ptr %tuner_sleep to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tuner_sleep, align 4
  store ptr %7, ptr getelementptr inbounds ([2 x { { i32, i8, i8, i8, i16 }, ptr, ptr, i32, i32, ptr, i8, i8, i8, i16, i16, i8, i8, i8, i8, i8, ptr, i8, i16, ptr, i8, i8 }], ptr @tfe7090pvr_dib0090_config, i32 0, i32 1, i32 1), align 4
  %8 = load ptr, ptr %tuner_sleep, align 4
  store ptr %8, ptr getelementptr inbounds ([2 x { { i32, i8, i8, i8, i16 }, ptr, ptr, i32, i32, ptr, i8, i8, i8, i16, i16, i8, i8, i8, i8, i8, ptr, i8, i16, ptr, i8, i8 }], ptr @tfe7090pvr_dib0090_config, i32 0, i32 1, i32 2), align 4
  %get_adc_power = getelementptr inbounds %struct.dib0700_adapter_state, ptr %1, i32 0, i32 2, i32 13
  %9 = ptrtoint ptr %get_adc_power to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %get_adc_power, align 4
  store ptr %10, ptr getelementptr inbounds ([2 x { { i32, i8, i8, i8, i16 }, ptr, ptr, i32, i32, ptr, i8, i8, i8, i16, i16, i8, i8, i8, i8, i8, ptr, i8, i16, ptr, i8, i8 }], ptr @tfe7090pvr_dib0090_config, i32 0, i32 1, i32 5), align 4
  %call5 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.179) #4
  %tobool.not = icmp eq ptr %call5, null
  br i1 %tobool.not, label %cond.end, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

cond.end:                                         ; preds = %entry
  %call6 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.180) #4
  %call7 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.179) #4
  %tobool8.not = icmp eq ptr %call7, null
  br i1 %tobool8.not, label %do.end, label %cond.end.if.then_crit_edge

cond.end.if.then_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

if.then:                                          ; preds = %cond.end.if.then_crit_edge, %entry.if.then_crit_edge
  %cond49 = phi ptr [ %call7, %cond.end.if.then_crit_edge ], [ %call5, %entry.if.then_crit_edge ]
  %11 = ptrtoint ptr %fe_adap to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %fe_adap, align 8
  %call12 = tail call ptr %cond49(ptr noundef %12, ptr noundef %call, ptr noundef getelementptr inbounds ([2 x { { i32, i8, i8, i8, i16 }, ptr, ptr, i32, i32, ptr, i8, i8, i8, i16, i16, i8, i8, i8, i8, i8, ptr, i8, i16, ptr, i8, i8 }], ptr @tfe7090pvr_dib0090_config, i32 0, i32 1, i32 0, i32 0)) #4
  %cmp = icmp eq ptr %call12, null
  br i1 %cmp, label %if.then13, label %if.end19

if.then13:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @__symbol_put(ptr noundef nonnull @.str.179) #4
  br label %cleanup

do.end:                                           ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #6
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.181) #7
  br label %cleanup

if.end19:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %set_gpio = getelementptr inbounds %struct.dib0700_adapter_state, ptr %1, i32 0, i32 2, i32 4
  %13 = ptrtoint ptr %set_gpio to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %set_gpio, align 4
  %15 = ptrtoint ptr %fe_adap to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %fe_adap, align 8
  %call24 = tail call i32 %14(ptr noundef %16, i8 noundef zeroext 8, i8 noundef zeroext 0, i8 noundef zeroext 1) #4
  %17 = ptrtoint ptr %fe_adap to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %fe_adap, align 8
  %set_params = getelementptr inbounds %struct.dvb_frontend, ptr %18, i32 0, i32 1, i32 32, i32 6
  %19 = ptrtoint ptr %set_params to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %set_params, align 4
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %20, ptr %1, align 4
  %22 = load ptr, ptr %fe_adap, align 8
  %set_params33 = getelementptr inbounds %struct.dvb_frontend, ptr %22, i32 0, i32 1, i32 32, i32 6
  %23 = ptrtoint ptr %set_params33 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @dib7090_agc_startup, ptr %set_params33, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %do.end, %if.then13
  %retval.0 = phi i32 [ 0, %if.end19 ], [ -19, %if.then13 ], [ -19, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pctv340e_frontend_attach(ptr nocapture noundef %adap) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adap, align 8
  %priv = getelementptr inbounds %struct.dvb_usb_device, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 8
  %priv1 = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 12
  %4 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv1, align 8
  %call = tail call ptr @__symbol_get(ptr noundef nonnull @.str.78) #4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %cond.end, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

cond.end:                                         ; preds = %entry
  %call2 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.79) #4
  %call3 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.78) #4
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %do.end, label %cond.end.if.then_crit_edge

cond.end.if.then_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

if.then:                                          ; preds = %cond.end.if.then_crit_edge, %entry.if.then_crit_edge
  %cond63 = phi ptr [ %call3, %cond.end.if.then_crit_edge ], [ %call, %entry.if.then_crit_edge ]
  %dib7000p_ops = getelementptr inbounds %struct.dib0700_adapter_state, ptr %5, i32 0, i32 2
  %call5 = tail call ptr %cond63(ptr noundef %dib7000p_ops) #4
  %cmp = icmp eq ptr %call5, null
  br i1 %cmp, label %if.then6, label %if.end12

if.then6:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @__symbol_put(ptr noundef nonnull @.str.78) #4
  br label %cleanup

do.end:                                           ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #6
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.80) #7
  br label %cleanup

if.end12:                                         ; preds = %if.then
  %6 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %adap, align 8
  %call14 = tail call i32 @dib0700_set_gpio(ptr noundef %7, i32 noundef 8, i8 noundef zeroext 1, i8 noundef zeroext 0) #4
  tail call void @msleep(i32 noundef 50) #4
  %8 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %adap, align 8
  %call16 = tail call i32 @dib0700_set_gpio(ptr noundef %9, i32 noundef 8, i8 noundef zeroext 1, i8 noundef zeroext 1) #4
  tail call void @msleep(i32 noundef 100) #4
  %10 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %adap, align 8
  %call18 = tail call i32 @dib0700_set_gpio(ptr noundef %11, i32 noundef 15, i8 noundef zeroext 1, i8 noundef zeroext 0) #4
  tail call void @msleep(i32 noundef 1) #4
  %12 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %adap, align 8
  %call20 = tail call i32 @dib0700_set_gpio(ptr noundef %13, i32 noundef 15, i8 noundef zeroext 1, i8 noundef zeroext 1) #4
  %14 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %adap, align 8
  %call22 = tail call i32 @dib0700_set_gpio(ptr noundef %15, i32 noundef 11, i8 noundef zeroext 1, i8 noundef zeroext 1) #4
  %16 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %adap, align 8
  %call24 = tail call i32 @dib0700_set_gpio(ptr noundef %17, i32 noundef 3, i8 noundef zeroext 1, i8 noundef zeroext 1) #4
  %18 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %adap, align 8
  %call26 = tail call i32 @dib0700_ctrl_clock(ptr noundef %19, i32 noundef 72, i8 noundef zeroext 1) #4
  tail call void @msleep(i32 noundef 500) #4
  %dib7000pc_detection = getelementptr inbounds %struct.dib0700_adapter_state, ptr %5, i32 0, i32 2, i32 6
  %20 = ptrtoint ptr %dib7000pc_detection to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dib7000pc_detection, align 4
  %22 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %adap, align 8
  %i2c_adap = getelementptr inbounds %struct.dvb_usb_device, ptr %23, i32 0, i32 8
  %call29 = tail call i32 %21(ptr noundef %i2c_adap) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %cmp30 = icmp eq i32 %call29, 0
  br i1 %cmp30, label %if.then31, label %if.end33

if.then31:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #6
  %24 = ptrtoint ptr %dib7000p_ops to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dib7000p_ops, align 4
  tail call void @symbol_put_addr(ptr noundef %25) #4
  br label %cleanup

if.end33:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #6
  %init = getelementptr inbounds %struct.dib0700_adapter_state, ptr %5, i32 0, i32 2, i32 15
  %26 = ptrtoint ptr %init to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %init, align 4
  %28 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %adap, align 8
  %i2c_adap36 = getelementptr inbounds %struct.dvb_usb_device, ptr %29, i32 0, i32 8
  %call37 = tail call ptr %27(ptr noundef %i2c_adap36, i8 noundef zeroext 18, ptr noundef nonnull @pctv_340e_config) #4
  %fe_adap = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 9
  %30 = ptrtoint ptr %fe_adap to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call37, ptr %fe_adap, align 8
  %is_dib7000pc = getelementptr inbounds %struct.dib0700_state, ptr %3, i32 0, i32 4
  %31 = ptrtoint ptr %is_dib7000pc to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 1, ptr %is_dib7000pc, align 4
  %32 = load ptr, ptr %fe_adap, align 8
  %cmp41 = icmp eq ptr %32, null
  %cond42 = select i1 %cmp41, i32 -19, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end33, %if.then31, %do.end, %if.then6
  %retval.0 = phi i32 [ -19, %if.then31 ], [ %cond42, %if.end33 ], [ -19, %if.then6 ], [ -19, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xc4000_tuner_attach(ptr nocapture noundef readonly %adap) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 12
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %get_i2c_master = getelementptr inbounds %struct.dib0700_adapter_state, ptr %1, i32 0, i32 2, i32 7
  %2 = ptrtoint ptr %get_i2c_master to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %get_i2c_master, align 4
  %fe_adap = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 9
  %4 = ptrtoint ptr %fe_adap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fe_adap, align 8
  %call = tail call ptr %3(ptr noundef %5, i32 noundef 0, i32 noundef 1) #4
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.279) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %fe_adap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fe_adap, align 8
  %callback = getelementptr inbounds %struct.dvb_frontend, ptr %7, i32 0, i32 9
  %8 = ptrtoint ptr %callback to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @dib0700_xc4000_tuner_callback, ptr %callback, align 4
  %call5 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.281) #4
  %tobool.not = icmp eq ptr %call5, null
  br i1 %tobool.not, label %cond.end, label %if.end.if.then9_crit_edge

if.end.if.then9_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then9

cond.end:                                         ; preds = %if.end
  %call6 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.282) #4
  %call7 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.281) #4
  %tobool8.not = icmp eq ptr %call7, null
  br i1 %tobool8.not, label %do.end19, label %cond.end.if.then9_crit_edge

cond.end.if.then9_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then9

if.then9:                                         ; preds = %cond.end.if.then9_crit_edge, %if.end.if.then9_crit_edge
  %cond35 = phi ptr [ %call7, %cond.end.if.then9_crit_edge ], [ %call5, %if.end.if.then9_crit_edge ]
  %9 = ptrtoint ptr %fe_adap to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %fe_adap, align 8
  %call13 = tail call ptr %cond35(ptr noundef %10, ptr noundef nonnull %call, ptr noundef nonnull @dib7000p_xc4000_tunerconfig) #4
  %cmp14 = icmp eq ptr %call13, null
  br i1 %cmp14, label %if.then15, label %if.then9.if.end22_crit_edge

if.then9.if.end22_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end22

if.then15:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @__symbol_put(ptr noundef nonnull @.str.281) #4
  br label %if.end22

do.end19:                                         ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #6
  %call21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.284) #7
  br label %if.end22

if.end22:                                         ; preds = %do.end19, %if.then15, %if.then9.if.end22_crit_edge
  %__r.0 = phi ptr [ null, %if.then15 ], [ %call13, %if.then9.if.end22_crit_edge ], [ null, %do.end19 ]
  %cmp24 = icmp eq ptr %__r.0, null
  %cond25 = select i1 %cmp24, i32 -19, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %do.end
  %retval.0 = phi i32 [ 0, %do.end ], [ %cond25, %if.end22 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tfe7790p_frontend_attach(ptr nocapture noundef %adap) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adap, align 8
  %priv = getelementptr inbounds %struct.dvb_usb_device, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 8
  %priv1 = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 12
  %4 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv1, align 8
  %call = tail call ptr @__symbol_get(ptr noundef nonnull @.str.78) #4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %cond.end, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

cond.end:                                         ; preds = %entry
  %call2 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.79) #4
  %call3 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.78) #4
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %do.end, label %cond.end.if.then_crit_edge

cond.end.if.then_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

if.then:                                          ; preds = %cond.end.if.then_crit_edge, %entry.if.then_crit_edge
  %cond71 = phi ptr [ %call3, %cond.end.if.then_crit_edge ], [ %call, %entry.if.then_crit_edge ]
  %dib7000p_ops = getelementptr inbounds %struct.dib0700_adapter_state, ptr %5, i32 0, i32 2
  %call5 = tail call ptr %cond71(ptr noundef %dib7000p_ops) #4
  %cmp = icmp eq ptr %call5, null
  br i1 %cmp, label %if.then6, label %if.end12

if.then6:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @__symbol_put(ptr noundef nonnull @.str.78) #4
  br label %cleanup

do.end:                                           ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #6
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.80) #7
  br label %cleanup

if.end12:                                         ; preds = %if.then
  %disable_streaming_master_mode = getelementptr inbounds %struct.dib0700_state, ptr %3, i32 0, i32 6
  %6 = ptrtoint ptr %disable_streaming_master_mode to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %disable_streaming_master_mode, align 2
  %7 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %adap, align 8
  %call14 = tail call i32 @dib0700_set_gpio(ptr noundef %8, i32 noundef 8, i8 noundef zeroext 1, i8 noundef zeroext 1) #4
  tail call void @msleep(i32 noundef 20) #4
  %9 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %adap, align 8
  %call16 = tail call i32 @dib0700_set_gpio(ptr noundef %10, i32 noundef 14, i8 noundef zeroext 1, i8 noundef zeroext 1) #4
  %11 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %adap, align 8
  %call18 = tail call i32 @dib0700_set_gpio(ptr noundef %12, i32 noundef 5, i8 noundef zeroext 1, i8 noundef zeroext 1) #4
  %13 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %adap, align 8
  %call20 = tail call i32 @dib0700_set_gpio(ptr noundef %14, i32 noundef 10, i8 noundef zeroext 1, i8 noundef zeroext 1) #4
  %15 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %adap, align 8
  %call22 = tail call i32 @dib0700_set_gpio(ptr noundef %16, i32 noundef 15, i8 noundef zeroext 1, i8 noundef zeroext 0) #4
  tail call void @msleep(i32 noundef 20) #4
  %17 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %adap, align 8
  %call24 = tail call i32 @dib0700_ctrl_clock(ptr noundef %18, i32 noundef 72, i8 noundef zeroext 1) #4
  %19 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %adap, align 8
  %call26 = tail call i32 @dib0700_set_gpio(ptr noundef %20, i32 noundef 15, i8 noundef zeroext 1, i8 noundef zeroext 1) #4
  tail call void @msleep(i32 noundef 20) #4
  %21 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %adap, align 8
  %call28 = tail call i32 @dib0700_set_gpio(ptr noundef %22, i32 noundef 0, i8 noundef zeroext 1, i8 noundef zeroext 1) #4
  %i2c_enumeration = getelementptr inbounds %struct.dib0700_adapter_state, ptr %5, i32 0, i32 2, i32 10
  %23 = ptrtoint ptr %i2c_enumeration to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %i2c_enumeration, align 4
  %25 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %adap, align 8
  %i2c_adap = getelementptr inbounds %struct.dvb_usb_device, ptr %26, i32 0, i32 8
  %call31 = tail call i32 %24(ptr noundef %i2c_adap, i32 noundef 1, i8 noundef zeroext 16, ptr noundef nonnull @tfe7790p_dib7000p_config) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %cmp32.not = icmp eq i32 %call31, 0
  br i1 %cmp32.not, label %if.end40, label %do.end36

do.end36:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #6
  %call38 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.101, ptr noundef nonnull @.str.288) #7
  %27 = ptrtoint ptr %dib7000p_ops to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dib7000p_ops, align 4
  tail call void @symbol_put_addr(ptr noundef %28) #4
  br label %cleanup

if.end40:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #6
  %init = getelementptr inbounds %struct.dib0700_adapter_state, ptr %5, i32 0, i32 2, i32 15
  %29 = ptrtoint ptr %init to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %init, align 4
  %31 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %adap, align 8
  %i2c_adap43 = getelementptr inbounds %struct.dvb_usb_device, ptr %32, i32 0, i32 8
  %call44 = tail call ptr %30(ptr noundef %i2c_adap43, i8 noundef zeroext -128, ptr noundef nonnull @tfe7790p_dib7000p_config) #4
  %fe_adap = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 9
  %33 = ptrtoint ptr %fe_adap to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call44, ptr %fe_adap, align 8
  %cmp48 = icmp eq ptr %call44, null
  %cond49 = select i1 %cmp48, i32 -19, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end40, %do.end36, %do.end, %if.then6
  %retval.0 = phi i32 [ -19, %do.end36 ], [ %cond49, %if.end40 ], [ -19, %if.then6 ], [ -19, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tfe7790p_tuner_attach(ptr nocapture noundef readonly %adap) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 12
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %get_i2c_tuner = getelementptr inbounds %struct.dib0700_adapter_state, ptr %1, i32 0, i32 2, i32 11
  %2 = ptrtoint ptr %get_i2c_tuner to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %get_i2c_tuner, align 4
  %fe_adap = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 9
  %4 = ptrtoint ptr %fe_adap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fe_adap, align 8
  %call = tail call ptr %3(ptr noundef %5) #4
  %tuner_sleep = getelementptr inbounds %struct.dib0700_adapter_state, ptr %1, i32 0, i32 2, i32 12
  %6 = ptrtoint ptr %tuner_sleep to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tuner_sleep, align 4
  store ptr %7, ptr getelementptr inbounds ({ { i32, i8, i8, i8, i16 }, ptr, ptr, i32, i32, ptr, i8, i8, i8, i16, i16, i8, i8, i8, i8, i8, ptr, i8, i16, ptr, i8, i8 }, ptr @tfe7790p_dib0090_config, i32 0, i32 1), align 4
  store ptr %7, ptr getelementptr inbounds ({ { i32, i8, i8, i8, i16 }, ptr, ptr, i32, i32, ptr, i8, i8, i8, i16, i16, i8, i8, i8, i8, i8, ptr, i8, i16, ptr, i8, i8 }, ptr @tfe7790p_dib0090_config, i32 0, i32 2), align 4
  %get_adc_power = getelementptr inbounds %struct.dib0700_adapter_state, ptr %1, i32 0, i32 2, i32 13
  %8 = ptrtoint ptr %get_adc_power to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %get_adc_power, align 4
  store ptr %9, ptr getelementptr inbounds ({ { i32, i8, i8, i8, i16 }, ptr, ptr, i32, i32, ptr, i8, i8, i8, i16, i16, i8, i8, i8, i8, i8, ptr, i8, i16, ptr, i8, i8 }, ptr @tfe7790p_dib0090_config, i32 0, i32 5), align 4
  %call5 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.179) #4
  %tobool.not = icmp eq ptr %call5, null
  br i1 %tobool.not, label %cond.end, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

cond.end:                                         ; preds = %entry
  %call6 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.180) #4
  %call7 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.179) #4
  %tobool8.not = icmp eq ptr %call7, null
  br i1 %tobool8.not, label %do.end, label %cond.end.if.then_crit_edge

cond.end.if.then_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

if.then:                                          ; preds = %cond.end.if.then_crit_edge, %entry.if.then_crit_edge
  %cond49 = phi ptr [ %call7, %cond.end.if.then_crit_edge ], [ %call5, %entry.if.then_crit_edge ]
  %10 = ptrtoint ptr %fe_adap to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %fe_adap, align 8
  %call12 = tail call ptr %cond49(ptr noundef %11, ptr noundef %call, ptr noundef nonnull @tfe7790p_dib0090_config) #4
  %cmp = icmp eq ptr %call12, null
  br i1 %cmp, label %if.then13, label %if.end19

if.then13:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @__symbol_put(ptr noundef nonnull @.str.179) #4
  br label %cleanup

do.end:                                           ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #6
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.181) #7
  br label %cleanup

if.end19:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %set_gpio = getelementptr inbounds %struct.dib0700_adapter_state, ptr %1, i32 0, i32 2, i32 4
  %12 = ptrtoint ptr %set_gpio to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %set_gpio, align 4
  %14 = ptrtoint ptr %fe_adap to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %fe_adap, align 8
  %call24 = tail call i32 %13(ptr noundef %15, i8 noundef zeroext 8, i8 noundef zeroext 0, i8 noundef zeroext 1) #4
  %16 = ptrtoint ptr %fe_adap to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %fe_adap, align 8
  %set_params = getelementptr inbounds %struct.dvb_frontend, ptr %17, i32 0, i32 1, i32 32, i32 6
  %18 = ptrtoint ptr %set_params to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %set_params, align 4
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %19, ptr %1, align 4
  %21 = load ptr, ptr %fe_adap, align 8
  %set_params33 = getelementptr inbounds %struct.dvb_frontend, ptr %21, i32 0, i32 1, i32 32, i32 6
  %22 = ptrtoint ptr %set_params33 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @dib7090_agc_startup, ptr %set_params33, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %do.end, %if.then13
  %retval.0 = phi i32 [ 0, %if.end19 ], [ -19, %if.then13 ], [ -19, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tfe8096p_frontend_attach(ptr nocapture noundef %adap) #1 align 64 {
entry:
  %fw_version = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adap, align 8
  %priv = getelementptr inbounds %struct.dvb_usb_device, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fw_version) #4
  %4 = ptrtoint ptr %fw_version to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %fw_version, align 4, !annotation !751
  %priv1 = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 12
  %5 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %priv1, align 8
  %call = tail call ptr @__symbol_get(ptr noundef nonnull @.str.165) #4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %cond.end, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

cond.end:                                         ; preds = %entry
  %call2 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.166) #4
  %call3 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.165) #4
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %do.end, label %cond.end.if.then_crit_edge

cond.end.if.then_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

if.then:                                          ; preds = %cond.end.if.then_crit_edge, %entry.if.then_crit_edge
  %cond68 = phi ptr [ %call3, %cond.end.if.then_crit_edge ], [ %call, %entry.if.then_crit_edge ]
  %dib8000_ops = getelementptr inbounds %struct.dib0700_adapter_state, ptr %6, i32 0, i32 3
  %call5 = tail call ptr %cond68(ptr noundef %dib8000_ops) #4
  %cmp = icmp eq ptr %call5, null
  br i1 %cmp, label %if.then6, label %if.end12

if.then6:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @__symbol_put(ptr noundef nonnull @.str.165) #4
  br label %cleanup

do.end:                                           ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #6
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.167) #7
  br label %cleanup

if.end12:                                         ; preds = %if.then
  %7 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %adap, align 8
  %call14 = call i32 @dib0700_get_version(ptr noundef %8, ptr noundef null, ptr noundef null, ptr noundef nonnull %fw_version, ptr noundef null) #4
  %9 = ptrtoint ptr %fw_version to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %fw_version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 66047, i32 %10)
  %cmp15 = icmp ugt i32 %10, 66047
  br i1 %cmp15, label %if.then16, label %if.end12.if.end17_crit_edge

if.end12.if.end17_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end17

if.then16:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #6
  %fw_use_new_i2c_api = getelementptr inbounds %struct.dib0700_state, ptr %3, i32 0, i32 5
  %11 = ptrtoint ptr %fw_use_new_i2c_api to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %fw_use_new_i2c_api, align 1
  br label %if.end17

if.end17:                                         ; preds = %if.then16, %if.end12.if.end17_crit_edge
  %12 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %adap, align 8
  %call19 = call i32 @dib0700_set_gpio(ptr noundef %13, i32 noundef 8, i8 noundef zeroext 1, i8 noundef zeroext 1) #4
  call void @msleep(i32 noundef 20) #4
  %14 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %adap, align 8
  %call21 = call i32 @dib0700_set_gpio(ptr noundef %15, i32 noundef 14, i8 noundef zeroext 1, i8 noundef zeroext 1) #4
  %16 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %adap, align 8
  %call23 = call i32 @dib0700_set_gpio(ptr noundef %17, i32 noundef 5, i8 noundef zeroext 1, i8 noundef zeroext 1) #4
  %18 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %adap, align 8
  %call25 = call i32 @dib0700_set_gpio(ptr noundef %19, i32 noundef 10, i8 noundef zeroext 1, i8 noundef zeroext 1) #4
  %20 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %adap, align 8
  %call27 = call i32 @dib0700_set_gpio(ptr noundef %21, i32 noundef 15, i8 noundef zeroext 1, i8 noundef zeroext 0) #4
  %22 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %adap, align 8
  %call29 = call i32 @dib0700_ctrl_clock(ptr noundef %23, i32 noundef 72, i8 noundef zeroext 1) #4
  call void @msleep(i32 noundef 20) #4
  %24 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %adap, align 8
  %call31 = call i32 @dib0700_set_gpio(ptr noundef %25, i32 noundef 15, i8 noundef zeroext 1, i8 noundef zeroext 1) #4
  call void @msleep(i32 noundef 20) #4
  %26 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %adap, align 8
  %call33 = call i32 @dib0700_set_gpio(ptr noundef %27, i32 noundef 0, i8 noundef zeroext 1, i8 noundef zeroext 1) #4
  %i2c_enumeration = getelementptr inbounds %struct.dib0700_adapter_state, ptr %6, i32 0, i32 3, i32 13
  %28 = ptrtoint ptr %i2c_enumeration to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %i2c_enumeration, align 4
  %30 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %adap, align 8
  %i2c_adap = getelementptr inbounds %struct.dvb_usb_device, ptr %31, i32 0, i32 8
  %call36 = call i32 %29(ptr noundef %i2c_adap, i32 noundef 1, i8 noundef zeroext 16, i8 noundef zeroext -128, i8 noundef zeroext 1) #4
  %init = getelementptr inbounds %struct.dib0700_adapter_state, ptr %6, i32 0, i32 3, i32 17
  %32 = ptrtoint ptr %init to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %init, align 4
  %34 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %adap, align 8
  %i2c_adap39 = getelementptr inbounds %struct.dvb_usb_device, ptr %35, i32 0, i32 8
  %call40 = call ptr %33(ptr noundef %i2c_adap39, i8 noundef zeroext -128, ptr noundef nonnull @tfe8096p_dib8000_config) #4
  %fe_adap = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 9
  %36 = ptrtoint ptr %fe_adap to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call40, ptr %fe_adap, align 8
  %cmp44 = icmp eq ptr %call40, null
  %cond45 = select i1 %cmp44, i32 -19, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %do.end, %if.then6
  %retval.0 = phi i32 [ %cond45, %if.end17 ], [ -19, %if.then6 ], [ -19, %do.end ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw_version) #4
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tfe8096p_tuner_attach(ptr nocapture noundef readonly %adap) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 12
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %get_i2c_tuner = getelementptr inbounds %struct.dib0700_adapter_state, ptr %1, i32 0, i32 3, i32 4
  %2 = ptrtoint ptr %get_i2c_tuner to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %get_i2c_tuner, align 4
  %fe_adap = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 9
  %4 = ptrtoint ptr %fe_adap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fe_adap, align 8
  %call = tail call ptr %3(ptr noundef %5) #4
  %tuner_sleep = getelementptr inbounds %struct.dib0700_adapter_state, ptr %1, i32 0, i32 3, i32 5
  %6 = ptrtoint ptr %tuner_sleep to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tuner_sleep, align 4
  store ptr %7, ptr getelementptr inbounds ({ { i32, i8, i8, i8, i16 }, ptr, ptr, i32, i32, ptr, i8, i8, i8, i16, i16, i8, i8, i8, i8, i8, ptr, i8, i16, ptr, i8, i8 }, ptr @tfe8096p_dib0090_config, i32 0, i32 1), align 4
  store ptr %7, ptr getelementptr inbounds ({ { i32, i8, i8, i8, i16 }, ptr, ptr, i32, i32, ptr, i8, i8, i8, i16, i16, i8, i8, i8, i8, i8, ptr, i8, i16, ptr, i8, i8 }, ptr @tfe8096p_dib0090_config, i32 0, i32 2), align 4
  store ptr @dib8096p_wbd_table, ptr getelementptr inbounds ({ { i32, i8, i8, i8, i16 }, ptr, ptr, i32, i32, ptr, i8, i8, i8, i16, i16, i8, i8, i8, i8, i8, ptr, i8, i16, ptr, i8, i8 }, ptr @tfe8096p_dib0090_config, i32 0, i32 19), align 4
  %call4 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.179) #4
  %tobool.not = icmp eq ptr %call4, null
  br i1 %tobool.not, label %cond.end, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

cond.end:                                         ; preds = %entry
  %call5 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.180) #4
  %call6 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.179) #4
  %tobool7.not = icmp eq ptr %call6, null
  br i1 %tobool7.not, label %do.end, label %cond.end.if.then_crit_edge

cond.end.if.then_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

if.then:                                          ; preds = %cond.end.if.then_crit_edge, %entry.if.then_crit_edge
  %cond47 = phi ptr [ %call6, %cond.end.if.then_crit_edge ], [ %call4, %entry.if.then_crit_edge ]
  %8 = ptrtoint ptr %fe_adap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fe_adap, align 8
  %call11 = tail call ptr %cond47(ptr noundef %9, ptr noundef %call, ptr noundef nonnull @tfe8096p_dib0090_config) #4
  %cmp = icmp eq ptr %call11, null
  br i1 %cmp, label %if.then12, label %if.end18

if.then12:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @__symbol_put(ptr noundef nonnull @.str.179) #4
  br label %cleanup

do.end:                                           ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #6
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.181) #7
  br label %cleanup

if.end18:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %set_gpio = getelementptr inbounds %struct.dib0700_adapter_state, ptr %1, i32 0, i32 3, i32 2
  %10 = ptrtoint ptr %set_gpio to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %set_gpio, align 4
  %12 = ptrtoint ptr %fe_adap to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %fe_adap, align 8
  %call23 = tail call i32 %11(ptr noundef %13, i8 noundef zeroext 8, i8 noundef zeroext 0, i8 noundef zeroext 1) #4
  %14 = ptrtoint ptr %fe_adap to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %fe_adap, align 8
  %set_params = getelementptr inbounds %struct.dvb_frontend, ptr %15, i32 0, i32 1, i32 32, i32 6
  %16 = ptrtoint ptr %set_params to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %set_params, align 4
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %17, ptr %1, align 4
  %19 = load ptr, ptr %fe_adap, align 8
  %set_params32 = getelementptr inbounds %struct.dvb_frontend, ptr %19, i32 0, i32 1, i32 32, i32 6
  %20 = ptrtoint ptr %set_params32 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @dib8096p_agc_startup, ptr %set_params32, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %do.end, %if.then12
  %retval.0 = phi i32 [ 0, %if.end18 ], [ -19, %if.then12 ], [ -19, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stk809x_frontend1_attach(ptr nocapture noundef %adap) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 12
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %call = tail call ptr @__symbol_get(ptr noundef nonnull @.str.165) #4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %cond.end, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

cond.end:                                         ; preds = %entry
  %call1 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.166) #4
  %call2 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.165) #4
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %do.end, label %cond.end.if.then_crit_edge

cond.end.if.then_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

if.then:                                          ; preds = %cond.end.if.then_crit_edge, %entry.if.then_crit_edge
  %cond33 = phi ptr [ %call2, %cond.end.if.then_crit_edge ], [ %call, %entry.if.then_crit_edge ]
  %dib8000_ops = getelementptr inbounds %struct.dib0700_adapter_state, ptr %1, i32 0, i32 3
  %call4 = tail call ptr %cond33(ptr noundef %dib8000_ops) #4
  %cmp = icmp eq ptr %call4, null
  br i1 %cmp, label %if.then5, label %if.end11

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @__symbol_put(ptr noundef nonnull @.str.165) #4
  br label %cleanup

do.end:                                           ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #6
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.167) #7
  br label %cleanup

if.end11:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %i2c_enumeration = getelementptr inbounds %struct.dib0700_adapter_state, ptr %1, i32 0, i32 3, i32 13
  %2 = ptrtoint ptr %i2c_enumeration to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i2c_enumeration, align 4
  %4 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %adap, align 8
  %i2c_adap = getelementptr inbounds %struct.dvb_usb_device, ptr %5, i32 0, i32 8
  %call13 = tail call i32 %3(ptr noundef %i2c_adap, i32 noundef 1, i8 noundef zeroext 16, i8 noundef zeroext -126, i8 noundef zeroext 0) #4
  %init = getelementptr inbounds %struct.dib0700_adapter_state, ptr %1, i32 0, i32 3, i32 17
  %6 = ptrtoint ptr %init to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %init, align 4
  %8 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %adap, align 8
  %i2c_adap16 = getelementptr inbounds %struct.dvb_usb_device, ptr %9, i32 0, i32 8
  %call17 = tail call ptr %7(ptr noundef %i2c_adap16, i8 noundef zeroext -126, ptr noundef getelementptr inbounds ([2 x %struct.dib8000_config], ptr @dib809x_dib8000_config, i32 0, i32 1)) #4
  %fe_adap = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 9
  %10 = ptrtoint ptr %fe_adap to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call17, ptr %fe_adap, align 8
  %cmp21 = icmp eq ptr %call17, null
  %cond22 = select i1 %cmp21, i32 -19, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %do.end, %if.then5
  %retval.0 = phi i32 [ %cond22, %if.end11 ], [ -19, %if.then5 ], [ -19, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xbox_one_attach(ptr noundef %adap) #1 align 64 {
entry:
  %mn88472_config = alloca %struct.mn88472_config, align 4
  %tda18250_config = alloca %struct.tda18250_config, align 4
  %info = alloca %struct.i2c_board_info, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adap, align 8
  %priv = getelementptr inbounds %struct.dvb_usb_device, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %mn88472_config) #4
  %4 = getelementptr inbounds i8, ptr %mn88472_config, i32 12
  %5 = call ptr @memset(ptr %4, i32 0, i32 12)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %tda18250_config) #4
  %6 = call ptr @memset(ptr %tda18250_config, i32 255, i32 24)
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %info) #4
  %fw_use_new_i2c_api = getelementptr inbounds %struct.dib0700_state, ptr %3, i32 0, i32 5
  %7 = ptrtoint ptr %fw_use_new_i2c_api to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %fw_use_new_i2c_api, align 1
  %disable_streaming_master_mode = getelementptr inbounds %struct.dib0700_state, ptr %3, i32 0, i32 6
  %8 = ptrtoint ptr %disable_streaming_master_mode to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %disable_streaming_master_mode, align 2
  %9 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %adap, align 8
  %call = tail call i32 @dib0700_set_gpio(ptr noundef %10, i32 noundef 8, i8 noundef zeroext 1, i8 noundef zeroext 0) #4
  tail call void @msleep(i32 noundef 30) #4
  %11 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %adap, align 8
  %call4 = tail call i32 @dib0700_set_gpio(ptr noundef %12, i32 noundef 8, i8 noundef zeroext 1, i8 noundef zeroext 1) #4
  tail call void @msleep(i32 noundef 30) #4
  %13 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %adap, align 8
  %call6 = tail call i32 @dib0700_set_gpio(ptr noundef %14, i32 noundef 15, i8 noundef zeroext 1, i8 noundef zeroext 1) #4
  tail call void @msleep(i32 noundef 30) #4
  %15 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %adap, align 8
  %call8 = tail call i32 @dib0700_set_gpio(ptr noundef %16, i32 noundef 15, i8 noundef zeroext 1, i8 noundef zeroext 0) #4
  tail call void @msleep(i32 noundef 30) #4
  %17 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %adap, align 8
  %call10 = tail call i32 @dib0700_set_gpio(ptr noundef %18, i32 noundef 15, i8 noundef zeroext 1, i8 noundef zeroext 1) #4
  tail call void @msleep(i32 noundef 30) #4
  %fe_adap = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 9
  %fe11 = getelementptr inbounds %struct.mn88472_config, ptr %mn88472_config, i32 0, i32 4
  %19 = ptrtoint ptr %fe11 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %fe_adap, ptr %fe11, align 4
  %i2c_wr_max = getelementptr inbounds %struct.mn88472_config, ptr %mn88472_config, i32 0, i32 3
  %20 = ptrtoint ptr %i2c_wr_max to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 22, ptr %i2c_wr_max, align 4
  %21 = ptrtoint ptr %mn88472_config to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 20500000, ptr %mn88472_config, align 4
  %ts_mode = getelementptr inbounds %struct.mn88472_config, ptr %mn88472_config, i32 0, i32 1
  %22 = ptrtoint ptr %ts_mode to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 1, ptr %ts_mode, align 4
  %ts_clock = getelementptr inbounds %struct.mn88472_config, ptr %mn88472_config, i32 0, i32 2
  %23 = ptrtoint ptr %ts_clock to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %ts_clock, align 4
  %24 = call ptr @memset(ptr %info, i32 0, i32 56)
  %call12 = call i32 @strscpy(ptr noundef nonnull %info, ptr noundef nonnull @.str.304, i32 noundef 20) #4
  %addr = getelementptr inbounds %struct.i2c_board_info, ptr %info, i32 0, i32 2
  %25 = ptrtoint ptr %addr to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 24, ptr %addr, align 2
  %platform_data = getelementptr inbounds %struct.i2c_board_info, ptr %info, i32 0, i32 4
  %26 = ptrtoint ptr %platform_data to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %mn88472_config, ptr %platform_data, align 4
  %call15 = call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull %info) #4
  %i2c_adap = getelementptr inbounds %struct.dvb_usb_device, ptr %1, i32 0, i32 8
  %call16 = call ptr @i2c_new_client_device(ptr noundef %i2c_adap, ptr noundef nonnull %info) #4
  %tobool.not.i.i = icmp eq ptr %call16, null
  %cmp.i.i = icmp ugt ptr %call16, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i = or i1 %tobool.not.i.i, %cmp.i.i
  br i1 %spec.select.i.i, label %entry.cleanup_crit_edge, label %i2c_client_has_driver.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

i2c_client_has_driver.exit:                       ; preds = %entry
  %driver.i = getelementptr inbounds %struct.i2c_client, ptr %call16, i32 0, i32 4, i32 6
  %27 = ptrtoint ptr %driver.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %driver.i, align 4
  %tobool.i.not = icmp eq ptr %28, null
  br i1 %tobool.i.not, label %i2c_client_has_driver.exit.cleanup_crit_edge, label %if.end

i2c_client_has_driver.exit.cleanup_crit_edge:     ; preds = %i2c_client_has_driver.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %i2c_client_has_driver.exit
  %29 = ptrtoint ptr %driver.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %driver.i, align 4
  %owner = getelementptr inbounds %struct.device_driver, ptr %30, i32 0, i32 2
  %31 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %owner, align 4
  %call19 = call zeroext i1 @try_module_get(ptr noundef %32) #4
  br i1 %call19, label %if.end21, label %if.end.fail_demod_module_crit_edge

if.end.fail_demod_module_crit_edge:               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %fail_demod_module

if.end21:                                         ; preds = %if.end
  %i2c_client_demod = getelementptr inbounds %struct.dib0700_state, ptr %3, i32 0, i32 12
  %33 = ptrtoint ptr %i2c_client_demod to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call16, ptr %i2c_client_demod, align 4
  %get_dvb_frontend = getelementptr inbounds %struct.mn88472_config, ptr %mn88472_config, i32 0, i32 5
  %34 = ptrtoint ptr %get_dvb_frontend to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %get_dvb_frontend, align 4
  %call22 = call ptr %35(ptr noundef nonnull %call16) #4
  %36 = ptrtoint ptr %fe_adap to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call22, ptr %fe_adap, align 8
  %37 = getelementptr inbounds i8, ptr %tda18250_config, i32 12
  %38 = call ptr @memset(ptr %37, i32 0, i32 12)
  %39 = ptrtoint ptr %tda18250_config to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 3950, ptr %tda18250_config, align 4
  %if_dvbt_7 = getelementptr inbounds %struct.tda18250_config, ptr %tda18250_config, i32 0, i32 1
  %40 = ptrtoint ptr %if_dvbt_7 to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 4450, ptr %if_dvbt_7, align 2
  %if_dvbt_8 = getelementptr inbounds %struct.tda18250_config, ptr %tda18250_config, i32 0, i32 2
  %41 = ptrtoint ptr %if_dvbt_8 to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 4950, ptr %if_dvbt_8, align 4
  %if_dvbc_6 = getelementptr inbounds %struct.tda18250_config, ptr %tda18250_config, i32 0, i32 3
  %42 = ptrtoint ptr %if_dvbc_6 to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 4950, ptr %if_dvbc_6, align 2
  %if_dvbc_8 = getelementptr inbounds %struct.tda18250_config, ptr %tda18250_config, i32 0, i32 4
  %43 = ptrtoint ptr %if_dvbc_8 to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 4950, ptr %if_dvbc_8, align 4
  %if_atsc = getelementptr inbounds %struct.tda18250_config, ptr %tda18250_config, i32 0, i32 5
  %44 = ptrtoint ptr %if_atsc to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 4079, ptr %if_atsc, align 2
  %loopthrough = getelementptr inbounds %struct.tda18250_config, ptr %tda18250_config, i32 0, i32 7
  %45 = ptrtoint ptr %loopthrough to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 1, ptr %loopthrough, align 1
  %xtal_freq = getelementptr inbounds %struct.tda18250_config, ptr %tda18250_config, i32 0, i32 6
  %46 = ptrtoint ptr %xtal_freq to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 3, ptr %xtal_freq, align 4
  %fe29 = getelementptr inbounds %struct.tda18250_config, ptr %tda18250_config, i32 0, i32 8
  %47 = ptrtoint ptr %fe29 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %call22, ptr %fe29, align 4
  %48 = call ptr @memset(ptr %info, i32 0, i32 56)
  %call32 = call i32 @strscpy(ptr noundef nonnull %info, ptr noundef nonnull @.str.305, i32 noundef 20) #4
  %49 = ptrtoint ptr %addr to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 96, ptr %addr, align 2
  %50 = ptrtoint ptr %platform_data to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %tda18250_config, ptr %platform_data, align 4
  %call37 = call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull %info) #4
  %51 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %adap, align 8
  %i2c_adap39 = getelementptr inbounds %struct.dvb_usb_device, ptr %52, i32 0, i32 8
  %call40 = call ptr @i2c_new_client_device(ptr noundef %i2c_adap39, ptr noundef nonnull %info) #4
  %tobool.not.i.i80 = icmp eq ptr %call40, null
  %cmp.i.i81 = icmp ugt ptr %call40, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i82 = or i1 %tobool.not.i.i80, %cmp.i.i81
  br i1 %spec.select.i.i82, label %if.end21.fail_tuner_device_crit_edge, label %i2c_client_has_driver.exit86

if.end21.fail_tuner_device_crit_edge:             ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #6
  br label %fail_tuner_device

i2c_client_has_driver.exit86:                     ; preds = %if.end21
  %driver.i83 = getelementptr inbounds %struct.i2c_client, ptr %call40, i32 0, i32 4, i32 6
  %53 = ptrtoint ptr %driver.i83 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %driver.i83, align 4
  %tobool.i84.not = icmp eq ptr %54, null
  br i1 %tobool.i84.not, label %i2c_client_has_driver.exit86.fail_tuner_device_crit_edge, label %if.end43

i2c_client_has_driver.exit86.fail_tuner_device_crit_edge: ; preds = %i2c_client_has_driver.exit86
  call void @__sanitizer_cov_trace_pc() #6
  br label %fail_tuner_device

if.end43:                                         ; preds = %i2c_client_has_driver.exit86
  %55 = ptrtoint ptr %driver.i83 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %driver.i83, align 4
  %owner46 = getelementptr inbounds %struct.device_driver, ptr %56, i32 0, i32 2
  %57 = ptrtoint ptr %owner46 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %owner46, align 4
  %call47 = call zeroext i1 @try_module_get(ptr noundef %58) #4
  br i1 %call47, label %if.end49, label %fail_tuner_module

if.end49:                                         ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #6
  %i2c_client_tuner = getelementptr inbounds %struct.dib0700_state, ptr %3, i32 0, i32 13
  %59 = ptrtoint ptr %i2c_client_tuner to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %call40, ptr %i2c_client_tuner, align 4
  br label %cleanup

fail_tuner_module:                                ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #6
  call void @i2c_unregister_device(ptr noundef nonnull %call40) #4
  br label %fail_tuner_device

fail_tuner_device:                                ; preds = %fail_tuner_module, %i2c_client_has_driver.exit86.fail_tuner_device_crit_edge, %if.end21.fail_tuner_device_crit_edge
  %60 = ptrtoint ptr %driver.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %driver.i, align 4
  %owner52 = getelementptr inbounds %struct.device_driver, ptr %61, i32 0, i32 2
  %62 = ptrtoint ptr %owner52 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %owner52, align 4
  call void @module_put(ptr noundef %63) #4
  br label %fail_demod_module

fail_demod_module:                                ; preds = %fail_tuner_device, %if.end.fail_demod_module_crit_edge
  call void @i2c_unregister_device(ptr noundef nonnull %call16) #4
  br label %cleanup

cleanup:                                          ; preds = %fail_demod_module, %if.end49, %i2c_client_has_driver.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end49 ], [ -19, %i2c_client_has_driver.exit.cleanup_crit_edge ], [ -19, %fail_demod_module ], [ -19, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %info) #4
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %tda18250_config) #4
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %mn88472_config) #4
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dib7000m_pid_filter_ctrl(ptr noundef, i8 noundef zeroext) local_unnamed_addr #0

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dib7000m_pid_filter(ptr noundef, i8 noundef zeroext, i16 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__symbol_get(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__request_module(i1 noundef zeroext, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__symbol_put(ptr noundef) local_unnamed_addr #0

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dib0700_set_gpio(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dib0700_ctrl_clock(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dib7000m_get_i2c_master(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dib0700_ctrl_rd(ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef, i8 noundef zeroext) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dib0700_rc_setup(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @rc_repeat(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @rc_keydown(ptr noundef, i32 noundef, i64 noundef, i8 noundef zeroext) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dib3000mc_i2c_enumeration(ptr noundef, i32 noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dib3000mc_get_tuner_i2c_master(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @symbol_put_addr(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dib7070_set_param_override(ptr noundef %fe) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
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
  %priv1 = getelementptr inbounds %struct.dvb_usb_adapter, ptr %3, i32 0, i32 12
  %4 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv1, align 8
  %6 = ptrtoint ptr %dtv_property_cache to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dtv_property_cache, align 4
  %8 = add i32 %7, -170001000
  call void @__sanitizer_cov_trace_const_cmp4(i32 80000000, i32 %8)
  %9 = icmp ult i32 %8, 80000000
  %10 = select i1 %9, i32 950, i32 550
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_dib0700_debug to i32))
  %11 = load i32, ptr @dvb_usb_dib0700_debug, align 4
  %and = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end34_crit_edge, label %do.end

entry.do.end34_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end34

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call = tail call zeroext i16 @dib0070_wbd_offset(ptr noundef %fe) #4
  %conv31 = zext i16 %call to i32
  %add = add nuw nsw i32 %10, %conv31
  %call32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.123, i32 noundef %add) #7
  br label %do.end34

do.end34:                                         ; preds = %do.end, %entry.do.end34_crit_edge
  %dib7000p_ops = getelementptr inbounds %struct.dib0700_adapter_state, ptr %5, i32 0, i32 2
  %12 = ptrtoint ptr %dib7000p_ops to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dib7000p_ops, align 4
  %call36 = tail call zeroext i16 @dib0070_wbd_offset(ptr noundef %fe) #4
  %14 = trunc i32 %10 to i16
  %conv39 = add i16 %call36, %14
  %call40 = tail call i32 %13(ptr noundef %fe, i16 noundef zeroext %conv39) #4
  %15 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %5, align 4
  %call41 = tail call i32 %16(ptr noundef %fe) #4
  ret i32 %call41
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dib7070_tuner_reset(ptr noundef %fe, i32 noundef %onoff) #1 align 64 {
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
  %priv1 = getelementptr inbounds %struct.dvb_usb_adapter, ptr %3, i32 0, i32 12
  %4 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv1, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_dib0700_debug to i32))
  %6 = load i32, ptr @dvb_usb_dib0700_debug, align 4
  %and = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end4_crit_edge, label %do.end

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.119, i32 noundef %onoff) #7
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %set_gpio = getelementptr inbounds %struct.dib0700_adapter_state, ptr %5, i32 0, i32 2, i32 4
  %7 = ptrtoint ptr %set_gpio to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %set_gpio, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %onoff)
  %tobool5.not = icmp eq i32 %onoff, 0
  %conv = zext i1 %tobool5.not to i8
  %call6 = tail call i32 %8(ptr noundef %fe, i8 noundef zeroext 8, i8 noundef zeroext 0, i8 noundef zeroext %conv) #4
  ret i32 %call6
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dib7070_tuner_sleep(ptr noundef %fe, i32 noundef %onoff) #1 align 64 {
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
  %priv1 = getelementptr inbounds %struct.dvb_usb_adapter, ptr %3, i32 0, i32 12
  %4 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv1, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_dib0700_debug to i32))
  %6 = load i32, ptr @dvb_usb_dib0700_debug, align 4
  %and = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end4_crit_edge, label %do.end

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.121, i32 noundef %onoff) #7
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %set_gpio = getelementptr inbounds %struct.dib0700_adapter_state, ptr %5, i32 0, i32 2, i32 4
  %7 = ptrtoint ptr %set_gpio to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %set_gpio, align 4
  %conv = trunc i32 %onoff to i8
  %call5 = tail call i32 %8(ptr noundef %fe, i8 noundef zeroext 9, i8 noundef zeroext 0, i8 noundef zeroext %conv) #4
  ret i32 %call5
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @dib0070_wbd_offset(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @stk7070pd_init(ptr noundef %dev) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @dib0700_set_gpio(ptr noundef %dev, i32 noundef 8, i8 noundef zeroext 1, i8 noundef zeroext 1) #4
  tail call void @msleep(i32 noundef 10) #4
  %call1 = tail call i32 @dib0700_set_gpio(ptr noundef %dev, i32 noundef 14, i8 noundef zeroext 1, i8 noundef zeroext 1) #4
  %call2 = tail call i32 @dib0700_set_gpio(ptr noundef %dev, i32 noundef 5, i8 noundef zeroext 1, i8 noundef zeroext 1) #4
  %call3 = tail call i32 @dib0700_set_gpio(ptr noundef %dev, i32 noundef 10, i8 noundef zeroext 1, i8 noundef zeroext 1) #4
  %call4 = tail call i32 @dib0700_set_gpio(ptr noundef %dev, i32 noundef 15, i8 noundef zeroext 1, i8 noundef zeroext 0) #4
  %call5 = tail call i32 @dib0700_ctrl_clock(ptr noundef %dev, i32 noundef 72, i8 noundef zeroext 1) #4
  tail call void @msleep(i32 noundef 10) #4
  %call6 = tail call i32 @dib0700_set_gpio(ptr noundef %dev, i32 noundef 15, i8 noundef zeroext 1, i8 noundef zeroext 1) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @novatd_read_status_override(ptr noundef %fe, ptr noundef %stat) #1 align 64 {
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
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %priv2 = getelementptr inbounds %struct.dvb_usb_device, ptr %5, i32 0, i32 18
  %6 = ptrtoint ptr %priv2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %priv2, align 8
  %read_status = getelementptr inbounds %struct.dib0700_state, ptr %7, i32 0, i32 9
  %8 = ptrtoint ptr %read_status to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %read_status, align 4
  %call = tail call i32 %9(ptr noundef %fe, ptr noundef %stat) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %id = getelementptr inbounds %struct.dvb_usb_adapter, ptr %3, i32 0, i32 3
  %10 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %cmp = icmp eq i8 %11, 0
  %cond = select i1 %cmp, i32 2, i32 0
  %12 = ptrtoint ptr %stat to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %stat, align 4
  %14 = trunc i32 %13 to i8
  %15 = lshr i8 %14, 4
  %16 = and i8 %15, 1
  %call7 = tail call i32 @dib0700_set_gpio(ptr noundef %5, i32 noundef %cond, i8 noundef zeroext 1, i8 noundef zeroext %16) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @novatd_sleep_override(ptr noundef %fe) #1 align 64 {
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
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %priv2 = getelementptr inbounds %struct.dvb_usb_device, ptr %5, i32 0, i32 18
  %6 = ptrtoint ptr %priv2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %priv2, align 8
  %id = getelementptr inbounds %struct.dvb_usb_adapter, ptr %3, i32 0, i32 3
  %8 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp = icmp eq i8 %9, 0
  %cond = select i1 %cmp, i32 2, i32 0
  %call = tail call i32 @dib0700_set_gpio(ptr noundef %5, i32 noundef %cond, i8 noundef zeroext 1, i8 noundef zeroext 0) #4
  %sleep = getelementptr inbounds %struct.dib0700_state, ptr %7, i32 0, i32 10
  %10 = ptrtoint ptr %sleep to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sleep, align 4
  %call4 = tail call i32 %11(ptr noundef %fe) #4
  ret i32 %call4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stk7700ph_xc3028_callback(ptr nocapture noundef readonly %ptr, i32 noundef %component, i32 noundef %command, i32 noundef %arg) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %command to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %command, label %do.end [
    i32 0, label %sw.bb
    i32 1, label %entry.cleanup_crit_edge
    i32 2, label %entry.cleanup_crit_edge14
  ]

entry.cleanup_crit_edge14:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %priv = getelementptr inbounds %struct.dvb_usb_adapter, ptr %ptr, i32 0, i32 12
  %1 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %priv, align 8
  %set_gpio = getelementptr inbounds %struct.dib0700_adapter_state, ptr %2, i32 0, i32 2, i32 4
  %3 = ptrtoint ptr %set_gpio to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %set_gpio, align 4
  %fe_adap = getelementptr inbounds %struct.dvb_usb_adapter, ptr %ptr, i32 0, i32 9
  %5 = ptrtoint ptr %fe_adap to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %fe_adap, align 8
  %call = tail call i32 %4(ptr noundef %6, i8 noundef zeroext 8, i8 noundef zeroext 0, i8 noundef zeroext 0) #4
  tail call void @msleep(i32 noundef 10) #4
  %7 = ptrtoint ptr %set_gpio to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %set_gpio, align 4
  %9 = ptrtoint ptr %fe_adap to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %fe_adap, align 8
  %call6 = tail call i32 %8(ptr noundef %10, i8 noundef zeroext 8, i8 noundef zeroext 0, i8 noundef zeroext 1) #4
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.140, ptr noundef nonnull @.str.141, i32 noundef %command, i32 noundef %arg) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end, %sw.bb, %entry.cleanup_crit_edge, %entry.cleanup_crit_edge14
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %entry.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge14 ], [ 0, %sw.bb ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dib0700_xc5000_tuner_callback(ptr nocapture noundef readonly %priv, i32 noundef %component, i32 noundef %command, i32 noundef %arg) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %command)
  %cmp = icmp eq i32 %command, 0
  br i1 %cmp, label %if.then, label %do.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %call = tail call i32 @dib0700_set_gpio(ptr noundef %1, i32 noundef 2, i8 noundef zeroext 1, i8 noundef zeroext 0) #4
  tail call void @msleep(i32 noundef 10) #4
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 8
  %call2 = tail call i32 @dib0700_set_gpio(ptr noundef %3, i32 noundef 2, i8 noundef zeroext 1, i8 noundef zeroext 1) #4
  tail call void @msleep(i32 noundef 10) #4
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.150, i32 noundef %command) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ -22, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dib7770_set_param_override(ptr noundef %fe) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
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
  %priv1 = getelementptr inbounds %struct.dvb_usb_adapter, ptr %3, i32 0, i32 12
  %4 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv1, align 8
  %6 = ptrtoint ptr %dtv_property_cache to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dtv_property_cache, align 4
  %8 = add i32 %7, -170001000
  call void @__sanitizer_cov_trace_const_cmp4(i32 80000000, i32 %8)
  %9 = icmp ult i32 %8, 80000000
  %set_gpio = getelementptr inbounds %struct.dib0700_adapter_state, ptr %5, i32 0, i32 2, i32 4
  %10 = ptrtoint ptr %set_gpio to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %set_gpio, align 4
  %. = zext i1 %9 to i8
  %.64 = select i1 %9, i32 850, i32 250
  %call = tail call i32 %11(ptr noundef %fe, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext %.) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_dib0700_debug to i32))
  %12 = load i32, ptr @dvb_usb_dib0700_debug, align 4
  %and = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end38_crit_edge, label %do.end

entry.do.end38_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end38

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call34 = tail call zeroext i16 @dib0070_wbd_offset(ptr noundef %fe) #4
  %conv35 = zext i16 %call34 to i32
  %add = add nuw nsw i32 %.64, %conv35
  %call36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.123, i32 noundef %add) #7
  br label %do.end38

do.end38:                                         ; preds = %do.end, %entry.do.end38_crit_edge
  %dib7000p_ops39 = getelementptr inbounds %struct.dib0700_adapter_state, ptr %5, i32 0, i32 2
  %13 = ptrtoint ptr %dib7000p_ops39 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dib7000p_ops39, align 4
  %call41 = tail call zeroext i16 @dib0070_wbd_offset(ptr noundef %fe) #4
  %15 = trunc i32 %.64 to i16
  %conv44 = add i16 %call41, %15
  %call45 = tail call i32 %14(ptr noundef %fe, i16 noundef zeroext %conv44) #4
  %16 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %5, align 4
  %call46 = tail call i32 %17(ptr noundef %fe) #4
  ret i32 %call46
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dib0070_ctrl_agc_filter(ptr noundef, i8 noundef zeroext) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dib807x_set_param_override(ptr noundef %fe) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
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
  %priv1 = getelementptr inbounds %struct.dvb_usb_adapter, ptr %3, i32 0, i32 12
  %4 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv1, align 8
  %call = tail call zeroext i16 @dib0070_wbd_offset(ptr noundef %fe) #4
  %6 = ptrtoint ptr %dtv_property_cache to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dtv_property_cache, align 4
  %8 = add i32 %7, -170001000
  call void @__sanitizer_cov_trace_const_cmp4(i32 80000000, i32 %8)
  %9 = icmp ult i32 %8, 80000000
  %offset.0.v = select i1 %9, i16 750, i16 250
  %offset.0 = add i16 %offset.0.v, %call
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_dib0700_debug to i32))
  %10 = load i32, ptr @dvb_usb_dib0700_debug, align 4
  %and = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end38_crit_edge, label %do.end

entry.do.end38_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end38

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %conv35 = zext i16 %offset.0 to i32
  %call36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.172, i32 noundef %conv35) #7
  br label %do.end38

do.end38:                                         ; preds = %do.end, %entry.do.end38_crit_edge
  %dib8000_ops = getelementptr inbounds %struct.dib0700_adapter_state, ptr %5, i32 0, i32 3
  %11 = ptrtoint ptr %dib8000_ops to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dib8000_ops, align 4
  %call39 = tail call i32 %12(ptr noundef %fe, i16 noundef zeroext %offset.0) #4
  %13 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %5, align 4
  %call40 = tail call i32 %14(ptr noundef %fe) #4
  ret i32 %call40
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dib80xx_tuner_reset(ptr noundef %fe, i32 noundef %onoff) #1 align 64 {
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
  %priv1 = getelementptr inbounds %struct.dvb_usb_adapter, ptr %3, i32 0, i32 12
  %4 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv1, align 8
  %set_gpio = getelementptr inbounds %struct.dib0700_adapter_state, ptr %5, i32 0, i32 3, i32 2
  %6 = ptrtoint ptr %set_gpio to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %set_gpio, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %onoff)
  %tobool.not = icmp eq i32 %onoff, 0
  %conv = zext i1 %tobool.not to i8
  %call = tail call i32 %7(ptr noundef %fe, i8 noundef zeroext 5, i8 noundef zeroext 0, i8 noundef zeroext %conv) #4
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dib80xx_tuner_sleep(ptr noundef %fe, i32 noundef %onoff) #1 align 64 {
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
  %priv1 = getelementptr inbounds %struct.dvb_usb_adapter, ptr %3, i32 0, i32 12
  %4 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv1, align 8
  %set_gpio = getelementptr inbounds %struct.dib0700_adapter_state, ptr %5, i32 0, i32 3, i32 2
  %6 = ptrtoint ptr %set_gpio to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %set_gpio, align 4
  %conv = trunc i32 %onoff to i8
  %call = tail call i32 %7(ptr noundef %fe, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext %conv) #4
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dib8090_agc_control(ptr noundef %fe, i8 noundef zeroext %restart) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_dib0700_debug to i32))
  %0 = load i32, ptr @dvb_usb_dib0700_debug, align 4
  %and = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end2_crit_edge, label %do.end

entry.do.end2_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end2

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %conv = zext i8 %restart to i32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.177, i32 noundef %conv) #7
  br label %do.end2

do.end2:                                          ; preds = %do.end, %entry.do.end2_crit_edge
  tail call void @dib0090_dcc_freq(ptr noundef %fe, i8 noundef zeroext %restart) #4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %restart)
  %cmp = icmp eq i8 %restart, 0
  br i1 %cmp, label %if.then5, label %do.end2.if.end6_crit_edge

do.end2.if.end6_crit_edge:                        ; preds = %do.end2
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end6

if.then5:                                         ; preds = %do.end2
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @dib0090_set_dc_servo(ptr noundef %fe, i8 noundef zeroext 1) #4
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %do.end2.if.end6_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dib0090_dcc_freq(ptr noundef, i8 noundef zeroext) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @dib0090_set_dc_servo(ptr noundef, i8 noundef zeroext) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dib8096_set_param_override(ptr noundef %fe) #1 align 64 {
entry:
  %ltgain = alloca i16, align 2
  %rf_gain_limit = alloca i16, align 2
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
  %priv1 = getelementptr inbounds %struct.dvb_usb_adapter, ptr %3, i32 0, i32 12
  %4 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv1, align 8
  %dtv_property_cache = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8
  %6 = ptrtoint ptr %dtv_property_cache to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dtv_property_cache, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 170001000, i32 %7)
  %cmp = icmp ult i32 %7, 170001000
  br i1 %cmp, label %entry.do.body_crit_edge, label %cond.false7

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body

cond.false7:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 250001000, i32 %7)
  %cmp11 = icmp ult i32 %7, 250001000
  br i1 %cmp11, label %cond.end29.thread243, label %cond.false13

cond.end29.thread243:                             ; preds = %cond.false7
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %ltgain) #4
  %8 = ptrtoint ptr %ltgain to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 -1, ptr %ltgain, align 2, !annotation !751
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %rf_gain_limit) #4
  %9 = ptrtoint ptr %rf_gain_limit to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 -1, ptr %rf_gain_limit, align 2, !annotation !751
  br label %sw.epilog

cond.false13:                                     ; preds = %cond.false7
  call void @__sanitizer_cov_trace_const_cmp4(i32 863001000, i32 %7)
  %cmp17 = icmp ult i32 %7, 863001000
  br i1 %cmp17, label %sw.bb38, label %cond.false19

cond.false19:                                     ; preds = %cond.false13
  call void @__sanitizer_cov_trace_pc() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2000001000, i32 %7)
  %cmp23 = icmp ult i32 %7, 2000001000
  %spec.select = select i1 %cmp23, i32 1, i32 8
  br label %do.body

do.body:                                          ; preds = %cond.false19, %entry.do.body_crit_edge
  %cond30.ph = phi i32 [ 32, %entry.do.body_crit_edge ], [ %spec.select, %cond.false19 ]
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %ltgain) #4
  %10 = ptrtoint ptr %ltgain to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 -1, ptr %ltgain, align 2, !annotation !751
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %rf_gain_limit) #4
  %11 = ptrtoint ptr %rf_gain_limit to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 -1, ptr %rf_gain_limit, align 2, !annotation !751
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_dib0700_debug to i32))
  %12 = load i32, ptr @dvb_usb_dib0700_debug, align 4
  %and = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body.sw.epilog_crit_edge, label %do.end

do.body.sw.epilog_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.184, i32 noundef %7) #7
  br label %sw.epilog

sw.bb38:                                          ; preds = %cond.false13
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %ltgain) #4
  %13 = ptrtoint ptr %ltgain to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 -1, ptr %ltgain, align 2, !annotation !751
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %rf_gain_limit) #4
  %14 = ptrtoint ptr %rf_gain_limit to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 -1, ptr %rf_gain_limit, align 2, !annotation !751
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb38, %do.end, %do.body.sw.epilog_crit_edge, %cond.end29.thread243
  %.sink = phi i8 [ 0, %sw.bb38 ], [ 1, %cond.end29.thread243 ], [ 1, %do.body.sw.epilog_crit_edge ], [ 1, %do.end ]
  %cond30240 = phi i32 [ 2, %sw.bb38 ], [ 4, %cond.end29.thread243 ], [ %cond30.ph, %do.body.sw.epilog_crit_edge ], [ %cond30.ph, %do.end ]
  %set_gpio40 = getelementptr inbounds %struct.dib0700_adapter_state, ptr %5, i32 0, i32 3, i32 2
  %15 = ptrtoint ptr %set_gpio40 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %set_gpio40, align 4
  %call41 = tail call i32 %16(ptr noundef %fe, i8 noundef zeroext 3, i8 noundef zeroext 0, i8 noundef zeroext %.sink) #4
  %17 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %5, align 4
  %call42 = tail call i32 %18(ptr noundef %fe) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %cmp43 = icmp slt i32 %call42, 0
  br i1 %cmp43, label %sw.epilog.cleanup_crit_edge, label %if.end46

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end46:                                         ; preds = %sw.epilog
  %bandwidth_hz = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 7
  %19 = ptrtoint ptr %bandwidth_hz to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %bandwidth_hz, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6000000, i32 %20)
  %cmp48.not = icmp eq i32 %20, 6000000
  br i1 %cmp48.not, label %if.end63, label %do.body51

do.body51:                                        ; preds = %if.end46
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_dib0700_debug to i32))
  %21 = load i32, ptr @dvb_usb_dib0700_debug, align 4
  %and52 = and i32 %21, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and52)
  %tobool53.not = icmp eq i32 %and52, 0
  br i1 %tobool53.not, label %do.body51.cleanup_crit_edge, label %do.end57

do.body51.cleanup_crit_edge:                      ; preds = %do.body51
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end57:                                         ; preds = %do.body51
  call void @__sanitizer_cov_trace_pc() #6
  %call59 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.187) #7
  br label %cleanup

if.end63:                                         ; preds = %if.end46
  %dib8000_ops64 = getelementptr inbounds %struct.dib0700_adapter_state, ptr %5, i32 0, i32 3
  %update_pll = getelementptr inbounds %struct.dib0700_adapter_state, ptr %5, i32 0, i32 3, i32 1
  %22 = ptrtoint ptr %update_pll to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %update_pll, align 4
  %call68 = tail call i32 %23(ptr noundef %fe, ptr noundef nonnull @dib8090_pll_config_12mhz, i32 noundef 6000, i8 noundef zeroext 0) #4
  %24 = ptrtoint ptr %dtv_property_cache to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %dtv_property_cache, align 4
  %div4.i = udiv i32 %25, 1000
  %mul5.i = shl nuw nsw i32 %div4.i, 8
  %div6.i = udiv i32 %mul5.i, 1000
  %26 = urem i32 %div6.i, 3264
  call void @__sanitizer_cov_trace_const_cmp4(i32 1632, i32 %26)
  %cmp15.i = icmp ugt i32 %26, 1632
  %sub17.i = sub nuw nsw i32 3264, %26
  %spec.select.i = select i1 %cmp15.i, i32 %sub17.i, i32 %26
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_dib0700_debug to i32))
  %27 = load i32, ptr @dvb_usb_dib0700_debug, align 4
  %and.i = and i32 %27, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end63.do.end23.i_crit_edge, label %do.end.i

if.end63.do.end23.i_crit_edge:                    ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end23.i

do.end.i:                                         ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #6
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.198, i32 noundef 17, i32 noundef %spec.select.i) #7
  br label %do.end23.i

do.end23.i:                                       ; preds = %do.end.i, %if.end63.do.end23.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 717, i32 %spec.select.i)
  %cmp26.i = icmp ugt i32 %spec.select.i, 717
  %max.1.i = select i1 %cmp26.i, i32 %spec.select.i, i32 0
  %optimal_pll_ratio.1.i = select i1 %cmp26.i, i8 17, i8 20
  %28 = ptrtoint ptr %dtv_property_cache to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %dtv_property_cache, align 4
  %div4.1.i = udiv i32 %29, 1000
  %mul5.1.i = shl nuw nsw i32 %div4.1.i, 8
  %div6.1.i = udiv i32 %mul5.1.i, 1000
  %30 = urem i32 %div6.1.i, 3456
  call void @__sanitizer_cov_trace_const_cmp4(i32 1728, i32 %30)
  %cmp15.1.i = icmp ugt i32 %30, 1728
  %sub17.1.i = sub nuw nsw i32 3456, %30
  %spec.select.1.i = select i1 %cmp15.1.i, i32 %sub17.1.i, i32 %30
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_dib0700_debug to i32))
  %31 = load i32, ptr @dvb_usb_dib0700_debug, align 4
  %and.1.i = and i32 %31, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1.i)
  %tobool.not.1.i = icmp eq i32 %and.1.i, 0
  br i1 %tobool.not.1.i, label %do.end23.i.do.end23.1.i_crit_edge, label %do.end.1.i

do.end23.i.do.end23.1.i_crit_edge:                ; preds = %do.end23.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end23.1.i

do.end.1.i:                                       ; preds = %do.end23.i
  call void @__sanitizer_cov_trace_pc() #6
  %call.1.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.198, i32 noundef 18, i32 noundef %spec.select.1.i) #7
  br label %do.end23.1.i

do.end23.1.i:                                     ; preds = %do.end.1.i, %do.end23.i.do.end23.1.i_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select.1.i, i32 %max.1.i)
  %cmp24.1.i = icmp ugt i32 %spec.select.1.i, %max.1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 717, i32 %spec.select.1.i)
  %cmp26.1.i = icmp ugt i32 %spec.select.1.i, 717
  %or.cond.1.i = and i1 %cmp24.1.i, %cmp26.1.i
  %max.1.1.i = select i1 %or.cond.1.i, i32 %spec.select.1.i, i32 %max.1.i
  %optimal_pll_ratio.1.1.i = select i1 %or.cond.1.i, i8 18, i8 %optimal_pll_ratio.1.i
  %32 = ptrtoint ptr %dtv_property_cache to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %dtv_property_cache, align 4
  %div4.2.i = udiv i32 %33, 1000
  %mul5.2.i = shl nuw nsw i32 %div4.2.i, 8
  %div6.2.i = udiv i32 %mul5.2.i, 1000
  %34 = urem i32 %div6.2.i, 3648
  call void @__sanitizer_cov_trace_const_cmp4(i32 1824, i32 %34)
  %cmp15.2.i = icmp ugt i32 %34, 1824
  %sub17.2.i = sub nuw nsw i32 3648, %34
  %spec.select.2.i = select i1 %cmp15.2.i, i32 %sub17.2.i, i32 %34
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_dib0700_debug to i32))
  %35 = load i32, ptr @dvb_usb_dib0700_debug, align 4
  %and.2.i = and i32 %35, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.2.i)
  %tobool.not.2.i = icmp eq i32 %and.2.i, 0
  br i1 %tobool.not.2.i, label %do.end23.1.i.do.end23.2.i_crit_edge, label %do.end.2.i

do.end23.1.i.do.end23.2.i_crit_edge:              ; preds = %do.end23.1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end23.2.i

do.end.2.i:                                       ; preds = %do.end23.1.i
  call void @__sanitizer_cov_trace_pc() #6
  %call.2.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.198, i32 noundef 19, i32 noundef %spec.select.2.i) #7
  br label %do.end23.2.i

do.end23.2.i:                                     ; preds = %do.end.2.i, %do.end23.1.i.do.end23.2.i_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select.2.i, i32 %max.1.1.i)
  %cmp24.2.i = icmp ugt i32 %spec.select.2.i, %max.1.1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 717, i32 %spec.select.2.i)
  %cmp26.2.i = icmp ugt i32 %spec.select.2.i, 717
  %or.cond.2.i = and i1 %cmp24.2.i, %cmp26.2.i
  %max.1.2.i = select i1 %or.cond.2.i, i32 %spec.select.2.i, i32 %max.1.1.i
  %optimal_pll_ratio.1.2.i = select i1 %or.cond.2.i, i8 19, i8 %optimal_pll_ratio.1.1.i
  %36 = ptrtoint ptr %dtv_property_cache to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %dtv_property_cache, align 4
  %div4.3.i = udiv i32 %37, 1000
  %mul5.3.i = shl nuw nsw i32 %div4.3.i, 8
  %div6.3.i = udiv i32 %mul5.3.i, 1000
  %38 = urem i32 %div6.3.i, 3840
  call void @__sanitizer_cov_trace_const_cmp4(i32 1920, i32 %38)
  %cmp15.3.i = icmp ugt i32 %38, 1920
  %sub17.3.i = sub nuw nsw i32 3840, %38
  %spec.select.3.i = select i1 %cmp15.3.i, i32 %sub17.3.i, i32 %38
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_dib0700_debug to i32))
  %39 = load i32, ptr @dvb_usb_dib0700_debug, align 4
  %and.3.i = and i32 %39, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.3.i)
  %tobool.not.3.i = icmp eq i32 %and.3.i, 0
  br i1 %tobool.not.3.i, label %do.end23.2.i.do.end23.3.i_crit_edge, label %do.end.3.i

do.end23.2.i.do.end23.3.i_crit_edge:              ; preds = %do.end23.2.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end23.3.i

do.end.3.i:                                       ; preds = %do.end23.2.i
  call void @__sanitizer_cov_trace_pc() #6
  %call.3.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.198, i32 noundef 20, i32 noundef %spec.select.3.i) #7
  br label %do.end23.3.i

do.end23.3.i:                                     ; preds = %do.end.3.i, %do.end23.2.i.do.end23.3.i_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select.3.i, i32 %max.1.2.i)
  %cmp24.3.i = icmp ugt i32 %spec.select.3.i, %max.1.2.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 717, i32 %spec.select.3.i)
  %cmp26.3.i = icmp ugt i32 %spec.select.3.i, 717
  %or.cond.3.i = and i1 %cmp24.3.i, %cmp26.3.i
  %optimal_pll_ratio.1.3.i = select i1 %or.cond.3.i, i8 20, i8 %optimal_pll_ratio.1.2.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_dib0700_debug to i32))
  %40 = load i32, ptr @dvb_usb_dib0700_debug, align 4
  %and31.i = and i32 %40, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31.i)
  %tobool32.not.i = icmp eq i32 %and31.i, 0
  br i1 %tobool32.not.i, label %do.end23.3.i.dib8090_compute_pll_parameters.exit_crit_edge, label %do.end36.i

do.end23.3.i.dib8090_compute_pll_parameters.exit_crit_edge: ; preds = %do.end23.3.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %dib8090_compute_pll_parameters.exit

do.end36.i:                                       ; preds = %do.end23.3.i
  call void @__sanitizer_cov_trace_pc() #6
  %conv38.i = zext i8 %optimal_pll_ratio.1.3.i to i32
  %call39.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.201, i32 noundef %conv38.i) #7
  br label %dib8090_compute_pll_parameters.exit

dib8090_compute_pll_parameters.exit:              ; preds = %do.end36.i, %do.end23.3.i.dib8090_compute_pll_parameters.exit_crit_edge
  %trunc = trunc i8 %optimal_pll_ratio.1.3.i to i3
  %41 = sext i3 %trunc to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %42 = icmp sgt i3 %trunc, 0
  br i1 %42, label %switch.lookup, label %dib8090_compute_pll_parameters.exit.if.end86_crit_edge

dib8090_compute_pll_parameters.exit.if.end86_crit_edge: ; preds = %dib8090_compute_pll_parameters.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end86

switch.lookup:                                    ; preds = %dib8090_compute_pll_parameters.exit
  call void @__sanitizer_cov_trace_pc() #6
  %switch.tableidx = add i3 %trunc, -1
  %43 = sext i3 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table.dib8096_set_param_override, i32 0, i32 %43
  %44 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %44)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %if.end86

if.end86:                                         ; preds = %switch.lookup, %dib8090_compute_pll_parameters.exit.if.end86_crit_edge
  %timf.0 = phi i32 [ %switch.load, %switch.lookup ], [ 18179756, %dib8090_compute_pll_parameters.exit.if.end86_crit_edge ]
  %45 = ptrtoint ptr %update_pll to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %update_pll, align 4
  %47 = ptrtoint ptr %bandwidth_hz to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %bandwidth_hz, align 4
  %div91 = udiv i32 %48, 1000
  %call92 = tail call i32 %46(ptr noundef %fe, ptr noundef nonnull @dib8090_pll_config_12mhz, i32 noundef %div91, i8 noundef zeroext %optimal_pll_ratio.1.3.i) #4
  %ctrl_timf = getelementptr inbounds %struct.dib0700_adapter_state, ptr %5, i32 0, i32 3, i32 8
  %49 = ptrtoint ptr %ctrl_timf to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %ctrl_timf, align 4
  %call94 = tail call i32 %50(ptr noundef %fe, i8 noundef zeroext 0, i32 noundef %timf.0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %cond30240)
  %cond238 = icmp eq i32 %cond30240, 32
  br i1 %cond238, label %do.body112, label %if.then98

if.then98:                                        ; preds = %if.end86
  %call99 = tail call zeroext i16 @dib0090_get_wbd_target(ptr noundef %fe) #4
  %conv100 = zext i16 %call99 to i32
  %mul101 = mul nuw nsw i32 %conv100, 144
  %div102 = udiv i32 %mul101, 33
  %add = add nuw nsw i32 %div102, 1
  %div103237 = lshr i32 %add, 1
  %conv104 = trunc i32 %div103237 to i16
  %51 = ptrtoint ptr %dib8000_ops64 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dib8000_ops64, align 4
  %call106 = tail call i32 %52(ptr noundef %fe, i16 noundef zeroext %conv104) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_dib0700_debug to i32))
  %53 = load i32, ptr @dvb_usb_dib0700_debug, align 4
  %and169 = and i32 %53, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and169)
  %tobool170.not = icmp eq i32 %and169, 0
  br i1 %tobool170.not, label %if.then98.do.end179_crit_edge, label %do.end174

if.then98.do.end179_crit_edge:                    ; preds = %if.then98
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end179

do.body112:                                       ; preds = %if.end86
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_dib0700_debug to i32))
  %54 = load i32, ptr @dvb_usb_dib0700_debug, align 4
  %and113 = and i32 %54, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and113)
  %tobool114.not = icmp eq i32 %and113, 0
  br i1 %tobool114.not, label %do.body112.do.end123_crit_edge, label %do.end118

do.body112.do.end123_crit_edge:                   ; preds = %do.body112
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end123

do.end118:                                        ; preds = %do.body112
  call void @__sanitizer_cov_trace_pc() #6
  %call120 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.190) #7
  br label %do.end123

do.end123:                                        ; preds = %do.end118, %do.body112.do.end123_crit_edge
  %call124 = tail call i32 @dib0090_set_tune_state(ptr noundef %fe, i32 noundef 20) #4
  br label %do.body125

do.body125:                                       ; preds = %do.cond148.do.body125_crit_edge, %do.end123
  %call126 = call i32 @dib0090_gain_control(ptr noundef %fe) #4
  call void @msleep(i32 noundef %call126) #4
  %call127 = call i32 @dib0090_get_tune_state(ptr noundef %fe) #4
  %55 = zext i32 %call127 to i64
  call void @__sanitizer_cov_trace_switch(i64 %55, ptr @__sancov_gen_cov_switch_values.306)
  switch i32 %call127, label %do.body125.do.cond148_crit_edge [
    i32 21, label %do.body125.do.cond148.sink.split_crit_edge
    i32 22, label %if.then137
  ]

do.body125.do.cond148.sink.split_crit_edge:       ; preds = %do.body125
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.cond148.sink.split

do.body125.do.cond148_crit_edge:                  ; preds = %do.body125
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.cond148

if.then137:                                       ; preds = %do.body125
  call void @dib0090_get_current_gain(ptr noundef %fe, ptr noundef null, ptr noundef null, ptr noundef nonnull %rf_gain_limit, ptr noundef nonnull %ltgain) #4
  %56 = ptrtoint ptr %rf_gain_limit to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %rf_gain_limit, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2000, i16 %57)
  %cmp139 = icmp ult i16 %57, 2000
  br i1 %cmp139, label %if.then137.do.cond148.sink.split_crit_edge, label %if.then137.do.cond148_crit_edge

if.then137.do.cond148_crit_edge:                  ; preds = %if.then137
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.cond148

if.then137.do.cond148.sink.split_crit_edge:       ; preds = %if.then137
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.cond148.sink.split

do.cond148.sink.split:                            ; preds = %if.then137.do.cond148.sink.split_crit_edge, %do.body125.do.cond148.sink.split_crit_edge
  %.sink247 = phi i8 [ 1, %do.body125.do.cond148.sink.split_crit_edge ], [ 0, %if.then137.do.cond148.sink.split_crit_edge ]
  %58 = ptrtoint ptr %set_gpio40 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %set_gpio40, align 4
  %call133 = call i32 %59(ptr noundef %fe, i8 noundef zeroext 6, i8 noundef zeroext 0, i8 noundef zeroext %.sink247) #4
  br label %do.cond148

do.cond148:                                       ; preds = %do.cond148.sink.split, %if.then137.do.cond148_crit_edge, %do.body125.do.cond148_crit_edge
  %cmp149 = icmp ult i32 %call127, 26
  br i1 %cmp149, label %do.cond148.do.body125_crit_edge, label %do.body152

do.cond148.do.body125_crit_edge:                  ; preds = %do.cond148
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body125

do.body152:                                       ; preds = %do.cond148
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_dib0700_debug to i32))
  %60 = load i32, ptr @dvb_usb_dib0700_debug, align 4
  %and153 = and i32 %60, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and153)
  %tobool154.not = icmp eq i32 %and153, 0
  br i1 %tobool154.not, label %do.body152.do.end163_crit_edge, label %do.end158

do.body152.do.end163_crit_edge:                   ; preds = %do.body152
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end163

do.end158:                                        ; preds = %do.body152
  call void @__sanitizer_cov_trace_pc() #6
  %call160 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.193) #7
  br label %do.end163

do.end163:                                        ; preds = %do.end158, %do.body152.do.end163_crit_edge
  call void @dib0090_pwm_gain_reset(ptr noundef %fe) #4
  %pwm_agc_reset = getelementptr inbounds %struct.dib0700_adapter_state, ptr %5, i32 0, i32 3, i32 3
  %61 = ptrtoint ptr %pwm_agc_reset to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %pwm_agc_reset, align 4
  call void %62(ptr noundef %fe) #4
  %set_tune_state = getelementptr inbounds %struct.dib0700_adapter_state, ptr %5, i32 0, i32 3, i32 10
  %63 = ptrtoint ptr %set_tune_state to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %set_tune_state, align 4
  %call166 = call i32 %64(ptr noundef %fe, i32 noundef 30) #4
  br label %cleanup

do.end174:                                        ; preds = %if.then98
  call void @__sanitizer_cov_trace_pc() #6
  %call176 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.196) #7
  br label %do.end179

do.end179:                                        ; preds = %do.end174, %if.then98.do.end179_crit_edge
  tail call void @dib0090_pwm_gain_reset(ptr noundef %fe) #4
  br label %cleanup

cleanup:                                          ; preds = %do.end179, %do.end163, %do.end57, %do.body51.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge
  %retval.0 = phi i32 [ %call42, %sw.epilog.cleanup_crit_edge ], [ -22, %do.end57 ], [ -22, %do.body51.cleanup_crit_edge ], [ 0, %do.end179 ], [ 0, %do.end163 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %rf_gain_limit) #4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %ltgain) #4
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dib8090_get_adc_power(ptr noundef %fe) #1 align 64 {
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
  %priv1 = getelementptr inbounds %struct.dvb_usb_adapter, ptr %3, i32 0, i32 12
  %4 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv1, align 8
  %get_adc_power = getelementptr inbounds %struct.dib0700_adapter_state, ptr %5, i32 0, i32 3, i32 6
  %6 = ptrtoint ptr %get_adc_power to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %get_adc_power, align 4
  %call = tail call i32 %7(ptr noundef %fe, i8 noundef zeroext 1) #4
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @dib0090_get_wbd_target(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dib0090_set_tune_state(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dib0090_gain_control(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dib0090_get_tune_state(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @dib0090_get_current_gain(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @dib0090_pwm_gain_reset(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dib9000_fw_pid_filter_ctrl(ptr noundef, i8 noundef zeroext) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dib9000_fw_pid_filter(ptr noundef, i8 noundef zeroext, i16 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dib0700_get_version(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dib0700_set_i2c_speed(ptr noundef, i16 noundef zeroext) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dib9000_i2c_enumeration(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dib9000_get_tuner_interface(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dib9000_get_i2c_master(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dib01x0_pmu_update(ptr noundef %i2c, ptr nocapture noundef readonly %data) unnamed_addr #1 align 64 {
entry:
  %wb = alloca [4 x i8], align 4
  %rb = alloca [2 x i8], align 1
  %msg = alloca [2 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %wb) #4
  %0 = ptrtoint ptr %wb to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 786432, ptr %wb, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %rb) #4
  %1 = ptrtoint ptr %rb to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %rb, align 1, !annotation !751
  %2 = getelementptr inbounds [2 x i8], ptr %rb, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -1, ptr %2, align 1, !annotation !751
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg) #4
  %4 = getelementptr inbounds i8, ptr %msg, i32 4
  %5 = call ptr @memset(ptr %4, i32 255, i32 16)
  %6 = ptrtoint ptr %msg to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 15, ptr %msg, align 4
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 1
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 0, ptr %flags, align 2
  %len1 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 2
  %8 = ptrtoint ptr %len1 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 2, ptr %len1, align 4
  %buf = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 3
  %9 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %wb, ptr %buf, align 4
  %arrayinit.element = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 1
  %10 = ptrtoint ptr %arrayinit.element to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 15, ptr %arrayinit.element, align 4
  %flags3 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 1, i32 1
  %11 = ptrtoint ptr %flags3 to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 1, ptr %flags3, align 2
  %len4 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 1, i32 2
  %12 = ptrtoint ptr %len4 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 2, ptr %len4, align 4
  %buf5 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 1, i32 3
  %13 = ptrtoint ptr %buf5 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %rb, ptr %buf5, align 4
  %call = call i32 @dibx000_i2c_set_speed(ptr noundef %i2c, i16 noundef zeroext 250) #4
  %call8 = call i32 @i2c_transfer(ptr noundef %i2c, ptr noundef nonnull %msg, i32 noundef 2) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call8)
  %cmp.not = icmp eq i32 %call8, 2
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %14 = ptrtoint ptr %rb to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %rb, align 1
  %conv = zext i8 %15 to i16
  %shl = shl nuw i16 %conv, 8
  %16 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %2, align 1
  %conv10 = zext i8 %17 to i16
  %or = or i16 %shl, %conv10
  %18 = zext i16 %or to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.307)
  switch i16 %or, label %do.body43 [
    i16 0, label %do.body
    i16 1, label %do.body18
    i16 2, label %do.body31
  ]

do.body:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_dib0700_debug to i32))
  %19 = load i32, ptr @dvb_usb_dib0700_debug, align 4
  %and = and i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body.cleanup_crit_edge, label %do.body.cleanup.sink.split_crit_edge

do.body.cleanup.sink.split_crit_edge:             ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.body18:                                        ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_dib0700_debug to i32))
  %20 = load i32, ptr @dvb_usb_dib0700_debug, align 4
  %and19 = and i32 %20, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  br i1 %tobool20.not, label %do.body18.sw.epilog_crit_edge, label %do.body18.sw.epilog.sink.split_crit_edge

do.body18.sw.epilog.sink.split_crit_edge:         ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.sink.split

do.body18.sw.epilog_crit_edge:                    ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

do.body31:                                        ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_dib0700_debug to i32))
  %21 = load i32, ptr @dvb_usb_dib0700_debug, align 4
  %and32 = and i32 %21, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32)
  %tobool33.not = icmp eq i32 %and32, 0
  br i1 %tobool33.not, label %do.body31.sw.epilog_crit_edge, label %do.body31.sw.epilog.sink.split_crit_edge

do.body31.sw.epilog.sink.split_crit_edge:         ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.sink.split

do.body31.sw.epilog_crit_edge:                    ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

do.body43:                                        ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_dib0700_debug to i32))
  %22 = load i32, ptr @dvb_usb_dib0700_debug, align 4
  %and44 = and i32 %22, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44)
  %tobool45.not = icmp eq i32 %and44, 0
  br i1 %tobool45.not, label %do.body43.cleanup_crit_edge, label %do.body43.cleanup.sink.split_crit_edge

do.body43.cleanup.sink.split_crit_edge:           ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split

do.body43.cleanup_crit_edge:                      ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.epilog.sink.split:                             ; preds = %do.body31.sw.epilog.sink.split_crit_edge, %do.body18.sw.epilog.sink.split_crit_edge
  %.str.225.sink = phi ptr [ @.str.222, %do.body18.sw.epilog.sink.split_crit_edge ], [ @.str.225, %do.body31.sw.epilog.sink.split_crit_edge ]
  %call39 = call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.225.sink) #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %do.body31.sw.epilog_crit_edge, %do.body18.sw.epilog_crit_edge
  %arrayidx64 = getelementptr inbounds [4 x i8], ptr %wb, i32 0, i32 2
  %arrayidx71 = getelementptr inbounds [4 x i8], ptr %wb, i32 0, i32 3
  %arrayidx89 = getelementptr inbounds [4 x i8], ptr %wb, i32 0, i32 1
  br label %for.body

for.cond:                                         ; preds = %if.end111
  %add134 = add nuw nsw i32 %conv553, 2
  %conv55 = and i32 %add134, 255
  %cmp57 = icmp ult i32 %conv55, 10
  br i1 %cmp57, label %for.cond.for.body_crit_edge, label %for.cond.cleanup_crit_edge

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %sw.epilog
  %conv553 = phi i32 [ 0, %sw.epilog ], [ %conv55, %for.cond.for.body_crit_edge ]
  %add = add nuw nsw i32 %conv553, 1
  %arrayidx60 = getelementptr i16, ptr %data, i32 %add
  %23 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %arrayidx60, align 2
  %25 = lshr i16 %24, 8
  %conv63 = trunc i16 %25 to i8
  %26 = ptrtoint ptr %arrayidx64 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %conv63, ptr %arrayidx64, align 2
  %conv70 = trunc i16 %24 to i8
  %27 = ptrtoint ptr %arrayidx71 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %conv70, ptr %arrayidx71, align 1
  %arrayidx72 = getelementptr i16, ptr %data, i32 %conv553
  %28 = ptrtoint ptr %arrayidx72 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %arrayidx72, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %29)
  %cmp74 = icmp eq i16 %29, 0
  br i1 %cmp74, label %if.then76, label %for.body.if.end111_crit_edge

for.body.if.end111_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end111

if.then76:                                        ; preds = %for.body
  %30 = ptrtoint ptr %wb to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 0, ptr %wb, align 4
  %31 = ptrtoint ptr %arrayidx89 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 0, ptr %arrayidx89, align 1
  %32 = ptrtoint ptr %len1 to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 2, ptr %len1, align 4
  %call93 = call i32 @i2c_transfer(ptr noundef %i2c, ptr noundef nonnull %msg, i32 noundef 2) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call93)
  %cmp94.not = icmp eq i32 %call93, 2
  br i1 %cmp94.not, label %if.end97, label %if.then76.cleanup_crit_edge

if.then76.cleanup_crit_edge:                      ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end97:                                         ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #6
  %33 = ptrtoint ptr %rb to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %rb, align 1
  %35 = ptrtoint ptr %arrayidx64 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx64, align 2
  %or1021 = or i8 %36, %34
  store i8 %or1021, ptr %arrayidx64, align 2
  %37 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %2, align 1
  %39 = and i8 %38, -49
  %40 = ptrtoint ptr %arrayidx71 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx71, align 1
  %or1092 = or i8 %41, %39
  store i8 %or1092, ptr %arrayidx71, align 1
  br label %if.end111

if.end111:                                        ; preds = %if.end97, %for.body.if.end111_crit_edge
  %42 = ptrtoint ptr %arrayidx72 to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %arrayidx72, align 2
  %44 = lshr i16 %43, 8
  %conv117 = trunc i16 %44 to i8
  %45 = ptrtoint ptr %wb to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %conv117, ptr %wb, align 4
  %conv123 = trunc i16 %43 to i8
  %46 = ptrtoint ptr %arrayidx89 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %conv123, ptr %arrayidx89, align 1
  %47 = ptrtoint ptr %len1 to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 4, ptr %len1, align 4
  %call128 = call i32 @i2c_transfer(ptr noundef %i2c, ptr noundef nonnull %msg, i32 noundef 1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call128)
  %cmp129.not = icmp eq i32 %call128, 1
  br i1 %cmp129.not, label %for.cond, label %if.end111.cleanup_crit_edge

if.end111.cleanup_crit_edge:                      ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

cleanup.sink.split:                               ; preds = %do.body43.cleanup.sink.split_crit_edge, %do.body.cleanup.sink.split_crit_edge
  %.str.228.sink = phi ptr [ @.str.219, %do.body.cleanup.sink.split_crit_edge ], [ @.str.228, %do.body43.cleanup.sink.split_crit_edge ]
  %call51 = call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.228.sink) #7
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end111.cleanup_crit_edge, %if.then76.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %do.body43.cleanup_crit_edge, %do.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %entry.cleanup_crit_edge ], [ -5, %do.body.cleanup_crit_edge ], [ -5, %do.body43.cleanup_crit_edge ], [ -5, %cleanup.sink.split ], [ 0, %for.cond.cleanup_crit_edge ], [ -5, %if.end111.cleanup_crit_edge ], [ -5, %if.then76.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg) #4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %rb) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %wb) #4
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dib9000_firmware_post_pll_init(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dib90x0_tuner_reset(ptr noundef %fe, i32 noundef %onoff) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %onoff)
  %tobool.not = icmp eq i32 %onoff, 0
  %conv = zext i1 %tobool.not to i8
  %call = tail call i32 @dib9000_set_gpio(ptr noundef %fe, i8 noundef zeroext 5, i8 noundef zeroext 0, i8 noundef zeroext %conv) #4
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dib90x0_tuner_sleep(ptr noundef %fe, i32 noundef %onoff) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = trunc i32 %onoff to i8
  %call = tail call i32 @dib9000_set_gpio(ptr noundef %fe, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext %conv) #4
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dib9000_set_gpio(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dibx000_i2c_set_speed(ptr noundef, i16 noundef zeroext) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dib9000_set_slave_frontend(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dib9000_get_slave_frontend(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dib9000_get_component_bus_interface(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dib9000_set_i2c_adapter(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dib9000_fw_set_component_bus_speed(ptr noundef, i16 noundef zeroext) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tfe7790p_update_lna(ptr noundef %fe, i16 noundef zeroext %agc_global) #1 align 64 {
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
  %priv1 = getelementptr inbounds %struct.dvb_usb_adapter, ptr %3, i32 0, i32 12
  %4 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv1, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_dib0700_debug to i32))
  %6 = load i32, ptr @dvb_usb_dib0700_debug, align 4
  %and = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end4_crit_edge, label %do.end

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %conv = zext i16 %agc_global to i32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.250, i32 noundef %conv) #7
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 25000, i16 %agc_global)
  %cmp = icmp ult i16 %agc_global, 25000
  %set_gpio = getelementptr inbounds %struct.dib0700_adapter_state, ptr %5, i32 0, i32 2, i32 4
  %7 = ptrtoint ptr %set_gpio to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %set_gpio, align 4
  %not.cmp = xor i1 %cmp, true
  %. = zext i1 %not.cmp to i8
  %.28 = select i1 %cmp, i16 0, i16 -32768
  %call13 = tail call i32 %8(ptr noundef %fe, i8 noundef zeroext 8, i8 noundef zeroext 0, i8 noundef zeroext %.) #4
  %set_agc1_min15 = getelementptr inbounds %struct.dib0700_adapter_state, ptr %5, i32 0, i32 2, i32 2
  %9 = ptrtoint ptr %set_agc1_min15 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %set_agc1_min15, align 4
  %call16 = tail call i32 %10(ptr noundef %fe, i16 noundef zeroext %.28) #4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dib7090_agc_restart(ptr noundef %fe, i8 noundef zeroext %restart) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_dib0700_debug to i32))
  %0 = load i32, ptr @dvb_usb_dib0700_debug, align 4
  %and = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end2_crit_edge, label %do.end

entry.do.end2_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end2

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %conv = zext i8 %restart to i32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.252, i32 noundef %conv) #7
  br label %do.end2

do.end2:                                          ; preds = %do.end, %entry.do.end2_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %restart)
  %cmp = icmp eq i8 %restart, 0
  br i1 %cmp, label %if.then5, label %do.end2.if.end6_crit_edge

do.end2.if.end6_crit_edge:                        ; preds = %do.end2
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end6

if.then5:                                         ; preds = %do.end2
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @dib0090_set_dc_servo(ptr noundef %fe, i8 noundef zeroext 1) #4
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %do.end2.if.end6_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dib7090_agc_startup(ptr noundef %fe) #1 align 64 {
entry:
  %pll = alloca %struct.dibx000_bandwidth_config, align 4
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
  %priv1 = getelementptr inbounds %struct.dvb_usb_adapter, ptr %3, i32 0, i32 12
  %4 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv1, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %pll) #4
  %6 = getelementptr inbounds %struct.dibx000_bandwidth_config, ptr %pll, i32 0, i32 2
  %7 = getelementptr inbounds %struct.dibx000_bandwidth_config, ptr %pll, i32 0, i32 3
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %5, align 4
  %call = tail call i32 %9(ptr noundef %fe) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %10 = call ptr @memset(ptr %pll, i32 0, i32 32)
  tail call void @dib0090_pwm_gain_reset(ptr noundef %fe) #4
  %call2 = tail call zeroext i16 @dib0090_get_wbd_target(ptr noundef %fe) #4
  %div = shl i16 %call2, 2
  %dib7000p_ops = getelementptr inbounds %struct.dib0700_adapter_state, ptr %5, i32 0, i32 2
  %11 = ptrtoint ptr %dib7000p_ops to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dib7000p_ops, align 4
  %call4 = tail call i32 %12(ptr noundef %fe, i16 noundef zeroext %div) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_dib0700_debug to i32))
  %13 = load i32, ptr @dvb_usb_dib0700_debug, align 4
  %and.i = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.do.end4.i_crit_edge, label %do.end.i

if.end.do.end4.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end4.i

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %bandwidth_hz.i = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 7
  %14 = ptrtoint ptr %bandwidth_hz.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %bandwidth_hz.i, align 4
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.256, i32 noundef %15, i32 noundef 69500) #7
  br label %do.end4.i

do.end4.i:                                        ; preds = %do.end.i, %if.end.do.end4.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_dib0700_debug to i32))
  %16 = load i32, ptr @dvb_usb_dib0700_debug, align 4
  %and23.i = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23.i)
  %tobool24.not.i = icmp eq i32 %and23.i, 0
  br i1 %tobool24.not.i, label %do.end4.i.for.body.lr.ph.i_crit_edge, label %do.end28.i

do.end4.i.for.body.lr.ph.i_crit_edge:             ; preds = %do.end4.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.lr.ph.i

do.end28.i:                                       ; preds = %do.end4.i
  call void @__sanitizer_cov_trace_pc() #6
  %call32.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.259, i32 noundef 1, i32 noundef 6) #7
  br label %for.body.lr.ph.i

for.body.lr.ph.i:                                 ; preds = %do.end28.i, %do.end4.i.for.body.lr.ph.i_crit_edge
  %bandwidth_hz65.i = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 7
  %dtv_property_cache64.i = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8
  br label %for.body52.preheader.i

for.body52.preheader.i:                           ; preds = %if.end136.i.for.body52.preheader.i_crit_edge, %for.body.lr.ph.i
  %spur.0243.i = phi i8 [ 0, %for.body.lr.ph.i ], [ 1, %if.end136.i.for.body52.preheader.i_crit_edge ]
  %prediv.0241.i = phi i8 [ 2, %for.body.lr.ph.i ], [ %inc141.i, %if.end136.i.for.body52.preheader.i_crit_edge ]
  %div42.rhs.trunc.i = zext i8 %prediv.0241.i to i16
  %div42224.i = udiv i16 12000, %div42.rhs.trunc.i
  %div42.zext.i = zext i16 %div42224.i to i32
  br label %for.body52.i

for.body52.i:                                     ; preds = %for.inc133.i.for.body52.i_crit_edge, %for.body52.preheader.i
  %indvars.iv264.i = phi i32 [ 1, %for.body52.preheader.i ], [ %indvars.iv.next265.i, %for.inc133.i.for.body52.i_crit_edge ]
  %spur.1236.i = phi i8 [ %spur.0243.i, %for.body52.preheader.i ], [ %spur.3.i, %for.inc133.i.for.body52.i_crit_edge ]
  %mul.i = mul nuw nsw i32 %indvars.iv264.i, %div42.zext.i
  %div57220.i = lshr i32 %mul.i, 2
  %17 = add nsw i32 %mul.i, -69500
  call void @__sanitizer_cov_trace_const_cmp4(i32 6501, i32 %17)
  %18 = icmp ult i32 %17, 6501
  br i1 %18, label %land.lhs.true63.i, label %for.body52.i.for.inc133.i_crit_edge

for.body52.i.for.inc133.i_crit_edge:              ; preds = %for.body52.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc133.i

land.lhs.true63.i:                                ; preds = %for.body52.i
  %19 = ptrtoint ptr %bandwidth_hz65.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %bandwidth_hz65.i, align 4
  %div66.i = udiv i32 %20, 1000
  call void @__sanitizer_cov_trace_cmp4(i32 %div57220.i, i32 %div66.i)
  %cmp67.not.i = icmp ult i32 %div57220.i, %div66.i
  br i1 %cmp67.not.i, label %land.lhs.true63.i.for.inc133.i_crit_edge, label %if.then69.i

land.lhs.true63.i.for.inc133.i_crit_edge:         ; preds = %land.lhs.true63.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc133.i

if.then69.i:                                      ; preds = %land.lhs.true63.i
  %21 = ptrtoint ptr %dtv_property_cache64.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %dtv_property_cache64.i, align 4
  %mul71.i = mul nuw nsw i32 %div57220.i, 1000
  %div72.i = udiv i32 %22, %mul71.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %div72.i)
  %cmp78.not228.i = icmp eq i32 %div72.i, -1
  br i1 %cmp78.not228.i, label %if.then69.i.if.then105.critedge.i_crit_edge, label %for.body80.lr.ph.i

if.then69.i.if.then105.critedge.i_crit_edge:      ; preds = %if.then69.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then105.critedge.i

for.body80.lr.ph.i:                               ; preds = %if.then69.i
  %div84.i = udiv i32 %22, 1000
  %div87.i = udiv i32 %20, 2000
  %sub.i = sub nsw i32 %div84.i, %div87.i
  %add98.i = add nuw nsw i32 %div84.i, %div87.i
  %mul81.i = mul i32 %div72.i, %div57220.i
  call void @__sanitizer_cov_trace_cmp4(i32 %mul81.i, i32 %sub.i)
  %cmp88.not.i = icmp ult i32 %mul81.i, %sub.i
  call void @__sanitizer_cov_trace_cmp4(i32 %mul81.i, i32 %add98.i)
  %cmp99.not.i = icmp ugt i32 %mul81.i, %add98.i
  %or.cond221.i = select i1 %cmp88.not.i, i1 true, i1 %cmp99.not.i
  br i1 %or.cond221.i, label %for.cond73.i, label %for.body80.lr.ph.i.for.inc133.i_crit_edge

for.body80.lr.ph.i.for.inc133.i_crit_edge:        ; preds = %for.body80.lr.ph.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc133.i

for.cond73.i:                                     ; preds = %for.body80.lr.ph.i
  %inc103.i = add nuw nsw i32 %div72.i, 1
  %mul81.1.i = mul i32 %inc103.i, %div57220.i
  call void @__sanitizer_cov_trace_cmp4(i32 %mul81.1.i, i32 %sub.i)
  %cmp88.not.1.i = icmp ult i32 %mul81.1.i, %sub.i
  call void @__sanitizer_cov_trace_cmp4(i32 %mul81.1.i, i32 %add98.i)
  %cmp99.not.1.i = icmp ugt i32 %mul81.1.i, %add98.i
  %or.cond221.1.i = select i1 %cmp88.not.1.i, i1 true, i1 %cmp99.not.1.i
  br i1 %or.cond221.1.i, label %for.cond73.i.if.then105.critedge.i_crit_edge, label %for.cond73.i.for.inc133.i_crit_edge

for.cond73.i.for.inc133.i_crit_edge:              ; preds = %for.cond73.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc133.i

for.cond73.i.if.then105.critedge.i_crit_edge:     ; preds = %for.cond73.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then105.critedge.i

if.then105.critedge.i:                            ; preds = %for.cond73.i.if.then105.critedge.i_crit_edge, %if.then69.i.if.then105.critedge.i_crit_edge
  %mul.i.frozen = freeze i32 %mul.i
  %div110.i = udiv i32 -1898222153, %mul.i.frozen
  %mul111.i = shl nuw nsw i32 %div110.i, 9
  %23 = mul i32 %div110.i, %mul.i.frozen
  %rem.i.decomposed = sub i32 -1898222153, %23
  %shl.i = shl nuw nsw i32 %rem.i.decomposed, 9
  %div113.i = udiv i32 %shl.i, %mul.i
  %add115.i = add nuw nsw i32 %div113.i, %mul111.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_dib0700_debug to i32))
  %24 = load i32, ptr @dvb_usb_dib0700_debug, align 4
  %and117.i = and i32 %24, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and117.i)
  %tobool118.not.i = icmp eq i32 %and117.i, 0
  br i1 %tobool118.not.i, label %if.then105.critedge.i.if.then8_crit_edge, label %do.end122.i

if.then105.critedge.i.if.then8_crit_edge:         ; preds = %if.then105.critedge.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then8

do.end122.i:                                      ; preds = %if.then105.critedge.i
  call void @__sanitizer_cov_trace_pc() #6
  %conv36.lcssa227.i = zext i8 %prediv.0241.i to i32
  %call127.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.262, i32 noundef %indvars.iv264.i, i32 noundef %conv36.lcssa227.i, i32 noundef %add115.i) #7
  br label %if.then8

for.inc133.i:                                     ; preds = %for.cond73.i.for.inc133.i_crit_edge, %for.body80.lr.ph.i.for.inc133.i_crit_edge, %land.lhs.true63.i.for.inc133.i_crit_edge, %for.body52.i.for.inc133.i_crit_edge
  %spur.3.i = phi i8 [ %spur.1236.i, %land.lhs.true63.i.for.inc133.i_crit_edge ], [ %spur.1236.i, %for.body52.i.for.inc133.i_crit_edge ], [ 1, %for.cond73.i.for.inc133.i_crit_edge ], [ 1, %for.body80.lr.ph.i.for.inc133.i_crit_edge ]
  %indvars.iv.next265.i = add nuw nsw i32 %indvars.iv264.i, 1
  %exitcond.not.i = icmp eq i32 %indvars.iv.next265.i, 64
  br i1 %exitcond.not.i, label %if.end136.i, label %for.inc133.i.for.body52.i_crit_edge

for.inc133.i.for.body52.i_crit_edge:              ; preds = %for.inc133.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body52.i

if.end136.i:                                      ; preds = %for.inc133.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %spur.3.i)
  %tobool137.not.i = icmp ne i8 %spur.3.i, 0
  %inc141.i = add nuw nsw i8 %prediv.0241.i, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %prediv.0241.i)
  %cmp38.i = icmp ult i8 %prediv.0241.i, 5
  %or.cond.i = select i1 %tobool137.not.i, i1 %cmp38.i, i1 false
  br i1 %or.cond.i, label %if.end136.i.for.body52.preheader.i_crit_edge, label %if.end136.i.cleanup_crit_edge

if.end136.i.cleanup_crit_edge:                    ; preds = %if.end136.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end136.i.for.body52.preheader.i_crit_edge:     ; preds = %if.end136.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body52.preheader.i

if.then8:                                         ; preds = %do.end122.i, %if.then105.critedge.i.if.then8_crit_edge
  %conv9 = trunc i32 %indvars.iv264.i to i8
  %25 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv9, ptr %7, align 1
  %26 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %prediv.0241.i, ptr %6, align 4
  %update_pll = getelementptr inbounds %struct.dib0700_adapter_state, ptr %5, i32 0, i32 2, i32 3
  %27 = ptrtoint ptr %update_pll to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %update_pll, align 4
  %call13 = call i32 %28(ptr noundef %fe, ptr noundef nonnull %pll) #4
  %ctrl_timf = getelementptr inbounds %struct.dib0700_adapter_state, ptr %5, i32 0, i32 2, i32 5
  %29 = ptrtoint ptr %ctrl_timf to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ctrl_timf, align 4
  %call15 = call i32 %30(ptr noundef %fe, i8 noundef zeroext 0, i32 noundef %add115.i) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then8, %if.end136.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ 0, %if.then8 ], [ 0, %if.end136.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %pll) #4
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tfe7090p_pvr_update_lna(ptr noundef %fe, i16 noundef zeroext %agc_global) #1 align 64 {
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
  %priv1 = getelementptr inbounds %struct.dvb_usb_adapter, ptr %3, i32 0, i32 12
  %4 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv1, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_dib0700_debug to i32))
  %6 = load i32, ptr @dvb_usb_dib0700_debug, align 4
  %and = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end4_crit_edge, label %do.end

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %conv = zext i16 %agc_global to i32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.267, i32 noundef %conv) #7
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 25000, i16 %agc_global)
  %cmp = icmp ult i16 %agc_global, 25000
  %set_gpio = getelementptr inbounds %struct.dib0700_adapter_state, ptr %5, i32 0, i32 2, i32 4
  %7 = ptrtoint ptr %set_gpio to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %set_gpio, align 4
  %not.cmp = xor i1 %cmp, true
  %. = zext i1 %not.cmp to i8
  %.28 = select i1 %cmp, i16 0, i16 -32768
  %call13 = tail call i32 %8(ptr noundef %fe, i8 noundef zeroext 5, i8 noundef zeroext 0, i8 noundef zeroext %.) #4
  %set_agc1_min15 = getelementptr inbounds %struct.dib0700_adapter_state, ptr %5, i32 0, i32 2, i32 2
  %9 = ptrtoint ptr %set_agc1_min15 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %set_agc1_min15, align 4
  %call16 = tail call i32 %10(ptr noundef %fe, i16 noundef zeroext %.28) #4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dib0700_xc4000_tuner_callback(ptr nocapture noundef readonly %priv, i32 noundef %component, i32 noundef %command, i32 noundef %arg) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %command)
  %cmp = icmp eq i32 %command, 0
  br i1 %cmp, label %if.then, label %do.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %priv1 = getelementptr inbounds %struct.dvb_usb_adapter, ptr %priv, i32 0, i32 12
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %set_gpio = getelementptr inbounds %struct.dib0700_adapter_state, ptr %1, i32 0, i32 2, i32 4
  %2 = ptrtoint ptr %set_gpio to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %set_gpio, align 4
  %fe_adap = getelementptr inbounds %struct.dvb_usb_adapter, ptr %priv, i32 0, i32 9
  %4 = ptrtoint ptr %fe_adap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fe_adap, align 8
  %call = tail call i32 %3(ptr noundef %5, i8 noundef zeroext 8, i8 noundef zeroext 0, i8 noundef zeroext 0) #4
  tail call void @msleep(i32 noundef 10) #4
  %6 = ptrtoint ptr %set_gpio to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %set_gpio, align 4
  %8 = ptrtoint ptr %fe_adap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fe_adap, align 8
  %call7 = tail call i32 %7(ptr noundef %9, i8 noundef zeroext 8, i8 noundef zeroext 0, i8 noundef zeroext 1) #4
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.286, i32 noundef %command) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ -22, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dib8096p_agc_startup(ptr noundef %fe) #1 align 64 {
entry:
  %pll = alloca %struct.dibx000_bandwidth_config, align 4
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
  %priv1 = getelementptr inbounds %struct.dvb_usb_adapter, ptr %3, i32 0, i32 12
  %4 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv1, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %pll) #4
  %6 = getelementptr inbounds %struct.dibx000_bandwidth_config, ptr %pll, i32 0, i32 2
  %7 = getelementptr inbounds %struct.dibx000_bandwidth_config, ptr %pll, i32 0, i32 3
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %5, align 4
  %call = tail call i32 %9(ptr noundef %fe) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %10 = call ptr @memset(ptr %pll, i32 0, i32 32)
  tail call void @dib0090_pwm_gain_reset(ptr noundef %fe) #4
  %call2 = tail call zeroext i16 @dib0090_get_wbd_target(ptr noundef %fe) #4
  %div = shl i16 %call2, 2
  %dib8000_ops = getelementptr inbounds %struct.dib0700_adapter_state, ptr %5, i32 0, i32 3
  %11 = ptrtoint ptr %dib8000_ops to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dib8000_ops, align 4
  %call4 = tail call i32 %12(ptr noundef %fe, i16 noundef zeroext %div) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_dib0700_debug to i32))
  %13 = load i32, ptr @dvb_usb_dib0700_debug, align 4
  %and.i = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.do.end4.i_crit_edge, label %do.end.i

if.end.do.end4.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end4.i

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %bandwidth_hz.i = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 7
  %14 = ptrtoint ptr %bandwidth_hz.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %bandwidth_hz.i, align 4
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.296, i32 noundef %15) #7
  br label %do.end4.i

do.end4.i:                                        ; preds = %do.end.i, %if.end.do.end4.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_dib0700_debug to i32))
  %16 = load i32, ptr @dvb_usb_dib0700_debug, align 4
  %and25.i = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25.i)
  %tobool26.not.i = icmp eq i32 %and25.i, 0
  br i1 %tobool26.not.i, label %do.end4.i.for.body.lr.ph.i_crit_edge, label %do.end30.i

do.end4.i.for.body.lr.ph.i_crit_edge:             ; preds = %do.end4.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.lr.ph.i

do.end30.i:                                       ; preds = %do.end4.i
  call void @__sanitizer_cov_trace_pc() #6
  %call34.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.259, i32 noundef 1, i32 noundef 6) #7
  br label %for.body.lr.ph.i

for.body.lr.ph.i:                                 ; preds = %do.end30.i, %do.end4.i.for.body.lr.ph.i_crit_edge
  %dtv_property_cache69.i = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8
  %bandwidth_hz70.i = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 7
  br label %for.body56.preheader.i

for.body56.preheader.i:                           ; preds = %if.end146.i.for.body56.preheader.i_crit_edge, %for.body.lr.ph.i
  %spur.0273.i = phi i8 [ 0, %for.body.lr.ph.i ], [ 1, %if.end146.i.for.body56.preheader.i_crit_edge ]
  %prediv.0271.i = phi i8 [ 1, %for.body.lr.ph.i ], [ %inc151.i, %if.end146.i.for.body56.preheader.i_crit_edge ]
  %div44.rhs.trunc.i = zext i8 %prediv.0271.i to i16
  %div44242.i = udiv i16 12000, %div44.rhs.trunc.i
  %div44.zext.i = zext i16 %div44242.i to i32
  br label %for.body56.i

for.body56.i:                                     ; preds = %for.inc143.i.for.body56.i_crit_edge, %for.body56.preheader.i
  %indvars.iv300.i = phi i32 [ 1, %for.body56.preheader.i ], [ %indvars.iv.next301.i, %for.inc143.i.for.body56.i_crit_edge ]
  %spur.1266.i = phi i8 [ %spur.0273.i, %for.body56.preheader.i ], [ %spur.3.i, %for.inc143.i.for.body56.i_crit_edge ]
  %mul.i = mul nuw nsw i32 %indvars.iv300.i, %div44.zext.i
  %div62238.i = lshr i32 %mul.i, 3
  %17 = add nsw i32 %mul.i, -132000
  call void @__sanitizer_cov_trace_const_cmp4(i32 8001, i32 %17)
  %18 = icmp ult i32 %17, 8001
  br i1 %18, label %land.lhs.true68.i, label %for.body56.i.for.inc143.i_crit_edge

for.body56.i.for.inc143.i_crit_edge:              ; preds = %for.body56.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc143.i

land.lhs.true68.i:                                ; preds = %for.body56.i
  %19 = ptrtoint ptr %bandwidth_hz70.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %bandwidth_hz70.i, align 4
  %div71.i = udiv i32 %20, 1000
  call void @__sanitizer_cov_trace_cmp4(i32 %div62238.i, i32 %div71.i)
  %cmp72.not.i = icmp ult i32 %div62238.i, %div71.i
  br i1 %cmp72.not.i, label %land.lhs.true68.i.for.inc143.i_crit_edge, label %if.then74.i

land.lhs.true68.i.for.inc143.i_crit_edge:         ; preds = %land.lhs.true68.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc143.i

if.then74.i:                                      ; preds = %land.lhs.true68.i
  %21 = ptrtoint ptr %dtv_property_cache69.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %dtv_property_cache69.i, align 4
  %mul76.i = mul nuw nsw i32 %div62238.i, 1000
  %div77.i = udiv i32 %22, %mul76.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %div77.i)
  %cmp83.not246.i = icmp eq i32 %div77.i, -1
  br i1 %cmp83.not246.i, label %if.then74.i.if.then110.critedge.i_crit_edge, label %for.body85.lr.ph.i

if.then74.i.if.then110.critedge.i_crit_edge:      ; preds = %if.then74.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then110.critedge.i

for.body85.lr.ph.i:                               ; preds = %if.then74.i
  %div89.i = udiv i32 %22, 1000
  %div92.i = udiv i32 %20, 2000
  %sub.i = sub nsw i32 %div89.i, %div92.i
  %add103.i = add nuw nsw i32 %div89.i, %div92.i
  %mul86.i = mul i32 %div77.i, %div62238.i
  call void @__sanitizer_cov_trace_cmp4(i32 %mul86.i, i32 %sub.i)
  %cmp93.not.i = icmp ult i32 %mul86.i, %sub.i
  call void @__sanitizer_cov_trace_cmp4(i32 %mul86.i, i32 %add103.i)
  %cmp104.not.i = icmp ugt i32 %mul86.i, %add103.i
  %or.cond239.i = select i1 %cmp93.not.i, i1 true, i1 %cmp104.not.i
  br i1 %or.cond239.i, label %for.cond78.i, label %for.body85.lr.ph.i.for.inc143.i_crit_edge

for.body85.lr.ph.i.for.inc143.i_crit_edge:        ; preds = %for.body85.lr.ph.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc143.i

for.cond78.i:                                     ; preds = %for.body85.lr.ph.i
  %inc108.i = add nuw nsw i32 %div77.i, 1
  %mul86.1.i = mul i32 %inc108.i, %div62238.i
  call void @__sanitizer_cov_trace_cmp4(i32 %mul86.1.i, i32 %sub.i)
  %cmp93.not.1.i = icmp ult i32 %mul86.1.i, %sub.i
  call void @__sanitizer_cov_trace_cmp4(i32 %mul86.1.i, i32 %add103.i)
  %cmp104.not.1.i = icmp ugt i32 %mul86.1.i, %add103.i
  %or.cond239.1.i = select i1 %cmp93.not.1.i, i1 true, i1 %cmp104.not.1.i
  br i1 %or.cond239.1.i, label %for.cond78.i.if.then110.critedge.i_crit_edge, label %for.cond78.i.for.inc143.i_crit_edge

for.cond78.i.for.inc143.i_crit_edge:              ; preds = %for.cond78.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc143.i

for.cond78.i.if.then110.critedge.i_crit_edge:     ; preds = %for.cond78.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then110.critedge.i

if.then110.critedge.i:                            ; preds = %for.cond78.i.if.then110.critedge.i_crit_edge, %if.then74.i.if.then110.critedge.i_crit_edge
  %div61237.lcssa.i = lshr i32 %mul.i, 1
  %div61237.lcssa.i.frozen = freeze i32 %div61237.lcssa.i
  %div115.i = udiv i32 -34087043, %div61237.lcssa.i.frozen
  %mul116.i = shl nuw nsw i32 %div115.i, 8
  %23 = mul i32 %div115.i, %div61237.lcssa.i.frozen
  %rem.i.decomposed = sub i32 -34087043, %23
  %shl.i = shl nuw nsw i32 %rem.i.decomposed, 8
  %div118.i = udiv i32 %shl.i, %div61237.lcssa.i
  %add120.i = add nuw nsw i32 %div118.i, %mul116.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_dib0700_debug to i32))
  %24 = load i32, ptr @dvb_usb_dib0700_debug, align 4
  %and122.i = and i32 %24, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and122.i)
  %tobool123.not.i = icmp eq i32 %and122.i, 0
  br i1 %tobool123.not.i, label %if.then110.critedge.i.if.then8_crit_edge, label %do.end127.i

if.then110.critedge.i.if.then8_crit_edge:         ; preds = %if.then110.critedge.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then8

do.end127.i:                                      ; preds = %if.then110.critedge.i
  call void @__sanitizer_cov_trace_pc() #6
  %conv38.lcssa245.i = zext i8 %prediv.0271.i to i32
  %call137.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.301, i32 noundef %22, i32 noundef %20, i32 noundef 12000, i32 noundef %mul.i, i32 noundef %div61237.lcssa.i, i32 noundef %div62238.i, i32 noundef %conv38.lcssa245.i, i32 noundef %indvars.iv300.i, i32 noundef %add120.i) #7
  br label %if.then8

for.inc143.i:                                     ; preds = %for.cond78.i.for.inc143.i_crit_edge, %for.body85.lr.ph.i.for.inc143.i_crit_edge, %land.lhs.true68.i.for.inc143.i_crit_edge, %for.body56.i.for.inc143.i_crit_edge
  %spur.3.i = phi i8 [ %spur.1266.i, %land.lhs.true68.i.for.inc143.i_crit_edge ], [ %spur.1266.i, %for.body56.i.for.inc143.i_crit_edge ], [ 1, %for.cond78.i.for.inc143.i_crit_edge ], [ 1, %for.body85.lr.ph.i.for.inc143.i_crit_edge ]
  %indvars.iv.next301.i = add nuw nsw i32 %indvars.iv300.i, 1
  %exitcond.not.i = icmp eq i32 %indvars.iv.next301.i, 64
  br i1 %exitcond.not.i, label %if.end146.i, label %for.inc143.i.for.body56.i_crit_edge

for.inc143.i.for.body56.i_crit_edge:              ; preds = %for.inc143.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body56.i

if.end146.i:                                      ; preds = %for.inc143.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %spur.3.i)
  %tobool147.not.i = icmp ne i8 %spur.3.i, 0
  %inc151.i = add nuw nsw i8 %prediv.0271.i, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %prediv.0271.i)
  %cmp40.i = icmp ult i8 %prediv.0271.i, 5
  %or.cond.i = select i1 %tobool147.not.i, i1 %cmp40.i, i1 false
  br i1 %or.cond.i, label %if.end146.i.for.body56.preheader.i_crit_edge, label %if.end146.i.cleanup_crit_edge

if.end146.i.cleanup_crit_edge:                    ; preds = %if.end146.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end146.i.for.body56.preheader.i_crit_edge:     ; preds = %if.end146.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body56.preheader.i

if.then8:                                         ; preds = %do.end127.i, %if.then110.critedge.i.if.then8_crit_edge
  %conv9 = trunc i32 %indvars.iv300.i to i8
  %25 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv9, ptr %7, align 1
  %26 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %prediv.0271.i, ptr %6, align 4
  %27 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %3, align 8
  %call12 = tail call i32 @dib0700_set_i2c_speed(ptr noundef %28, i16 noundef zeroext 200) #4
  %update_pll = getelementptr inbounds %struct.dib0700_adapter_state, ptr %5, i32 0, i32 3, i32 1
  %29 = ptrtoint ptr %update_pll to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %update_pll, align 4
  %31 = ptrtoint ptr %bandwidth_hz70.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %bandwidth_hz70.i, align 4
  %div14 = udiv i32 %32, 1000
  %call15 = call i32 %30(ptr noundef %fe, ptr noundef nonnull %pll, i32 noundef %div14, i8 noundef zeroext 0) #4
  %ctrl_timf = getelementptr inbounds %struct.dib0700_adapter_state, ptr %5, i32 0, i32 3, i32 8
  %33 = ptrtoint ptr %ctrl_timf to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ctrl_timf, align 4
  %call17 = call i32 %34(ptr noundef %fe, i8 noundef zeroext 0, i32 noundef %add120.i) #4
  %35 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %3, align 8
  %call19 = call i32 @dib0700_set_i2c_speed(ptr noundef %36, i16 noundef zeroext 1000) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then8, %if.end146.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ 0, %if.then8 ], [ 0, %if.end146.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %pll) #4
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @i2c_new_client_device(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_unregister_device(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 392)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 392)
  ret void
}

attributes #0 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137, !139, !141, !143, !145, !147, !149, !151, !153, !155, !157, !159, !161, !163, !165, !167, !169, !170, !172, !173, !174, !175, !176, !177, !178, !180, !181, !182, !183, !184, !186, !188, !190, !192, !194, !196, !197, !198, !199, !200, !201, !203, !205, !206, !207, !208, !210, !211, !212, !213, !214, !215, !217, !219, !221, !222, !223, !225, !227, !228, !229, !231, !232, !233, !235, !237, !239, !241, !242, !243, !244, !245, !246, !248, !250, !251, !252, !254, !255, !257, !258, !259, !261, !262, !264, !266, !268, !270, !271, !272, !273, !274, !275, !277, !278, !280, !282, !283, !284, !285, !287, !288, !289, !290, !292, !293, !294, !295, !297, !298, !299, !301, !302, !304, !306, !307, !308, !310, !311, !313, !314, !315, !317, !318, !319, !321, !322, !324, !326, !328, !330, !331, !332, !333, !334, !335, !337, !339, !341, !343, !344, !345, !346, !348, !349, !350, !351, !352, !353, !355, !357, !358, !359, !360, !361, !362, !364, !365, !366, !367, !369, !371, !372, !373, !374, !375, !376, !378, !380, !381, !382, !383, !384, !385, !387, !389, !390, !391, !393, !394, !396, !398, !399, !400, !402, !404, !405, !406, !408, !409, !410, !411, !412, !413, !415, !417, !419, !421, !422, !423, !425, !426, !428, !430, !432, !433, !434, !435, !437, !438, !439, !441, !442, !443, !445, !446, !447, !449, !451, !453, !455, !456, !457, !458, !460, !461, !462, !463, !464, !465, !467, !469, !471, !472, !473, !474, !476, !477, !478, !480, !481, !482, !484, !485, !486, !488, !489, !490, !492, !493, !494, !495, !497, !498, !499, !501, !503, !504, !505, !506, !508, !509, !510, !512, !513, !514, !515, !516, !518, !520, !521, !522, !523, !524, !525, !527, !529, !530, !531, !532, !534, !535, !536, !538, !539, !540, !542, !543, !544, !546, !547, !548, !550, !551, !553, !554, !555, !557, !558, !560, !561, !562, !564, !565, !567, !568, !570, !571, !573, !575, !576, !577, !579, !580, !582, !584, !585, !586, !588, !589, !591, !593, !594, !595, !596, !598, !600, !602, !603, !604, !605, !607, !608, !609, !611, !613, !615, !616, !617, !618, !620, !621, !622, !624, !625, !626, !628, !629, !630, !632, !633, !635, !637, !638, !639, !640, !642, !643, !644, !646, !648, !649, !650, !651, !653, !654, !656, !657, !659, !660, !661, !663, !664, !665, !667, !669, !671, !673, !674, !675, !676, !678, !679, !680, !681, !682, !684, !685, !686, !687, !689, !691, !692, !693, !695, !696, !698, !700, !701, !702, !704, !706, !707, !708, !710, !712, !714, !716, !717, !718, !720, !722, !724, !725, !726, !727, !729, !730, !732, !733, !734, !736, !737, !738, !740}
!llvm.module.flags = !{!742, !743, !744, !745, !746, !747, !748, !749}
!llvm.ident = !{!750}

!0 = !{ptr @__param_force_lna_activation, !1, !"__param_force_lna_activation", i1 false, i1 false}
!1 = !{!"../drivers/media/usb/dvb-usb/dib0700_devices.c", i32 28, i32 1}
!2 = !{ptr @__UNIQUE_ID_force_lna_activationtype386, !1, !"__UNIQUE_ID_force_lna_activationtype386", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_force_lna_activation387, !4, !"__UNIQUE_ID_force_lna_activation387", i1 false, i1 false}
!4 = !{!"../drivers/media/usb/dvb-usb/dib0700_devices.c", i32 29, i32 1}
!5 = !{ptr @dib0700_usb_id_table, !6, !"dib0700_usb_id_table", i1 false, i1 false}
!6 = !{!"../drivers/media/usb/dvb-usb/dib0700_devices.c", i32 3819, i32 22}
!7 = !{ptr @.str, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/media/usb/dvb-usb/dib0700_devices.c", i32 3943, i32 3}
!9 = !{ptr @.str.1, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/media/usb/dvb-usb/dib0700_devices.c", i32 4000, i32 24}
!11 = !{ptr @.str.2, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/media/usb/dvb-usb/dib0700_devices.c", i32 3964, i32 8}
!13 = !{ptr @.str.3, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/media/usb/dvb-usb/dib0700_devices.c", i32 3968, i32 8}
!15 = !{ptr @.str.4, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/media/usb/dvb-usb/dib0700_devices.c", i32 3972, i32 8}
!17 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/media/usb/dvb-usb/dib0700_devices.c", i32 3976, i32 8}
!19 = !{ptr @.str.6, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/media/usb/dvb-usb/dib0700_devices.c", i32 3980, i32 8}
!21 = !{ptr @.str.7, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/media/usb/dvb-usb/dib0700_devices.c", i32 3984, i32 8}
!23 = !{ptr @.str.8, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/media/usb/dvb-usb/dib0700_devices.c", i32 3988, i32 8}
!25 = !{ptr @.str.9, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/media/usb/dvb-usb/dib0700_devices.c", i32 3992, i32 8}
!27 = !{ptr @.str.10, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/media/usb/dvb-usb/dib0700_devices.c", i32 4032, i32 8}
!29 = !{ptr @.str.11, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/media/usb/dvb-usb/dib0700_devices.c", i32 4080, i32 8}
!31 = !{ptr @.str.12, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/media/usb/dvb-usb/dib0700_devices.c", i32 4084, i32 8}
!33 = !{ptr @.str.13, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/media/usb/dvb-usb/dib0700_devices.c", i32 4088, i32 8}
!35 = !{ptr @.str.14, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/media/usb/dvb-usb/dib0700_devices.c", i32 4092, i32 8}
!37 = !{ptr @.str.15, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/media/usb/dvb-usb/dib0700_devices.c", i32 4096, i32 8}
!39 = !{ptr @.str.16, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/media/usb/dvb-usb/dib0700_devices.c", i32 4150, i32 21}
!41 = !{ptr @.str.17, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/media/usb/dvb-usb/dib0700_devices.c", i32 4133, i32 8}
!43 = !{ptr @.str.18, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/media/usb/dvb-usb/dib0700_devices.c", i32 4137, i32 8}
!45 = !{ptr @.str.19, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/media/usb/dvb-usb/dib0700_devices.c", i32 4141, i32 8}
!47 = !{ptr @.str.20, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/media/usb/dvb-usb/dib0700_devices.c", i32 4178, i32 8}
!49 = !{ptr @.str.21, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/media/usb/dvb-usb/dib0700_devices.c", i32 4182, i32 8}
!51 = !{ptr @.str.22, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/media/usb/dvb-usb/dib0700_devices.c", i32 4186, i32 8}
!53 = !{ptr @.str.23, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/media/usb/dvb-usb/dib0700_devices.c", i32 4190, i32 8}
!55 = !{ptr @.str.24, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/media/usb/dvb-usb/dib0700_devices.c", i32 4198, i32 8}
!57 = !{ptr @.str.25, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/media/usb/dvb-usb/dib0700_devices.c", i32 4202, i32 8}
!59 = !{ptr @.str.26, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/media/usb/dvb-usb/dib0700_devices.c", i32 4206, i32 8}
!61 = !{ptr @.str.27, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/media/usb/dvb-usb/dib0700_devices.c", i32 4210, i32 8}
!63 = !{ptr @.str.28, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/media/usb/dvb-usb/dib0700_devices.c", i32 4214, i32 8}
!65 = !{ptr @.str.29, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/media/usb/dvb-usb/dib0700_devices.c", i32 4218, i32 8}
!67 = !{ptr @.str.30, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/media/usb/dvb-usb/dib0700_devices.c", i32 4222, i32 8}
!69 = !{ptr @.str.31, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/media/usb/dvb-usb/dib0700_devices.c", i32 4259, i32 8}
!71 = !{ptr @.str.32, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/media/usb/dvb-usb/dib0700_devices.c", i32 4263, i32 8}
!73 = !{ptr @.str.33, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/media/usb/dvb-usb/dib0700_devices.c", i32 4267, i32 8}
!75 = !{ptr @.str.34, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/media/usb/dvb-usb/dib0700_devices.c", i32 4316, i32 8}
!77 = !{ptr @.str.35, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/media/usb/dvb-usb/dib0700_devices.c", i32 4320, i32 8}
!79 = !{ptr @.str.36, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/media/usb/dvb-usb/dib0700_devices.c", i32 4324, i32 8}
!81 = !{ptr @.str.37, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/media/usb/dvb-usb/dib0700_devices.c", i32 4373, i32 8}
!83 = !{ptr @.str.38, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/media/usb/dvb-usb/dib0700_devices.c", i32 4377, i32 8}
!85 = !{ptr @.str.39, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/media/usb/dvb-usb/dib0700_devices.c", i32 4381, i32 8}
!87 = !{ptr @.str.40, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/media/usb/dvb-usb/dib0700_devices.c", i32 4385, i32 7}
!89 = !{ptr @.str.41, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/media/usb/dvb-usb/dib0700_devices.c", i32 4390, i32 7}
!91 = !{ptr @.str.42, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/media/usb/dvb-usb/dib0700_devices.c", i32 4447, i32 24}
!93 = !{ptr @.str.43, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/media/usb/dvb-usb/dib0700_devices.c", i32 4439, i32 8}
!95 = !{ptr @.str.44, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/media/usb/dvb-usb/dib0700_devices.c", i32 4476, i32 8}
!97 = !{ptr @.str.45, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/media/usb/dvb-usb/dib0700_devices.c", i32 4480, i32 8}
!99 = !{ptr @.str.46, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/media/usb/dvb-usb/dib0700_devices.c", i32 4484, i32 8}
!101 = !{ptr @.str.47, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/media/usb/dvb-usb/dib0700_devices.c", i32 4488, i32 8}
!103 = !{ptr @.str.48, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/media/usb/dvb-usb/dib0700_devices.c", i32 4492, i32 8}
!105 = !{ptr @.str.49, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/media/usb/dvb-usb/dib0700_devices.c", i32 4496, i32 8}
!107 = !{ptr @.str.50, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/media/usb/dvb-usb/dib0700_devices.c", i32 4500, i32 8}
!109 = !{ptr @.str.51, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/media/usb/dvb-usb/dib0700_devices.c", i32 4504, i32 8}
!111 = !{ptr @.str.52, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/media/usb/dvb-usb/dib0700_devices.c", i32 4508, i32 8}
!113 = !{ptr @.str.53, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/media/usb/dvb-usb/dib0700_devices.c", i32 4512, i32 8}
!115 = !{ptr @.str.54, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/media/usb/dvb-usb/dib0700_devices.c", i32 4544, i32 8}
!117 = !{ptr @.str.55, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/media/usb/dvb-usb/dib0700_devices.c", i32 4548, i32 8}
!119 = !{ptr @.str.56, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/media/usb/dvb-usb/dib0700_devices.c", i32 4580, i32 8}
!121 = !{ptr @.str.57, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/media/usb/dvb-usb/dib0700_devices.c", i32 4584, i32 8}
!123 = !{ptr @.str.58, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/media/usb/dvb-usb/dib0700_devices.c", i32 4610, i32 8}
!125 = !{ptr @.str.59, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/media/usb/dvb-usb/dib0700_devices.c", i32 4614, i32 8}
!127 = !{ptr @.str.60, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/media/usb/dvb-usb/dib0700_devices.c", i32 4620, i32 8}
!129 = !{ptr @.str.61, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/media/usb/dvb-usb/dib0700_devices.c", i32 4624, i32 8}
!131 = !{ptr @.str.62, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/media/usb/dvb-usb/dib0700_devices.c", i32 4660, i32 8}
!133 = !{ptr @.str.63, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/media/usb/dvb-usb/dib0700_devices.c", i32 4664, i32 8}
!135 = !{ptr @.str.64, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/media/usb/dvb-usb/dib0700_devices.c", i32 4668, i32 8}
!137 = !{ptr @.str.65, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/media/usb/dvb-usb/dib0700_devices.c", i32 4717, i32 8}
!139 = !{ptr @.str.66, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/media/usb/dvb-usb/dib0700_devices.c", i32 4754, i32 8}
!141 = !{ptr @.str.67, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/media/usb/dvb-usb/dib0700_devices.c", i32 4791, i32 8}
!143 = !{ptr @.str.68, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/media/usb/dvb-usb/dib0700_devices.c", i32 4828, i32 8}
!145 = !{ptr @.str.69, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/media/usb/dvb-usb/dib0700_devices.c", i32 4865, i32 8}
!147 = !{ptr @.str.70, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/media/usb/dvb-usb/dib0700_devices.c", i32 4902, i32 8}
!149 = !{ptr @.str.71, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/media/usb/dvb-usb/dib0700_devices.c", i32 4953, i32 8}
!151 = !{ptr @.str.72, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/media/usb/dvb-usb/dib0700_devices.c", i32 4985, i32 8}
!153 = !{ptr @.str.73, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/media/usb/dvb-usb/dib0700_devices.c", i32 4989, i32 8}
!155 = !{ptr @.str.74, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/media/usb/dvb-usb/dib0700_devices.c", i32 5025, i32 8}
!157 = !{ptr @.str.75, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/media/usb/dvb-usb/dib0700_devices.c", i32 5063, i32 8}
!159 = !{ptr @.str.76, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/media/usb/dvb-usb/dib0700_devices.c", i32 5116, i32 8}
!161 = !{ptr @.str.77, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/media/usb/dvb-usb/dib0700_devices.c", i32 5147, i32 6}
!163 = !{ptr @dib0700_devices, !164, !"dib0700_devices", i1 false, i1 false}
!164 = !{!"../drivers/media/usb/dvb-usb/dib0700_devices.c", i32 3941, i32 34}
!165 = !{ptr @dib0700_device_count, !166, !"dib0700_device_count", i1 false, i1 false}
!166 = !{!"../drivers/media/usb/dvb-usb/dib0700_devices.c", i32 5155, i32 5}
!167 = !{ptr @force_lna_activation, !168, !"force_lna_activation", i1 false, i1 false}
!168 = !{!"../drivers/media/usb/dvb-usb/dib0700_devices.c", i32 27, i32 12}
!169 = !{ptr @__param_str_force_lna_activation, !1, !"__param_str_force_lna_activation", i1 false, i1 false}
!170 = !{ptr @.str.78, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/media/usb/dvb-usb/dib0700_devices.c", i32 706, i32 7}
!172 = !{ptr @.str.79, !171, !"<string literal>", i1 false, i1 false}
!173 = !{ptr @.str.80, !171, !"<string literal>", i1 false, i1 false}
!174 = !{ptr @.str.81, !171, !"<string literal>", i1 false, i1 false}
!175 = !{ptr @.str.82, !171, !"<string literal>", i1 false, i1 false}
!176 = !{ptr @stk7700p_frontend_attach._entry, !171, !"_entry", i1 false, i1 false}
!177 = !{ptr @stk7700p_frontend_attach._entry_ptr, !171, !"_entry_ptr", i1 false, i1 false}
!178 = !{ptr @.str.83, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/media/usb/dvb-usb/dib0700_devices.c", i32 730, i32 25}
!180 = !{ptr @.str.84, !179, !"<string literal>", i1 false, i1 false}
!181 = !{ptr @.str.86, !179, !"<string literal>", i1 false, i1 false}
!182 = !{ptr @stk7700p_frontend_attach._entry.85, !179, !"_entry", i1 false, i1 false}
!183 = !{ptr @stk7700p_frontend_attach._entry_ptr.87, !179, !"_entry_ptr", i1 false, i1 false}
!184 = !{ptr @stk7700p_dib7000p_config, !185, !"stk7700p_dib7000p_config", i1 false, i1 false}
!185 = !{!"../drivers/media/usb/dvb-usb/dib0700_devices.c", i32 689, i32 31}
!186 = !{ptr @stk7700p_7000p_mt2060_agc_config, !187, !"stk7700p_7000p_mt2060_agc_config", i1 false, i1 false}
!187 = !{!"../drivers/media/usb/dvb-usb/dib0700_devices.c", i32 623, i32 34}
!188 = !{ptr @stk7700p_pll_config, !189, !"stk7700p_pll_config", i1 false, i1 false}
!189 = !{!"../drivers/media/usb/dvb-usb/dib0700_devices.c", i32 656, i32 40}
!190 = !{ptr @stk7700p_dib7000m_config, !191, !"stk7700p_dib7000m_config", i1 false, i1 false}
!191 = !{!"../drivers/media/usb/dvb-usb/dib0700_devices.c", i32 675, i32 31}
!192 = !{ptr @stk7700p_7000m_mt2060_agc_config, !193, !"stk7700p_7000m_mt2060_agc_config", i1 false, i1 false}
!193 = !{!"../drivers/media/usb/dvb-usb/dib0700_devices.c", i32 577, i32 34}
!194 = !{ptr @.str.88, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/media/usb/dvb-usb/dib0700_devices.c", i32 758, i32 9}
!196 = !{ptr @.str.89, !195, !"<string literal>", i1 false, i1 false}
!197 = !{ptr @.str.90, !195, !"<string literal>", i1 false, i1 false}
!198 = !{ptr @.str.91, !195, !"<string literal>", i1 false, i1 false}
!199 = !{ptr @stk7700p_tuner_attach._entry, !195, !"_entry", i1 false, i1 false}
!200 = !{ptr @stk7700p_tuner_attach._entry_ptr, !195, !"_entry_ptr", i1 false, i1 false}
!201 = !{ptr @stk7700p_mt2060_config, !202, !"stk7700p_mt2060_config", i1 false, i1 false}
!202 = !{!"../drivers/media/usb/dvb-usb/dib0700_devices.c", i32 736, i32 29}
!203 = !{ptr @.str.92, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/media/usb/dvb-usb/dib0700_devices.c", i32 537, i32 3}
!205 = !{ptr @.str.93, !204, !"<string literal>", i1 false, i1 false}
!206 = !{ptr @dib0700_rc_query_old_firmware._entry, !204, !"_entry", i1 false, i1 false}
!207 = !{ptr @dib0700_rc_query_old_firmware._entry_ptr, !204, !"_entry_ptr", i1 false, i1 false}
!208 = !{ptr @.str.94, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/media/usb/dvb-usb/dib0700_devices.c", i32 105, i32 32}
!210 = !{ptr @.str.95, !209, !"<string literal>", i1 false, i1 false}
!211 = !{ptr @.str.96, !209, !"<string literal>", i1 false, i1 false}
!212 = !{ptr @.str.97, !209, !"<string literal>", i1 false, i1 false}
!213 = !{ptr @bristol_frontend_attach._entry, !209, !"_entry", i1 false, i1 false}
!214 = !{ptr @bristol_frontend_attach._entry_ptr, !209, !"_entry_ptr", i1 false, i1 false}
!215 = !{ptr @bristol_dib3000mc_config, !216, !"bristol_dib3000mc_config", i1 false, i1 false}
!216 = !{!"../drivers/media/usb/dvb-usb/dib0700_devices.c", i32 72, i32 32}
!217 = !{ptr @bristol_dib3000p_mt2060_agc_config, !218, !"bristol_dib3000p_mt2060_agc_config", i1 false, i1 false}
!218 = !{!"../drivers/media/usb/dvb-usb/dib0700_devices.c", i32 50, i32 34}
!219 = !{ptr @.str.98, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../drivers/media/usb/dvb-usb/dib0700_devices.c", i32 129, i32 9}
!221 = !{ptr @bristol_tuner_attach._entry, !220, !"_entry", i1 false, i1 false}
!222 = !{ptr @bristol_tuner_attach._entry_ptr, !220, !"_entry_ptr", i1 false, i1 false}
!223 = !{ptr @bristol_mt2060_config, !224, !"bristol_mt2060_config", i1 false, i1 false}
!224 = !{!"../drivers/media/usb/dvb-usb/dib0700_devices.c", i32 40, i32 29}
!225 = !{ptr @.str.99, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../drivers/media/usb/dvb-usb/dib0700_devices.c", i32 310, i32 7}
!227 = !{ptr @stk7700d_frontend_attach._entry, !226, !"_entry", i1 false, i1 false}
!228 = !{ptr @stk7700d_frontend_attach._entry_ptr, !226, !"_entry_ptr", i1 false, i1 false}
!229 = !{ptr @.str.101, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../drivers/media/usb/dvb-usb/dib0700_devices.c", i32 327, i32 4}
!231 = !{ptr @stk7700d_frontend_attach._entry.100, !230, !"_entry", i1 false, i1 false}
!232 = !{ptr @stk7700d_frontend_attach._entry_ptr.102, !230, !"_entry_ptr", i1 false, i1 false}
!233 = !{ptr @stk7700d_dib7000p_mt2266_config, !234, !"stk7700d_dib7000p_mt2266_config", i1 false, i1 false}
!234 = !{!"../drivers/media/usb/dvb-usb/dib0700_devices.c", i32 239, i32 31}
!235 = !{ptr @stk7700d_7000p_mt2266_agc_config, !236, !"stk7700d_7000p_mt2266_agc_config", i1 false, i1 false}
!236 = !{!"../drivers/media/usb/dvb-usb/dib0700_devices.c", i32 137, i32 34}
!237 = !{ptr @stk7700d_mt2266_pll_config, !238, !"stk7700d_mt2266_pll_config", i1 false, i1 false}
!238 = !{!"../drivers/media/usb/dvb-usb/dib0700_devices.c", i32 221, i32 40}
!239 = !{ptr @.str.103, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../drivers/media/usb/dvb-usb/dib0700_devices.c", i32 347, i32 9}
!241 = !{ptr @.str.104, !240, !"<string literal>", i1 false, i1 false}
!242 = !{ptr @.str.105, !240, !"<string literal>", i1 false, i1 false}
!243 = !{ptr @.str.106, !240, !"<string literal>", i1 false, i1 false}
!244 = !{ptr @stk7700d_tuner_attach._entry, !240, !"_entry", i1 false, i1 false}
!245 = !{ptr @stk7700d_tuner_attach._entry_ptr, !240, !"_entry_ptr", i1 false, i1 false}
!246 = !{ptr @stk7700d_mt2266_config, !247, !"stk7700d_mt2266_config", i1 false, i1 false}
!247 = !{!"../drivers/media/usb/dvb-usb/dib0700_devices.c", i32 266, i32 29}
!248 = !{ptr @.str.107, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../drivers/media/usb/dvb-usb/dib0700_devices.c", i32 277, i32 7}
!250 = !{ptr @stk7700P2_frontend_attach._entry, !249, !"_entry", i1 false, i1 false}
!251 = !{ptr @stk7700P2_frontend_attach._entry_ptr, !249, !"_entry_ptr", i1 false, i1 false}
!252 = !{ptr @stk7700P2_frontend_attach._entry.108, !253, !"_entry", i1 false, i1 false}
!253 = !{!"../drivers/media/usb/dvb-usb/dib0700_devices.c", i32 293, i32 4}
!254 = !{ptr @stk7700P2_frontend_attach._entry_ptr.109, !253, !"_entry_ptr", i1 false, i1 false}
!255 = !{ptr @.str.110, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../drivers/media/usb/dvb-usb/dib0700_devices.c", i32 989, i32 7}
!257 = !{ptr @stk7070p_frontend_attach._entry, !256, !"_entry", i1 false, i1 false}
!258 = !{ptr @stk7070p_frontend_attach._entry_ptr, !256, !"_entry_ptr", i1 false, i1 false}
!259 = !{ptr @stk7070p_frontend_attach._entry.111, !260, !"_entry", i1 false, i1 false}
!260 = !{!"../drivers/media/usb/dvb-usb/dib0700_devices.c", i32 1012, i32 3}
!261 = !{ptr @stk7070p_frontend_attach._entry_ptr.112, !260, !"_entry_ptr", i1 false, i1 false}
!262 = !{ptr @dib7070p_dib7000p_config, !263, !"dib7070p_dib7000p_config", i1 false, i1 false}
!263 = !{!"../drivers/media/usb/dvb-usb/dib0700_devices.c", i32 967, i32 31}
!264 = !{ptr @dib7070_agc_config, !265, !"dib7070_agc_config", i1 false, i1 false}
!265 = !{!"../drivers/media/usb/dvb-usb/dib0700_devices.c", i32 763, i32 34}
!266 = !{ptr @dib7070_bw_config_12_mhz, !267, !"dib7070_bw_config_12_mhz", i1 false, i1 false}
!267 = !{!"../drivers/media/usb/dvb-usb/dib0700_devices.c", i32 948, i32 40}
!268 = !{ptr @.str.113, !269, !"<string literal>", i1 false, i1 false}
!269 = !{!"../drivers/media/usb/dvb-usb/dib0700_devices.c", i32 904, i32 7}
!270 = !{ptr @.str.114, !269, !"<string literal>", i1 false, i1 false}
!271 = !{ptr @.str.115, !269, !"<string literal>", i1 false, i1 false}
!272 = !{ptr @.str.116, !269, !"<string literal>", i1 false, i1 false}
!273 = !{ptr @dib7070p_tuner_attach._entry, !269, !"_entry", i1 false, i1 false}
!274 = !{ptr @dib7070p_tuner_attach._entry_ptr, !269, !"_entry_ptr", i1 false, i1 false}
!275 = !{ptr @dib7070p_tuner_attach._entry.117, !276, !"_entry", i1 false, i1 false}
!276 = !{!"../drivers/media/usb/dvb-usb/dib0700_devices.c", i32 907, i32 7}
!277 = !{ptr @dib7070p_tuner_attach._entry_ptr.118, !276, !"_entry_ptr", i1 false, i1 false}
!278 = !{ptr @dib7070p_dib0070_config, !279, !"dib7070p_dib0070_config", i1 false, i1 false}
!279 = !{!"../drivers/media/usb/dvb-usb/dib0700_devices.c", i32 814, i32 30}
!280 = !{ptr @.str.119, !281, !"<string literal>", i1 false, i1 false}
!281 = !{!"../drivers/media/usb/dvb-usb/dib0700_devices.c", i32 801, i32 2}
!282 = !{ptr @.str.120, !281, !"<string literal>", i1 false, i1 false}
!283 = !{ptr @dib7070_tuner_reset._entry, !281, !"_entry", i1 false, i1 false}
!284 = !{ptr @dib7070_tuner_reset._entry_ptr, !281, !"_entry_ptr", i1 false, i1 false}
!285 = !{ptr @.str.121, !286, !"<string literal>", i1 false, i1 false}
!286 = !{!"../drivers/media/usb/dvb-usb/dib0700_devices.c", i32 810, i32 2}
!287 = !{ptr @.str.122, !286, !"<string literal>", i1 false, i1 false}
!288 = !{ptr @dib7070_tuner_sleep._entry, !286, !"_entry", i1 false, i1 false}
!289 = !{ptr @dib7070_tuner_sleep._entry_ptr, !286, !"_entry_ptr", i1 false, i1 false}
!290 = !{ptr @.str.123, !291, !"<string literal>", i1 false, i1 false}
!291 = !{!"../drivers/media/usb/dvb-usb/dib0700_devices.c", i32 854, i32 2}
!292 = !{ptr @.str.124, !291, !"<string literal>", i1 false, i1 false}
!293 = !{ptr @dib7070_set_param_override._entry, !291, !"_entry", i1 false, i1 false}
!294 = !{ptr @dib7070_set_param_override._entry_ptr, !291, !"_entry_ptr", i1 false, i1 false}
!295 = !{ptr @.str.125, !296, !"<string literal>", i1 false, i1 false}
!296 = !{!"../drivers/media/usb/dvb-usb/dib0700_devices.c", i32 3377, i32 7}
!297 = !{ptr @novatd_frontend_attach._entry, !296, !"_entry", i1 false, i1 false}
!298 = !{ptr @novatd_frontend_attach._entry_ptr, !296, !"_entry_ptr", i1 false, i1 false}
!299 = !{ptr @novatd_frontend_attach._entry.126, !300, !"_entry", i1 false, i1 false}
!300 = !{!"../drivers/media/usb/dvb-usb/dib0700_devices.c", i32 3390, i32 4}
!301 = !{ptr @novatd_frontend_attach._entry_ptr.127, !300, !"_entry_ptr", i1 false, i1 false}
!302 = !{ptr @stk7070pd_dib7000p_config, !303, !"stk7070pd_dib7000p_config", i1 false, i1 false}
!303 = !{!"../drivers/media/usb/dvb-usb/dib0700_devices.c", i32 3254, i32 31}
!304 = !{ptr @.str.128, !305, !"<string literal>", i1 false, i1 false}
!305 = !{!"../drivers/media/usb/dvb-usb/dib0700_devices.c", i32 3305, i32 7}
!306 = !{ptr @stk7070pd_frontend_attach0._entry, !305, !"_entry", i1 false, i1 false}
!307 = !{ptr @stk7070pd_frontend_attach0._entry_ptr, !305, !"_entry_ptr", i1 false, i1 false}
!308 = !{ptr @stk7070pd_frontend_attach0._entry.129, !309, !"_entry", i1 false, i1 false}
!309 = !{!"../drivers/media/usb/dvb-usb/dib0700_devices.c", i32 3315, i32 3}
!310 = !{ptr @stk7070pd_frontend_attach0._entry_ptr.130, !309, !"_entry_ptr", i1 false, i1 false}
!311 = !{ptr @.str.131, !312, !"<string literal>", i1 false, i1 false}
!312 = !{!"../drivers/media/usb/dvb-usb/dib0700_devices.c", i32 3329, i32 7}
!313 = !{ptr @stk7070pd_frontend_attach1._entry, !312, !"_entry", i1 false, i1 false}
!314 = !{ptr @stk7070pd_frontend_attach1._entry_ptr, !312, !"_entry_ptr", i1 false, i1 false}
!315 = !{ptr @.str.132, !316, !"<string literal>", i1 false, i1 false}
!316 = !{!"../drivers/media/usb/dvb-usb/dib0700_devices.c", i32 459, i32 7}
!317 = !{ptr @stk7700ph_frontend_attach._entry, !316, !"_entry", i1 false, i1 false}
!318 = !{ptr @stk7700ph_frontend_attach._entry_ptr, !316, !"_entry_ptr", i1 false, i1 false}
!319 = !{ptr @stk7700ph_frontend_attach._entry.133, !320, !"_entry", i1 false, i1 false}
!320 = !{!"../drivers/media/usb/dvb-usb/dib0700_devices.c", i32 480, i32 3}
!321 = !{ptr @stk7700ph_frontend_attach._entry_ptr.134, !320, !"_entry_ptr", i1 false, i1 false}
!322 = !{ptr @stk7700ph_dib7700_xc3028_config, !323, !"stk7700ph_dib7700_xc3028_config", i1 false, i1 false}
!323 = !{!"../drivers/media/usb/dvb-usb/dib0700_devices.c", i32 406, i32 31}
!324 = !{ptr @xc3028_agc_config, !325, !"xc3028_agc_config", i1 false, i1 false}
!325 = !{!"../drivers/media/usb/dvb-usb/dib0700_devices.c", i32 352, i32 34}
!326 = !{ptr @xc3028_bw_config, !327, !"xc3028_bw_config", i1 false, i1 false}
!327 = !{!"../drivers/media/usb/dvb-usb/dib0700_devices.c", i32 387, i32 40}
!328 = !{ptr @.str.135, !329, !"<string literal>", i1 false, i1 false}
!329 = !{!"../drivers/media/usb/dvb-usb/dib0700_devices.c", i32 505, i32 9}
!330 = !{ptr @.str.136, !329, !"<string literal>", i1 false, i1 false}
!331 = !{ptr @.str.137, !329, !"<string literal>", i1 false, i1 false}
!332 = !{ptr @.str.138, !329, !"<string literal>", i1 false, i1 false}
!333 = !{ptr @stk7700ph_tuner_attach._entry, !329, !"_entry", i1 false, i1 false}
!334 = !{ptr @stk7700ph_tuner_attach._entry_ptr, !329, !"_entry_ptr", i1 false, i1 false}
!335 = !{ptr @stk7700ph_xc3028_config, !336, !"stk7700ph_xc3028_config", i1 false, i1 false}
!336 = !{!"../drivers/media/usb/dvb-usb/dib0700_devices.c", i32 449, i32 29}
!337 = !{ptr @.str.139, !338, !"<string literal>", i1 false, i1 false}
!338 = !{!"../drivers/media/usb/dvb-usb/dib0700_devices.c", i32 444, i32 11}
!339 = !{ptr @stk7700ph_xc3028_ctrl, !340, !"stk7700ph_xc3028_ctrl", i1 false, i1 false}
!340 = !{!"../drivers/media/usb/dvb-usb/dib0700_devices.c", i32 443, i32 27}
!341 = !{ptr @.str.140, !342, !"<string literal>", i1 false, i1 false}
!342 = !{!"../drivers/media/usb/dvb-usb/dib0700_devices.c", i32 436, i32 3}
!343 = !{ptr @.str.141, !342, !"<string literal>", i1 false, i1 false}
!344 = !{ptr @stk7700ph_xc3028_callback._entry, !342, !"_entry", i1 false, i1 false}
!345 = !{ptr @stk7700ph_xc3028_callback._entry_ptr, !342, !"_entry_ptr", i1 false, i1 false}
!346 = !{ptr @.str.142, !347, !"<string literal>", i1 false, i1 false}
!347 = !{!"../drivers/media/usb/dvb-usb/dib0700_devices.c", i32 3464, i32 24}
!348 = !{ptr @.str.143, !347, !"<string literal>", i1 false, i1 false}
!349 = !{ptr @.str.144, !347, !"<string literal>", i1 false, i1 false}
!350 = !{ptr @.str.145, !347, !"<string literal>", i1 false, i1 false}
!351 = !{ptr @s5h1411_frontend_attach._entry, !347, !"_entry", i1 false, i1 false}
!352 = !{ptr @s5h1411_frontend_attach._entry_ptr, !347, !"_entry_ptr", i1 false, i1 false}
!353 = !{ptr @pinnacle_801e_config, !354, !"pinnacle_801e_config", i1 false, i1 false}
!354 = !{!"../drivers/media/usb/dvb-usb/dib0700_devices.c", i32 3413, i32 30}
!355 = !{ptr @.str.146, !356, !"<string literal>", i1 false, i1 false}
!356 = !{!"../drivers/media/usb/dvb-usb/dib0700_devices.c", i32 3498, i32 9}
!357 = !{ptr @.str.147, !356, !"<string literal>", i1 false, i1 false}
!358 = !{ptr @.str.148, !356, !"<string literal>", i1 false, i1 false}
!359 = !{ptr @.str.149, !356, !"<string literal>", i1 false, i1 false}
!360 = !{ptr @xc5000_tuner_attach._entry, !356, !"_entry", i1 false, i1 false}
!361 = !{ptr @xc5000_tuner_attach._entry_ptr, !356, !"_entry_ptr", i1 false, i1 false}
!362 = !{ptr @.str.150, !363, !"<string literal>", i1 false, i1 false}
!363 = !{!"../drivers/media/usb/dvb-usb/dib0700_devices.c", i32 3481, i32 3}
!364 = !{ptr @.str.151, !363, !"<string literal>", i1 false, i1 false}
!365 = !{ptr @dib0700_xc5000_tuner_callback._entry, !363, !"_entry", i1 false, i1 false}
!366 = !{ptr @dib0700_xc5000_tuner_callback._entry_ptr, !363, !"_entry_ptr", i1 false, i1 false}
!367 = !{ptr @s5h1411_xc5000_tunerconfig, !368, !"s5h1411_xc5000_tunerconfig", i1 false, i1 false}
!368 = !{!"../drivers/media/usb/dvb-usb/dib0700_devices.c", i32 3488, i32 29}
!369 = !{ptr @.str.152, !370, !"<string literal>", i1 false, i1 false}
!370 = !{!"../drivers/media/usb/dvb-usb/dib0700_devices.c", i32 3719, i32 24}
!371 = !{ptr @.str.153, !370, !"<string literal>", i1 false, i1 false}
!372 = !{ptr @.str.154, !370, !"<string literal>", i1 false, i1 false}
!373 = !{ptr @.str.155, !370, !"<string literal>", i1 false, i1 false}
!374 = !{ptr @lgdt3305_frontend_attach._entry, !370, !"_entry", i1 false, i1 false}
!375 = !{ptr @lgdt3305_frontend_attach._entry_ptr, !370, !"_entry_ptr", i1 false, i1 false}
!376 = !{ptr @hcw_lgdt3305_config, !377, !"hcw_lgdt3305_config", i1 false, i1 false}
!377 = !{!"../drivers/media/usb/dvb-usb/dib0700_devices.c", i32 3668, i32 31}
!378 = !{ptr @.str.156, !379, !"<string literal>", i1 false, i1 false}
!379 = !{!"../drivers/media/usb/dvb-usb/dib0700_devices.c", i32 3728, i32 9}
!380 = !{ptr @.str.157, !379, !"<string literal>", i1 false, i1 false}
!381 = !{ptr @.str.158, !379, !"<string literal>", i1 false, i1 false}
!382 = !{ptr @.str.159, !379, !"<string literal>", i1 false, i1 false}
!383 = !{ptr @mxl5007t_tuner_attach._entry, !379, !"_entry", i1 false, i1 false}
!384 = !{ptr @mxl5007t_tuner_attach._entry_ptr, !379, !"_entry_ptr", i1 false, i1 false}
!385 = !{ptr @hcw_mxl5007t_config, !386, !"hcw_mxl5007t_config", i1 false, i1 false}
!386 = !{!"../drivers/media/usb/dvb-usb/dib0700_devices.c", i32 3680, i32 31}
!387 = !{ptr @.str.160, !388, !"<string literal>", i1 false, i1 false}
!388 = !{!"../drivers/media/usb/dvb-usb/dib0700_devices.c", i32 1047, i32 7}
!389 = !{ptr @stk7770p_frontend_attach._entry, !388, !"_entry", i1 false, i1 false}
!390 = !{ptr @stk7770p_frontend_attach._entry_ptr, !388, !"_entry_ptr", i1 false, i1 false}
!391 = !{ptr @stk7770p_frontend_attach._entry.161, !392, !"_entry", i1 false, i1 false}
!392 = !{!"../drivers/media/usb/dvb-usb/dib0700_devices.c", i32 1070, i32 3}
!393 = !{ptr @stk7770p_frontend_attach._entry_ptr.162, !392, !"_entry_ptr", i1 false, i1 false}
!394 = !{ptr @dib7770p_dib7000p_config, !395, !"dib7770p_dib7000p_config", i1 false, i1 false}
!395 = !{!"../drivers/media/usb/dvb-usb/dib0700_devices.c", i32 1024, i32 31}
!396 = !{ptr @.str.163, !397, !"<string literal>", i1 false, i1 false}
!397 = !{!"../drivers/media/usb/dvb-usb/dib0700_devices.c", i32 889, i32 6}
!398 = !{ptr @dib7770p_tuner_attach._entry, !397, !"_entry", i1 false, i1 false}
!399 = !{ptr @dib7770p_tuner_attach._entry_ptr, !397, !"_entry_ptr", i1 false, i1 false}
!400 = !{ptr @dib7770p_dib0070_config, !401, !"dib7770p_dib0070_config", i1 false, i1 false}
!401 = !{!"../drivers/media/usb/dvb-usb/dib0700_devices.c", i32 831, i32 30}
!402 = !{ptr @.str.164, !403, !"<string literal>", i1 false, i1 false}
!403 = !{!"../drivers/media/usb/dvb-usb/dib0700_devices.c", i32 878, i32 2}
!404 = !{ptr @dib7770_set_param_override._entry, !403, !"_entry", i1 false, i1 false}
!405 = !{ptr @dib7770_set_param_override._entry_ptr, !403, !"_entry_ptr", i1 false, i1 false}
!406 = !{ptr @.str.165, !407, !"<string literal>", i1 false, i1 false}
!407 = !{!"../drivers/media/usb/dvb-usb/dib0700_devices.c", i32 1347, i32 7}
!408 = !{ptr @.str.166, !407, !"<string literal>", i1 false, i1 false}
!409 = !{ptr @.str.167, !407, !"<string literal>", i1 false, i1 false}
!410 = !{ptr @.str.168, !407, !"<string literal>", i1 false, i1 false}
!411 = !{ptr @stk807x_frontend_attach._entry, !407, !"_entry", i1 false, i1 false}
!412 = !{ptr @stk807x_frontend_attach._entry_ptr, !407, !"_entry_ptr", i1 false, i1 false}
!413 = !{ptr @dib807x_dib8000_config, !414, !"dib807x_dib8000_config", i1 false, i1 false}
!414 = !{!"../drivers/media/usb/dvb-usb/dib0700_devices.c", i32 1193, i32 30}
!415 = !{ptr @dib807x_agc_config, !416, !"dib807x_agc_config", i1 false, i1 false}
!416 = !{!"../drivers/media/usb/dvb-usb/dib0700_devices.c", i32 1082, i32 34}
!417 = !{ptr @dib807x_bw_config_12_mhz, !418, !"dib807x_bw_config_12_mhz", i1 false, i1 false}
!418 = !{!"../drivers/media/usb/dvb-usb/dib0700_devices.c", i32 1174, i32 40}
!419 = !{ptr @.str.169, !420, !"<string literal>", i1 false, i1 false}
!420 = !{!"../drivers/media/usb/dvb-usb/dib0700_devices.c", i32 1312, i32 7}
!421 = !{ptr @dib807x_tuner_attach._entry, !420, !"_entry", i1 false, i1 false}
!422 = !{ptr @dib807x_tuner_attach._entry_ptr, !420, !"_entry_ptr", i1 false, i1 false}
!423 = !{ptr @dib807x_tuner_attach._entry.170, !424, !"_entry", i1 false, i1 false}
!424 = !{!"../drivers/media/usb/dvb-usb/dib0700_devices.c", i32 1316, i32 7}
!425 = !{ptr @dib807x_tuner_attach._entry_ptr.171, !424, !"_entry_ptr", i1 false, i1 false}
!426 = !{ptr @dib807x_dib0070_config, !427, !"dib807x_dib0070_config", i1 false, i1 false}
!427 = !{!"../drivers/media/usb/dvb-usb/dib0700_devices.c", i32 1251, i32 30}
!428 = !{ptr @dib8070_wbd_gain_cfg, !429, !"dib8070_wbd_gain_cfg", i1 false, i1 false}
!429 = !{!"../drivers/media/usb/dvb-usb/dib0700_devices.c", i32 1246, i32 42}
!430 = !{ptr @.str.172, !431, !"<string literal>", i1 false, i1 false}
!431 = !{!"../drivers/media/usb/dvb-usb/dib0700_devices.c", i32 1299, i32 2}
!432 = !{ptr @.str.173, !431, !"<string literal>", i1 false, i1 false}
!433 = !{ptr @dib807x_set_param_override._entry, !431, !"_entry", i1 false, i1 false}
!434 = !{ptr @dib807x_set_param_override._entry_ptr, !431, !"_entry_ptr", i1 false, i1 false}
!435 = !{ptr @.str.174, !436, !"<string literal>", i1 false, i1 false}
!436 = !{!"../drivers/media/usb/dvb-usb/dib0700_devices.c", i32 1379, i32 7}
!437 = !{ptr @stk807xpvr_frontend_attach0._entry, !436, !"_entry", i1 false, i1 false}
!438 = !{ptr @stk807xpvr_frontend_attach0._entry_ptr, !436, !"_entry_ptr", i1 false, i1 false}
!439 = !{ptr @.str.175, !440, !"<string literal>", i1 false, i1 false}
!440 = !{!"../drivers/media/usb/dvb-usb/dib0700_devices.c", i32 1412, i32 7}
!441 = !{ptr @stk807xpvr_frontend_attach1._entry, !440, !"_entry", i1 false, i1 false}
!442 = !{ptr @stk807xpvr_frontend_attach1._entry_ptr, !440, !"_entry_ptr", i1 false, i1 false}
!443 = !{ptr @.str.176, !444, !"<string literal>", i1 false, i1 false}
!444 = !{!"../drivers/media/usb/dvb-usb/dib0700_devices.c", i32 1754, i32 7}
!445 = !{ptr @stk809x_frontend_attach._entry, !444, !"_entry", i1 false, i1 false}
!446 = !{ptr @stk809x_frontend_attach._entry_ptr, !444, !"_entry_ptr", i1 false, i1 false}
!447 = !{ptr @dib809x_dib8000_config, !448, !"dib809x_dib8000_config", i1 false, i1 false}
!448 = !{!"../drivers/media/usb/dvb-usb/dib0700_devices.c", i32 1553, i32 30}
!449 = !{ptr @dib8090_agc_config, !450, !"dib8090_agc_config", i1 false, i1 false}
!450 = !{!"../drivers/media/usb/dvb-usb/dib0700_devices.c", i32 1425, i32 34}
!451 = !{ptr @dib8090_pll_config_12mhz, !452, !"dib8090_pll_config_12mhz", i1 false, i1 false}
!452 = !{!"../drivers/media/usb/dvb-usb/dib0700_devices.c", i32 1512, i32 40}
!453 = !{ptr @.str.177, !454, !"<string literal>", i1 false, i1 false}
!454 = !{!"../drivers/media/usb/dvb-usb/dib0700_devices.c", i32 1546, i32 2}
!455 = !{ptr @.str.178, !454, !"<string literal>", i1 false, i1 false}
!456 = !{ptr @dib8090_agc_control._entry, !454, !"_entry", i1 false, i1 false}
!457 = !{ptr @dib8090_agc_control._entry_ptr, !454, !"_entry_ptr", i1 false, i1 false}
!458 = !{ptr @.str.179, !459, !"<string literal>", i1 false, i1 false}
!459 = !{!"../drivers/media/usb/dvb-usb/dib0700_devices.c", i32 1742, i32 7}
!460 = !{ptr @.str.180, !459, !"<string literal>", i1 false, i1 false}
!461 = !{ptr @.str.181, !459, !"<string literal>", i1 false, i1 false}
!462 = !{ptr @.str.182, !459, !"<string literal>", i1 false, i1 false}
!463 = !{ptr @dib809x_tuner_attach._entry, !459, !"_entry", i1 false, i1 false}
!464 = !{ptr @dib809x_tuner_attach._entry_ptr, !459, !"_entry_ptr", i1 false, i1 false}
!465 = !{ptr @dib809x_dib0090_config, !466, !"dib809x_dib0090_config", i1 false, i1 false}
!466 = !{!"../drivers/media/usb/dvb-usb/dib0700_devices.c", i32 1604, i32 30}
!467 = !{ptr @dib8090_wbd_table, !468, !"dib8090_wbd_table", i1 false, i1 false}
!468 = !{!"../drivers/media/usb/dvb-usb/dib0700_devices.c", i32 1595, i32 33}
!469 = !{ptr @.str.184, !470, !"<string literal>", i1 false, i1 false}
!470 = !{!"../drivers/media/usb/dvb-usb/dib0700_devices.c", i32 1662, i32 3}
!471 = !{ptr @.str.185, !470, !"<string literal>", i1 false, i1 false}
!472 = !{ptr @dib8096_set_param_override._entry, !470, !"_entry", i1 false, i1 false}
!473 = !{ptr @dib8096_set_param_override._entry_ptr, !470, !"_entry_ptr", i1 false, i1 false}
!474 = !{ptr @.str.187, !475, !"<string literal>", i1 false, i1 false}
!475 = !{!"../drivers/media/usb/dvb-usb/dib0700_devices.c", i32 1677, i32 3}
!476 = !{ptr @dib8096_set_param_override._entry.186, !475, !"_entry", i1 false, i1 false}
!477 = !{ptr @dib8096_set_param_override._entry_ptr.188, !475, !"_entry_ptr", i1 false, i1 false}
!478 = !{ptr @.str.190, !479, !"<string literal>", i1 false, i1 false}
!479 = !{!"../drivers/media/usb/dvb-usb/dib0700_devices.c", i32 1707, i32 3}
!480 = !{ptr @dib8096_set_param_override._entry.189, !479, !"_entry", i1 false, i1 false}
!481 = !{ptr @dib8096_set_param_override._entry_ptr.191, !479, !"_entry_ptr", i1 false, i1 false}
!482 = !{ptr @.str.193, !483, !"<string literal>", i1 false, i1 false}
!483 = !{!"../drivers/media/usb/dvb-usb/dib0700_devices.c", i32 1723, i32 3}
!484 = !{ptr @dib8096_set_param_override._entry.192, !483, !"_entry", i1 false, i1 false}
!485 = !{ptr @dib8096_set_param_override._entry_ptr.194, !483, !"_entry_ptr", i1 false, i1 false}
!486 = !{ptr @.str.196, !487, !"<string literal>", i1 false, i1 false}
!487 = !{!"../drivers/media/usb/dvb-usb/dib0700_devices.c", i32 1729, i32 3}
!488 = !{ptr @dib8096_set_param_override._entry.195, !487, !"_entry", i1 false, i1 false}
!489 = !{ptr @dib8096_set_param_override._entry_ptr.197, !487, !"_entry_ptr", i1 false, i1 false}
!490 = !{ptr @.str.198, !491, !"<string literal>", i1 false, i1 false}
!491 = !{!"../drivers/media/usb/dvb-usb/dib0700_devices.c", i32 1639, i32 3}
!492 = !{ptr @.str.199, !491, !"<string literal>", i1 false, i1 false}
!493 = !{ptr @dib8090_compute_pll_parameters._entry, !491, !"_entry", i1 false, i1 false}
!494 = !{ptr @dib8090_compute_pll_parameters._entry_ptr, !491, !"_entry_ptr", i1 false, i1 false}
!495 = !{ptr @.str.201, !496, !"<string literal>", i1 false, i1 false}
!496 = !{!"../drivers/media/usb/dvb-usb/dib0700_devices.c", i32 1645, i32 2}
!497 = !{ptr @dib8090_compute_pll_parameters._entry.200, !496, !"_entry", i1 false, i1 false}
!498 = !{ptr @dib8090_compute_pll_parameters._entry_ptr.202, !496, !"_entry_ptr", i1 false, i1 false}
!499 = !{ptr @.str.203, !500, !"<string literal>", i1 false, i1 false}
!500 = !{!"../drivers/media/usb/dvb-usb/dib0700_devices.c", i32 2411, i32 50}
!501 = !{ptr @.str.204, !502, !"<string literal>", i1 false, i1 false}
!502 = !{!"../drivers/media/usb/dvb-usb/dib0700_devices.c", i32 2412, i32 3}
!503 = !{ptr @.str.205, !502, !"<string literal>", i1 false, i1 false}
!504 = !{ptr @stk9090m_frontend_attach._entry, !502, !"_entry", i1 false, i1 false}
!505 = !{ptr @stk9090m_frontend_attach._entry_ptr, !502, !"_entry_ptr", i1 false, i1 false}
!506 = !{ptr @.str.207, !507, !"<string literal>", i1 false, i1 false}
!507 = !{!"../drivers/media/usb/dvb-usb/dib0700_devices.c", i32 2415, i32 3}
!508 = !{ptr @stk9090m_frontend_attach._entry.206, !507, !"_entry", i1 false, i1 false}
!509 = !{ptr @stk9090m_frontend_attach._entry_ptr.208, !507, !"_entry_ptr", i1 false, i1 false}
!510 = !{ptr @.str.209, !511, !"<string literal>", i1 false, i1 false}
!511 = !{!"../drivers/media/usb/dvb-usb/dib0700_devices.c", i32 2420, i32 24}
!512 = !{ptr @.str.210, !511, !"<string literal>", i1 false, i1 false}
!513 = !{ptr @.str.212, !511, !"<string literal>", i1 false, i1 false}
!514 = !{ptr @stk9090m_frontend_attach._entry.211, !511, !"_entry", i1 false, i1 false}
!515 = !{ptr @stk9090m_frontend_attach._entry_ptr.213, !511, !"_entry_ptr", i1 false, i1 false}
!516 = !{ptr @stk9090m_config, !517, !"stk9090m_config", i1 false, i1 false}
!517 = !{!"../drivers/media/usb/dvb-usb/dib0700_devices.c", i32 2274, i32 30}
!518 = !{ptr @.str.214, !519, !"<string literal>", i1 false, i1 false}
!519 = !{!"../drivers/media/usb/dvb-usb/dib0700_devices.c", i32 2439, i32 6}
!520 = !{ptr @.str.215, !519, !"<string literal>", i1 false, i1 false}
!521 = !{ptr @.str.216, !519, !"<string literal>", i1 false, i1 false}
!522 = !{ptr @.str.217, !519, !"<string literal>", i1 false, i1 false}
!523 = !{ptr @dib9090_tuner_attach._entry, !519, !"_entry", i1 false, i1 false}
!524 = !{ptr @dib9090_tuner_attach._entry_ptr, !519, !"_entry_ptr", i1 false, i1 false}
!525 = !{ptr @dib9090_dib0090_config, !526, !"dib9090_dib0090_config", i1 false, i1 false}
!526 = !{!"../drivers/media/usb/dvb-usb/dib0700_devices.c", i32 2328, i32 30}
!527 = !{ptr @.str.219, !528, !"<string literal>", i1 false, i1 false}
!528 = !{!"../drivers/media/usb/dvb-usb/dib0700_devices.c", i32 2238, i32 4}
!529 = !{ptr @.str.220, !528, !"<string literal>", i1 false, i1 false}
!530 = !{ptr @dib01x0_pmu_update._entry, !528, !"_entry", i1 false, i1 false}
!531 = !{ptr @dib01x0_pmu_update._entry_ptr, !528, !"_entry_ptr", i1 false, i1 false}
!532 = !{ptr @.str.222, !533, !"<string literal>", i1 false, i1 false}
!533 = !{!"../drivers/media/usb/dvb-usb/dib0700_devices.c", i32 2241, i32 4}
!534 = !{ptr @dib01x0_pmu_update._entry.221, !533, !"_entry", i1 false, i1 false}
!535 = !{ptr @dib01x0_pmu_update._entry_ptr.223, !533, !"_entry_ptr", i1 false, i1 false}
!536 = !{ptr @.str.225, !537, !"<string literal>", i1 false, i1 false}
!537 = !{!"../drivers/media/usb/dvb-usb/dib0700_devices.c", i32 2244, i32 4}
!538 = !{ptr @dib01x0_pmu_update._entry.224, !537, !"_entry", i1 false, i1 false}
!539 = !{ptr @dib01x0_pmu_update._entry_ptr.226, !537, !"_entry_ptr", i1 false, i1 false}
!540 = !{ptr @.str.228, !541, !"<string literal>", i1 false, i1 false}
!541 = !{!"../drivers/media/usb/dvb-usb/dib0700_devices.c", i32 2247, i32 4}
!542 = !{ptr @dib01x0_pmu_update._entry.227, !541, !"_entry", i1 false, i1 false}
!543 = !{ptr @dib01x0_pmu_update._entry_ptr.229, !541, !"_entry_ptr", i1 false, i1 false}
!544 = !{ptr @.str.230, !545, !"<string literal>", i1 false, i1 false}
!545 = !{!"../drivers/media/usb/dvb-usb/dib0700_devices.c", i32 1821, i32 7}
!546 = !{ptr @nim8096md_frontend_attach._entry, !545, !"_entry", i1 false, i1 false}
!547 = !{ptr @nim8096md_frontend_attach._entry_ptr, !545, !"_entry_ptr", i1 false, i1 false}
!548 = !{ptr @nim8096md_frontend_attach._entry.231, !549, !"_entry", i1 false, i1 false}
!549 = !{!"../drivers/media/usb/dvb-usb/dib0700_devices.c", i32 1848, i32 7}
!550 = !{ptr @nim8096md_frontend_attach._entry_ptr.232, !549, !"_entry_ptr", i1 false, i1 false}
!551 = !{ptr @.str.233, !552, !"<string literal>", i1 false, i1 false}
!552 = !{!"../drivers/media/usb/dvb-usb/dib0700_devices.c", i32 1801, i32 7}
!553 = !{ptr @nim8096md_tuner_attach._entry, !552, !"_entry", i1 false, i1 false}
!554 = !{ptr @nim8096md_tuner_attach._entry_ptr, !552, !"_entry_ptr", i1 false, i1 false}
!555 = !{ptr @nim8096md_tuner_attach._entry.234, !556, !"_entry", i1 false, i1 false}
!556 = !{!"../drivers/media/usb/dvb-usb/dib0700_devices.c", i32 1807, i32 6}
!557 = !{ptr @nim8096md_tuner_attach._entry_ptr.235, !556, !"_entry_ptr", i1 false, i1 false}
!558 = !{ptr @.str.236, !559, !"<string literal>", i1 false, i1 false}
!559 = !{!"../drivers/media/usb/dvb-usb/dib0700_devices.c", i32 2482, i32 3}
!560 = !{ptr @nim9090md_frontend_attach._entry, !559, !"_entry", i1 false, i1 false}
!561 = !{ptr @nim9090md_frontend_attach._entry_ptr, !559, !"_entry_ptr", i1 false, i1 false}
!562 = !{ptr @nim9090md_frontend_attach._entry.237, !563, !"_entry", i1 false, i1 false}
!563 = !{!"../drivers/media/usb/dvb-usb/dib0700_devices.c", i32 2485, i32 3}
!564 = !{ptr @nim9090md_frontend_attach._entry_ptr.238, !563, !"_entry_ptr", i1 false, i1 false}
!565 = !{ptr @nim9090md_frontend_attach._entry.239, !566, !"_entry", i1 false, i1 false}
!566 = !{!"../drivers/media/usb/dvb-usb/dib0700_devices.c", i32 2493, i32 24}
!567 = !{ptr @nim9090md_frontend_attach._entry_ptr.240, !566, !"_entry_ptr", i1 false, i1 false}
!568 = !{ptr @nim9090md_frontend_attach._entry.241, !569, !"_entry", i1 false, i1 false}
!569 = !{!"../drivers/media/usb/dvb-usb/dib0700_devices.c", i32 2501, i32 13}
!570 = !{ptr @nim9090md_frontend_attach._entry_ptr.242, !569, !"_entry_ptr", i1 false, i1 false}
!571 = !{ptr @nim9090md_config, !572, !"nim9090md_config", i1 false, i1 false}
!572 = !{!"../drivers/media/usb/dvb-usb/dib0700_devices.c", i32 2296, i32 30}
!573 = !{ptr @.str.243, !574, !"<string literal>", i1 false, i1 false}
!574 = !{!"../drivers/media/usb/dvb-usb/dib0700_devices.c", i32 2522, i32 6}
!575 = !{ptr @nim9090md_tuner_attach._entry, !574, !"_entry", i1 false, i1 false}
!576 = !{ptr @nim9090md_tuner_attach._entry_ptr, !574, !"_entry_ptr", i1 false, i1 false}
!577 = !{ptr @nim9090md_tuner_attach._entry.244, !578, !"_entry", i1 false, i1 false}
!578 = !{!"../drivers/media/usb/dvb-usb/dib0700_devices.c", i32 2540, i32 7}
!579 = !{ptr @nim9090md_tuner_attach._entry_ptr.245, !578, !"_entry_ptr", i1 false, i1 false}
!580 = !{ptr @nim9090md_dib0090_config, !581, !"nim9090md_dib0090_config", i1 false, i1 false}
!581 = !{!"../drivers/media/usb/dvb-usb/dib0700_devices.c", i32 2346, i32 30}
!582 = !{ptr @.str.247, !583, !"<string literal>", i1 false, i1 false}
!583 = !{!"../drivers/media/usb/dvb-usb/dib0700_devices.c", i32 3047, i32 7}
!584 = !{ptr @nim7090_frontend_attach._entry, !583, !"_entry", i1 false, i1 false}
!585 = !{ptr @nim7090_frontend_attach._entry_ptr, !583, !"_entry_ptr", i1 false, i1 false}
!586 = !{ptr @nim7090_frontend_attach._entry.248, !587, !"_entry", i1 false, i1 false}
!587 = !{!"../drivers/media/usb/dvb-usb/dib0700_devices.c", i32 3063, i32 3}
!588 = !{ptr @nim7090_frontend_attach._entry_ptr.249, !587, !"_entry_ptr", i1 false, i1 false}
!589 = !{ptr @nim7090_dib7000p_config, !590, !"nim7090_dib7000p_config", i1 false, i1 false}
!590 = !{!"../drivers/media/usb/dvb-usb/dib0700_devices.c", i32 2789, i32 31}
!591 = !{ptr @.str.250, !592, !"<string literal>", i1 false, i1 false}
!592 = !{!"../drivers/media/usb/dvb-usb/dib0700_devices.c", i32 2667, i32 2}
!593 = !{ptr @.str.251, !592, !"<string literal>", i1 false, i1 false}
!594 = !{ptr @tfe7790p_update_lna._entry, !592, !"_entry", i1 false, i1 false}
!595 = !{ptr @tfe7790p_update_lna._entry_ptr, !592, !"_entry_ptr", i1 false, i1 false}
!596 = !{ptr @dib7090_agc_config, !597, !"dib7090_agc_config", i1 false, i1 false}
!597 = !{!"../drivers/media/usb/dvb-usb/dib0700_devices.c", i32 2688, i32 34}
!598 = !{ptr @dib7090_clock_config_12_mhz, !599, !"dib7090_clock_config_12_mhz", i1 false, i1 false}
!599 = !{!"../drivers/media/usb/dvb-usb/dib0700_devices.c", i32 2770, i32 40}
!600 = !{ptr @.str.252, !601, !"<string literal>", i1 false, i1 false}
!601 = !{!"../drivers/media/usb/dvb-usb/dib0700_devices.c", i32 2656, i32 2}
!602 = !{ptr @.str.253, !601, !"<string literal>", i1 false, i1 false}
!603 = !{ptr @dib7090_agc_restart._entry, !601, !"_entry", i1 false, i1 false}
!604 = !{ptr @dib7090_agc_restart._entry_ptr, !601, !"_entry_ptr", i1 false, i1 false}
!605 = !{ptr @.str.254, !606, !"<string literal>", i1 false, i1 false}
!606 = !{!"../drivers/media/usb/dvb-usb/dib0700_devices.c", i32 3081, i32 6}
!607 = !{ptr @nim7090_tuner_attach._entry, !606, !"_entry", i1 false, i1 false}
!608 = !{ptr @nim7090_tuner_attach._entry_ptr, !606, !"_entry_ptr", i1 false, i1 false}
!609 = !{ptr @nim7090_dib0090_config, !610, !"nim7090_dib0090_config", i1 false, i1 false}
!610 = !{!"../drivers/media/usb/dvb-usb/dib0700_devices.c", i32 2892, i32 30}
!611 = !{ptr @dib7090_wbd_table, !612, !"dib7090_wbd_table", i1 false, i1 false}
!612 = !{!"../drivers/media/usb/dvb-usb/dib0700_devices.c", i32 2680, i32 33}
!613 = !{ptr @.str.256, !614, !"<string literal>", i1 false, i1 false}
!614 = !{!"../drivers/media/usb/dvb-usb/dib0700_devices.c", i32 2569, i32 2}
!615 = !{ptr @.str.257, !614, !"<string literal>", i1 false, i1 false}
!616 = !{ptr @dib7090p_get_best_sampling._entry, !614, !"_entry", i1 false, i1 false}
!617 = !{ptr @dib7090p_get_best_sampling._entry_ptr, !614, !"_entry_ptr", i1 false, i1 false}
!618 = !{ptr @.str.259, !619, !"<string literal>", i1 false, i1 false}
!619 = !{!"../drivers/media/usb/dvb-usb/dib0700_devices.c", i32 2582, i32 2}
!620 = !{ptr @dib7090p_get_best_sampling._entry.258, !619, !"_entry", i1 false, i1 false}
!621 = !{ptr @dib7090p_get_best_sampling._entry_ptr.260, !619, !"_entry_ptr", i1 false, i1 false}
!622 = !{ptr @.str.262, !623, !"<string literal>", i1 false, i1 false}
!623 = !{!"../drivers/media/usb/dvb-usb/dib0700_devices.c", i32 2609, i32 7}
!624 = !{ptr @dib7090p_get_best_sampling._entry.261, !623, !"_entry", i1 false, i1 false}
!625 = !{ptr @dib7090p_get_best_sampling._entry_ptr.263, !623, !"_entry_ptr", i1 false, i1 false}
!626 = !{ptr @.str.264, !627, !"<string literal>", i1 false, i1 false}
!627 = !{!"../drivers/media/usb/dvb-usb/dib0700_devices.c", i32 3096, i32 7}
!628 = !{ptr @tfe7090pvr_frontend0_attach._entry, !627, !"_entry", i1 false, i1 false}
!629 = !{ptr @tfe7090pvr_frontend0_attach._entry_ptr, !627, !"_entry_ptr", i1 false, i1 false}
!630 = !{ptr @tfe7090pvr_frontend0_attach._entry.265, !631, !"_entry", i1 false, i1 false}
!631 = !{!"../drivers/media/usb/dvb-usb/dib0700_devices.c", i32 3116, i32 3}
!632 = !{ptr @tfe7090pvr_frontend0_attach._entry_ptr.266, !631, !"_entry_ptr", i1 false, i1 false}
!633 = !{ptr @tfe7090pvr_dib7000p_config, !634, !"tfe7090pvr_dib7000p_config", i1 false, i1 false}
!634 = !{!"../drivers/media/usb/dvb-usb/dib0700_devices.c", i32 2834, i32 31}
!635 = !{ptr @.str.267, !636, !"<string literal>", i1 false, i1 false}
!636 = !{!"../drivers/media/usb/dvb-usb/dib0700_devices.c", i32 2822, i32 2}
!637 = !{ptr @.str.268, !636, !"<string literal>", i1 false, i1 false}
!638 = !{ptr @tfe7090p_pvr_update_lna._entry, !636, !"_entry", i1 false, i1 false}
!639 = !{ptr @tfe7090p_pvr_update_lna._entry_ptr, !636, !"_entry_ptr", i1 false, i1 false}
!640 = !{ptr @.str.269, !641, !"<string literal>", i1 false, i1 false}
!641 = !{!"../drivers/media/usb/dvb-usb/dib0700_devices.c", i32 3166, i32 6}
!642 = !{ptr @tfe7090pvr_tuner0_attach._entry, !641, !"_entry", i1 false, i1 false}
!643 = !{ptr @tfe7090pvr_tuner0_attach._entry_ptr, !641, !"_entry_ptr", i1 false, i1 false}
!644 = !{ptr @tfe7090pvr_dib0090_config, !645, !"tfe7090pvr_dib0090_config", i1 false, i1 false}
!645 = !{!"../drivers/media/usb/dvb-usb/dib0700_devices.c", i32 2983, i32 30}
!646 = !{ptr @.str.271, !647, !"<string literal>", i1 false, i1 false}
!647 = !{!"../drivers/media/usb/dvb-usb/dib0700_devices.c", i32 3137, i32 3}
!648 = !{ptr @.str.272, !647, !"<string literal>", i1 false, i1 false}
!649 = !{ptr @tfe7090pvr_frontend1_attach._entry, !647, !"_entry", i1 false, i1 false}
!650 = !{ptr @tfe7090pvr_frontend1_attach._entry_ptr, !647, !"_entry_ptr", i1 false, i1 false}
!651 = !{ptr @tfe7090pvr_frontend1_attach._entry.273, !652, !"_entry", i1 false, i1 false}
!652 = !{!"../drivers/media/usb/dvb-usb/dib0700_devices.c", i32 3141, i32 7}
!653 = !{ptr @tfe7090pvr_frontend1_attach._entry_ptr.274, !652, !"_entry_ptr", i1 false, i1 false}
!654 = !{ptr @tfe7090pvr_frontend1_attach._entry.275, !655, !"_entry", i1 false, i1 false}
!655 = !{!"../drivers/media/usb/dvb-usb/dib0700_devices.c", i32 3146, i32 3}
!656 = !{ptr @tfe7090pvr_frontend1_attach._entry_ptr.276, !655, !"_entry_ptr", i1 false, i1 false}
!657 = !{ptr @.str.277, !658, !"<string literal>", i1 false, i1 false}
!658 = !{!"../drivers/media/usb/dvb-usb/dib0700_devices.c", i32 3185, i32 6}
!659 = !{ptr @tfe7090pvr_tuner1_attach._entry, !658, !"_entry", i1 false, i1 false}
!660 = !{ptr @tfe7090pvr_tuner1_attach._entry_ptr, !658, !"_entry_ptr", i1 false, i1 false}
!661 = !{ptr @.str.278, !662, !"<string literal>", i1 false, i1 false}
!662 = !{!"../drivers/media/usb/dvb-usb/dib0700_devices.c", i32 3601, i32 7}
!663 = !{ptr @pctv340e_frontend_attach._entry, !662, !"_entry", i1 false, i1 false}
!664 = !{ptr @pctv340e_frontend_attach._entry_ptr, !662, !"_entry_ptr", i1 false, i1 false}
!665 = !{ptr @pctv_340e_config, !666, !"pctv_340e_config", i1 false, i1 false}
!666 = !{!"../drivers/media/usb/dvb-usb/dib0700_devices.c", i32 3573, i32 31}
!667 = !{ptr @stk7700p_7000p_xc4000_agc_config, !668, !"stk7700p_7000p_xc4000_agc_config", i1 false, i1 false}
!668 = !{!"../drivers/media/usb/dvb-usb/dib0700_devices.c", i32 3522, i32 34}
!669 = !{ptr @stk7700p_xc4000_pll_config, !670, !"stk7700p_xc4000_pll_config", i1 false, i1 false}
!670 = !{!"../drivers/media/usb/dvb-usb/dib0700_devices.c", i32 3553, i32 40}
!671 = !{ptr @.str.279, !672, !"<string literal>", i1 false, i1 false}
!672 = !{!"../drivers/media/usb/dvb-usb/dib0700_devices.c", i32 3656, i32 3}
!673 = !{ptr @.str.280, !672, !"<string literal>", i1 false, i1 false}
!674 = !{ptr @xc4000_tuner_attach._entry, !672, !"_entry", i1 false, i1 false}
!675 = !{ptr @xc4000_tuner_attach._entry_ptr, !672, !"_entry_ptr", i1 false, i1 false}
!676 = !{ptr @.str.281, !677, !"<string literal>", i1 false, i1 false}
!677 = !{!"../drivers/media/usb/dvb-usb/dib0700_devices.c", i32 3663, i32 9}
!678 = !{ptr @.str.282, !677, !"<string literal>", i1 false, i1 false}
!679 = !{ptr @.str.284, !677, !"<string literal>", i1 false, i1 false}
!680 = !{ptr @xc4000_tuner_attach._entry.283, !677, !"_entry", i1 false, i1 false}
!681 = !{ptr @xc4000_tuner_attach._entry_ptr.285, !677, !"_entry_ptr", i1 false, i1 false}
!682 = !{ptr @.str.286, !683, !"<string literal>", i1 false, i1 false}
!683 = !{!"../drivers/media/usb/dvb-usb/dib0700_devices.c", i32 3515, i32 3}
!684 = !{ptr @.str.287, !683, !"<string literal>", i1 false, i1 false}
!685 = !{ptr @dib0700_xc4000_tuner_callback._entry, !683, !"_entry", i1 false, i1 false}
!686 = !{ptr @dib0700_xc4000_tuner_callback._entry_ptr, !683, !"_entry_ptr", i1 false, i1 false}
!687 = !{ptr @dib7000p_xc4000_tunerconfig, !688, !"dib7000p_xc4000_tunerconfig", i1 false, i1 false}
!688 = !{!"../drivers/media/usb/dvb-usb/dib0700_devices.c", i32 3639, i32 29}
!689 = !{ptr @.str.288, !690, !"<string literal>", i1 false, i1 false}
!690 = !{!"../drivers/media/usb/dvb-usb/dib0700_devices.c", i32 3200, i32 7}
!691 = !{ptr @tfe7790p_frontend_attach._entry, !690, !"_entry", i1 false, i1 false}
!692 = !{ptr @tfe7790p_frontend_attach._entry_ptr, !690, !"_entry_ptr", i1 false, i1 false}
!693 = !{ptr @tfe7790p_frontend_attach._entry.289, !694, !"_entry", i1 false, i1 false}
!694 = !{!"../drivers/media/usb/dvb-usb/dib0700_devices.c", i32 3220, i32 3}
!695 = !{ptr @tfe7790p_frontend_attach._entry_ptr.290, !694, !"_entry_ptr", i1 false, i1 false}
!696 = !{ptr @tfe7790p_dib7000p_config, !697, !"tfe7790p_dib7000p_config", i1 false, i1 false}
!697 = !{!"../drivers/media/usb/dvb-usb/dib0700_devices.c", i32 2922, i32 31}
!698 = !{ptr @.str.291, !699, !"<string literal>", i1 false, i1 false}
!699 = !{!"../drivers/media/usb/dvb-usb/dib0700_devices.c", i32 3242, i32 6}
!700 = !{ptr @tfe7790p_tuner_attach._entry, !699, !"_entry", i1 false, i1 false}
!701 = !{ptr @tfe7790p_tuner_attach._entry_ptr, !699, !"_entry_ptr", i1 false, i1 false}
!702 = !{ptr @tfe7790p_dib0090_config, !703, !"tfe7790p_dib0090_config", i1 false, i1 false}
!703 = !{!"../drivers/media/usb/dvb-usb/dib0700_devices.c", i32 2950, i32 30}
!704 = !{ptr @.str.293, !705, !"<string literal>", i1 false, i1 false}
!705 = !{!"../drivers/media/usb/dvb-usb/dib0700_devices.c", i32 2150, i32 7}
!706 = !{ptr @tfe8096p_frontend_attach._entry, !705, !"_entry", i1 false, i1 false}
!707 = !{ptr @tfe8096p_frontend_attach._entry_ptr, !705, !"_entry_ptr", i1 false, i1 false}
!708 = !{ptr @tfe8096p_dib8000_config, !709, !"tfe8096p_dib8000_config", i1 false, i1 false}
!709 = !{!"../drivers/media/usb/dvb-usb/dib0700_devices.c", i32 1969, i32 30}
!710 = !{ptr @dib8096p_agc_config, !711, !"dib8096p_agc_config", i1 false, i1 false}
!711 = !{!"../drivers/media/usb/dvb-usb/dib0700_devices.c", i32 1858, i32 34}
!712 = !{ptr @dib8096p_clock_config_12_mhz, !713, !"dib8096p_clock_config_12_mhz", i1 false, i1 false}
!713 = !{!"../drivers/media/usb/dvb-usb/dib0700_devices.c", i32 1950, i32 40}
!714 = !{ptr @.str.294, !715, !"<string literal>", i1 false, i1 false}
!715 = !{!"../drivers/media/usb/dvb-usb/dib0700_devices.c", i32 2189, i32 6}
!716 = !{ptr @tfe8096p_tuner_attach._entry, !715, !"_entry", i1 false, i1 false}
!717 = !{ptr @tfe8096p_tuner_attach._entry_ptr, !715, !"_entry_ptr", i1 false, i1 false}
!718 = !{ptr @tfe8096p_dib0090_config, !719, !"tfe8096p_dib0090_config", i1 false, i1 false}
!719 = !{!"../drivers/media/usb/dvb-usb/dib0700_devices.c", i32 1996, i32 30}
!720 = !{ptr @dib8096p_wbd_table, !721, !"dib8096p_wbd_table", i1 false, i1 false}
!721 = !{!"../drivers/media/usb/dvb-usb/dib0700_devices.c", i32 1988, i32 33}
!722 = !{ptr @.str.296, !723, !"<string literal>", i1 false, i1 false}
!723 = !{!"../drivers/media/usb/dvb-usb/dib0700_devices.c", i32 2055, i32 2}
!724 = !{ptr @.str.297, !723, !"<string literal>", i1 false, i1 false}
!725 = !{ptr @dib8096p_get_best_sampling._entry, !723, !"_entry", i1 false, i1 false}
!726 = !{ptr @dib8096p_get_best_sampling._entry_ptr, !723, !"_entry_ptr", i1 false, i1 false}
!727 = !{ptr @dib8096p_get_best_sampling._entry.298, !728, !"_entry", i1 false, i1 false}
!728 = !{!"../drivers/media/usb/dvb-usb/dib0700_devices.c", i32 2068, i32 2}
!729 = !{ptr @dib8096p_get_best_sampling._entry_ptr.299, !728, !"_entry_ptr", i1 false, i1 false}
!730 = !{ptr @.str.301, !731, !"<string literal>", i1 false, i1 false}
!731 = !{!"../drivers/media/usb/dvb-usb/dib0700_devices.c", i32 2097, i32 7}
!732 = !{ptr @dib8096p_get_best_sampling._entry.300, !731, !"_entry", i1 false, i1 false}
!733 = !{ptr @dib8096p_get_best_sampling._entry_ptr.302, !731, !"_entry_ptr", i1 false, i1 false}
!734 = !{ptr @.str.303, !735, !"<string literal>", i1 false, i1 false}
!735 = !{!"../drivers/media/usb/dvb-usb/dib0700_devices.c", i32 1783, i32 7}
!736 = !{ptr @stk809x_frontend1_attach._entry, !735, !"_entry", i1 false, i1 false}
!737 = !{ptr @stk809x_frontend1_attach._entry_ptr, !735, !"_entry_ptr", i1 false, i1 false}
!738 = !{ptr @.str.304, !739, !"<string literal>", i1 false, i1 false}
!739 = !{!"../drivers/media/usb/dvb-usb/dib0700_devices.c", i32 3766, i32 21}
!740 = !{ptr @.str.305, !741, !"<string literal>", i1 false, i1 false}
!741 = !{!"../drivers/media/usb/dvb-usb/dib0700_devices.c", i32 3793, i32 21}
!742 = !{i32 1, !"wchar_size", i32 2}
!743 = !{i32 1, !"min_enum_size", i32 4}
!744 = !{i32 8, !"branch-target-enforcement", i32 0}
!745 = !{i32 8, !"sign-return-address", i32 0}
!746 = !{i32 8, !"sign-return-address-all", i32 0}
!747 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!748 = !{i32 7, !"uwtable", i32 1}
!749 = !{i32 7, !"frame-pointer", i32 2}
!750 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!751 = !{!"auto-init"}
