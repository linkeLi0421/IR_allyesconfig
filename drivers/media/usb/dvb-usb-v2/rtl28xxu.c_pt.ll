; ModuleID = '/llk/IR_all_yes/drivers/media/usb/dvb-usb-v2/rtl28xxu.c_pt.bc'
source_filename = "../drivers/media/usb/dvb-usb-v2/rtl28xxu.c"
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
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.rtl2830_platform_data = type { i32, i8, i8, i8, i8, ptr, ptr, ptr, ptr }
%struct.rtl2832_platform_data = type { i32, i8, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.device_type = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.qt1010_config = type { i8 }
%struct.mt2060_config = type { i8, i8 }
%struct.mxl5005s_config = type { i8, i32, i32, i8, i8, i8, i8, i8, i8, i32, i32, i8, i8, i8, i8 }
%struct.fc0012_config = type { i8, i32, i8, i8, i8 }
%struct.r820t_config = type { i8, i32, i32, i32, i8, i8 }
%struct.rtl28xxu_reg_val = type { i16, i8 }
%struct.rtl28xxu_reg_val_mask = type { i16, i8, i8 }
%struct.rtl28xxu_req = type { i16, i16, i16, ptr }
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
%struct.usb_interface = type { ptr, ptr, i32, ptr, i32, i32, i8, %struct.device, ptr, %struct.work_struct }
%struct.rtl28xxu_dev = type { [128 x i8], i8, i8, ptr, i8, ptr, i8, i8, ptr, ptr, ptr, ptr, i8, %union.anon.143 }
%union.anon.143 = type { %struct.rtl2832_platform_data }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
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
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.i2c_board_info = type { [20 x i8], i16, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32 }
%struct.mn88472_config = type { i32, i32, i32, i16, ptr, ptr }
%struct.mn88473_config = type { i16, i32, ptr }
%struct.cxd2841er_config = type { i8, i32, i32 }
%struct.si2168_config = type { ptr, ptr, i8, i8 }
%struct.platform_device_info = type { ptr, ptr, i8, ptr, i32, ptr, i32, ptr, i32, i64, ptr }
%struct.rtl2832_sdr_platform_data = type { i32, i8, ptr, ptr, ptr, ptr }
%struct.e4000_config = type { ptr, i32 }
%struct.fc2580_platform_data = type { i32, ptr, ptr }
%struct.tua9001_platform_data = type { ptr }
%struct.si2157_config = type { ptr, ptr, i8, i8 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.ir_raw_event = type { %union.anon.153, i8, i8 }
%union.anon.153 = type { i32 }

@__param_str_disable_rc = internal constant [28 x i8] c"dvb_usb_rtl28xxu.disable_rc\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@rtl28xxu_disable_rc = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_disable_rc = internal constant %struct.kernel_param { ptr @__param_str_disable_rc, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.101 { ptr @rtl28xxu_disable_rc } }, section "__param", align 4
@__UNIQUE_ID_disable_rctype388 = internal constant [41 x i8] c"dvb_usb_rtl28xxu.parmtype=disable_rc:int\00", section ".modinfo", align 1
@__UNIQUE_ID_disable_rc389 = internal constant [68 x i8] c"dvb_usb_rtl28xxu.parm=disable_rc:disable RTL2832U remote controller\00", section ".modinfo", align 1
@__param_str_adapter_nr = internal constant [28 x i8] c"dvb_usb_rtl28xxu.adapter_nr\00", align 1
@param_array_ops = external dso_local constant %struct.kernel_param_ops, align 4
@__param_arr_adapter_nr = internal constant %struct.kparam_array { i32 16, i32 2, ptr null, ptr @param_ops_short, ptr @adapter_nr }, align 4
@__param_adapter_nr = internal constant %struct.kernel_param { ptr @__param_str_adapter_nr, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.101 { ptr @__param_arr_adapter_nr } }, section "__param", align 4
@__UNIQUE_ID_adapter_nrtype390 = internal constant [52 x i8] c"dvb_usb_rtl28xxu.parmtype=adapter_nr:array of short\00", section ".modinfo", align 1
@__UNIQUE_ID_adapter_nr391 = internal constant [53 x i8] c"dvb_usb_rtl28xxu.parm=adapter_nr:DVB adapter numbers\00", section ".modinfo", align 1
@__initcall__kmod_dvb_usb_rtl28xxu__435_1988_rtl28xxu_usb_driver_init6 = internal global ptr @rtl28xxu_usb_driver_init, section ".initcall6.init", align 4
@rtl28xxu_usb_driver = internal global { %struct.usb_driver, [44 x i8] } { %struct.usb_driver { ptr @.str, ptr @dvb_usbv2_probe, ptr @dvb_usbv2_disconnect, ptr null, ptr @dvb_usbv2_suspend, ptr @dvb_usbv2_resume, ptr @dvb_usbv2_reset_resume, ptr null, ptr null, ptr @rtl28xxu_id_table, ptr null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 -112 }, [44 x i8] zeroinitializer }, align 32
@__exitcall_rtl28xxu_usb_driver_exit = internal global ptr @rtl28xxu_usb_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description436 = internal constant [61 x i8] c"dvb_usb_rtl28xxu.description=Realtek RTL28xxU DVB USB driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author437 = internal constant [55 x i8] c"dvb_usb_rtl28xxu.author=Antti Palosaari <crope@iki.fi>\00", section ".modinfo", align 1
@__UNIQUE_ID_author438 = internal constant [67 x i8] c"dvb_usb_rtl28xxu.author=Thomas Mair <thomas.mair86@googlemail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file439 = internal constant [68 x i8] c"dvb_usb_rtl28xxu.file=drivers/media/usb/dvb-usb-v2/dvb-usb-rtl28xxu\00", section ".modinfo", align 1
@__UNIQUE_ID_license440 = internal constant [29 x i8] c"dvb_usb_rtl28xxu.license=GPL\00", section ".modinfo", align 1
@param_ops_short = external dso_local constant %struct.kernel_param_ops, align 4
@adapter_nr = internal global { [16 x i16], [32 x i8] } { [16 x i16] [i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1], [32 x i8] zeroinitializer }, align 32
@.str = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"dvb_usb_rtl28xxu\00", [47 x i8] zeroinitializer }, align 32
@rtl28xxu_id_table = internal constant { [36 x %struct.usb_device_id], [192 x i8] } { [36 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 3034, i16 10289, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral to i32) }, %struct.usb_device_id { i16 3, i16 5290, i16 352, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.3 to i32) }, %struct.usb_device_id { i16 3, i16 5290, i16 353, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.4 to i32) }, %struct.usb_device_id { i16 3, i16 3034, i16 10290, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.6 to i32) }, %struct.usb_device_id { i16 3, i16 3034, i16 10296, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.7 to i32) }, %struct.usb_device_id { i16 3, i16 3277, i16 169, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.10 to i32) }, %struct.usb_device_id { i16 3, i16 8013, i16 -18429, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.12 to i32) }, %struct.usb_device_id { i16 3, i16 3277, i16 179, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.14 to i32) }, %struct.usb_device_id { i16 3, i16 3277, i16 224, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.16 to i32) }, %struct.usb_device_id { i16 3, i16 3277, i16 180, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.18 to i32) }, %struct.usb_device_id { i16 3, i16 8013, i16 -14333, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.20 to i32) }, %struct.usb_device_id { i16 3, i16 7449, i16 4353, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.22 to i32) }, %struct.usb_device_id { i16 3, i16 1043, i16 26240, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.24 to i32) }, %struct.usb_device_id { i16 3, i16 1043, i16 28431, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.26 to i32) }, %struct.usb_device_id { i16 3, i16 1043, i16 28434, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.29 to i32) }, %struct.usb_device_id { i16 3, i16 3277, i16 211, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.31 to i32) }, %struct.usb_device_id { i16 3, i16 7449, i16 4354, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.33 to i32) }, %struct.usb_device_id { i16 3, i16 3277, i16 215, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.35 to i32) }, %struct.usb_device_id { i16 3, i16 7040, i16 -11352, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.37 to i32) }, %struct.usb_device_id { i16 3, i16 7040, i16 -11373, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.39 to i32) }, %struct.usb_device_id { i16 3, i16 7449, i16 4356, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.41 to i32) }, %struct.usb_device_id { i16 3, i16 6235, i16 1568, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.43 to i32) }, %struct.usb_device_id { i16 3, i16 6235, i16 1616, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.45 to i32) }, %struct.usb_device_id { i16 3, i16 7040, i16 -11372, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.47 to i32) }, %struct.usb_device_id { i16 3, i16 1043, i16 27139, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.49 to i32) }, %struct.usb_device_id { i16 3, i16 8013, i16 -22525, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.51 to i32) }, %struct.usb_device_id { i16 3, i16 1112, i16 28799, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.53 to i32) }, %struct.usb_device_id { i16 3, i16 7040, i16 -11371, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.55 to i32) }, %struct.usb_device_id { i16 3, i16 7040, i16 -11363, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.57 to i32) }, %struct.usb_device_id { i16 3, i16 7040, i16 -11344, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.59 to i32) }, %struct.usb_device_id { i16 3, i16 7040, i16 -11345, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.61 to i32) }, %struct.usb_device_id { i16 3, i16 7040, i16 -11356, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.63 to i32) }, %struct.usb_device_id { i16 3, i16 8013, i16 -10237, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.65 to i32) }, %struct.usb_device_id { i16 3, i16 5620, i16 305, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.68 to i32) }, %struct.usb_device_id { i16 3, i16 22100, i16 -13758, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.70 to i32) }, %struct.usb_device_id zeroinitializer], [192 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Realtek RTL2831U reference design\00", [62 x i8] zeroinitializer }, align 32
@.compoundliteral = internal constant { %struct.dvb_usb_driver_info, [20 x i8] } { %struct.dvb_usb_driver_info { ptr @.str.1, ptr null, ptr @rtl28xxu_props }, [20 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Freecom USB2.0 DVB-T\00", [43 x i8] zeroinitializer }, align 32
@.compoundliteral.3 = internal constant { %struct.dvb_usb_driver_info, [20 x i8] } { %struct.dvb_usb_driver_info { ptr @.str.2, ptr null, ptr @rtl28xxu_props }, [20 x i8] zeroinitializer }, align 32
@.compoundliteral.4 = internal constant { %struct.dvb_usb_driver_info, [20 x i8] } { %struct.dvb_usb_driver_info { ptr @.str.2, ptr null, ptr @rtl28xxu_props }, [20 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Realtek RTL2832U reference design\00", [62 x i8] zeroinitializer }, align 32
@.compoundliteral.6 = internal constant { %struct.dvb_usb_driver_info, [20 x i8] } { %struct.dvb_usb_driver_info { ptr @.str.5, ptr null, ptr @rtl28xxu_props }, [20 x i8] zeroinitializer }, align 32
@.compoundliteral.7 = internal constant { %struct.dvb_usb_driver_info, [20 x i8] } { %struct.dvb_usb_driver_info { ptr @.str.5, ptr null, ptr @rtl28xxu_props }, [20 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"TerraTec Cinergy T Stick Black\00", [33 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rc-terratec-slim\00", [47 x i8] zeroinitializer }, align 32
@.compoundliteral.10 = internal constant { %struct.dvb_usb_driver_info, [20 x i8] } { %struct.dvb_usb_driver_info { ptr @.str.8, ptr @.str.9, ptr @rtl28xxu_props }, [20 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"G-Tek Electronics Group Lifeview LV5TDLX DVB-T\00", [49 x i8] zeroinitializer }, align 32
@.compoundliteral.12 = internal constant { %struct.dvb_usb_driver_info, [20 x i8] } { %struct.dvb_usb_driver_info { ptr @.str.11, ptr null, ptr @rtl28xxu_props }, [20 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"TerraTec NOXON DAB Stick\00", [39 x i8] zeroinitializer }, align 32
@.compoundliteral.14 = internal constant { %struct.dvb_usb_driver_info, [20 x i8] } { %struct.dvb_usb_driver_info { ptr @.str.13, ptr null, ptr @rtl28xxu_props }, [20 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"TerraTec NOXON DAB Stick (rev 2)\00", [63 x i8] zeroinitializer }, align 32
@.compoundliteral.16 = internal constant { %struct.dvb_usb_driver_info, [20 x i8] } { %struct.dvb_usb_driver_info { ptr @.str.15, ptr null, ptr @rtl28xxu_props }, [20 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"TerraTec NOXON DAB Stick (rev 3)\00", [63 x i8] zeroinitializer }, align 32
@.compoundliteral.18 = internal constant { %struct.dvb_usb_driver_info, [20 x i8] } { %struct.dvb_usb_driver_info { ptr @.str.17, ptr null, ptr @rtl28xxu_props }, [20 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Trekstor DVB-T Stick Terres 2.0\00", [32 x i8] zeroinitializer }, align 32
@.compoundliteral.20 = internal constant { %struct.dvb_usb_driver_info, [20 x i8] } { %struct.dvb_usb_driver_info { ptr @.str.19, ptr null, ptr @rtl28xxu_props }, [20 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Dexatek DK DVB-T Dongle\00", [40 x i8] zeroinitializer }, align 32
@.compoundliteral.22 = internal constant { %struct.dvb_usb_driver_info, [20 x i8] } { %struct.dvb_usb_driver_info { ptr @.str.21, ptr null, ptr @rtl28xxu_props }, [20 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"DigitalNow Quad DVB-T Receiver\00", [33 x i8] zeroinitializer }, align 32
@.compoundliteral.24 = internal constant { %struct.dvb_usb_driver_info, [20 x i8] } { %struct.dvb_usb_driver_info { ptr @.str.23, ptr null, ptr @rtl28xxu_props }, [20 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Leadtek Winfast DTV Dongle Mini D\00", [62 x i8] zeroinitializer }, align 32
@.compoundliteral.26 = internal constant { %struct.dvb_usb_driver_info, [20 x i8] } { %struct.dvb_usb_driver_info { ptr @.str.25, ptr null, ptr @rtl28xxu_props }, [20 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Leadtek WinFast DTV2000DS Plus\00", [33 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"rc-leadtek-y04g0051\00", [44 x i8] zeroinitializer }, align 32
@.compoundliteral.29 = internal constant { %struct.dvb_usb_driver_info, [20 x i8] } { %struct.dvb_usb_driver_info { ptr @.str.27, ptr @.str.28, ptr @rtl28xxu_props }, [20 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"TerraTec Cinergy T Stick RC (Rev. 3)\00", [59 x i8] zeroinitializer }, align 32
@.compoundliteral.31 = internal constant { %struct.dvb_usb_driver_info, [20 x i8] } { %struct.dvb_usb_driver_info { ptr @.str.30, ptr null, ptr @rtl28xxu_props }, [20 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Dexatek DK mini DVB-T Dongle\00", [35 x i8] zeroinitializer }, align 32
@.compoundliteral.33 = internal constant { %struct.dvb_usb_driver_info, [20 x i8] } { %struct.dvb_usb_driver_info { ptr @.str.32, ptr null, ptr @rtl28xxu_props }, [20 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"TerraTec Cinergy T Stick+\00", [38 x i8] zeroinitializer }, align 32
@.compoundliteral.35 = internal constant { %struct.dvb_usb_driver_info, [20 x i8] } { %struct.dvb_usb_driver_info { ptr @.str.34, ptr null, ptr @rtl28xxu_props }, [20 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"ASUS My Cinema-U3100Mini Plus V2\00", [63 x i8] zeroinitializer }, align 32
@.compoundliteral.37 = internal constant { %struct.dvb_usb_driver_info, [20 x i8] } { %struct.dvb_usb_driver_info { ptr @.str.36, ptr null, ptr @rtl28xxu_props }, [20 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"GIGABYTE U7300\00", [17 x i8] zeroinitializer }, align 32
@.compoundliteral.39 = internal constant { %struct.dvb_usb_driver_info, [20 x i8] } { %struct.dvb_usb_driver_info { ptr @.str.38, ptr null, ptr @rtl28xxu_props }, [20 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"MSI DIGIVOX Micro HD\00", [43 x i8] zeroinitializer }, align 32
@.compoundliteral.41 = internal constant { %struct.dvb_usb_driver_info, [20 x i8] } { %struct.dvb_usb_driver_info { ptr @.str.40, ptr null, ptr @rtl28xxu_props }, [20 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Compro VideoMate U620F\00", [41 x i8] zeroinitializer }, align 32
@.compoundliteral.43 = internal constant { %struct.dvb_usb_driver_info, [20 x i8] } { %struct.dvb_usb_driver_info { ptr @.str.42, ptr null, ptr @rtl28xxu_props }, [20 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Compro VideoMate U650F\00", [41 x i8] zeroinitializer }, align 32
@.compoundliteral.45 = internal constant { %struct.dvb_usb_driver_info, [20 x i8] } { %struct.dvb_usb_driver_info { ptr @.str.44, ptr null, ptr @rtl28xxu_props }, [20 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"MaxMedia HU394-T\00", [47 x i8] zeroinitializer }, align 32
@.compoundliteral.47 = internal constant { %struct.dvb_usb_driver_info, [20 x i8] } { %struct.dvb_usb_driver_info { ptr @.str.46, ptr null, ptr @rtl28xxu_props }, [20 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Leadtek WinFast DTV Dongle mini\00", [32 x i8] zeroinitializer }, align 32
@.compoundliteral.49 = internal constant { %struct.dvb_usb_driver_info, [20 x i8] } { %struct.dvb_usb_driver_info { ptr @.str.48, ptr null, ptr @rtl28xxu_props }, [20 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Crypto ReDi PC 50 A\00", [44 x i8] zeroinitializer }, align 32
@.compoundliteral.51 = internal constant { %struct.dvb_usb_driver_info, [20 x i8] } { %struct.dvb_usb_driver_info { ptr @.str.50, ptr null, ptr @rtl28xxu_props }, [20 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Genius TVGo DVB-T03\00", [44 x i8] zeroinitializer }, align 32
@.compoundliteral.53 = internal constant { %struct.dvb_usb_driver_info, [20 x i8] } { %struct.dvb_usb_driver_info { ptr @.str.52, ptr null, ptr @rtl28xxu_props }, [20 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Peak DVB-T USB\00", [17 x i8] zeroinitializer }, align 32
@.compoundliteral.55 = internal constant { %struct.dvb_usb_driver_info, [20 x i8] } { %struct.dvb_usb_driver_info { ptr @.str.54, ptr null, ptr @rtl28xxu_props }, [20 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Sveon STV20\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.57 = internal constant { %struct.dvb_usb_driver_info, [20 x i8] } { %struct.dvb_usb_driver_info { ptr @.str.56, ptr null, ptr @rtl28xxu_props }, [20 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Sveon STV21\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.59 = internal constant { %struct.dvb_usb_driver_info, [20 x i8] } { %struct.dvb_usb_driver_info { ptr @.str.58, ptr null, ptr @rtl28xxu_props }, [20 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Sveon STV27\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.61 = internal constant { %struct.dvb_usb_driver_info, [20 x i8] } { %struct.dvb_usb_driver_info { ptr @.str.60, ptr null, ptr @rtl28xxu_props }, [20 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"TURBO-X Pure TV Tuner DTT-2000\00", [33 x i8] zeroinitializer }, align 32
@.compoundliteral.63 = internal constant { %struct.dvb_usb_driver_info, [20 x i8] } { %struct.dvb_usb_driver_info { ptr @.str.62, ptr null, ptr @rtl28xxu_props }, [20 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"PROlectrix DV107669\00", [44 x i8] zeroinitializer }, align 32
@.compoundliteral.65 = internal constant { %struct.dvb_usb_driver_info, [20 x i8] } { %struct.dvb_usb_driver_info { ptr @.str.64, ptr null, ptr @rtl28xxu_props }, [20 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Astrometa DVB-T2\00", [47 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"rc-astrometa-t2hybrid\00", [42 x i8] zeroinitializer }, align 32
@.compoundliteral.68 = internal constant { %struct.dvb_usb_driver_info, [20 x i8] } { %struct.dvb_usb_driver_info { ptr @.str.66, ptr @.str.67, ptr @rtl28xxu_props }, [20 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"GoTView MasterHD 3\00", [45 x i8] zeroinitializer }, align 32
@.compoundliteral.70 = internal constant { %struct.dvb_usb_driver_info, [20 x i8] } { %struct.dvb_usb_driver_info { ptr @.str.69, ptr null, ptr @rtl28xxu_props }, [20 x i8] zeroinitializer }, align 32
@rtl28xxu_i2c_algo = internal global { %struct.i2c_algorithm, [36 x i8] } { %struct.i2c_algorithm { ptr @rtl28xxu_i2c_xfer, ptr null, ptr null, ptr null, ptr @rtl28xxu_i2c_func, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@rtl28xxu_props = internal constant { { ptr, ptr, ptr, i8, i32, i8, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, <{ { i8, i8, ptr, ptr, { i8, i8, i8, { %struct.anon.126, [8 x i8] } } }, %struct.dvb_usb_adapter_properties }>, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }, [56 x i8] } { { ptr, ptr, ptr, i8, i32, i8, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, <{ { i8, i8, ptr, ptr, { i8, i8, i8, { %struct.anon.126, [8 x i8] } } }, %struct.dvb_usb_adapter_properties }>, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @.str, ptr null, ptr @adapter_nr, i8 0, i32 200, i8 0, i8 0, i32 0, ptr null, ptr null, ptr @rtl28xxu_identify_state, ptr null, ptr null, ptr @rtl28xxu_i2c_algo, i32 1, ptr null, <{ { i8, i8, ptr, ptr, { i8, i8, i8, { %struct.anon.126, [8 x i8] } } }, %struct.dvb_usb_adapter_properties }> <{ { i8, i8, ptr, ptr, { i8, i8, i8, { %struct.anon.126, [8 x i8] } } } { i8 3, i8 32, ptr @rtl28xxu_pid_filter_ctrl, ptr @rtl28xxu_pid_filter, { i8, i8, i8, { %struct.anon.126, [8 x i8] } } { i8 1, i8 6, i8 -127, { %struct.anon.126, [8 x i8] } { %struct.anon.126 { i32 4096 }, [8 x i8] undef } } }, %struct.dvb_usb_adapter_properties zeroinitializer }>, ptr @rtl28xxu_power_ctrl, ptr @rtl28xxu_read_config, ptr null, ptr @rtl28xxu_frontend_attach, ptr @rtl28xxu_frontend_detach, ptr @rtl28xxu_tuner_attach, ptr @rtl28xxu_tuner_detach, ptr @rtl28xxu_frontend_ctrl, ptr null, ptr @rtl28xxu_init, ptr null, ptr @rtl28xxu_get_rc_config, ptr null }, [56 x i8] zeroinitializer }, align 32
@__const.rtl28xxu_identify_state.req_demod_i2c = private unnamed_addr constant { i16, i16, i16, [2 x i8], ptr } { i16 32, i16 1536, i16 0, [2 x i8] zeroinitializer, ptr null }, align 4
@rtl28xxu_identify_state.__UNIQUE_ID_ddebug404 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.72, ptr @.str.73, ptr @.str.74, i8 0, i8 -100, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.72 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"rtl28xxu_identify_state\00", [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/media/usb/dvb-usb-v2/rtl28xxu.c\00", [56 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@rtl28xxu_identify_state._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.72, ptr @.str.73, i32 639, ptr @.str.76, ptr @.str.77 }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"chip type detection failed %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@rtl28xxu_identify_state._entry_ptr = internal global ptr @rtl28xxu_identify_state._entry, section ".printk_index", align 4
@rtl28xxu_identify_state.__UNIQUE_ID_ddebug405 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.72, ptr @.str.73, ptr @.str.78, i8 0, i8 -96, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.78 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"chip_id=%u\0A\00", [20 x i8] zeroinitializer }, align 32
@rtl28xxu_identify_state.__UNIQUE_ID_ddebug406 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.72, ptr @.str.73, ptr @.str.79, i8 0, i8 -94, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.79 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"failed=%d\0A\00", [21 x i8] zeroinitializer }, align 32
@rtl28xxu_ctrl_msg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.81, ptr @.str.73, i32 27, ptr @.str.76, ptr @.str.77 }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"too large message %u\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"rtl28xxu_ctrl_msg\00", [46 x i8] zeroinitializer }, align 32
@rtl28xxu_ctrl_msg._entry_ptr = internal global ptr @rtl28xxu_ctrl_msg._entry, section ".printk_index", align 4
@.str.82 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c">>>\00", [28 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"<<<\00", [28 x i8] zeroinitializer }, align 32
@rtl28xxu_ctrl_msg.__UNIQUE_ID_ddebug392 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.81, ptr @.str.73, ptr @.str.84, i8 0, i8 13, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.84 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"%s: %02x %02x %02x %02x %02x %02x %02x %02x %s %*ph\0A\00", [43 x i8] zeroinitializer }, align 32
@rtl28xxu_ctrl_msg.__UNIQUE_ID_ddebug393 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.81, ptr @.str.73, ptr @.str.79, i8 0, i8 17, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@rtl2831u_power_ctrl.__UNIQUE_ID_ddebug425 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.85, ptr @.str.73, ptr @.str.86, i8 1, i8 109, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.85 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"rtl2831u_power_ctrl\00", [44 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"onoff=%d\0A\00", [22 x i8] zeroinitializer }, align 32
@rtl2831u_power_ctrl.__UNIQUE_ID_ddebug426 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.85, ptr @.str.73, ptr @.str.87, i8 1, i8 112, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.87 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"RD SYS0=%02x GPIO_OUT_VAL=%02x\0A\00", [32 x i8] zeroinitializer }, align 32
@rtl2831u_power_ctrl.__UNIQUE_ID_ddebug427 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.85, ptr @.str.73, ptr @.str.88, i8 1, i8 117, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.88 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"WR SYS0=%02x GPIO_OUT_VAL=%02x\0A\00", [32 x i8] zeroinitializer }, align 32
@rtl2831u_power_ctrl.__UNIQUE_ID_ddebug428 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.85, ptr @.str.73, ptr @.str.79, i8 1, i8 122, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@rtl2832u_power_ctrl.__UNIQUE_ID_ddebug429 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.89, ptr @.str.73, ptr @.str.86, i8 1, i8 124, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.89 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"rtl2832u_power_ctrl\00", [44 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [3 x i8], [29 x i8] } zeroinitializer, align 32
@.str.91 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\10\02\00", [29 x i8] zeroinitializer }, align 32
@rtl2832u_power_ctrl.__UNIQUE_ID_ddebug430 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.89, ptr @.str.73, ptr @.str.79, i8 1, i8 -119, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.92 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\08\00", [30 x i8] zeroinitializer }, align 32
@__const.rtl2831u_read_config.req_gate_open = private unnamed_addr constant { i16, i16, i16, [2 x i8], ptr } { i16 288, i16 17, i16 1, [2 x i8] zeroinitializer, ptr @.str.92 }, align 4
@rtl2831u_read_config.__UNIQUE_ID_ddebug394 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.93, ptr @.str.73, ptr @.str.74, i8 0, i8 72, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.93 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"rtl2831u_read_config\00", [43 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"NONE\00", [27 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"QT1010\00", [25 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"MT2060\00", [25 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"MXL5005S\00", [23 x i8] zeroinitializer }, align 32
@rtl2831u_read_config.__UNIQUE_ID_ddebug395 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.93, ptr @.str.73, ptr @.str.98, i8 0, i8 87, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.98 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"tuner=%s\0A\00", [22 x i8] zeroinitializer }, align 32
@rtl2831u_read_config.__UNIQUE_ID_ddebug396 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.93, ptr @.str.73, ptr @.str.79, i8 0, i8 88, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.99 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\18\00", [30 x i8] zeroinitializer }, align 32
@__const.rtl2832u_read_config.req_gate_open = private unnamed_addr constant { i16, i16, i16, [2 x i8], ptr } { i16 288, i16 17, i16 1, [2 x i8] zeroinitializer, ptr @.str.99 }, align 4
@.str.100 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\10\00", [30 x i8] zeroinitializer }, align 32
@__const.rtl2832u_read_config.req_gate_close = private unnamed_addr constant { i16, i16, i16, [2 x i8], ptr } { i16 288, i16 17, i16 1, [2 x i8] zeroinitializer, ptr @.str.100 }, align 4
@rtl2832u_read_config.__UNIQUE_ID_ddebug397 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.101, ptr @.str.73, ptr @.str.74, i8 0, i8 96, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.101 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"rtl2832u_read_config\00", [43 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"FC0012\00", [25 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"FC0013\00", [25 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"MT2266\00", [25 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"FC2580\00", [25 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"MT2063\00", [25 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"MAX3543\00", [24 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"TUA9001\00", [24 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"MXL5007T\00", [23 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"E4000\00", [26 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"TDA18272\00", [23 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"R820T\00", [26 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"R828D\00", [26 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"SI2157\00", [25 x i8] zeroinitializer }, align 32
@rtl2832u_read_config.__UNIQUE_ID_ddebug398 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.101, ptr @.str.73, ptr @.str.98, i8 0, i8 -122, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@rtl2832u_read_config.__UNIQUE_ID_ddebug399 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.101, ptr @.str.73, ptr @.str.115, i8 0, i8 -114, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.115 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"MN88472 found\0A\00", [17 x i8] zeroinitializer }, align 32
@rtl2832u_read_config.__UNIQUE_ID_ddebug400 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.101, ptr @.str.73, ptr @.str.116, i8 0, i8 -112, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.116 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"MN88473 found\0A\00", [17 x i8] zeroinitializer }, align 32
@rtl2832u_read_config.__UNIQUE_ID_ddebug401 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.101, ptr @.str.73, ptr @.str.117, i8 0, i8 -110, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.117 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"CXD2837ER found\0A\00", [47 x i8] zeroinitializer }, align 32
@rtl2832u_read_config.__UNIQUE_ID_ddebug402 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.101, ptr @.str.73, ptr @.str.118, i8 0, i8 -108, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.118 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Si2168 found\0A\00", [18 x i8] zeroinitializer }, align 32
@rtl2832u_read_config.__UNIQUE_ID_ddebug403 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.101, ptr @.str.73, ptr @.str.79, i8 0, i8 -105, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@rtl2831u_frontend_attach.__UNIQUE_ID_ddebug407 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.119, ptr @.str.73, ptr @.str.74, i8 0, i8 -84, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.119 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"rtl2831u_frontend_attach\00", [39 x i8] zeroinitializer }, align 32
@rtl2830_qt1010_platform_data = internal constant { %struct.rtl2830_platform_data, [40 x i8] } { %struct.rtl2830_platform_data { i32 28800000, i8 1, i8 32, i8 4, i8 45, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@rtl2830_mt2060_platform_data = internal constant { %struct.rtl2830_platform_data, [40 x i8] } { %struct.rtl2830_platform_data { i32 28800000, i8 1, i8 32, i8 4, i8 45, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@rtl2830_mxl5005s_platform_data = internal constant { %struct.rtl2830_platform_data, [40 x i8] } { %struct.rtl2830_platform_data { i32 28800000, i8 0, i8 63, i8 4, i8 62, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@rtl2831u_frontend_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.120, ptr @.str.119, ptr @.str.73, i32 701, ptr @.str.76, ptr @.str.77 }, [40 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"unknown tuner %s\0A\00", [46 x i8] zeroinitializer }, align 32
@rtl2831u_frontend_attach._entry_ptr = internal global ptr @rtl2831u_frontend_attach._entry, section ".printk_index", align 4
@.str.121 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"rtl2830\00", [24 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@rtl2831u_frontend_attach.__UNIQUE_ID_ddebug408 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.119, ptr @.str.73, ptr @.str.79, i8 0, i8 -74, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@rtl2832u_frontend_attach.__UNIQUE_ID_ddebug414 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.123, ptr @.str.73, ptr @.str.74, i8 0, i8 -32, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.123 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"rtl2832u_frontend_attach\00", [39 x i8] zeroinitializer }, align 32
@rtl2832_fc0012_platform_data = internal constant { %struct.rtl2832_platform_data, [32 x i8] } { %struct.rtl2832_platform_data { i32 28800000, i8 38, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@rtl2832_fc0013_platform_data = internal constant { %struct.rtl2832_platform_data, [32 x i8] } { %struct.rtl2832_platform_data { i32 28800000, i8 41, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@rtl2832_fc2580_platform_data = internal constant { %struct.rtl2832_platform_data, [32 x i8] } { %struct.rtl2832_platform_data { i32 28800000, i8 33, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@rtl2832_tua9001_platform_data = internal constant { %struct.rtl2832_platform_data, [32 x i8] } { %struct.rtl2832_platform_data { i32 28800000, i8 36, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@rtl2832_e4000_platform_data = internal constant { %struct.rtl2832_platform_data, [32 x i8] } { %struct.rtl2832_platform_data { i32 28800000, i8 39, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@rtl2832_r820t_platform_data = internal constant { %struct.rtl2832_platform_data, [32 x i8] } { %struct.rtl2832_platform_data { i32 28800000, i8 42, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@rtl2832_si2157_platform_data = internal constant { %struct.rtl2832_platform_data, [32 x i8] } { %struct.rtl2832_platform_data { i32 28800000, i8 44, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@rtl2832u_frontend_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.120, ptr @.str.123, ptr @.str.73, i32 922, ptr @.str.76, ptr @.str.77 }, [40 x i8] zeroinitializer }, align 32
@rtl2832u_frontend_attach._entry_ptr = internal global ptr @rtl2832u_frontend_attach._entry, section ".printk_index", align 4
@.str.124 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"rtl2832\00", [24 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mn88472\00", [24 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mn88473\00", [24 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"cxd2841er_attach_t_c\00", [43 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"symbol:cxd2841er_attach_t_c\00", [36 x i8] zeroinitializer }, align 32
@rtl2832u_frontend_attach._entry.129 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.130, ptr @.str.123, ptr @.str.73, i32 1008, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\013DVB: Unable to find symbol cxd2841er_attach_t_c()\0A\00", [43 x i8] zeroinitializer }, align 32
@rtl2832u_frontend_attach._entry_ptr.131 = internal global ptr @rtl2832u_frontend_attach._entry.129, section ".printk_index", align 4
@.str.132 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"si2168\00", [25 x i8] zeroinitializer }, align 32
@rtl2832u_frontend_attach.__UNIQUE_ID_ddebug415 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.123, ptr @.str.73, ptr @.str.79, i8 1, i8 5, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@i2c_adapter_type = external dso_local global %struct.device_type, align 4
@rtl2832u_frontend_callback.__UNIQUE_ID_ddebug413 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.133, ptr @.str.73, ptr @.str.134, i8 0, i8 -38, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.133 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"rtl2832u_frontend_callback\00", [37 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"component=%d cmd=%d arg=%d\0A\00", [36 x i8] zeroinitializer }, align 32
@rtl2832u_fc0012_tuner_callback.__UNIQUE_ID_ddebug409 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.135, ptr @.str.73, ptr @.str.136, i8 0, i8 -62, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.135 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"rtl2832u_fc0012_tuner_callback\00", [33 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"cmd=%d arg=%d\0A\00", [17 x i8] zeroinitializer }, align 32
@rtl2832u_fc0012_tuner_callback.__UNIQUE_ID_ddebug410 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.135, ptr @.str.73, ptr @.str.79, i8 0, i8 -56, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@rtl2832u_tua9001_tuner_callback.__UNIQUE_ID_ddebug411 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.137, ptr @.str.73, ptr @.str.136, i8 0, i8 -54, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.137 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"rtl2832u_tua9001_tuner_callback\00", [32 x i8] zeroinitializer }, align 32
@rtl2832u_tua9001_tuner_callback.__UNIQUE_ID_ddebug412 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.137, ptr @.str.73, ptr @.str.79, i8 0, i8 -45, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@rtl28xxu_frontend_detach.__UNIQUE_ID_ddebug416 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.138, ptr @.str.73, ptr @.str.74, i8 1, i8 12, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.138 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"rtl28xxu_frontend_detach\00", [39 x i8] zeroinitializer }, align 32
@rtl2831u_tuner_attach.__UNIQUE_ID_ddebug417 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.139, ptr @.str.73, ptr @.str.74, i8 1, i8 25, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.139 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"rtl2831u_tuner_attach\00", [42 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"qt1010_attach\00", [18 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"symbol:qt1010_attach\00", [43 x i8] zeroinitializer }, align 32
@rtl28xxu_qt1010_config = internal global { %struct.qt1010_config, [31 x i8] } { %struct.qt1010_config { i8 98 }, [31 x i8] zeroinitializer }, align 32
@rtl2831u_tuner_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.142, ptr @.str.139, ptr @.str.73, i32 1130, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013DVB: Unable to find symbol qt1010_attach()\0A\00", [50 x i8] zeroinitializer }, align 32
@rtl2831u_tuner_attach._entry_ptr = internal global ptr @rtl2831u_tuner_attach._entry, section ".printk_index", align 4
@.str.143 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mt2060_attach\00", [18 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"symbol:mt2060_attach\00", [43 x i8] zeroinitializer }, align 32
@rtl28xxu_mt2060_config = internal global { %struct.mt2060_config, [30 x i8] } { %struct.mt2060_config { i8 96, i8 0 }, [30 x i8] zeroinitializer }, align 32
@rtl2831u_tuner_attach._entry.145 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.146, ptr @.str.139, ptr @.str.73, i32 1135, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013DVB: Unable to find symbol mt2060_attach()\0A\00", [50 x i8] zeroinitializer }, align 32
@rtl2831u_tuner_attach._entry_ptr.147 = internal global ptr @rtl2831u_tuner_attach._entry.145, section ".printk_index", align 4
@.str.148 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"mxl5005s_attach\00", [16 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"symbol:mxl5005s_attach\00", [41 x i8] zeroinitializer }, align 32
@rtl28xxu_mxl5005s_config = internal global { %struct.mxl5005s_config, [32 x i8] } { %struct.mxl5005s_config { i8 99, i32 4570000, i32 16000000, i8 1, i8 3, i8 1, i8 1, i8 1, i8 0, i32 200, i32 252, i8 1, i8 0, i8 0, i8 0 }, [32 x i8] zeroinitializer }, align 32
@rtl2831u_tuner_attach._entry.150 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.151, ptr @.str.139, ptr @.str.73, i32 1140, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013DVB: Unable to find symbol mxl5005s_attach()\0A\00", [48 x i8] zeroinitializer }, align 32
@rtl2831u_tuner_attach._entry_ptr.152 = internal global ptr @rtl2831u_tuner_attach._entry.150, section ".printk_index", align 4
@rtl2831u_tuner_attach._entry.153 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.154, ptr @.str.139, ptr @.str.73, i32 1144, ptr @.str.76, ptr @.str.77 }, [40 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"unknown tuner %d\0A\00", [46 x i8] zeroinitializer }, align 32
@rtl2831u_tuner_attach._entry_ptr.155 = internal global ptr @rtl2831u_tuner_attach._entry.153, section ".printk_index", align 4
@rtl2831u_tuner_attach.__UNIQUE_ID_ddebug418 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.139, ptr @.str.73, ptr @.str.79, i8 1, i8 32, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@rtl2832u_tuner_attach.__UNIQUE_ID_ddebug419 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.156, ptr @.str.73, ptr @.str.74, i8 1, i8 41, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.156 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"rtl2832u_tuner_attach\00", [42 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"fc0012_attach\00", [18 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"symbol:fc0012_attach\00", [43 x i8] zeroinitializer }, align 32
@rtl2832u_fc0012_config = internal constant { %struct.fc0012_config, [20 x i8] } { %struct.fc0012_config { i8 99, i32 1, i8 0, i8 0, i8 0 }, [20 x i8] zeroinitializer }, align 32
@rtl2832u_tuner_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.159, ptr @.str.156, ptr @.str.73, i32 1197, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013DVB: Unable to find symbol fc0012_attach()\0A\00", [50 x i8] zeroinitializer }, align 32
@rtl2832u_tuner_attach._entry_ptr = internal global ptr @rtl2832u_tuner_attach._entry, section ".printk_index", align 4
@.str.160 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"fc0013_attach\00", [18 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"symbol:fc0013_attach\00", [43 x i8] zeroinitializer }, align 32
@rtl2832u_tuner_attach._entry.162 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.163, ptr @.str.156, ptr @.str.73, i32 1206, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013DVB: Unable to find symbol fc0013_attach()\0A\00", [50 x i8] zeroinitializer }, align 32
@rtl2832u_tuner_attach._entry_ptr.164 = internal global ptr @rtl2832u_tuner_attach._entry.162, section ".printk_index", align 4
@.str.165 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"e4000\00", [26 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"fc2580\00", [25 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"tua9001\00", [24 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"r820t_attach\00", [19 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"symbol:r820t_attach\00", [44 x i8] zeroinitializer }, align 32
@rtl2832u_r820t_config = internal constant { %struct.r820t_config, [44 x i8] } { %struct.r820t_config { i8 26, i32 28800000, i32 0, i32 2, i8 0, i8 0 }, [44 x i8] zeroinitializer }, align 32
@rtl2832u_tuner_attach._entry.170 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.171, ptr @.str.156, ptr @.str.73, i32 1292, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013DVB: Unable to find symbol r820t_attach()\0A\00", [51 x i8] zeroinitializer }, align 32
@rtl2832u_tuner_attach._entry_ptr.172 = internal global ptr @rtl2832u_tuner_attach._entry.170, section ".printk_index", align 4
@rtl2832u_r828d_config = internal constant { %struct.r820t_config, [44 x i8] } { %struct.r820t_config { i8 58, i32 16000000, i32 2, i32 2, i8 0, i8 0 }, [44 x i8] zeroinitializer }, align 32
@rtl2832u_tuner_attach._entry.173 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.171, ptr @.str.156, ptr @.str.73, i32 1301, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@rtl2832u_tuner_attach._entry_ptr.174 = internal global ptr @rtl2832u_tuner_attach._entry.173, section ".printk_index", align 4
@rtl2832u_tuner_attach._entry.175 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.171, ptr @.str.156, ptr @.str.73, i32 1308, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@rtl2832u_tuner_attach._entry_ptr.176 = internal global ptr @rtl2832u_tuner_attach._entry.175, section ".printk_index", align 4
@.str.177 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"si2157\00", [25 x i8] zeroinitializer }, align 32
@rtl2832u_tuner_attach._entry.178 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.154, ptr @.str.156, ptr @.str.73, i32 1347, ptr @.str.76, ptr @.str.77 }, [40 x i8] zeroinitializer }, align 32
@rtl2832u_tuner_attach._entry_ptr.179 = internal global ptr @rtl2832u_tuner_attach._entry.178, section ".printk_index", align 4
@.str.180 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"rtl2832_sdr\00", [20 x i8] zeroinitializer }, align 32
@rtl2832u_tuner_attach.__UNIQUE_ID_ddebug420 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.156, ptr @.str.73, ptr @.str.181, i8 1, i8 88, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.181 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"no SDR for tuner=%d\0A\00", [43 x i8] zeroinitializer }, align 32
@rtl2832u_tuner_attach.__UNIQUE_ID_ddebug421 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.156, ptr @.str.73, ptr @.str.79, i8 1, i8 90, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@rtl28xxu_tuner_detach.__UNIQUE_ID_ddebug422 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.182, ptr @.str.73, ptr @.str.74, i8 1, i8 95, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.182 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"rtl28xxu_tuner_detach\00", [42 x i8] zeroinitializer }, align 32
@rtl28xxu_frontend_ctrl.__UNIQUE_ID_ddebug431 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.183, ptr @.str.73, ptr @.str.184, i8 1, i8 -114, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.183 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"rtl28xxu_frontend_ctrl\00", [41 x i8] zeroinitializer }, align 32
@.str.184 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"fe=%d onoff=%d\0A\00", [16 x i8] zeroinitializer }, align 32
@rtl28xxu_frontend_ctrl.__UNIQUE_ID_ddebug432 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.183, ptr @.str.73, ptr @.str.79, i8 1, i8 -108, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@rtl28xxu_init.__UNIQUE_ID_ddebug423 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.185, ptr @.str.73, ptr @.str.74, i8 1, i8 100, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.185 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"rtl28xxu_init\00", [18 x i8] zeroinitializer }, align 32
@.str.186 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\00\02\00\00\00", [27 x i8] zeroinitializer }, align 32
@.str.187 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\14\00\00\00\00", [27 x i8] zeroinitializer }, align 32
@rtl28xxu_init.__UNIQUE_ID_ddebug424 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.185, ptr @.str.73, ptr @.str.79, i8 1, i8 107, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.188 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"rc-empty\00", [23 x i8] zeroinitializer }, align 32
@rtl2831u_rc_query.rc_nec_tab = internal constant { [14 x %struct.rtl28xxu_reg_val], [40 x i8] } { [14 x %struct.rtl28xxu_reg_val] [%struct.rtl28xxu_reg_val { i16 12339, i8 -128 }, %struct.rtl28xxu_reg_val { i16 12320, i8 67 }, %struct.rtl28xxu_reg_val { i16 12321, i8 22 }, %struct.rtl28xxu_reg_val { i16 12322, i8 22 }, %struct.rtl28xxu_reg_val { i16 12323, i8 90 }, %struct.rtl28xxu_reg_val { i16 12324, i8 45 }, %struct.rtl28xxu_reg_val { i16 12325, i8 22 }, %struct.rtl28xxu_reg_val { i16 12326, i8 1 }, %struct.rtl28xxu_reg_val { i16 12328, i8 -80 }, %struct.rtl28xxu_reg_val { i16 12329, i8 4 }, %struct.rtl28xxu_reg_val { i16 12332, i8 -120 }, %struct.rtl28xxu_reg_val { i16 12334, i8 19 }, %struct.rtl28xxu_reg_val { i16 12336, i8 -33 }, %struct.rtl28xxu_reg_val { i16 12337, i8 5 }], [40 x i8] zeroinitializer }, align 32
@rtl2831u_rc_query.__UNIQUE_ID_ddebug433 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.189, ptr @.str.73, ptr @.str.79, i8 1, i8 -88, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.189 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"rtl2831u_rc_query\00", [46 x i8] zeroinitializer }, align 32
@rtl2832u_rc_query.init_tab = internal constant { [16 x %struct.rtl28xxu_reg_val_mask], [32 x i8] } { [16 x %struct.rtl28xxu_reg_val_mask] [%struct.rtl28xxu_reg_val_mask { i16 12299, i8 0, i8 4 }, %struct.rtl28xxu_reg_val_mask { i16 12299, i8 0, i8 8 }, %struct.rtl28xxu_reg_val_mask { i16 8208, i8 32, i8 32 }, %struct.rtl28xxu_reg_val_mask { i16 12292, i8 0, i8 8 }, %struct.rtl28xxu_reg_val_mask { i16 12291, i8 8, i8 8 }, %struct.rtl28xxu_reg_val_mask { i16 12289, i8 8, i8 8 }, %struct.rtl28xxu_reg_val_mask { i16 -764, i8 -48, i8 -1 }, %struct.rtl28xxu_reg_val_mask { i16 -763, i8 7, i8 -1 }, %struct.rtl28xxu_reg_val_mask { i16 -762, i8 -64, i8 -1 }, %struct.rtl28xxu_reg_val_mask { i16 -761, i8 0, i8 -1 }, %struct.rtl28xxu_reg_val_mask { i16 -760, i8 3, i8 -1 }, %struct.rtl28xxu_reg_val_mask { i16 -756, i8 9, i8 -1 }, %struct.rtl28xxu_reg_val_mask { i16 -765, i8 28, i8 -1 }, %struct.rtl28xxu_reg_val_mask { i16 -748, i8 30, i8 -1 }, %struct.rtl28xxu_reg_val_mask { i16 -747, i8 30, i8 -1 }, %struct.rtl28xxu_reg_val_mask { i16 -766, i8 -128, i8 -1 }], [32 x i8] zeroinitializer }, align 32
@rtl2832u_rc_query.__UNIQUE_ID_ddebug434 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.190, ptr @.str.73, ptr @.str.79, i8 1, i8 -64, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.190 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"rtl2832u_rc_query\00", [46 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967264]
@__sancov_gen_cov_switch_values.191 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.192 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.193 = internal global [4 x i64] [i64 2, i64 8, i64 156, i64 158]
@__sancov_gen_cov_switch_values.194 = internal global [5 x i64] [i64 3, i64 8, i64 16, i64 17, i64 18]
@__sancov_gen_cov_switch_values.195 = internal global [10 x i64] [i64 8, i64 8, i64 33, i64 36, i64 38, i64 39, i64 41, i64 42, i64 43, i64 44]
@__sancov_gen_cov_switch_values.196 = internal global [5 x i64] [i64 3, i64 3, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.197 = internal global [4 x i64] [i64 2, i64 8, i64 36, i64 38]
@__sancov_gen_cov_switch_values.198 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.199 = internal global [5 x i64] [i64 3, i64 8, i64 16, i64 17, i64 18]
@__sancov_gen_cov_switch_values.200 = internal global [10 x i64] [i64 8, i64 8, i64 33, i64 36, i64 38, i64 39, i64 41, i64 42, i64 43, i64 44]
@__sancov_gen_cov_switch_values.201 = internal global [8 x i64] [i64 6, i64 8, i64 33, i64 38, i64 39, i64 41, i64 42, i64 43]
@___asan_gen_.202 = private unnamed_addr constant [20 x i8] c"rtl28xxu_disable_rc\00", align 1
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.766, i32 12, i32 12 }
@___asan_gen_.205 = private unnamed_addr constant [20 x i8] c"rtl28xxu_usb_driver\00", align 1
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.766, i32 1976, i32 26 }
@___asan_gen_.208 = private unnamed_addr constant [11 x i8] c"adapter_nr\00", align 1
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.766, i32 15, i32 1 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.766, i32 1988, i32 1 }
@___asan_gen_.214 = private unnamed_addr constant [18 x i8] c"rtl28xxu_id_table\00", align 1
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.766, i32 1895, i32 35 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.766, i32 1897, i32 4 }
@___asan_gen_.220 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.766, i32 1899, i32 4 }
@___asan_gen_.224 = private unnamed_addr constant [19 x i8] c".compoundliteral.3\00", align 1
@___asan_gen_.225 = private unnamed_addr constant [19 x i8] c".compoundliteral.4\00", align 1
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.766, i32 1905, i32 4 }
@___asan_gen_.229 = private unnamed_addr constant [19 x i8] c".compoundliteral.6\00", align 1
@___asan_gen_.230 = private unnamed_addr constant [19 x i8] c".compoundliteral.7\00", align 1
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.766, i32 1909, i32 4 }
@___asan_gen_.237 = private unnamed_addr constant [20 x i8] c".compoundliteral.10\00", align 1
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.766, i32 1911, i32 4 }
@___asan_gen_.241 = private unnamed_addr constant [20 x i8] c".compoundliteral.12\00", align 1
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.766, i32 1913, i32 4 }
@___asan_gen_.245 = private unnamed_addr constant [20 x i8] c".compoundliteral.14\00", align 1
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.766, i32 1915, i32 4 }
@___asan_gen_.249 = private unnamed_addr constant [20 x i8] c".compoundliteral.16\00", align 1
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.766, i32 1917, i32 4 }
@___asan_gen_.253 = private unnamed_addr constant [20 x i8] c".compoundliteral.18\00", align 1
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.766, i32 1919, i32 4 }
@___asan_gen_.257 = private unnamed_addr constant [20 x i8] c".compoundliteral.20\00", align 1
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.766, i32 1921, i32 4 }
@___asan_gen_.261 = private unnamed_addr constant [20 x i8] c".compoundliteral.22\00", align 1
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.766, i32 1923, i32 4 }
@___asan_gen_.265 = private unnamed_addr constant [20 x i8] c".compoundliteral.24\00", align 1
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.766, i32 1925, i32 4 }
@___asan_gen_.269 = private unnamed_addr constant [20 x i8] c".compoundliteral.26\00", align 1
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.766, i32 1927, i32 4 }
@___asan_gen_.276 = private unnamed_addr constant [20 x i8] c".compoundliteral.29\00", align 1
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.766, i32 1929, i32 4 }
@___asan_gen_.280 = private unnamed_addr constant [20 x i8] c".compoundliteral.31\00", align 1
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.766, i32 1931, i32 4 }
@___asan_gen_.284 = private unnamed_addr constant [20 x i8] c".compoundliteral.33\00", align 1
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.766, i32 1933, i32 4 }
@___asan_gen_.288 = private unnamed_addr constant [20 x i8] c".compoundliteral.35\00", align 1
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.766, i32 1935, i32 4 }
@___asan_gen_.292 = private unnamed_addr constant [20 x i8] c".compoundliteral.37\00", align 1
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.766, i32 1937, i32 4 }
@___asan_gen_.296 = private unnamed_addr constant [20 x i8] c".compoundliteral.39\00", align 1
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.766, i32 1939, i32 4 }
@___asan_gen_.300 = private unnamed_addr constant [20 x i8] c".compoundliteral.41\00", align 1
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.766, i32 1941, i32 4 }
@___asan_gen_.304 = private unnamed_addr constant [20 x i8] c".compoundliteral.43\00", align 1
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.766, i32 1943, i32 4 }
@___asan_gen_.308 = private unnamed_addr constant [20 x i8] c".compoundliteral.45\00", align 1
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.766, i32 1945, i32 4 }
@___asan_gen_.312 = private unnamed_addr constant [20 x i8] c".compoundliteral.47\00", align 1
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.766, i32 1947, i32 4 }
@___asan_gen_.316 = private unnamed_addr constant [20 x i8] c".compoundliteral.49\00", align 1
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.766, i32 1949, i32 4 }
@___asan_gen_.320 = private unnamed_addr constant [20 x i8] c".compoundliteral.51\00", align 1
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.766, i32 1951, i32 4 }
@___asan_gen_.324 = private unnamed_addr constant [20 x i8] c".compoundliteral.53\00", align 1
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.766, i32 1953, i32 4 }
@___asan_gen_.328 = private unnamed_addr constant [20 x i8] c".compoundliteral.55\00", align 1
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.766, i32 1955, i32 4 }
@___asan_gen_.332 = private unnamed_addr constant [20 x i8] c".compoundliteral.57\00", align 1
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.766, i32 1957, i32 4 }
@___asan_gen_.336 = private unnamed_addr constant [20 x i8] c".compoundliteral.59\00", align 1
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.766, i32 1959, i32 4 }
@___asan_gen_.340 = private unnamed_addr constant [20 x i8] c".compoundliteral.61\00", align 1
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.766, i32 1961, i32 4 }
@___asan_gen_.344 = private unnamed_addr constant [20 x i8] c".compoundliteral.63\00", align 1
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.766, i32 1963, i32 4 }
@___asan_gen_.348 = private unnamed_addr constant [20 x i8] c".compoundliteral.65\00", align 1
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.766, i32 1967, i32 4 }
@___asan_gen_.355 = private unnamed_addr constant [20 x i8] c".compoundliteral.68\00", align 1
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.766, i32 1970, i32 4 }
@___asan_gen_.359 = private unnamed_addr constant [20 x i8] c".compoundliteral.70\00", align 1
@___asan_gen_.360 = private unnamed_addr constant [18 x i8] c"rtl28xxu_i2c_algo\00", align 1
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.766, i32 273, i32 29 }
@___asan_gen_.363 = private unnamed_addr constant [15 x i8] c"rtl28xxu_props\00", align 1
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.766, i32 1862, i32 47 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.766, i32 627, i32 2 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.766, i32 639, i32 3 }
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.766, i32 642, i32 2 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.766, i32 650, i32 2 }
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.766, i32 27, i32 3 }
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.766, i32 54, i32 2 }
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.766, i32 1461, i32 2 }
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.766, i32 1473, i32 2 }
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.766, i32 1492, i32 2 }
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.766, i32 1522, i32 2 }
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.766, i32 1546, i32 42 }
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.766, i32 1565, i32 42 }
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.766, i32 284, i32 63 }
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.766, i32 289, i32 2 }
@___asan_gen_.440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.766, i32 317, i32 20 }
@___asan_gen_.443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.766, i32 328, i32 21 }
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.766, i32 341, i32 21 }
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.766, i32 347, i32 20 }
@___asan_gen_.452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.766, i32 351, i32 2 }
@___asan_gen_.455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.766, i32 365, i32 63 }
@___asan_gen_.458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.766, i32 367, i32 64 }
@___asan_gen_.461 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.766, i32 387, i32 2 }
@___asan_gen_.464 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.766, i32 414, i32 21 }
@___asan_gen_.467 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.766, i32 422, i32 21 }
@___asan_gen_.470 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.766, i32 430, i32 21 }
@___asan_gen_.473 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.766, i32 438, i32 21 }
@___asan_gen_.476 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.766, i32 446, i32 21 }
@___asan_gen_.479 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.766, i32 454, i32 21 }
@___asan_gen_.482 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.766, i32 462, i32 21 }
@___asan_gen_.485 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.766, i32 470, i32 21 }
@___asan_gen_.488 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.766, i32 478, i32 21 }
@___asan_gen_.491 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.766, i32 486, i32 21 }
@___asan_gen_.494 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.766, i32 494, i32 21 }
@___asan_gen_.497 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.766, i32 502, i32 21 }
@___asan_gen_.500 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.766, i32 531, i32 21 }
@___asan_gen_.503 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.766, i32 570, i32 4 }
@___asan_gen_.506 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.766, i32 577, i32 4 }
@___asan_gen_.509 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.766, i32 584, i32 4 }
@___asan_gen_.512 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.766, i32 593, i32 4 }
@___asan_gen_.515 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.766, i32 688, i32 2 }
@___asan_gen_.516 = private unnamed_addr constant [29 x i8] c"rtl2830_qt1010_platform_data\00", align 1
@___asan_gen_.518 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.766, i32 663, i32 43 }
@___asan_gen_.519 = private unnamed_addr constant [29 x i8] c"rtl2830_mt2060_platform_data\00", align 1
@___asan_gen_.521 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.766, i32 654, i32 43 }
@___asan_gen_.522 = private unnamed_addr constant [31 x i8] c"rtl2830_mxl5005s_platform_data\00", align 1
@___asan_gen_.524 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.766, i32 671, i32 43 }
@___asan_gen_.530 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.766, i32 701, i32 3 }
@___asan_gen_.533 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.766, i32 708, i32 27 }
@___asan_gen_.536 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.766, i32 711, i32 2 }
@___asan_gen_.539 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.766, i32 896, i32 2 }
@___asan_gen_.540 = private unnamed_addr constant [29 x i8] c"rtl2832_fc0012_platform_data\00", align 1
@___asan_gen_.542 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.766, i32 740, i32 43 }
@___asan_gen_.543 = private unnamed_addr constant [29 x i8] c"rtl2832_fc0013_platform_data\00", align 1
@___asan_gen_.545 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.766, i32 745, i32 43 }
@___asan_gen_.546 = private unnamed_addr constant [29 x i8] c"rtl2832_fc2580_platform_data\00", align 1
@___asan_gen_.548 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.766, i32 735, i32 43 }
@___asan_gen_.549 = private unnamed_addr constant [30 x i8] c"rtl2832_tua9001_platform_data\00", align 1
@___asan_gen_.551 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.766, i32 750, i32 43 }
@___asan_gen_.552 = private unnamed_addr constant [28 x i8] c"rtl2832_e4000_platform_data\00", align 1
@___asan_gen_.554 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.766, i32 755, i32 43 }
@___asan_gen_.555 = private unnamed_addr constant [28 x i8] c"rtl2832_r820t_platform_data\00", align 1
@___asan_gen_.557 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.766, i32 760, i32 43 }
@___asan_gen_.558 = private unnamed_addr constant [29 x i8] c"rtl2832_si2157_platform_data\00", align 1
@___asan_gen_.560 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.766, i32 765, i32 43 }
@___asan_gen_.563 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.766, i32 922, i32 3 }
@___asan_gen_.566 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.766, i32 929, i32 27 }
@___asan_gen_.569 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.766, i32 962, i32 23 }
@___asan_gen_.572 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.766, i32 984, i32 23 }
@___asan_gen_.584 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.766, i32 1006, i32 18 }
@___asan_gen_.587 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.766, i32 1022, i32 23 }
@___asan_gen_.593 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.766, i32 871, i32 2 }
@___asan_gen_.599 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.766, i32 776, i32 2 }
@___asan_gen_.602 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.766, i32 811, i32 2 }
@___asan_gen_.605 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.766, i32 1072, i32 2 }
@___asan_gen_.608 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.766, i32 1124, i32 2 }
@___asan_gen_.615 = private unnamed_addr constant [23 x i8] c"rtl28xxu_qt1010_config\00", align 1
@___asan_gen_.617 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.766, i32 1091, i32 29 }
@___asan_gen_.623 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.766, i32 1128, i32 8 }
@___asan_gen_.630 = private unnamed_addr constant [23 x i8] c"rtl28xxu_mt2060_config\00", align 1
@___asan_gen_.632 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.766, i32 1095, i32 29 }
@___asan_gen_.638 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.766, i32 1133, i32 8 }
@___asan_gen_.645 = private unnamed_addr constant [25 x i8] c"rtl28xxu_mxl5005s_config\00", align 1
@___asan_gen_.647 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.766, i32 1100, i32 31 }
@___asan_gen_.653 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.766, i32 1138, i32 8 }
@___asan_gen_.659 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.766, i32 1144, i32 3 }
@___asan_gen_.662 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.766, i32 1189, i32 2 }
@___asan_gen_.669 = private unnamed_addr constant [23 x i8] c"rtl2832u_fc0012_config\00", align 1
@___asan_gen_.671 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.766, i32 1158, i32 35 }
@___asan_gen_.677 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.766, i32 1196, i32 8 }
@___asan_gen_.689 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.766, i32 1205, i32 8 }
@___asan_gen_.692 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.766, i32 1218, i32 23 }
@___asan_gen_.695 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.766, i32 1243, i32 29 }
@___asan_gen_.698 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.766, i32 1274, i32 28 }
@___asan_gen_.705 = private unnamed_addr constant [22 x i8] c"rtl2832u_r820t_config\00", align 1
@___asan_gen_.707 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.766, i32 1163, i32 34 }
@___asan_gen_.713 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.766, i32 1290, i32 8 }
@___asan_gen_.714 = private unnamed_addr constant [22 x i8] c"rtl2832u_r828d_config\00", align 1
@___asan_gen_.716 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.766, i32 1170, i32 34 }
@___asan_gen_.719 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.766, i32 1299, i32 8 }
@___asan_gen_.722 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.766, i32 1306, i32 9 }
@___asan_gen_.725 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.766, i32 1320, i32 23 }
@___asan_gen_.726 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.728 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.766, i32 1347, i32 3 }
@___asan_gen_.731 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.766, i32 1369, i32 3 }
@___asan_gen_.734 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.766, i32 1379, i32 3 }
@___asan_gen_.737 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.766, i32 1405, i32 2 }
@___asan_gen_.743 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.766, i32 1594, i32 2 }
@___asan_gen_.746 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.766, i32 1427, i32 2 }
@___asan_gen_.749 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.766, i32 1441, i32 44 }
@___asan_gen_.752 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.766, i32 1446, i32 46 }
@___asan_gen_.755 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.766, i32 1703, i32 17 }
@___asan_gen_.756 = private unnamed_addr constant [11 x i8] c"rc_nec_tab\00", align 1
@___asan_gen_.758 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.766, i32 1629, i32 39 }
@___asan_gen_.761 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.766, i32 1696, i32 2 }
@___asan_gen_.762 = private unnamed_addr constant [9 x i8] c"init_tab\00", align 1
@___asan_gen_.764 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.766, i32 1726, i32 45 }
@___asan_gen_.765 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.766 = private constant [43 x i8] c"../drivers/media/usb/dvb-usb-v2/rtl28xxu.c\00", align 1
@___asan_gen_.767 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.766, i32 1793, i32 2 }
@llvm.compiler.used = appending global [241 x ptr] [ptr @__UNIQUE_ID_adapter_nr391, ptr @__UNIQUE_ID_adapter_nrtype390, ptr @__UNIQUE_ID_author437, ptr @__UNIQUE_ID_author438, ptr @__UNIQUE_ID_description436, ptr @__UNIQUE_ID_disable_rc389, ptr @__UNIQUE_ID_disable_rctype388, ptr @__UNIQUE_ID_file439, ptr @__UNIQUE_ID_license440, ptr @__exitcall_rtl28xxu_usb_driver_exit, ptr @__initcall__kmod_dvb_usb_rtl28xxu__435_1988_rtl28xxu_usb_driver_init6, ptr @__param_adapter_nr, ptr @__param_disable_rc, ptr @rtl2831u_frontend_attach._entry, ptr @rtl2831u_frontend_attach._entry_ptr, ptr @rtl2831u_tuner_attach._entry, ptr @rtl2831u_tuner_attach._entry.145, ptr @rtl2831u_tuner_attach._entry.150, ptr @rtl2831u_tuner_attach._entry.153, ptr @rtl2831u_tuner_attach._entry_ptr, ptr @rtl2831u_tuner_attach._entry_ptr.147, ptr @rtl2831u_tuner_attach._entry_ptr.152, ptr @rtl2831u_tuner_attach._entry_ptr.155, ptr @rtl2832u_frontend_attach._entry, ptr @rtl2832u_frontend_attach._entry.129, ptr @rtl2832u_frontend_attach._entry_ptr, ptr @rtl2832u_frontend_attach._entry_ptr.131, ptr @rtl2832u_tuner_attach._entry, ptr @rtl2832u_tuner_attach._entry.162, ptr @rtl2832u_tuner_attach._entry.170, ptr @rtl2832u_tuner_attach._entry.173, ptr @rtl2832u_tuner_attach._entry.175, ptr @rtl2832u_tuner_attach._entry.178, ptr @rtl2832u_tuner_attach._entry_ptr, ptr @rtl2832u_tuner_attach._entry_ptr.164, ptr @rtl2832u_tuner_attach._entry_ptr.172, ptr @rtl2832u_tuner_attach._entry_ptr.174, ptr @rtl2832u_tuner_attach._entry_ptr.176, ptr @rtl2832u_tuner_attach._entry_ptr.179, ptr @rtl28xxu_ctrl_msg._entry, ptr @rtl28xxu_ctrl_msg._entry_ptr, ptr @rtl28xxu_identify_state._entry, ptr @rtl28xxu_identify_state._entry_ptr, ptr @rtl28xxu_usb_driver_exit, ptr @rtl28xxu_disable_rc, ptr @rtl28xxu_usb_driver, ptr @adapter_nr, ptr @.str, ptr @rtl28xxu_id_table, ptr @.str.1, ptr @.compoundliteral, ptr @.str.2, ptr @.compoundliteral.3, ptr @.compoundliteral.4, ptr @.str.5, ptr @.compoundliteral.6, ptr @.compoundliteral.7, ptr @.str.8, ptr @.str.9, ptr @.compoundliteral.10, ptr @.str.11, ptr @.compoundliteral.12, ptr @.str.13, ptr @.compoundliteral.14, ptr @.str.15, ptr @.compoundliteral.16, ptr @.str.17, ptr @.compoundliteral.18, ptr @.str.19, ptr @.compoundliteral.20, ptr @.str.21, ptr @.compoundliteral.22, ptr @.str.23, ptr @.compoundliteral.24, ptr @.str.25, ptr @.compoundliteral.26, ptr @.str.27, ptr @.str.28, ptr @.compoundliteral.29, ptr @.str.30, ptr @.compoundliteral.31, ptr @.str.32, ptr @.compoundliteral.33, ptr @.str.34, ptr @.compoundliteral.35, ptr @.str.36, ptr @.compoundliteral.37, ptr @.str.38, ptr @.compoundliteral.39, ptr @.str.40, ptr @.compoundliteral.41, ptr @.str.42, ptr @.compoundliteral.43, ptr @.str.44, ptr @.compoundliteral.45, ptr @.str.46, ptr @.compoundliteral.47, ptr @.str.48, ptr @.compoundliteral.49, ptr @.str.50, ptr @.compoundliteral.51, ptr @.str.52, ptr @.compoundliteral.53, ptr @.str.54, ptr @.compoundliteral.55, ptr @.str.56, ptr @.compoundliteral.57, ptr @.str.58, ptr @.compoundliteral.59, ptr @.str.60, ptr @.compoundliteral.61, ptr @.str.62, ptr @.compoundliteral.63, ptr @.str.64, ptr @.compoundliteral.65, ptr @.str.66, ptr @.str.67, ptr @.compoundliteral.68, ptr @.str.69, ptr @.compoundliteral.70, ptr @rtl28xxu_i2c_algo, ptr @rtl28xxu_props, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @rtl2830_qt1010_platform_data, ptr @rtl2830_mt2060_platform_data, ptr @rtl2830_mxl5005s_platform_data, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @rtl2832_fc0012_platform_data, ptr @rtl2832_fc0013_platform_data, ptr @rtl2832_fc2580_platform_data, ptr @rtl2832_tua9001_platform_data, ptr @rtl2832_e4000_platform_data, ptr @rtl2832_r820t_platform_data, ptr @rtl2832_si2157_platform_data, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.130, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @rtl28xxu_qt1010_config, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @rtl28xxu_mt2060_config, ptr @.str.146, ptr @.str.148, ptr @.str.149, ptr @rtl28xxu_mxl5005s_config, ptr @.str.151, ptr @.str.154, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @rtl2832u_fc0012_config, ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr @.str.163, ptr @.str.165, ptr @.str.166, ptr @.str.167, ptr @.str.168, ptr @.str.169, ptr @rtl2832u_r820t_config, ptr @.str.171, ptr @rtl2832u_r828d_config, ptr @.str.177, ptr @.str.180, ptr @.str.181, ptr @.str.182, ptr @.str.183, ptr @.str.184, ptr @.str.185, ptr @.str.186, ptr @.str.187, ptr @.str.188, ptr @rtl2831u_rc_query.rc_nec_tab, ptr @.str.189, ptr @rtl2832u_rc_query.init_tab, ptr @.str.190], section "llvm.metadata"
@0 = internal global [212 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl28xxu_disable_rc to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl28xxu_usb_driver to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adapter_nr to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl28xxu_id_table to i32), i32 864, i32 1056, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.3 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.4 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.6 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.7 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.10 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.12 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.14 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.16 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.18 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.20 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.22 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.24 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.26 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.29 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.31 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.33 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.35 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.37 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.39 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.41 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.43 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.45 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.47 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.49 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.51 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.53 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.55 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.57 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.59 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.61 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.63 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.65 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.68 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.70 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl28xxu_i2c_algo to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl28xxu_props to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl28xxu_identify_state._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl28xxu_ctrl_msg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl2830_qt1010_platform_data to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl2830_mt2060_platform_data to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl2830_mxl5005s_platform_data to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl2831u_frontend_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl2832_fc0012_platform_data to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl2832_fc0013_platform_data to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl2832_fc2580_platform_data to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl2832_tua9001_platform_data to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl2832_e4000_platform_data to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl2832_r820t_platform_data to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl2832_si2157_platform_data to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl2832u_frontend_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl2832u_frontend_attach._entry.129 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl28xxu_qt1010_config to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl2831u_tuner_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl28xxu_mt2060_config to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl2831u_tuner_attach._entry.145 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl28xxu_mxl5005s_config to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl2831u_tuner_attach._entry.150 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl2831u_tuner_attach._entry.153 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl2832u_fc0012_config to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl2832u_tuner_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl2832u_tuner_attach._entry.162 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl2832u_r820t_config to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.707 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl2832u_tuner_attach._entry.170 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl2832u_r828d_config to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl2832u_tuner_attach._entry.173 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl2832u_tuner_attach._entry.175 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl2832u_tuner_attach._entry.178 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.185 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.186 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.187 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.188 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl2831u_rc_query.rc_nec_tab to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.189 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl2832u_rc_query.init_tab to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.190 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @rtl28xxu_usb_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usb_register_driver(ptr noundef nonnull @rtl28xxu_usb_driver, ptr noundef null, ptr noundef nonnull @.str) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @rtl28xxu_usb_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @usb_deregister(ptr noundef nonnull @rtl28xxu_usb_driver) #6
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
define internal i32 @rtl28xxu_identify_state(ptr noundef %d, ptr nocapture noundef readnone %name) #2 align 64 {
entry:
  %req_demod_i2c = alloca %struct.rtl28xxu_req, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 15
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %req_demod_i2c) #6
  %2 = call ptr @memcpy(ptr %req_demod_i2c, ptr @__const.rtl28xxu_identify_state.req_demod_i2c, i32 12)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtl28xxu_identify_state.__UNIQUE_ID_ddebug404, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtl28xxu_identify_state, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !420

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %intf = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 4
  %3 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %intf, align 8
  %dev3 = getelementptr inbounds %struct.usb_interface, ptr %4, i32 0, i32 7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rtl28xxu_identify_state.__UNIQUE_ID_ddebug404, ptr noundef %dev3, ptr noundef nonnull @.str.74) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call4 = call fastcc i32 @rtl28xxu_ctrl_msg(ptr noundef %d, ptr noundef nonnull %req_demod_i2c)
  %5 = zext i32 %call4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call4, label %do.end12 [
    i32 -32, label %do.end.do.body17_crit_edge
    i32 0, label %if.then7
  ]

do.end.do.body17_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body17

if.then7:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body17

do.end12:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %intf13 = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 4
  %6 = ptrtoint ptr %intf13 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %intf13, align 8
  %dev14 = getelementptr inbounds %struct.usb_interface, ptr %7, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev14, ptr noundef nonnull @.str.75, i32 noundef %call4) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtl28xxu_identify_state.__UNIQUE_ID_ddebug406, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtl28xxu_identify_state, %if.then50)) #6
          to label %cleanup [label %if.then50], !srcloc !420

do.body17:                                        ; preds = %if.then7, %do.end.do.body17_crit_edge
  %.sink = phi i8 [ 2, %if.then7 ], [ 1, %do.end.do.body17_crit_edge ]
  %chip_id = getelementptr inbounds %struct.rtl28xxu_dev, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %chip_id to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %.sink, ptr %chip_id, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtl28xxu_identify_state.__UNIQUE_ID_ddebug405, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtl28xxu_identify_state, %if.then29)) #6
          to label %do.end35 [label %if.then29], !srcloc !420

if.then29:                                        ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #8
  %intf30 = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 4
  %9 = ptrtoint ptr %intf30 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %intf30, align 8
  %dev31 = getelementptr inbounds %struct.usb_interface, ptr %10, i32 0, i32 7
  %chip_id32 = getelementptr inbounds %struct.rtl28xxu_dev, ptr %1, i32 0, i32 1
  %11 = ptrtoint ptr %chip_id32 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %chip_id32, align 4
  %conv = zext i8 %12 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rtl28xxu_identify_state.__UNIQUE_ID_ddebug405, ptr noundef %dev31, ptr noundef nonnull @.str.78, i32 noundef %conv) #6
  br label %do.end35

do.end35:                                         ; preds = %if.then29, %do.body17
  %retries = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 10, i32 8
  %13 = ptrtoint ptr %retries to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 3, ptr %retries, align 8
  %timeout = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 10, i32 7
  %14 = ptrtoint ptr %timeout to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1, ptr %timeout, align 4
  br label %cleanup

if.then50:                                        ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #8
  %15 = ptrtoint ptr %intf13 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %intf13, align 8
  %dev52 = getelementptr inbounds %struct.usb_interface, ptr %16, i32 0, i32 7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rtl28xxu_identify_state.__UNIQUE_ID_ddebug406, ptr noundef %dev52, ptr noundef nonnull @.str.79, i32 noundef %call4) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then50, %do.end35, %do.end12
  %retval.0 = phi i32 [ 0, %do.end35 ], [ %call4, %if.then50 ], [ %call4, %do.end12 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %req_demod_i2c) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtl28xxu_pid_filter_ctrl(ptr nocapture noundef readonly %adap, i32 noundef %onoff) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
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
  %chip_id = getelementptr inbounds %struct.rtl28xxu_dev, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %chip_id to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %chip_id, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %5)
  %cmp = icmp eq i8 %5, 1
  %pid_filter_ctrl4 = getelementptr inbounds %struct.rtl28xxu_dev, ptr %3, i32 0, i32 13, i32 0, i32 6
  %pid_filter_ctrl = getelementptr inbounds %struct.rtl28xxu_dev, ptr %3, i32 0, i32 13, i32 0, i32 5
  %pid_filter_ctrl4.sink = select i1 %cmp, ptr %pid_filter_ctrl, ptr %pid_filter_ctrl4
  %6 = ptrtoint ptr %pid_filter_ctrl4.sink to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pid_filter_ctrl4.sink, align 4
  %fe5 = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 14
  %8 = ptrtoint ptr %fe5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fe5, align 8
  %call7 = tail call i32 %7(ptr noundef %9, i32 noundef %onoff) #6
  ret i32 %call7
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtl28xxu_pid_filter(ptr nocapture noundef readonly %adap, i32 noundef %index, i16 noundef zeroext %pid, i32 noundef %onoff) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
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
  %chip_id = getelementptr inbounds %struct.rtl28xxu_dev, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %chip_id to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %chip_id, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %5)
  %cmp = icmp eq i8 %5, 1
  %pid_filter5 = getelementptr inbounds %struct.rtl28xxu_dev, ptr %3, i32 0, i32 13, i32 0, i32 5
  %pid_filter = getelementptr inbounds %struct.rtl28xxu_dev, ptr %3, i32 0, i32 13, i32 0, i32 4
  %pid_filter5.sink = select i1 %cmp, ptr %pid_filter, ptr %pid_filter5
  %6 = ptrtoint ptr %pid_filter5.sink to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pid_filter5.sink, align 4
  %fe6 = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 14
  %8 = ptrtoint ptr %fe6 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fe6, align 8
  %conv8 = trunc i32 %index to i8
  %call9 = tail call i32 %7(ptr noundef %9, i8 noundef zeroext %conv8, i16 noundef zeroext %pid, i32 noundef %onoff) #6
  ret i32 %call9
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtl28xxu_power_ctrl(ptr noundef %d, i32 noundef %onoff) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 15
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %chip_id = getelementptr inbounds %struct.rtl28xxu_dev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %chip_id to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %chip_id, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %3)
  %cmp = icmp eq i8 %3, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call fastcc i32 @rtl2831u_power_ctrl(ptr noundef %d, i32 noundef %onoff)
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call2 = tail call fastcc i32 @rtl2832u_power_ctrl(ptr noundef %d, i32 noundef %onoff)
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ %call2, %if.else ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtl28xxu_read_config(ptr noundef %d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 15
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %chip_id = getelementptr inbounds %struct.rtl28xxu_dev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %chip_id to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %chip_id, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %3)
  %cmp = icmp eq i8 %3, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call fastcc i32 @rtl2831u_read_config(ptr noundef %d)
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call2 = tail call fastcc i32 @rtl2832u_read_config(ptr noundef %d)
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ %call2, %if.else ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtl28xxu_frontend_attach(ptr noundef %adap) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
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
  %chip_id = getelementptr inbounds %struct.rtl28xxu_dev, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %chip_id to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %chip_id, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %5)
  %cmp = icmp eq i8 %5, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call fastcc i32 @rtl2831u_frontend_attach(ptr noundef %adap)
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call3 = tail call fastcc i32 @rtl2832u_frontend_attach(ptr noundef %adap)
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ %call3, %if.else ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtl28xxu_frontend_detach(ptr nocapture noundef readonly %adap) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
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
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtl28xxu_frontend_detach.__UNIQUE_ID_ddebug416, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtl28xxu_frontend_detach, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !420

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %intf = getelementptr inbounds %struct.dvb_usb_device, ptr %add.ptr, i32 0, i32 4
  %4 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %intf, align 8
  %dev4 = getelementptr inbounds %struct.usb_interface, ptr %5, i32 0, i32 7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rtl28xxu_frontend_detach.__UNIQUE_ID_ddebug416, ptr noundef %dev4, ptr noundef nonnull @.str.74) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %i2c_client_slave_demod = getelementptr inbounds %struct.rtl28xxu_dev, ptr %3, i32 0, i32 10
  %6 = ptrtoint ptr %i2c_client_slave_demod to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %i2c_client_slave_demod, align 4
  %tobool5.not = icmp eq ptr %7, null
  br i1 %tobool5.not, label %do.end.if.end8_crit_edge, label %if.then6

do.end.if.end8_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8

if.then6:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %driver = getelementptr inbounds %struct.i2c_client, ptr %7, i32 0, i32 4, i32 6
  %8 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %driver, align 4
  %owner = getelementptr inbounds %struct.device_driver, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %owner, align 4
  tail call void @module_put(ptr noundef %11) #6
  tail call void @i2c_unregister_device(ptr noundef nonnull %7) #6
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %do.end.if.end8_crit_edge
  %i2c_client_demod = getelementptr inbounds %struct.rtl28xxu_dev, ptr %3, i32 0, i32 8
  %12 = ptrtoint ptr %i2c_client_demod to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %i2c_client_demod, align 4
  %tobool9.not = icmp eq ptr %13, null
  br i1 %tobool9.not, label %if.end8.if.end14_crit_edge, label %if.then10

if.end8.if.end14_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14

if.then10:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  %driver12 = getelementptr inbounds %struct.i2c_client, ptr %13, i32 0, i32 4, i32 6
  %14 = ptrtoint ptr %driver12 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %driver12, align 4
  %owner13 = getelementptr inbounds %struct.device_driver, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %owner13 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %owner13, align 4
  tail call void @module_put(ptr noundef %17) #6
  tail call void @i2c_unregister_device(ptr noundef nonnull %13) #6
  br label %if.end14

if.end14:                                         ; preds = %if.then10, %if.end8.if.end14_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtl28xxu_tuner_attach(ptr noundef %adap) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
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
  %chip_id = getelementptr inbounds %struct.rtl28xxu_dev, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %chip_id to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %chip_id, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %5)
  %cmp = icmp eq i8 %5, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call fastcc i32 @rtl2831u_tuner_attach(ptr noundef %adap)
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call3 = tail call fastcc i32 @rtl2832u_tuner_attach(ptr noundef %adap)
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ %call3, %if.else ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtl28xxu_tuner_detach(ptr nocapture noundef readonly %adap) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
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
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtl28xxu_tuner_detach.__UNIQUE_ID_ddebug422, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtl28xxu_tuner_detach, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !420

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %intf = getelementptr inbounds %struct.dvb_usb_device, ptr %add.ptr, i32 0, i32 4
  %4 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %intf, align 8
  %dev4 = getelementptr inbounds %struct.usb_interface, ptr %5, i32 0, i32 7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rtl28xxu_tuner_detach.__UNIQUE_ID_ddebug422, ptr noundef %dev4, ptr noundef nonnull @.str.74) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %platform_device_sdr = getelementptr inbounds %struct.rtl28xxu_dev, ptr %3, i32 0, i32 11
  %6 = ptrtoint ptr %platform_device_sdr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %platform_device_sdr, align 4
  %tobool5.not = icmp eq ptr %7, null
  br i1 %tobool5.not, label %do.end.if.end7_crit_edge, label %if.then6

do.end.if.end7_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

if.then6:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_device_unregister(ptr noundef nonnull %7) #6
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %do.end.if.end7_crit_edge
  %i2c_client_tuner = getelementptr inbounds %struct.rtl28xxu_dev, ptr %3, i32 0, i32 9
  %8 = ptrtoint ptr %i2c_client_tuner to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %i2c_client_tuner, align 4
  %tobool8.not = icmp eq ptr %9, null
  br i1 %tobool8.not, label %if.end7.if.end11_crit_edge, label %if.then9

if.end7.if.end11_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

if.then9:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  %driver = getelementptr inbounds %struct.i2c_client, ptr %9, i32 0, i32 4, i32 6
  %10 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %driver, align 4
  %owner = getelementptr inbounds %struct.device_driver, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %owner, align 4
  tail call void @module_put(ptr noundef %13) #6
  tail call void @i2c_unregister_device(ptr noundef nonnull %9) #6
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %if.end7.if.end11_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtl28xxu_frontend_ctrl(ptr nocapture noundef readonly %fe, i32 noundef %onoff) #2 align 64 {
entry:
  %req.i.i25.i = alloca %struct.rtl28xxu_req, align 8
  %val.addr.i.i = alloca i8, align 1
  %req.i.i.i = alloca %struct.rtl28xxu_req, align 8
  %tmp.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
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
  %priv13 = getelementptr inbounds %struct.dvb_usb_device, ptr %add.ptr, i32 0, i32 15
  %6 = ptrtoint ptr %priv13 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %priv13, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtl28xxu_frontend_ctrl.__UNIQUE_ID_ddebug431, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtl28xxu_frontend_ctrl, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !420

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %intf = getelementptr inbounds %struct.dvb_usb_device, ptr %add.ptr, i32 0, i32 4
  %8 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %intf, align 8
  %dev17 = getelementptr inbounds %struct.usb_interface, ptr %9, i32 0, i32 7
  %id18 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 10
  %10 = ptrtoint ptr %id18 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %id18, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rtl28xxu_frontend_ctrl.__UNIQUE_ID_ddebug431, ptr noundef %dev17, ptr noundef nonnull @.str.184, i32 noundef %11, i32 noundef %onoff) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %chip_id = getelementptr inbounds %struct.rtl28xxu_dev, ptr %7, i32 0, i32 1
  %12 = ptrtoint ptr %chip_id to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %chip_id, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %13)
  %cmp = icmp eq i8 %13, 1
  br i1 %cmp, label %do.end.cleanup_crit_edge, label %if.end22

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end22:                                         ; preds = %do.end
  %id23 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 10
  %14 = ptrtoint ptr %id23 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %id23, align 4
  %16 = zext i32 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.191)
  switch i32 %15, label %if.end22.cleanup_crit_edge [
    i32 0, label %if.then26
    i32 1, label %if.then38
  ]

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then26:                                        ; preds = %if.end22
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i) #6
  %17 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 -1, ptr %tmp.i, align 1, !annotation !421
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %req.i.i.i) #6
  %18 = ptrtoint ptr %req.i.i.i to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 3458766712843927551, ptr %req.i.i.i, align 8
  %data.i.i.i = getelementptr inbounds %struct.rtl28xxu_req, ptr %req.i.i.i, i32 0, i32 3
  %19 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %tmp.i, ptr %data.i.i.i, align 8
  %call.i.i.i = call fastcc i32 @rtl28xxu_ctrl_msg(ptr noundef %add.ptr, ptr noundef nonnull %req.i.i.i) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %req.i.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i, label %rtl28xxu_wr_reg_mask.exit, label %rtl28xxu_wr_reg_mask.exit.thread

rtl28xxu_wr_reg_mask.exit.thread:                 ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i) #6
  br label %do.body46

rtl28xxu_wr_reg_mask.exit:                        ; preds = %if.then26
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %onoff)
  %tobool27.not = icmp eq i32 %onoff, 0
  %. = select i1 %tobool27.not, i8 0, i8 72
  %20 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %tmp.i, align 1
  %and8.i = and i8 %21, -73
  store i8 %and8.i, ptr %tmp.i, align 1
  %or24.i = or i8 %and8.i, %.
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i.i) #6
  %22 = ptrtoint ptr %val.addr.i.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %or24.i, ptr %val.addr.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %req.i.i25.i) #6
  %23 = ptrtoint ptr %req.i.i25.i to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 3458766781563404287, ptr %req.i.i25.i, align 8
  %data.i.i34.i = getelementptr inbounds %struct.rtl28xxu_req, ptr %req.i.i25.i, i32 0, i32 3
  %24 = ptrtoint ptr %data.i.i34.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %val.addr.i.i, ptr %data.i.i34.i, align 8
  %call.i.i35.i = call fastcc i32 @rtl28xxu_ctrl_msg(ptr noundef %add.ptr, ptr noundef nonnull %req.i.i25.i) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %req.i.i25.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i35.i)
  %tobool31.not = icmp eq i32 %call.i.i35.i, 0
  br i1 %tobool31.not, label %rtl28xxu_wr_reg_mask.exit.cleanup_crit_edge, label %rtl28xxu_wr_reg_mask.exit.do.body46_crit_edge

rtl28xxu_wr_reg_mask.exit.do.body46_crit_edge:    ; preds = %rtl28xxu_wr_reg_mask.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body46

rtl28xxu_wr_reg_mask.exit.cleanup_crit_edge:      ; preds = %rtl28xxu_wr_reg_mask.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then38:                                        ; preds = %if.end22
  %slave_ts_ctrl = getelementptr inbounds %struct.rtl28xxu_dev, ptr %7, i32 0, i32 13, i32 0, i32 4
  %25 = ptrtoint ptr %slave_ts_ctrl to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %slave_ts_ctrl, align 4
  %i2c_client_demod = getelementptr inbounds %struct.rtl28xxu_dev, ptr %7, i32 0, i32 8
  %27 = ptrtoint ptr %i2c_client_demod to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %i2c_client_demod, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %onoff)
  %tobool39 = icmp ne i32 %onoff, 0
  %call40 = tail call i32 %26(ptr noundef %28, i1 noundef zeroext %tobool39) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %if.then38.cleanup_crit_edge, label %if.then38.do.body46_crit_edge

if.then38.do.body46_crit_edge:                    ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body46

if.then38.cleanup_crit_edge:                      ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body46:                                        ; preds = %if.then38.do.body46_crit_edge, %rtl28xxu_wr_reg_mask.exit.do.body46_crit_edge, %rtl28xxu_wr_reg_mask.exit.thread
  %ret.0 = phi i32 [ %call.i.i35.i, %rtl28xxu_wr_reg_mask.exit.do.body46_crit_edge ], [ %call40, %if.then38.do.body46_crit_edge ], [ %call.i.i.i, %rtl28xxu_wr_reg_mask.exit.thread ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtl28xxu_frontend_ctrl.__UNIQUE_ID_ddebug432, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtl28xxu_frontend_ctrl, %if.then58)) #6
          to label %cleanup [label %if.then58], !srcloc !420

if.then58:                                        ; preds = %do.body46
  call void @__sanitizer_cov_trace_pc() #8
  %intf59 = getelementptr inbounds %struct.dvb_usb_device, ptr %add.ptr, i32 0, i32 4
  %29 = ptrtoint ptr %intf59 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %intf59, align 8
  %dev60 = getelementptr inbounds %struct.usb_interface, ptr %30, i32 0, i32 7
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rtl28xxu_frontend_ctrl.__UNIQUE_ID_ddebug432, ptr noundef %dev60, ptr noundef nonnull @.str.79, i32 noundef %ret.0) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then58, %do.body46, %if.then38.cleanup_crit_edge, %rtl28xxu_wr_reg_mask.exit.cleanup_crit_edge, %if.end22.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end.cleanup_crit_edge ], [ 0, %if.end22.cleanup_crit_edge ], [ 0, %if.then38.cleanup_crit_edge ], [ 0, %rtl28xxu_wr_reg_mask.exit.cleanup_crit_edge ], [ %ret.0, %if.then58 ], [ %ret.0, %do.body46 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtl28xxu_init(ptr noundef %d) #2 align 64 {
entry:
  %req.i57 = alloca %struct.rtl28xxu_req, align 8
  %req.i = alloca %struct.rtl28xxu_req, align 8
  %req.i.i53 = alloca %struct.rtl28xxu_req, align 8
  %val.addr.i = alloca i8, align 1
  %req.i.i = alloca %struct.rtl28xxu_req, align 8
  %val = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val) #6
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %val, align 1, !annotation !421
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtl28xxu_init.__UNIQUE_ID_ddebug423, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtl28xxu_init, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !420

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %intf = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 4
  %1 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %intf, align 8
  %dev = getelementptr inbounds %struct.usb_interface, ptr %2, i32 0, i32 7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rtl28xxu_init.__UNIQUE_ID_ddebug423, ptr noundef %dev, ptr noundef nonnull @.str.74) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %req.i.i) #6
  %3 = ptrtoint ptr %req.i.i to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 2305844108725452799, ptr %req.i.i, align 8
  %data.i.i = getelementptr inbounds %struct.rtl28xxu_req, ptr %req.i.i, i32 0, i32 3
  %4 = ptrtoint ptr %data.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %val, ptr %data.i.i, align 8
  %call.i.i = call fastcc i32 @rtl28xxu_ctrl_msg(ptr noundef %d, ptr noundef nonnull %req.i.i) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %req.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool4.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool4.not, label %if.end6, label %do.end.do.body20_crit_edge

do.end.do.body20_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body20

if.end6:                                          ; preds = %do.end
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %val, align 1
  %7 = or i8 %6, 9
  store i8 %7, ptr %val, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i)
  %8 = ptrtoint ptr %val.addr.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %7, ptr %val.addr.i, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %req.i.i53) #6
  %9 = ptrtoint ptr %req.i.i53 to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 2305844177444929535, ptr %req.i.i53, align 8
  %data.i.i55 = getelementptr inbounds %struct.rtl28xxu_req, ptr %req.i.i53, i32 0, i32 3
  %10 = ptrtoint ptr %data.i.i55 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %val.addr.i, ptr %data.i.i55, align 8
  %call.i.i56 = call fastcc i32 @rtl28xxu_ctrl_msg(ptr noundef %d, ptr noundef nonnull %req.i.i53) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %req.i.i53) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i56)
  %tobool9.not = icmp eq i32 %call.i.i56, 0
  br i1 %tobool9.not, label %if.end11, label %if.end6.do.body20_crit_edge

if.end6.do.body20_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body20

if.end11:                                         ; preds = %if.end6
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %req.i) #6
  %11 = ptrtoint ptr %req.i to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 2402671569433591807, ptr %req.i, align 8
  %data.i = getelementptr inbounds %struct.rtl28xxu_req, ptr %req.i, i32 0, i32 3
  %12 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @.str.186, ptr %data.i, align 8
  %call.i = call fastcc i32 @rtl28xxu_ctrl_msg(ptr noundef %d, ptr noundef nonnull %req.i) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %req.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool13.not = icmp eq i32 %call.i, 0
  br i1 %tobool13.not, label %if.end15, label %if.end11.do.body20_crit_edge

if.end11.do.body20_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body20

if.end15:                                         ; preds = %if.end11
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %req.i57) #6
  %13 = ptrtoint ptr %req.i57 to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 2404923369247277055, ptr %req.i57, align 8
  %data.i60 = getelementptr inbounds %struct.rtl28xxu_req, ptr %req.i57, i32 0, i32 3
  %14 = ptrtoint ptr %data.i60 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @.str.187, ptr %data.i60, align 8
  %call.i61 = call fastcc i32 @rtl28xxu_ctrl_msg(ptr noundef %d, ptr noundef nonnull %req.i57) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %req.i57) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i61)
  %tobool17.not = icmp eq i32 %call.i61, 0
  br i1 %tobool17.not, label %if.end15.cleanup_crit_edge, label %if.end15.do.body20_crit_edge

if.end15.do.body20_crit_edge:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body20

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body20:                                        ; preds = %if.end15.do.body20_crit_edge, %if.end11.do.body20_crit_edge, %if.end6.do.body20_crit_edge, %do.end.do.body20_crit_edge
  %ret.0 = phi i32 [ %call.i.i, %do.end.do.body20_crit_edge ], [ %call.i.i56, %if.end6.do.body20_crit_edge ], [ %call.i, %if.end11.do.body20_crit_edge ], [ %call.i61, %if.end15.do.body20_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtl28xxu_init.__UNIQUE_ID_ddebug424, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtl28xxu_init, %if.then32)) #6
          to label %cleanup [label %if.then32], !srcloc !420

if.then32:                                        ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #8
  %intf33 = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 4
  %15 = ptrtoint ptr %intf33 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %intf33, align 8
  %dev34 = getelementptr inbounds %struct.usb_interface, ptr %16, i32 0, i32 7
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rtl28xxu_init.__UNIQUE_ID_ddebug424, ptr noundef %dev34, ptr noundef nonnull @.str.79, i32 noundef %ret.0) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then32, %do.body20, %if.end15.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end15.cleanup_crit_edge ], [ %ret.0, %if.then32 ], [ %ret.0, %do.body20 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtl28xxu_get_rc_config(ptr noundef %d, ptr nocapture noundef %rc) #2 align 64 {
entry:
  %req.i.i.i = alloca %struct.rtl28xxu_req, align 8
  %val.addr.i.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 15
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %chip_id = getelementptr inbounds %struct.rtl28xxu_dev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %chip_id to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %chip_id, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %3)
  %cmp = icmp eq i8 %3, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %rc to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @.str.188, ptr %rc, align 8
  %allowed_protos.i = getelementptr inbounds %struct.dvb_usb_rc, ptr %rc, i32 0, i32 1
  %5 = ptrtoint ptr %allowed_protos.i to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 3584, ptr %allowed_protos.i, align 8
  %query.i = getelementptr inbounds %struct.dvb_usb_rc, ptr %rc, i32 0, i32 3
  %6 = ptrtoint ptr %query.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @rtl2831u_rc_query, ptr %query.i, align 4
  %interval.i = getelementptr inbounds %struct.dvb_usb_rc, ptr %rc, i32 0, i32 4
  %7 = ptrtoint ptr %interval.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 400, ptr %interval.i, align 8
  br label %cleanup

if.else:                                          ; preds = %entry
  %8 = load i32, ptr @rtl28xxu_disable_rc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.i = icmp eq i32 %8, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i.i) #6
  %9 = ptrtoint ptr %val.addr.i.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %val.addr.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %req.i.i.i) #6
  %10 = ptrtoint ptr %req.i.i.i to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 -216170510075953153, ptr %req.i.i.i, align 8
  %data.i.i.i = getelementptr inbounds %struct.rtl28xxu_req, ptr %req.i.i.i, i32 0, i32 3
  %11 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %val.addr.i.i, ptr %data.i.i.i, align 8
  %call.i.i.i = call fastcc i32 @rtl28xxu_ctrl_msg(ptr noundef %d, ptr noundef nonnull %req.i.i.i) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %req.i.i.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i.i) #6
  br label %cleanup

if.end.i:                                         ; preds = %if.else
  %12 = ptrtoint ptr %rc to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rc, align 8
  %tobool1.not.i = icmp eq ptr %13, null
  br i1 %tobool1.not.i, label %if.then2.i, label %if.end.i.if.end4.i_crit_edge

if.end.i.if.end4.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %14 = ptrtoint ptr %rc to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @.str.188, ptr %rc, align 8
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.then2.i, %if.end.i.if.end4.i_crit_edge
  %allowed_protos.i6 = getelementptr inbounds %struct.dvb_usb_rc, ptr %rc, i32 0, i32 1
  %15 = ptrtoint ptr %allowed_protos.i6 to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 130023420, ptr %allowed_protos.i6, align 8
  %driver_type.i = getelementptr inbounds %struct.dvb_usb_rc, ptr %rc, i32 0, i32 5
  %16 = ptrtoint ptr %driver_type.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1, ptr %driver_type.i, align 4
  %query.i7 = getelementptr inbounds %struct.dvb_usb_rc, ptr %rc, i32 0, i32 3
  %17 = ptrtoint ptr %query.i7 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @rtl2832u_rc_query, ptr %query.i7, align 4
  %interval.i8 = getelementptr inbounds %struct.dvb_usb_rc, ptr %rc, i32 0, i32 4
  %18 = ptrtoint ptr %interval.i8 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 200, ptr %interval.i8, align 8
  %timeout.i = getelementptr inbounds %struct.dvb_usb_rc, ptr %rc, i32 0, i32 7
  %19 = ptrtoint ptr %timeout.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 9741, ptr %timeout.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end4.i, %if.then.i, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %call.i.i.i, %if.then.i ], [ 0, %if.end4.i ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rtl28xxu_ctrl_msg(ptr noundef %d, ptr nocapture noundef readonly %req) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 15
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %usb_mutex = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %usb_mutex, i32 noundef 0) #6
  %size = getelementptr inbounds %struct.rtl28xxu_req, ptr %req, i32 0, i32 2
  %2 = ptrtoint ptr %size to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %size, align 4
  %conv = zext i16 %3 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 128, i16 %3)
  %cmp = icmp ugt i16 %3, 128
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %intf = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 4
  %4 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %intf, align 8
  %dev2 = getelementptr inbounds %struct.usb_interface, ptr %5, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.80, i32 noundef %conv) #9
  br label %err_mutex_unlock

if.end:                                           ; preds = %entry
  %index = getelementptr inbounds %struct.rtl28xxu_req, ptr %req, i32 0, i32 1
  %6 = ptrtoint ptr %index to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %index, align 2
  %8 = and i16 %7, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %tobool.not = icmp eq i16 %8, 0
  br i1 %tobool.not, label %if.else, label %if.then6

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %data = getelementptr inbounds %struct.rtl28xxu_req, ptr %req, i32 0, i32 3
  %9 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %data, align 4
  %11 = call ptr @memcpy(ptr %1, ptr %10, i32 %conv)
  %udev = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 5
  %12 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %udev, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 8
  %shl.i = shl i32 %15, 8
  %or = or i32 %shl.i, -2147483648
  br label %if.end21

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool10.not = icmp eq i16 %3, 0
  %udev17 = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 5
  %16 = ptrtoint ptr %udev17 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %udev17, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %17, align 8
  %shl.i143 = shl i32 %19, 8
  br i1 %tobool10.not, label %if.else16, label %if.then11

if.then11:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %or15 = or i32 %shl.i143, -2147483520
  br label %if.end21

if.else16:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %or19 = or i32 %shl.i143, -2147483648
  br label %if.end21

if.end21:                                         ; preds = %if.else16, %if.then11, %if.then6
  %requesttype.0 = phi i8 [ 64, %if.then6 ], [ -64, %if.then11 ], [ -64, %if.else16 ]
  %pipe.0 = phi i32 [ %or, %if.then6 ], [ %or15, %if.then11 ], [ %or19, %if.else16 ]
  %udev22 = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 5
  %20 = ptrtoint ptr %udev22 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %udev22, align 4
  %22 = ptrtoint ptr %req to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %req, align 4
  %24 = ptrtoint ptr %index to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %index, align 2
  %26 = ptrtoint ptr %size to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %size, align 4
  %call27 = tail call i32 @usb_control_msg(ptr noundef %21, i32 noundef %pipe.0, i8 noundef zeroext 0, i8 noundef zeroext %requesttype.0, i16 noundef zeroext %23, i16 noundef zeroext %25, ptr noundef %1, i16 noundef zeroext %27, i32 noundef 1000) #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtl28xxu_ctrl_msg.__UNIQUE_ID_ddebug392, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtl28xxu_ctrl_msg, %if.then39)) #6
          to label %do.end66 [label %if.then39], !srcloc !420

if.then39:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  %.str.83..str.82 = select i1 %tobool.not, ptr @.str.83, ptr @.str.82
  %conv28 = zext i8 %requesttype.0 to i32
  %28 = ptrtoint ptr %udev22 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %udev22, align 4
  %dev41 = getelementptr inbounds %struct.usb_device, ptr %29, i32 0, i32 15
  %30 = ptrtoint ptr %req to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %req, align 4
  %conv44 = zext i16 %31 to i32
  %and45 = and i32 %conv44, 255
  %32 = lshr i32 %conv44, 8
  %33 = ptrtoint ptr %index to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %index, align 2
  %conv49 = zext i16 %34 to i32
  %and50 = and i32 %conv49, 255
  %35 = lshr i32 %conv49, 8
  %36 = ptrtoint ptr %size to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %size, align 4
  %conv55 = zext i16 %37 to i32
  %and56 = and i32 %conv55, 255
  %38 = lshr i32 %conv55, 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rtl28xxu_ctrl_msg.__UNIQUE_ID_ddebug392, ptr noundef %dev41, ptr noundef nonnull @.str.84, ptr noundef nonnull @.str.81, i32 noundef %conv28, i32 noundef 0, i32 noundef %and45, i32 noundef %32, i32 noundef %and50, i32 noundef %35, i32 noundef %and56, i32 noundef %38, ptr noundef nonnull %.str.83..str.82, i32 noundef %conv55, ptr noundef %1) #6
  br label %do.end66

do.end66:                                         ; preds = %if.then39, %if.end21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %cmp67 = icmp slt i32 %call27, 0
  br i1 %cmp67, label %do.end66.err_mutex_unlock_crit_edge, label %if.end70

do.end66.err_mutex_unlock_crit_edge:              ; preds = %do.end66
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_mutex_unlock

if.end70:                                         ; preds = %do.end66
  br i1 %tobool.not, label %if.then74, label %if.end70.if.end80_crit_edge

if.end70.if.end80_crit_edge:                      ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end80

if.then74:                                        ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #8
  %data75 = getelementptr inbounds %struct.rtl28xxu_req, ptr %req, i32 0, i32 3
  %39 = ptrtoint ptr %data75 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %data75, align 4
  %41 = ptrtoint ptr %size to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %size, align 4
  %conv79 = zext i16 %42 to i32
  %43 = call ptr @memcpy(ptr %40, ptr %1, i32 %conv79)
  br label %if.end80

if.end80:                                         ; preds = %if.then74, %if.end70.if.end80_crit_edge
  tail call void @mutex_unlock(ptr noundef %usb_mutex) #6
  br label %cleanup

err_mutex_unlock:                                 ; preds = %do.end66.err_mutex_unlock_crit_edge, %do.end
  %ret.0 = phi i32 [ -22, %do.end ], [ %call27, %do.end66.err_mutex_unlock_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %usb_mutex) #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtl28xxu_ctrl_msg.__UNIQUE_ID_ddebug393, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtl28xxu_ctrl_msg, %if.then95)) #6
          to label %cleanup [label %if.then95], !srcloc !420

if.then95:                                        ; preds = %err_mutex_unlock
  call void @__sanitizer_cov_trace_pc() #8
  %intf96 = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 4
  %44 = ptrtoint ptr %intf96 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %intf96, align 8
  %dev97 = getelementptr inbounds %struct.usb_interface, ptr %45, i32 0, i32 7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rtl28xxu_ctrl_msg.__UNIQUE_ID_ddebug393, ptr noundef %dev97, ptr noundef nonnull @.str.79, i32 noundef %ret.0) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then95, %err_mutex_unlock, %if.end80
  %retval.0 = phi i32 [ 0, %if.end80 ], [ %ret.0, %if.then95 ], [ %ret.0, %err_mutex_unlock ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_control_msg(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtl28xxu_i2c_xfer(ptr nocapture noundef readonly %adap, ptr noundef readonly %msg, i32 noundef %num) #2 align 64 {
entry:
  %req = alloca %struct.rtl28xxu_req, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %adap, i32 0, i32 9, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %priv = getelementptr inbounds %struct.dvb_usb_device, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %req) #6
  %4 = call ptr @memset(ptr %req, i32 255, i32 12)
  %i2c_mutex = getelementptr inbounds %struct.dvb_usb_device, ptr %1, i32 0, i32 9
  %call1 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %i2c_mutex, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = zext i32 %num to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.192)
  switch i32 %num, label %if.end.err_mutex_unlock.thread336_crit_edge [
    i32 2, label %land.lhs.true
    i32 1, label %land.lhs.true121
  ]

if.end.err_mutex_unlock.thread336_crit_edge:      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_mutex_unlock.thread336

land.lhs.true:                                    ; preds = %if.end
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 1
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %flags, align 2
  %8 = and i16 %7, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %tobool.not = icmp eq i16 %8, 0
  br i1 %tobool.not, label %land.lhs.true3, label %land.lhs.true.err_mutex_unlock.thread336_crit_edge

land.lhs.true.err_mutex_unlock.thread336_crit_edge: ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_mutex_unlock.thread336

land.lhs.true3:                                   ; preds = %land.lhs.true
  %flags5 = getelementptr %struct.i2c_msg, ptr %msg, i32 1, i32 1
  %9 = ptrtoint ptr %flags5 to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %flags5, align 2
  %11 = and i16 %10, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %tobool8.not = icmp eq i16 %11, 0
  br i1 %tobool8.not, label %land.lhs.true3.err_mutex_unlock.thread336_crit_edge, label %if.then9

land.lhs.true3.err_mutex_unlock.thread336_crit_edge: ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_mutex_unlock.thread336

if.then9:                                         ; preds = %land.lhs.true3
  %len = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 2
  %12 = ptrtoint ptr %len to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 24, i16 %13)
  %cmp12 = icmp ugt i16 %13, 24
  br i1 %cmp12, label %if.then9.err_mutex_unlock.thread_crit_edge, label %lor.lhs.false

if.then9.err_mutex_unlock.thread_crit_edge:       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_mutex_unlock.thread

lor.lhs.false:                                    ; preds = %if.then9
  %len15 = getelementptr %struct.i2c_msg, ptr %msg, i32 1, i32 2
  %14 = ptrtoint ptr %len15 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %len15, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 24, i16 %15)
  %cmp17 = icmp ugt i16 %15, 24
  br i1 %cmp17, label %lor.lhs.false.err_mutex_unlock.thread_crit_edge, label %if.else

lor.lhs.false.err_mutex_unlock.thread_crit_edge:  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_mutex_unlock.thread

if.else:                                          ; preds = %lor.lhs.false
  %16 = ptrtoint ptr %msg to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %msg, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 16, i16 %17)
  %cmp22 = icmp eq i16 %17, 16
  br i1 %cmp22, label %if.then24, label %if.else55

if.then24:                                        ; preds = %if.else
  %buf = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 3
  %18 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %buf, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %19, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %cmp28 = icmp eq i8 %21, 0
  br i1 %cmp28, label %if.then30, label %if.else34

if.then30:                                        ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #8
  %page = getelementptr inbounds %struct.rtl28xxu_dev, ptr %3, i32 0, i32 4
  %22 = ptrtoint ptr %page to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %page, align 4
  %buf32 = getelementptr %struct.i2c_msg, ptr %msg, i32 1, i32 3
  %24 = ptrtoint ptr %buf32 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %buf32, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %23, ptr %25, align 1
  br label %err_mutex_unlock.thread340

if.else34:                                        ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #8
  %conv27 = zext i8 %21 to i16
  %shl = shl nuw i16 %conv27, 8
  %or = or i16 %shl, 32
  %27 = ptrtoint ptr %req to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %or, ptr %req, align 4
  %page44 = getelementptr inbounds %struct.rtl28xxu_dev, ptr %3, i32 0, i32 4
  %28 = ptrtoint ptr %page44 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %page44, align 4
  %conv47 = zext i8 %29 to i16
  %index = getelementptr inbounds %struct.rtl28xxu_req, ptr %req, i32 0, i32 1
  %30 = ptrtoint ptr %index to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %conv47, ptr %index, align 2
  %size = getelementptr inbounds %struct.rtl28xxu_req, ptr %req, i32 0, i32 2
  %31 = ptrtoint ptr %size to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %15, ptr %size, align 4
  %buf51 = getelementptr %struct.i2c_msg, ptr %msg, i32 1, i32 3
  %32 = ptrtoint ptr %buf51 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %buf51, align 4
  %data = getelementptr inbounds %struct.rtl28xxu_req, ptr %req, i32 0, i32 3
  %34 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %33, ptr %data, align 4
  br label %if.end259

if.else55:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %13)
  %cmp59 = icmp ult i16 %13, 2
  br i1 %cmp59, label %if.then61, label %if.else83

if.then61:                                        ; preds = %if.else55
  call void @__sanitizer_cov_trace_pc() #8
  %buf63 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 3
  %35 = ptrtoint ptr %buf63 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %buf63, align 4
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %36, align 1
  %conv65 = zext i8 %38 to i16
  %shl66 = shl nuw i16 %conv65, 8
  %shl70 = shl i16 %17, 1
  %or71 = or i16 %shl66, %shl70
  %39 = ptrtoint ptr %req to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %or71, ptr %req, align 4
  %index74 = getelementptr inbounds %struct.rtl28xxu_req, ptr %req, i32 0, i32 1
  %40 = ptrtoint ptr %index74 to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 768, ptr %index74, align 2
  %size77 = getelementptr inbounds %struct.rtl28xxu_req, ptr %req, i32 0, i32 2
  %41 = ptrtoint ptr %size77 to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %15, ptr %size77, align 4
  %buf79 = getelementptr %struct.i2c_msg, ptr %msg, i32 1, i32 3
  %42 = ptrtoint ptr %buf79 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %buf79, align 4
  %data81 = getelementptr inbounds %struct.rtl28xxu_req, ptr %req, i32 0, i32 3
  %44 = ptrtoint ptr %data81 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %43, ptr %data81, align 4
  br label %if.end259

if.else83:                                        ; preds = %if.else55
  %shl87 = shl i16 %17, 1
  %45 = ptrtoint ptr %req to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %shl87, ptr %req, align 4
  %index90 = getelementptr inbounds %struct.rtl28xxu_req, ptr %req, i32 0, i32 1
  %46 = ptrtoint ptr %index90 to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 1552, ptr %index90, align 2
  %size93 = getelementptr inbounds %struct.rtl28xxu_req, ptr %req, i32 0, i32 2
  %47 = ptrtoint ptr %size93 to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 %13, ptr %size93, align 4
  %buf95 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 3
  %48 = ptrtoint ptr %buf95 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %buf95, align 4
  %data96 = getelementptr inbounds %struct.rtl28xxu_req, ptr %req, i32 0, i32 3
  %50 = ptrtoint ptr %data96 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %49, ptr %data96, align 4
  %call97 = call fastcc i32 @rtl28xxu_ctrl_msg(ptr noundef %1, ptr noundef nonnull %req)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call97)
  %tobool98.not = icmp eq i32 %call97, 0
  br i1 %tobool98.not, label %if.end100, label %if.else83.err_mutex_unlock.thread_crit_edge

if.else83.err_mutex_unlock.thread_crit_edge:      ; preds = %if.else83
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_mutex_unlock.thread

if.end100:                                        ; preds = %if.else83
  call void @__sanitizer_cov_trace_pc() #8
  %51 = ptrtoint ptr %msg to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %msg, align 4
  %shl104 = shl i16 %52, 1
  %53 = ptrtoint ptr %req to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 %shl104, ptr %req, align 4
  %54 = ptrtoint ptr %index90 to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 1536, ptr %index90, align 2
  %55 = ptrtoint ptr %len15 to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %len15, align 4
  %57 = ptrtoint ptr %size93 to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 %56, ptr %size93, align 4
  %buf112 = getelementptr %struct.i2c_msg, ptr %msg, i32 1, i32 3
  %58 = ptrtoint ptr %buf112 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %buf112, align 4
  %60 = ptrtoint ptr %data96 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %59, ptr %data96, align 4
  br label %if.end259

land.lhs.true121:                                 ; preds = %if.end
  %flags123 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 1
  %61 = ptrtoint ptr %flags123 to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %flags123, align 2
  %63 = and i16 %62, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %63)
  %tobool126.not = icmp eq i16 %63, 0
  br i1 %tobool126.not, label %if.then127, label %if.then241

if.then127:                                       ; preds = %land.lhs.true121
  %len129 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 2
  %64 = ptrtoint ptr %len129 to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %len129, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 22, i16 %65)
  %cmp131 = icmp ugt i16 %65, 22
  br i1 %cmp131, label %if.then127.err_mutex_unlock.thread_crit_edge, label %if.else134

if.then127.err_mutex_unlock.thread_crit_edge:     ; preds = %if.then127
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_mutex_unlock.thread

if.else134:                                       ; preds = %if.then127
  %66 = ptrtoint ptr %msg to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %msg, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 16, i16 %67)
  %cmp138 = icmp eq i16 %67, 16
  br i1 %cmp138, label %if.then140, label %land.lhs.true187

if.then140:                                       ; preds = %if.else134
  %buf142 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 3
  %68 = ptrtoint ptr %buf142 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %buf142, align 4
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %69, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %71)
  %cmp145 = icmp eq i8 %71, 0
  br i1 %cmp145, label %if.then147, label %if.else152

if.then147:                                       ; preds = %if.then140
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx150 = getelementptr i8, ptr %69, i32 1
  %72 = ptrtoint ptr %arrayidx150 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %arrayidx150, align 1
  %page151 = getelementptr inbounds %struct.rtl28xxu_dev, ptr %3, i32 0, i32 4
  %74 = ptrtoint ptr %page151 to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 %73, ptr %page151, align 4
  br label %err_mutex_unlock.thread340

if.else152:                                       ; preds = %if.then140
  call void @__sanitizer_cov_trace_pc() #8
  %conv144 = zext i8 %71 to i16
  %shl157 = shl nuw i16 %conv144, 8
  %or162 = or i16 %shl157, 32
  %75 = ptrtoint ptr %req to i32
  call void @__asan_store2_noabort(i32 %75)
  store i16 %or162, ptr %req, align 4
  %page165 = getelementptr inbounds %struct.rtl28xxu_dev, ptr %3, i32 0, i32 4
  %76 = ptrtoint ptr %page165 to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %page165, align 4
  %78 = or i8 %77, 16
  %conv168 = zext i8 %78 to i16
  %index169 = getelementptr inbounds %struct.rtl28xxu_req, ptr %req, i32 0, i32 1
  %79 = ptrtoint ptr %index169 to i32
  call void @__asan_store2_noabort(i32 %79)
  store i16 %conv168, ptr %index169, align 2
  %sub = add nsw i16 %65, -1
  %size174 = getelementptr inbounds %struct.rtl28xxu_req, ptr %req, i32 0, i32 2
  %80 = ptrtoint ptr %size174 to i32
  call void @__asan_store2_noabort(i32 %80)
  store i16 %sub, ptr %size174, align 4
  %arrayidx177 = getelementptr i8, ptr %69, i32 1
  %data178 = getelementptr inbounds %struct.rtl28xxu_req, ptr %req, i32 0, i32 3
  %81 = ptrtoint ptr %data178 to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %arrayidx177, ptr %data178, align 4
  br label %if.end259

land.lhs.true187:                                 ; preds = %if.else134
  %new_i2c_write = getelementptr inbounds %struct.rtl28xxu_dev, ptr %3, i32 0, i32 7
  %82 = ptrtoint ptr %new_i2c_write to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %new_i2c_write, align 1, !range !422
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %83)
  %tobool188.not = icmp eq i8 %83, 0
  br i1 %tobool188.not, label %if.then189, label %if.else214

if.then189:                                       ; preds = %land.lhs.true187
  call void @__sanitizer_cov_trace_pc() #8
  %buf191 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 3
  %84 = ptrtoint ptr %buf191 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %buf191, align 4
  %86 = ptrtoint ptr %85 to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %85, align 1
  %conv193 = zext i8 %87 to i16
  %shl194 = shl nuw i16 %conv193, 8
  %shl198 = shl i16 %67, 1
  %or199 = or i16 %shl194, %shl198
  %88 = ptrtoint ptr %req to i32
  call void @__asan_store2_noabort(i32 %88)
  store i16 %or199, ptr %req, align 4
  %index202 = getelementptr inbounds %struct.rtl28xxu_req, ptr %req, i32 0, i32 1
  %89 = ptrtoint ptr %index202 to i32
  call void @__asan_store2_noabort(i32 %89)
  store i16 784, ptr %index202, align 2
  %sub206 = add nsw i16 %65, -1
  %size208 = getelementptr inbounds %struct.rtl28xxu_req, ptr %req, i32 0, i32 2
  %90 = ptrtoint ptr %size208 to i32
  call void @__asan_store2_noabort(i32 %90)
  store i16 %sub206, ptr %size208, align 4
  %arrayidx211 = getelementptr i8, ptr %85, i32 1
  %data212 = getelementptr inbounds %struct.rtl28xxu_req, ptr %req, i32 0, i32 3
  %91 = ptrtoint ptr %data212 to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr %arrayidx211, ptr %data212, align 4
  br label %if.end259

if.else214:                                       ; preds = %land.lhs.true187
  call void @__sanitizer_cov_trace_pc() #8
  %shl218 = shl i16 %67, 1
  %92 = ptrtoint ptr %req to i32
  call void @__asan_store2_noabort(i32 %92)
  store i16 %shl218, ptr %req, align 4
  %index221 = getelementptr inbounds %struct.rtl28xxu_req, ptr %req, i32 0, i32 1
  %93 = ptrtoint ptr %index221 to i32
  call void @__asan_store2_noabort(i32 %93)
  store i16 1552, ptr %index221, align 2
  %size224 = getelementptr inbounds %struct.rtl28xxu_req, ptr %req, i32 0, i32 2
  %94 = ptrtoint ptr %size224 to i32
  call void @__asan_store2_noabort(i32 %94)
  store i16 %65, ptr %size224, align 4
  %buf226 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 3
  %95 = ptrtoint ptr %buf226 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %buf226, align 4
  %data227 = getelementptr inbounds %struct.rtl28xxu_req, ptr %req, i32 0, i32 3
  %97 = ptrtoint ptr %data227 to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr %96, ptr %data227, align 4
  br label %if.end259

if.then241:                                       ; preds = %land.lhs.true121
  call void @__sanitizer_cov_trace_pc() #8
  %98 = ptrtoint ptr %msg to i32
  call void @__asan_load2_noabort(i32 %98)
  %99 = load i16, ptr %msg, align 4
  %shl245 = shl i16 %99, 1
  %100 = ptrtoint ptr %req to i32
  call void @__asan_store2_noabort(i32 %100)
  store i16 %shl245, ptr %req, align 4
  %index248 = getelementptr inbounds %struct.rtl28xxu_req, ptr %req, i32 0, i32 1
  %101 = ptrtoint ptr %index248 to i32
  call void @__asan_store2_noabort(i32 %101)
  store i16 1536, ptr %index248, align 2
  %len250 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 2
  %102 = ptrtoint ptr %len250 to i32
  call void @__asan_load2_noabort(i32 %102)
  %103 = load i16, ptr %len250, align 4
  %size251 = getelementptr inbounds %struct.rtl28xxu_req, ptr %req, i32 0, i32 2
  %104 = ptrtoint ptr %size251 to i32
  call void @__asan_store2_noabort(i32 %104)
  store i16 %103, ptr %size251, align 4
  %buf253 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 3
  %105 = ptrtoint ptr %buf253 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %buf253, align 4
  %data254 = getelementptr inbounds %struct.rtl28xxu_req, ptr %req, i32 0, i32 3
  %107 = ptrtoint ptr %data254 to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr %106, ptr %data254, align 4
  br label %if.end259

if.end259:                                        ; preds = %if.then241, %if.else214, %if.then189, %if.else152, %if.end100, %if.then61, %if.else34
  %call179 = call fastcc i32 @rtl28xxu_ctrl_msg(ptr noundef %1, ptr noundef nonnull %req)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -32, i32 %call179)
  %cmp260 = icmp eq i32 %call179, -32
  br i1 %cmp260, label %if.end259.err_mutex_unlock.thread_crit_edge, label %err_mutex_unlock

if.end259.err_mutex_unlock.thread_crit_edge:      ; preds = %if.end259
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_mutex_unlock.thread

err_mutex_unlock.thread:                          ; preds = %if.end259.err_mutex_unlock.thread_crit_edge, %if.then127.err_mutex_unlock.thread_crit_edge, %if.else83.err_mutex_unlock.thread_crit_edge, %lor.lhs.false.err_mutex_unlock.thread_crit_edge, %if.then9.err_mutex_unlock.thread_crit_edge
  %ret.1.ph = phi i32 [ -95, %if.then127.err_mutex_unlock.thread_crit_edge ], [ -95, %if.then9.err_mutex_unlock.thread_crit_edge ], [ -95, %lor.lhs.false.err_mutex_unlock.thread_crit_edge ], [ %call97, %if.else83.err_mutex_unlock.thread_crit_edge ], [ -11, %if.end259.err_mutex_unlock.thread_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %i2c_mutex) #6
  br label %cleanup

err_mutex_unlock.thread336:                       ; preds = %land.lhs.true3.err_mutex_unlock.thread336_crit_edge, %land.lhs.true.err_mutex_unlock.thread336_crit_edge, %if.end.err_mutex_unlock.thread336_crit_edge
  tail call void @mutex_unlock(ptr noundef %i2c_mutex) #6
  br label %cleanup

err_mutex_unlock.thread340:                       ; preds = %if.then147, %if.then30
  tail call void @mutex_unlock(ptr noundef %i2c_mutex) #6
  br label %108

err_mutex_unlock:                                 ; preds = %if.end259
  tail call void @mutex_unlock(ptr noundef %i2c_mutex) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call179)
  %tobool265.not = icmp eq i32 %call179, 0
  br i1 %tobool265.not, label %err_mutex_unlock._crit_edge, label %err_mutex_unlock.cleanup_crit_edge

err_mutex_unlock.cleanup_crit_edge:               ; preds = %err_mutex_unlock
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

err_mutex_unlock._crit_edge:                      ; preds = %err_mutex_unlock
  call void @__sanitizer_cov_trace_pc() #8
  br label %108

108:                                              ; preds = %err_mutex_unlock._crit_edge, %err_mutex_unlock.thread340
  br label %cleanup

cleanup:                                          ; preds = %108, %err_mutex_unlock.cleanup_crit_edge, %err_mutex_unlock.thread336, %err_mutex_unlock.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -11, %entry.cleanup_crit_edge ], [ %num, %108 ], [ %call179, %err_mutex_unlock.cleanup_crit_edge ], [ %ret.1.ph, %err_mutex_unlock.thread ], [ -95, %err_mutex_unlock.thread336 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %req) #6
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @rtl28xxu_i2c_func(ptr nocapture noundef readnone %adapter) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rtl2831u_power_ctrl(ptr noundef %d, i32 noundef %onoff) unnamed_addr #2 align 64 {
entry:
  %req.i = alloca %struct.rtl28xxu_req, align 8
  %req.i.i160 = alloca %struct.rtl28xxu_req, align 8
  %val.addr.i161 = alloca i8, align 1
  %req.i.i156 = alloca %struct.rtl28xxu_req, align 8
  %val.addr.i = alloca i8, align 1
  %req.i.i152 = alloca %struct.rtl28xxu_req, align 8
  %req.i.i = alloca %struct.rtl28xxu_req, align 8
  %gpio = alloca i8, align 1
  %sys0 = alloca i8, align 1
  %epa_ctl = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %gpio) #6
  %0 = ptrtoint ptr %gpio to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %gpio, align 1, !annotation !421
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %sys0) #6
  %1 = ptrtoint ptr %sys0 to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %sys0, align 1, !annotation !421
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %epa_ctl) #6
  %2 = ptrtoint ptr %epa_ctl to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %epa_ctl, align 1, !annotation !421
  %3 = getelementptr inbounds [2 x i8], ptr %epa_ctl, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %3, align 1, !annotation !421
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtl2831u_power_ctrl.__UNIQUE_ID_ddebug425, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtl2831u_power_ctrl, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !420

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %intf = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 4
  %5 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %intf, align 8
  %dev = getelementptr inbounds %struct.usb_interface, ptr %6, i32 0, i32 7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rtl2831u_power_ctrl.__UNIQUE_ID_ddebug425, ptr noundef %dev, ptr noundef nonnull @.str.86, i32 noundef %onoff) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %req.i.i) #6
  %7 = ptrtoint ptr %req.i.i to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 3458766712843927551, ptr %req.i.i, align 8
  %data.i.i = getelementptr inbounds %struct.rtl28xxu_req, ptr %req.i.i, i32 0, i32 3
  %8 = ptrtoint ptr %data.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %sys0, ptr %data.i.i, align 8
  %call.i.i = call fastcc i32 @rtl28xxu_ctrl_msg(ptr noundef %d, ptr noundef nonnull %req.i.i) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %req.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool4.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool4.not, label %if.end6, label %do.end.do.body101_crit_edge

do.end.do.body101_crit_edge:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body101

if.end6:                                          ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %req.i.i152) #6
  %9 = ptrtoint ptr %req.i.i152 to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 3459048187820638207, ptr %req.i.i152, align 8
  %data.i.i154 = getelementptr inbounds %struct.rtl28xxu_req, ptr %req.i.i152, i32 0, i32 3
  %10 = ptrtoint ptr %data.i.i154 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %gpio, ptr %data.i.i154, align 8
  %call.i.i155 = call fastcc i32 @rtl28xxu_ctrl_msg(ptr noundef %d, ptr noundef nonnull %req.i.i152) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %req.i.i152) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i155)
  %tobool8.not = icmp eq i32 %call.i.i155, 0
  br i1 %tobool8.not, label %do.body11, label %if.end6.do.body101_crit_edge

if.end6.do.body101_crit_edge:                     ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body101

do.body11:                                        ; preds = %if.end6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtl2831u_power_ctrl.__UNIQUE_ID_ddebug426, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtl2831u_power_ctrl, %if.then23)) #6
          to label %do.end29 [label %if.then23], !srcloc !420

if.then23:                                        ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #8
  %intf24 = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 4
  %11 = ptrtoint ptr %intf24 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %intf24, align 8
  %dev25 = getelementptr inbounds %struct.usb_interface, ptr %12, i32 0, i32 7
  %13 = ptrtoint ptr %sys0 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %sys0, align 1
  %conv = zext i8 %14 to i32
  %15 = ptrtoint ptr %gpio to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %gpio, align 1
  %conv26 = zext i8 %16 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rtl2831u_power_ctrl.__UNIQUE_ID_ddebug426, ptr noundef %dev25, ptr noundef nonnull @.str.87, i32 noundef %conv, i32 noundef %conv26) #6
  br label %do.end29

do.end29:                                         ; preds = %if.then23, %do.body11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %onoff)
  %tobool30.not = icmp eq i32 %onoff, 0
  %17 = ptrtoint ptr %gpio to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %gpio, align 1
  %19 = and i8 %18, -22
  br i1 %tobool30.not, label %if.else, label %if.then31

if.then31:                                        ; preds = %do.end29
  call void @__sanitizer_cov_trace_pc() #8
  %20 = or i8 %19, 5
  %21 = ptrtoint ptr %gpio to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %20, ptr %gpio, align 1
  %22 = ptrtoint ptr %sys0 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %sys0, align 1
  %24 = and i8 %23, 15
  %25 = or i8 %24, -32
  br label %do.body61

if.else:                                          ; preds = %do.end29
  call void @__sanitizer_cov_trace_pc() #8
  %26 = or i8 %19, 16
  %27 = ptrtoint ptr %gpio to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %26, ptr %gpio, align 1
  %28 = ptrtoint ptr %sys0 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %sys0, align 1
  %30 = and i8 %29, 63
  br label %do.body61

do.body61:                                        ; preds = %if.else, %if.then31
  %storemerge142 = phi i8 [ %30, %if.else ], [ %25, %if.then31 ]
  %storemerge141 = phi i8 [ 16, %if.else ], [ 0, %if.then31 ]
  %storemerge = phi i8 [ 2, %if.else ], [ 0, %if.then31 ]
  %31 = ptrtoint ptr %sys0 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %storemerge142, ptr %sys0, align 1
  %32 = ptrtoint ptr %epa_ctl to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %storemerge141, ptr %epa_ctl, align 1
  %33 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %storemerge, ptr %3, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtl2831u_power_ctrl.__UNIQUE_ID_ddebug427, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtl2831u_power_ctrl, %if.then73)) #6
          to label %do.end80 [label %if.then73], !srcloc !420

if.then73:                                        ; preds = %do.body61
  call void @__sanitizer_cov_trace_pc() #8
  %intf74 = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 4
  %34 = ptrtoint ptr %intf74 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %intf74, align 8
  %dev75 = getelementptr inbounds %struct.usb_interface, ptr %35, i32 0, i32 7
  %36 = ptrtoint ptr %sys0 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %sys0, align 1
  %conv76 = zext i8 %37 to i32
  %38 = ptrtoint ptr %gpio to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %gpio, align 1
  %conv77 = zext i8 %39 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rtl2831u_power_ctrl.__UNIQUE_ID_ddebug427, ptr noundef %dev75, ptr noundef nonnull @.str.88, i32 noundef %conv76, i32 noundef %conv77) #6
  br label %do.end80

do.end80:                                         ; preds = %if.then73, %do.body61
  %40 = ptrtoint ptr %sys0 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %sys0, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i)
  %42 = ptrtoint ptr %val.addr.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %41, ptr %val.addr.i, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %req.i.i156) #6
  %43 = ptrtoint ptr %req.i.i156 to i32
  call void @__asan_store8_noabort(i32 %43)
  store i64 3458766781563404287, ptr %req.i.i156, align 8
  %data.i.i158 = getelementptr inbounds %struct.rtl28xxu_req, ptr %req.i.i156, i32 0, i32 3
  %44 = ptrtoint ptr %data.i.i158 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %val.addr.i, ptr %data.i.i158, align 8
  %call.i.i159 = call fastcc i32 @rtl28xxu_ctrl_msg(ptr noundef %d, ptr noundef nonnull %req.i.i156) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %req.i.i156) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i159)
  %tobool82.not = icmp eq i32 %call.i.i159, 0
  br i1 %tobool82.not, label %if.end84, label %do.end80.do.body101_crit_edge

do.end80.do.body101_crit_edge:                    ; preds = %do.end80
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body101

if.end84:                                         ; preds = %do.end80
  %45 = ptrtoint ptr %gpio to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %gpio, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i161)
  %47 = ptrtoint ptr %val.addr.i161 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %46, ptr %val.addr.i161, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %req.i.i160) #6
  %48 = ptrtoint ptr %req.i.i160 to i32
  call void @__asan_store8_noabort(i32 %48)
  store i64 3459048256540114943, ptr %req.i.i160, align 8
  %data.i.i163 = getelementptr inbounds %struct.rtl28xxu_req, ptr %req.i.i160, i32 0, i32 3
  %49 = ptrtoint ptr %data.i.i163 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %val.addr.i161, ptr %data.i.i163, align 8
  %call.i.i164 = call fastcc i32 @rtl28xxu_ctrl_msg(ptr noundef %d, ptr noundef nonnull %req.i.i160) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %req.i.i160) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i161)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i164)
  %tobool86.not = icmp eq i32 %call.i.i164, 0
  br i1 %tobool86.not, label %if.end88, label %if.end84.do.body101_crit_edge

if.end84.do.body101_crit_edge:                    ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body101

if.end88:                                         ; preds = %if.end84
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %req.i) #6
  %50 = ptrtoint ptr %req.i to i32
  call void @__asan_store8_noabort(i32 %50)
  store i64 2398167969806090239, ptr %req.i, align 8
  %data.i = getelementptr inbounds %struct.rtl28xxu_req, ptr %req.i, i32 0, i32 3
  %51 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %epa_ctl, ptr %data.i, align 8
  %call.i = call fastcc i32 @rtl28xxu_ctrl_msg(ptr noundef %d, ptr noundef nonnull %req.i) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %req.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool90.not = icmp eq i32 %call.i, 0
  br i1 %tobool90.not, label %if.end92, label %if.end88.do.body101_crit_edge

if.end88.do.body101_crit_edge:                    ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body101

if.end92:                                         ; preds = %if.end88
  br i1 %tobool30.not, label %if.end92.cleanup_crit_edge, label %if.then94

if.end92.cleanup_crit_edge:                       ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then94:                                        ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #8
  %udev = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 5
  %52 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %udev, align 4
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %53, align 8
  %shl.i = shl i32 %55, 8
  %or98 = or i32 %shl.i, -1069514624
  %call99 = call i32 @usb_clear_halt(ptr noundef %53, i32 noundef %or98) #6
  br label %cleanup

do.body101:                                       ; preds = %if.end88.do.body101_crit_edge, %if.end84.do.body101_crit_edge, %do.end80.do.body101_crit_edge, %if.end6.do.body101_crit_edge, %do.end.do.body101_crit_edge
  %ret.0 = phi i32 [ %call.i.i, %do.end.do.body101_crit_edge ], [ %call.i.i155, %if.end6.do.body101_crit_edge ], [ %call.i.i159, %do.end80.do.body101_crit_edge ], [ %call.i.i164, %if.end84.do.body101_crit_edge ], [ %call.i, %if.end88.do.body101_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtl2831u_power_ctrl.__UNIQUE_ID_ddebug428, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtl2831u_power_ctrl, %if.then113)) #6
          to label %cleanup [label %if.then113], !srcloc !420

if.then113:                                       ; preds = %do.body101
  call void @__sanitizer_cov_trace_pc() #8
  %intf114 = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 4
  %56 = ptrtoint ptr %intf114 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %intf114, align 8
  %dev115 = getelementptr inbounds %struct.usb_interface, ptr %57, i32 0, i32 7
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rtl2831u_power_ctrl.__UNIQUE_ID_ddebug428, ptr noundef %dev115, ptr noundef nonnull @.str.79, i32 noundef %ret.0) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then113, %do.body101, %if.then94, %if.end92.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then94 ], [ 0, %if.end92.cleanup_crit_edge ], [ %ret.0, %if.then113 ], [ %ret.0, %do.body101 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %epa_ctl) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %sys0) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %gpio) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rtl2832u_power_ctrl(ptr noundef %d, i32 noundef %onoff) unnamed_addr #2 align 64 {
entry:
  %req.i168 = alloca %struct.rtl28xxu_req, align 8
  %req.i.i25.i153 = alloca %struct.rtl28xxu_req, align 8
  %val.addr.i.i154 = alloca i8, align 1
  %req.i.i.i155 = alloca %struct.rtl28xxu_req, align 8
  %tmp.i156 = alloca i8, align 1
  %req.i.i25.i137 = alloca %struct.rtl28xxu_req, align 8
  %val.addr.i.i138 = alloca i8, align 1
  %req.i.i.i139 = alloca %struct.rtl28xxu_req, align 8
  %tmp.i140 = alloca i8, align 1
  %req.i = alloca %struct.rtl28xxu_req, align 8
  %req.i.i25.i121 = alloca %struct.rtl28xxu_req, align 8
  %val.addr.i.i122 = alloca i8, align 1
  %req.i.i.i123 = alloca %struct.rtl28xxu_req, align 8
  %tmp.i124 = alloca i8, align 1
  %req.i.i25.i105 = alloca %struct.rtl28xxu_req, align 8
  %val.addr.i.i106 = alloca i8, align 1
  %req.i.i.i107 = alloca %struct.rtl28xxu_req, align 8
  %tmp.i108 = alloca i8, align 1
  %req.i.i25.i90 = alloca %struct.rtl28xxu_req, align 8
  %val.addr.i.i91 = alloca i8, align 1
  %req.i.i.i92 = alloca %struct.rtl28xxu_req, align 8
  %tmp.i93 = alloca i8, align 1
  %req.i.i25.i = alloca %struct.rtl28xxu_req, align 8
  %val.addr.i.i = alloca i8, align 1
  %req.i.i.i = alloca %struct.rtl28xxu_req, align 8
  %tmp.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtl2832u_power_ctrl.__UNIQUE_ID_ddebug429, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtl2832u_power_ctrl, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !420

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %intf = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 4
  %0 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %intf, align 8
  %dev = getelementptr inbounds %struct.usb_interface, ptr %1, i32 0, i32 7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rtl2832u_power_ctrl.__UNIQUE_ID_ddebug429, ptr noundef %dev, ptr noundef nonnull @.str.86, i32 noundef %onoff) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %onoff)
  %tobool3.not = icmp eq i32 %onoff, 0
  br i1 %tobool3.not, label %if.else, label %if.then4

if.then4:                                         ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i) #6
  %2 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %tmp.i, align 1, !annotation !421
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %req.i.i.i) #6
  %3 = ptrtoint ptr %req.i.i.i to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 3459048187820638207, ptr %req.i.i.i, align 8
  %data.i.i.i = getelementptr inbounds %struct.rtl28xxu_req, ptr %req.i.i.i, i32 0, i32 3
  %4 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %tmp.i, ptr %data.i.i.i, align 8
  %call.i.i.i = call fastcc i32 @rtl28xxu_ctrl_msg(ptr noundef %d, ptr noundef nonnull %req.i.i.i) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %req.i.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i, label %rtl28xxu_wr_reg_mask.exit, label %rtl28xxu_wr_reg_mask.exit.thread

rtl28xxu_wr_reg_mask.exit.thread:                 ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i) #6
  br label %do.body45

rtl28xxu_wr_reg_mask.exit:                        ; preds = %if.then4
  %5 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %tmp.i, align 1
  %and8.i = and i8 %6, -25
  store i8 %and8.i, ptr %tmp.i, align 1
  %or24.i = or i8 %and8.i, 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i.i) #6
  %7 = ptrtoint ptr %val.addr.i.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %or24.i, ptr %val.addr.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %req.i.i25.i) #6
  %8 = ptrtoint ptr %req.i.i25.i to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 3459048256540114943, ptr %req.i.i25.i, align 8
  %data.i.i34.i = getelementptr inbounds %struct.rtl28xxu_req, ptr %req.i.i25.i, i32 0, i32 3
  %9 = ptrtoint ptr %data.i.i34.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %val.addr.i.i, ptr %data.i.i34.i, align 8
  %call.i.i35.i = call fastcc i32 @rtl28xxu_ctrl_msg(ptr noundef %d, ptr noundef nonnull %req.i.i25.i) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %req.i.i25.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i35.i)
  %tobool6.not = icmp eq i32 %call.i.i35.i, 0
  br i1 %tobool6.not, label %if.end8, label %rtl28xxu_wr_reg_mask.exit.do.body45_crit_edge

rtl28xxu_wr_reg_mask.exit.do.body45_crit_edge:    ; preds = %rtl28xxu_wr_reg_mask.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body45

if.end8:                                          ; preds = %rtl28xxu_wr_reg_mask.exit
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i93) #6
  %10 = ptrtoint ptr %tmp.i93 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 -1, ptr %tmp.i93, align 1, !annotation !421
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %req.i.i.i92) #6
  %11 = ptrtoint ptr %req.i.i.i92 to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 3461862937587744767, ptr %req.i.i.i92, align 8
  %data.i.i.i95 = getelementptr inbounds %struct.rtl28xxu_req, ptr %req.i.i.i92, i32 0, i32 3
  %12 = ptrtoint ptr %data.i.i.i95 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %tmp.i93, ptr %data.i.i.i95, align 8
  %call.i.i.i96 = call fastcc i32 @rtl28xxu_ctrl_msg(ptr noundef %d, ptr noundef nonnull %req.i.i.i92) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %req.i.i.i92) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i96)
  %tobool.not.i97 = icmp eq i32 %call.i.i.i96, 0
  br i1 %tobool.not.i97, label %rtl28xxu_wr_reg_mask.exit104, label %rtl28xxu_wr_reg_mask.exit104.thread

rtl28xxu_wr_reg_mask.exit104.thread:              ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i93) #6
  br label %do.body45

rtl28xxu_wr_reg_mask.exit104:                     ; preds = %if.end8
  %13 = ptrtoint ptr %tmp.i93 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %tmp.i93, align 1
  %and8.i98 = and i8 %14, -17
  store i8 %and8.i98, ptr %tmp.i93, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i.i91) #6
  %15 = ptrtoint ptr %val.addr.i.i91 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %and8.i98, ptr %val.addr.i.i91, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %req.i.i25.i90) #6
  %16 = ptrtoint ptr %req.i.i25.i90 to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 3461863006307221503, ptr %req.i.i25.i90, align 8
  %data.i.i34.i101 = getelementptr inbounds %struct.rtl28xxu_req, ptr %req.i.i25.i90, i32 0, i32 3
  %17 = ptrtoint ptr %data.i.i34.i101 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %val.addr.i.i91, ptr %data.i.i34.i101, align 8
  %call.i.i35.i102 = call fastcc i32 @rtl28xxu_ctrl_msg(ptr noundef %d, ptr noundef nonnull %req.i.i25.i90) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %req.i.i25.i90) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i.i91) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i93) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i35.i102)
  %tobool10.not = icmp eq i32 %call.i.i35.i102, 0
  br i1 %tobool10.not, label %if.end12, label %rtl28xxu_wr_reg_mask.exit104.do.body45_crit_edge

rtl28xxu_wr_reg_mask.exit104.do.body45_crit_edge: ; preds = %rtl28xxu_wr_reg_mask.exit104
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body45

if.end12:                                         ; preds = %rtl28xxu_wr_reg_mask.exit104
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i108) #6
  %18 = ptrtoint ptr %tmp.i108 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 -1, ptr %tmp.i108, align 1, !annotation !421
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %req.i.i.i107) #6
  %19 = ptrtoint ptr %req.i.i.i107 to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 3458766712843927551, ptr %req.i.i.i107, align 8
  %data.i.i.i110 = getelementptr inbounds %struct.rtl28xxu_req, ptr %req.i.i.i107, i32 0, i32 3
  %20 = ptrtoint ptr %data.i.i.i110 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %tmp.i108, ptr %data.i.i.i110, align 8
  %call.i.i.i111 = call fastcc i32 @rtl28xxu_ctrl_msg(ptr noundef %d, ptr noundef nonnull %req.i.i.i107) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %req.i.i.i107) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i111)
  %tobool.not.i112 = icmp eq i32 %call.i.i.i111, 0
  br i1 %tobool.not.i112, label %rtl28xxu_wr_reg_mask.exit120, label %rtl28xxu_wr_reg_mask.exit120.thread

rtl28xxu_wr_reg_mask.exit120.thread:              ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i108) #6
  br label %do.body45

rtl28xxu_wr_reg_mask.exit120:                     ; preds = %if.end12
  %21 = ptrtoint ptr %tmp.i108 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %tmp.i108, align 1
  %and8.i113 = and i8 %22, 127
  store i8 %and8.i113, ptr %tmp.i108, align 1
  %or24.i114 = or i8 %22, -128
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i.i106) #6
  %23 = ptrtoint ptr %val.addr.i.i106 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %or24.i114, ptr %val.addr.i.i106, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %req.i.i25.i105) #6
  %24 = ptrtoint ptr %req.i.i25.i105 to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 3458766781563404287, ptr %req.i.i25.i105, align 8
  %data.i.i34.i117 = getelementptr inbounds %struct.rtl28xxu_req, ptr %req.i.i25.i105, i32 0, i32 3
  %25 = ptrtoint ptr %data.i.i34.i117 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %val.addr.i.i106, ptr %data.i.i34.i117, align 8
  %call.i.i35.i118 = call fastcc i32 @rtl28xxu_ctrl_msg(ptr noundef %d, ptr noundef nonnull %req.i.i25.i105) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %req.i.i25.i105) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i.i106) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i108) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i35.i118)
  %tobool14.not = icmp eq i32 %call.i.i35.i118, 0
  br i1 %tobool14.not, label %if.end16, label %rtl28xxu_wr_reg_mask.exit120.do.body45_crit_edge

rtl28xxu_wr_reg_mask.exit120.do.body45_crit_edge: ; preds = %rtl28xxu_wr_reg_mask.exit120
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body45

if.end16:                                         ; preds = %rtl28xxu_wr_reg_mask.exit120
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i124) #6
  %26 = ptrtoint ptr %tmp.i124 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 -1, ptr %tmp.i124, align 1, !annotation !421
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %req.i.i.i123) #6
  %27 = ptrtoint ptr %req.i.i.i123 to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 3458766712843927551, ptr %req.i.i.i123, align 8
  %data.i.i.i126 = getelementptr inbounds %struct.rtl28xxu_req, ptr %req.i.i.i123, i32 0, i32 3
  %28 = ptrtoint ptr %data.i.i.i126 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %tmp.i124, ptr %data.i.i.i126, align 8
  %call.i.i.i127 = call fastcc i32 @rtl28xxu_ctrl_msg(ptr noundef %d, ptr noundef nonnull %req.i.i.i123) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %req.i.i.i123) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i127)
  %tobool.not.i128 = icmp eq i32 %call.i.i.i127, 0
  br i1 %tobool.not.i128, label %rtl28xxu_wr_reg_mask.exit136, label %rtl28xxu_wr_reg_mask.exit136.thread

rtl28xxu_wr_reg_mask.exit136.thread:              ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i124) #6
  br label %do.body45

rtl28xxu_wr_reg_mask.exit136:                     ; preds = %if.end16
  %29 = ptrtoint ptr %tmp.i124 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %tmp.i124, align 1
  %and8.i129 = and i8 %30, -33
  store i8 %and8.i129, ptr %tmp.i124, align 1
  %or24.i130 = or i8 %30, 32
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i.i122) #6
  %31 = ptrtoint ptr %val.addr.i.i122 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %or24.i130, ptr %val.addr.i.i122, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %req.i.i25.i121) #6
  %32 = ptrtoint ptr %req.i.i25.i121 to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 3458766781563404287, ptr %req.i.i25.i121, align 8
  %data.i.i34.i133 = getelementptr inbounds %struct.rtl28xxu_req, ptr %req.i.i25.i121, i32 0, i32 3
  %33 = ptrtoint ptr %data.i.i34.i133 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %val.addr.i.i122, ptr %data.i.i34.i133, align 8
  %call.i.i35.i134 = call fastcc i32 @rtl28xxu_ctrl_msg(ptr noundef %d, ptr noundef nonnull %req.i.i25.i121) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %req.i.i25.i121) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i.i122) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i124) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i35.i134)
  %tobool18.not = icmp eq i32 %call.i.i35.i134, 0
  br i1 %tobool18.not, label %if.end20, label %rtl28xxu_wr_reg_mask.exit136.do.body45_crit_edge

rtl28xxu_wr_reg_mask.exit136.do.body45_crit_edge: ; preds = %rtl28xxu_wr_reg_mask.exit136
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body45

if.end20:                                         ; preds = %rtl28xxu_wr_reg_mask.exit136
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %req.i) #6
  %34 = ptrtoint ptr %req.i to i32
  call void @__asan_store8_noabort(i32 %34)
  store i64 2398167969806090239, ptr %req.i, align 8
  %data.i = getelementptr inbounds %struct.rtl28xxu_req, ptr %req.i, i32 0, i32 3
  %35 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @.str.90, ptr %data.i, align 8
  %call.i = call fastcc i32 @rtl28xxu_ctrl_msg(ptr noundef %d, ptr noundef nonnull %req.i) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %req.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool22.not = icmp eq i32 %call.i, 0
  br i1 %tobool22.not, label %if.end24, label %if.end20.do.body45_crit_edge

if.end20.do.body45_crit_edge:                     ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body45

if.end24:                                         ; preds = %if.end20
  %udev = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 5
  %36 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %udev, align 4
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %37, align 8
  %shl.i = shl i32 %39, 8
  %or27 = or i32 %shl.i, -1069514624
  %call28 = call i32 @usb_clear_halt(ptr noundef %37, i32 noundef %or27) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.end24.cleanup_crit_edge, label %if.end24.do.body45_crit_edge

if.end24.do.body45_crit_edge:                     ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body45

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.else:                                          ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i140) #6
  %40 = ptrtoint ptr %tmp.i140 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 -1, ptr %tmp.i140, align 1, !annotation !421
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %req.i.i.i139) #6
  %41 = ptrtoint ptr %req.i.i.i139 to i32
  call void @__asan_store8_noabort(i32 %41)
  store i64 3459048187820638207, ptr %req.i.i.i139, align 8
  %data.i.i.i142 = getelementptr inbounds %struct.rtl28xxu_req, ptr %req.i.i.i139, i32 0, i32 3
  %42 = ptrtoint ptr %data.i.i.i142 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %tmp.i140, ptr %data.i.i.i142, align 8
  %call.i.i.i143 = call fastcc i32 @rtl28xxu_ctrl_msg(ptr noundef %d, ptr noundef nonnull %req.i.i.i139) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %req.i.i.i139) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i143)
  %tobool.not.i144 = icmp eq i32 %call.i.i.i143, 0
  br i1 %tobool.not.i144, label %rtl28xxu_wr_reg_mask.exit152, label %rtl28xxu_wr_reg_mask.exit152.thread

rtl28xxu_wr_reg_mask.exit152.thread:              ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i140) #6
  br label %do.body45

rtl28xxu_wr_reg_mask.exit152:                     ; preds = %if.else
  %43 = ptrtoint ptr %tmp.i140 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %tmp.i140, align 1
  %and8.i145 = and i8 %44, -17
  store i8 %and8.i145, ptr %tmp.i140, align 1
  %or24.i146 = or i8 %44, 16
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i.i138) #6
  %45 = ptrtoint ptr %val.addr.i.i138 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %or24.i146, ptr %val.addr.i.i138, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %req.i.i25.i137) #6
  %46 = ptrtoint ptr %req.i.i25.i137 to i32
  call void @__asan_store8_noabort(i32 %46)
  store i64 3459048256540114943, ptr %req.i.i25.i137, align 8
  %data.i.i34.i149 = getelementptr inbounds %struct.rtl28xxu_req, ptr %req.i.i25.i137, i32 0, i32 3
  %47 = ptrtoint ptr %data.i.i34.i149 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %val.addr.i.i138, ptr %data.i.i34.i149, align 8
  %call.i.i35.i150 = call fastcc i32 @rtl28xxu_ctrl_msg(ptr noundef %d, ptr noundef nonnull %req.i.i25.i137) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %req.i.i25.i137) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i.i138) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i140) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i35.i150)
  %tobool33.not = icmp eq i32 %call.i.i35.i150, 0
  br i1 %tobool33.not, label %if.end35, label %rtl28xxu_wr_reg_mask.exit152.do.body45_crit_edge

rtl28xxu_wr_reg_mask.exit152.do.body45_crit_edge: ; preds = %rtl28xxu_wr_reg_mask.exit152
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body45

if.end35:                                         ; preds = %rtl28xxu_wr_reg_mask.exit152
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i156) #6
  %48 = ptrtoint ptr %tmp.i156 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 -1, ptr %tmp.i156, align 1, !annotation !421
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %req.i.i.i155) #6
  %49 = ptrtoint ptr %req.i.i.i155 to i32
  call void @__asan_store8_noabort(i32 %49)
  store i64 3458766712843927551, ptr %req.i.i.i155, align 8
  %data.i.i.i158 = getelementptr inbounds %struct.rtl28xxu_req, ptr %req.i.i.i155, i32 0, i32 3
  %50 = ptrtoint ptr %data.i.i.i158 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %tmp.i156, ptr %data.i.i.i158, align 8
  %call.i.i.i159 = call fastcc i32 @rtl28xxu_ctrl_msg(ptr noundef %d, ptr noundef nonnull %req.i.i.i155) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %req.i.i.i155) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i159)
  %tobool.not.i160 = icmp eq i32 %call.i.i.i159, 0
  br i1 %tobool.not.i160, label %rtl28xxu_wr_reg_mask.exit167, label %rtl28xxu_wr_reg_mask.exit167.thread

rtl28xxu_wr_reg_mask.exit167.thread:              ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i156) #6
  br label %do.body45

rtl28xxu_wr_reg_mask.exit167:                     ; preds = %if.end35
  %51 = ptrtoint ptr %tmp.i156 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %tmp.i156, align 1
  %and8.i161 = and i8 %52, 127
  store i8 %and8.i161, ptr %tmp.i156, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i.i154) #6
  %53 = ptrtoint ptr %val.addr.i.i154 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %and8.i161, ptr %val.addr.i.i154, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %req.i.i25.i153) #6
  %54 = ptrtoint ptr %req.i.i25.i153 to i32
  call void @__asan_store8_noabort(i32 %54)
  store i64 3458766781563404287, ptr %req.i.i25.i153, align 8
  %data.i.i34.i164 = getelementptr inbounds %struct.rtl28xxu_req, ptr %req.i.i25.i153, i32 0, i32 3
  %55 = ptrtoint ptr %data.i.i34.i164 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %val.addr.i.i154, ptr %data.i.i34.i164, align 8
  %call.i.i35.i165 = call fastcc i32 @rtl28xxu_ctrl_msg(ptr noundef %d, ptr noundef nonnull %req.i.i25.i153) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %req.i.i25.i153) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i.i154) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i156) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i35.i165)
  %tobool37.not = icmp eq i32 %call.i.i35.i165, 0
  br i1 %tobool37.not, label %if.end39, label %rtl28xxu_wr_reg_mask.exit167.do.body45_crit_edge

rtl28xxu_wr_reg_mask.exit167.do.body45_crit_edge: ; preds = %rtl28xxu_wr_reg_mask.exit167
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body45

if.end39:                                         ; preds = %rtl28xxu_wr_reg_mask.exit167
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %req.i168) #6
  %56 = ptrtoint ptr %req.i168 to i32
  call void @__asan_store8_noabort(i32 %56)
  store i64 2398167969806090239, ptr %req.i168, align 8
  %data.i171 = getelementptr inbounds %struct.rtl28xxu_req, ptr %req.i168, i32 0, i32 3
  %57 = ptrtoint ptr %data.i171 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr @.str.91, ptr %data.i171, align 8
  %call.i172 = call fastcc i32 @rtl28xxu_ctrl_msg(ptr noundef %d, ptr noundef nonnull %req.i168) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %req.i168) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i172)
  %tobool41.not = icmp eq i32 %call.i172, 0
  br i1 %tobool41.not, label %if.end39.cleanup_crit_edge, label %if.end39.do.body45_crit_edge

if.end39.do.body45_crit_edge:                     ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body45

if.end39.cleanup_crit_edge:                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body45:                                        ; preds = %if.end39.do.body45_crit_edge, %rtl28xxu_wr_reg_mask.exit167.do.body45_crit_edge, %rtl28xxu_wr_reg_mask.exit167.thread, %rtl28xxu_wr_reg_mask.exit152.do.body45_crit_edge, %rtl28xxu_wr_reg_mask.exit152.thread, %if.end24.do.body45_crit_edge, %if.end20.do.body45_crit_edge, %rtl28xxu_wr_reg_mask.exit136.do.body45_crit_edge, %rtl28xxu_wr_reg_mask.exit136.thread, %rtl28xxu_wr_reg_mask.exit120.do.body45_crit_edge, %rtl28xxu_wr_reg_mask.exit120.thread, %rtl28xxu_wr_reg_mask.exit104.do.body45_crit_edge, %rtl28xxu_wr_reg_mask.exit104.thread, %rtl28xxu_wr_reg_mask.exit.do.body45_crit_edge, %rtl28xxu_wr_reg_mask.exit.thread
  %ret.1 = phi i32 [ %call.i.i35.i, %rtl28xxu_wr_reg_mask.exit.do.body45_crit_edge ], [ %call.i.i35.i102, %rtl28xxu_wr_reg_mask.exit104.do.body45_crit_edge ], [ %call.i.i35.i118, %rtl28xxu_wr_reg_mask.exit120.do.body45_crit_edge ], [ %call.i.i35.i134, %rtl28xxu_wr_reg_mask.exit136.do.body45_crit_edge ], [ %call.i, %if.end20.do.body45_crit_edge ], [ %call28, %if.end24.do.body45_crit_edge ], [ %call.i.i35.i150, %rtl28xxu_wr_reg_mask.exit152.do.body45_crit_edge ], [ %call.i.i35.i165, %rtl28xxu_wr_reg_mask.exit167.do.body45_crit_edge ], [ %call.i172, %if.end39.do.body45_crit_edge ], [ %call.i.i.i, %rtl28xxu_wr_reg_mask.exit.thread ], [ %call.i.i.i96, %rtl28xxu_wr_reg_mask.exit104.thread ], [ %call.i.i.i111, %rtl28xxu_wr_reg_mask.exit120.thread ], [ %call.i.i.i127, %rtl28xxu_wr_reg_mask.exit136.thread ], [ %call.i.i.i143, %rtl28xxu_wr_reg_mask.exit152.thread ], [ %call.i.i.i159, %rtl28xxu_wr_reg_mask.exit167.thread ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtl2832u_power_ctrl.__UNIQUE_ID_ddebug430, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtl2832u_power_ctrl, %if.then57)) #6
          to label %cleanup [label %if.then57], !srcloc !420

if.then57:                                        ; preds = %do.body45
  call void @__sanitizer_cov_trace_pc() #8
  %intf58 = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 4
  %58 = ptrtoint ptr %intf58 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %intf58, align 8
  %dev59 = getelementptr inbounds %struct.usb_interface, ptr %59, i32 0, i32 7
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rtl2832u_power_ctrl.__UNIQUE_ID_ddebug430, ptr noundef %dev59, ptr noundef nonnull @.str.79, i32 noundef %ret.1) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then57, %do.body45, %if.end39.cleanup_crit_edge, %if.end24.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end39.cleanup_crit_edge ], [ 0, %if.end24.cleanup_crit_edge ], [ %ret.1, %if.then57 ], [ %ret.1, %do.body45 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_clear_halt(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rtl28xxu_wr_reg_mask(ptr noundef %d, i16 noundef zeroext %reg, i8 noundef zeroext %val, i8 noundef zeroext %mask) unnamed_addr #2 align 64 {
entry:
  %req.i.i25 = alloca %struct.rtl28xxu_req, align 8
  %val.addr.i = alloca i8, align 1
  %req.i.i = alloca %struct.rtl28xxu_req, align 8
  %tmp = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp) #6
  %0 = ptrtoint ptr %tmp to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %tmp, align 1, !annotation !421
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %mask)
  %cmp.not = icmp eq i8 %mask, -1
  br i1 %cmp.not, label %entry.if.end13_crit_edge, label %if.then

entry.if.end13_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %req.i.i) #6
  %1 = ptrtoint ptr %req.i.i to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 -4294836225, ptr %req.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 12288, i16 %reg)
  %cmp.i.i = icmp ult i16 %reg, 12288
  br i1 %cmp.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %index.i.i = getelementptr inbounds %struct.rtl28xxu_req, ptr %req.i.i, i32 0, i32 1
  %2 = ptrtoint ptr %index.i.i to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 256, ptr %index.i.i, align 2
  br label %rtl28xxu_rd_reg.exit

if.else.i.i:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %reg)
  %cmp3.i.i = icmp ult i16 %reg, 16384
  %index6.i.i = getelementptr inbounds %struct.rtl28xxu_req, ptr %req.i.i, i32 0, i32 1
  br i1 %cmp3.i.i, label %if.then5.i.i, label %if.else7.i.i

if.then5.i.i:                                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %3 = ptrtoint ptr %index6.i.i to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 512, ptr %index6.i.i, align 2
  br label %rtl28xxu_rd_reg.exit

if.else7.i.i:                                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %index6.i.i to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 513, ptr %index6.i.i, align 2
  br label %rtl28xxu_rd_reg.exit

rtl28xxu_rd_reg.exit:                             ; preds = %if.else7.i.i, %if.then5.i.i, %if.then.i.i
  %5 = ptrtoint ptr %req.i.i to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %reg, ptr %req.i.i, align 8
  %data.i.i = getelementptr inbounds %struct.rtl28xxu_req, ptr %req.i.i, i32 0, i32 3
  %6 = ptrtoint ptr %data.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %tmp, ptr %data.i.i, align 8
  %call.i.i = call fastcc i32 @rtl28xxu_ctrl_msg(ptr noundef %d, ptr noundef nonnull %req.i.i) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %req.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not, label %if.end, label %rtl28xxu_rd_reg.exit.cleanup_crit_edge

rtl28xxu_rd_reg.exit.cleanup_crit_edge:           ; preds = %rtl28xxu_rd_reg.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %rtl28xxu_rd_reg.exit
  call void @__sanitizer_cov_trace_pc() #8
  %and23 = and i8 %mask, %val
  %neg = xor i8 %mask, -1
  %7 = ptrtoint ptr %tmp to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %tmp, align 1
  %and8 = and i8 %8, %neg
  store i8 %and8, ptr %tmp, align 1
  %or24 = or i8 %and8, %and23
  br label %if.end13

if.end13:                                         ; preds = %if.end, %entry.if.end13_crit_edge
  %val.addr.0 = phi i8 [ %or24, %if.end ], [ %val, %entry.if.end13_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i)
  %9 = ptrtoint ptr %val.addr.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %val.addr.0, ptr %val.addr.i, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %req.i.i25) #6
  %10 = ptrtoint ptr %req.i.i25 to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 -4294836225, ptr %req.i.i25, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 12288, i16 %reg)
  %cmp.i.i26 = icmp ult i16 %reg, 12288
  br i1 %cmp.i.i26, label %if.then.i.i28, label %if.else.i.i31

if.then.i.i28:                                    ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  %index.i.i27 = getelementptr inbounds %struct.rtl28xxu_req, ptr %req.i.i25, i32 0, i32 1
  %11 = ptrtoint ptr %index.i.i27 to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 272, ptr %index.i.i27, align 2
  br label %rtl28xxu_wr_reg.exit

if.else.i.i31:                                    ; preds = %if.end13
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %reg)
  %cmp3.i.i29 = icmp ult i16 %reg, 16384
  %index6.i.i30 = getelementptr inbounds %struct.rtl28xxu_req, ptr %req.i.i25, i32 0, i32 1
  br i1 %cmp3.i.i29, label %if.then5.i.i32, label %if.else7.i.i33

if.then5.i.i32:                                   ; preds = %if.else.i.i31
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %index6.i.i30 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 528, ptr %index6.i.i30, align 2
  br label %rtl28xxu_wr_reg.exit

if.else7.i.i33:                                   ; preds = %if.else.i.i31
  call void @__sanitizer_cov_trace_pc() #8
  %13 = ptrtoint ptr %index6.i.i30 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 529, ptr %index6.i.i30, align 2
  br label %rtl28xxu_wr_reg.exit

rtl28xxu_wr_reg.exit:                             ; preds = %if.else7.i.i33, %if.then5.i.i32, %if.then.i.i28
  %14 = ptrtoint ptr %req.i.i25 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %reg, ptr %req.i.i25, align 8
  %data.i.i34 = getelementptr inbounds %struct.rtl28xxu_req, ptr %req.i.i25, i32 0, i32 3
  %15 = ptrtoint ptr %data.i.i34 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %val.addr.i, ptr %data.i.i34, align 8
  %call.i.i35 = call fastcc i32 @rtl28xxu_ctrl_msg(ptr noundef %d, ptr noundef nonnull %req.i.i25) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %req.i.i25) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i)
  br label %cleanup

cleanup:                                          ; preds = %rtl28xxu_wr_reg.exit, %rtl28xxu_rd_reg.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i.i35, %rtl28xxu_wr_reg.exit ], [ %call.i.i, %rtl28xxu_rd_reg.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rtl2831u_read_config(ptr noundef %d) unnamed_addr #2 align 64 {
entry:
  %req.i.i116 = alloca %struct.rtl28xxu_req, align 8
  %val.addr.i117 = alloca i8, align 1
  %req.i.i = alloca %struct.rtl28xxu_req, align 8
  %val.addr.i = alloca i8, align 1
  %buf = alloca [1 x i8], align 1
  %req_gate_open = alloca %struct.rtl28xxu_req, align 4
  %req_mt2060 = alloca %struct.rtl28xxu_req, align 4
  %req_qt1010 = alloca %struct.rtl28xxu_req, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 15
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %buf) #6
  %2 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %buf, align 1, !annotation !421
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %req_gate_open) #6
  %3 = call ptr @memcpy(ptr %req_gate_open, ptr @__const.rtl2831u_read_config.req_gate_open, i32 12)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %req_mt2060) #6
  %4 = getelementptr inbounds i8, ptr %req_mt2060, i32 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %4, align 4
  %6 = ptrtoint ptr %req_mt2060 to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 192, ptr %req_mt2060, align 4
  %index = getelementptr inbounds %struct.rtl28xxu_req, ptr %req_mt2060, i32 0, i32 1
  %7 = ptrtoint ptr %index to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 768, ptr %index, align 2
  %size = getelementptr inbounds %struct.rtl28xxu_req, ptr %req_mt2060, i32 0, i32 2
  %8 = ptrtoint ptr %size to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 1, ptr %size, align 4
  %data = getelementptr inbounds %struct.rtl28xxu_req, ptr %req_mt2060, i32 0, i32 3
  %9 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %buf, ptr %data, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %req_qt1010) #6
  %10 = getelementptr inbounds i8, ptr %req_qt1010, i32 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %10, align 4
  %12 = ptrtoint ptr %req_qt1010 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 4036, ptr %req_qt1010, align 4
  %index2 = getelementptr inbounds %struct.rtl28xxu_req, ptr %req_qt1010, i32 0, i32 1
  %13 = ptrtoint ptr %index2 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 768, ptr %index2, align 2
  %size3 = getelementptr inbounds %struct.rtl28xxu_req, ptr %req_qt1010, i32 0, i32 2
  %14 = ptrtoint ptr %size3 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 1, ptr %size3, align 4
  %data4 = getelementptr inbounds %struct.rtl28xxu_req, ptr %req_qt1010, i32 0, i32 3
  %15 = ptrtoint ptr %data4 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %buf, ptr %data4, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtl2831u_read_config.__UNIQUE_ID_ddebug394, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtl2831u_read_config, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !420

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %intf = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 4
  %16 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %intf, align 8
  %dev8 = getelementptr inbounds %struct.usb_interface, ptr %17, i32 0, i32 7
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rtl2831u_read_config.__UNIQUE_ID_ddebug394, ptr noundef %dev8, ptr noundef nonnull @.str.74) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i)
  %18 = ptrtoint ptr %val.addr.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 10, ptr %val.addr.i, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %req.i.i) #6
  %19 = ptrtoint ptr %req.i.i to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 3459892681470246911, ptr %req.i.i, align 8
  %data.i.i = getelementptr inbounds %struct.rtl28xxu_req, ptr %req.i.i, i32 0, i32 3
  %20 = ptrtoint ptr %data.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %val.addr.i, ptr %data.i.i, align 8
  %call.i.i = call fastcc i32 @rtl28xxu_ctrl_msg(ptr noundef %d, ptr noundef nonnull %req.i.i) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %req.i.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool10.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool10.not, label %if.end12, label %do.end.do.body64_crit_edge

do.end.do.body64_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body64

if.end12:                                         ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i117)
  %21 = ptrtoint ptr %val.addr.i117 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 21, ptr %val.addr.i117, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %req.i.i116) #6
  %22 = ptrtoint ptr %req.i.i116 to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 3459611206493536255, ptr %req.i.i116, align 8
  %data.i.i119 = getelementptr inbounds %struct.rtl28xxu_req, ptr %req.i.i116, i32 0, i32 3
  %23 = ptrtoint ptr %data.i.i119 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %val.addr.i117, ptr %data.i.i119, align 8
  %call.i.i120 = call fastcc i32 @rtl28xxu_ctrl_msg(ptr noundef %d, ptr noundef nonnull %req.i.i116) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %req.i.i116) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i117)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i120)
  %tobool14.not = icmp eq i32 %call.i.i120, 0
  br i1 %tobool14.not, label %if.end16, label %if.end12.do.body64_crit_edge

if.end12.do.body64_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body64

if.end16:                                         ; preds = %if.end12
  call void @msleep(i32 noundef 20) #6
  %tuner_name = getelementptr inbounds %struct.rtl28xxu_dev, ptr %1, i32 0, i32 3
  %24 = ptrtoint ptr %tuner_name to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @.str.94, ptr %tuner_name, align 4
  %call17 = call fastcc i32 @rtl28xxu_ctrl_msg(ptr noundef %d, ptr noundef nonnull %req_gate_open)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end20, label %if.end16.do.body64_crit_edge

if.end16.do.body64_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body64

if.end20:                                         ; preds = %if.end16
  %call21 = call fastcc i32 @rtl28xxu_ctrl_msg(ptr noundef %d, ptr noundef nonnull %req_qt1010)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %cmp = icmp eq i32 %call21, 0
  br i1 %cmp, label %land.lhs.true, label %if.end20.if.end26_crit_edge

if.end20.if.end26_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end26

land.lhs.true:                                    ; preds = %if.end20
  %25 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %buf, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 44, i8 %26)
  %cmp22 = icmp eq i8 %26, 44
  br i1 %cmp22, label %land.lhs.true.do.body45_crit_edge, label %land.lhs.true.if.end26_crit_edge

land.lhs.true.if.end26_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end26

land.lhs.true.do.body45_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body45

if.end26:                                         ; preds = %land.lhs.true.if.end26_crit_edge, %if.end20.if.end26_crit_edge
  %call27 = call fastcc i32 @rtl28xxu_ctrl_msg(ptr noundef %d, ptr noundef nonnull %req_gate_open)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.end30, label %if.end26.do.body64_crit_edge

if.end26.do.body64_crit_edge:                     ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body64

if.end30:                                         ; preds = %if.end26
  %call31 = call fastcc i32 @rtl28xxu_ctrl_msg(ptr noundef %d, ptr noundef nonnull %req_mt2060)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %cmp32 = icmp eq i32 %call31, 0
  br i1 %cmp32, label %land.lhs.true34, label %if.end30.if.end42_crit_edge

if.end30.if.end42_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end42

land.lhs.true34:                                  ; preds = %if.end30
  %27 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %buf, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 99, i8 %28)
  %cmp37 = icmp eq i8 %28, 99
  br i1 %cmp37, label %land.lhs.true34.do.body45_crit_edge, label %land.lhs.true34.if.end42_crit_edge

land.lhs.true34.if.end42_crit_edge:               ; preds = %land.lhs.true34
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end42

land.lhs.true34.do.body45_crit_edge:              ; preds = %land.lhs.true34
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body45

if.end42:                                         ; preds = %land.lhs.true34.if.end42_crit_edge, %if.end30.if.end42_crit_edge
  br label %do.body45

do.body45:                                        ; preds = %if.end42, %land.lhs.true34.do.body45_crit_edge, %land.lhs.true.do.body45_crit_edge
  %.sink = phi i8 [ 18, %if.end42 ], [ 16, %land.lhs.true.do.body45_crit_edge ], [ 17, %land.lhs.true34.do.body45_crit_edge ]
  %.str.95.sink = phi ptr [ @.str.97, %if.end42 ], [ @.str.95, %land.lhs.true.do.body45_crit_edge ], [ @.str.96, %land.lhs.true34.do.body45_crit_edge ]
  %tuner = getelementptr inbounds %struct.rtl28xxu_dev, ptr %1, i32 0, i32 2
  %29 = ptrtoint ptr %tuner to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %.sink, ptr %tuner, align 1
  %30 = ptrtoint ptr %tuner_name to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %.str.95.sink, ptr %tuner_name, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtl2831u_read_config.__UNIQUE_ID_ddebug395, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtl2831u_read_config, %if.then57)) #6
          to label %cleanup [label %if.then57], !srcloc !420

if.then57:                                        ; preds = %do.body45
  call void @__sanitizer_cov_trace_pc() #8
  %intf58 = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 4
  %31 = ptrtoint ptr %intf58 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %intf58, align 8
  %dev59 = getelementptr inbounds %struct.usb_interface, ptr %32, i32 0, i32 7
  %33 = ptrtoint ptr %tuner_name to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %tuner_name, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rtl2831u_read_config.__UNIQUE_ID_ddebug395, ptr noundef %dev59, ptr noundef nonnull @.str.98, ptr noundef %34) #6
  br label %cleanup

do.body64:                                        ; preds = %if.end26.do.body64_crit_edge, %if.end16.do.body64_crit_edge, %if.end12.do.body64_crit_edge, %do.end.do.body64_crit_edge
  %ret.0 = phi i32 [ %call.i.i, %do.end.do.body64_crit_edge ], [ %call.i.i120, %if.end12.do.body64_crit_edge ], [ %call17, %if.end16.do.body64_crit_edge ], [ %call27, %if.end26.do.body64_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtl2831u_read_config.__UNIQUE_ID_ddebug396, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtl2831u_read_config, %if.then76)) #6
          to label %cleanup [label %if.then76], !srcloc !420

if.then76:                                        ; preds = %do.body64
  call void @__sanitizer_cov_trace_pc() #8
  %intf77 = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 4
  %35 = ptrtoint ptr %intf77 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %intf77, align 8
  %dev78 = getelementptr inbounds %struct.usb_interface, ptr %36, i32 0, i32 7
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rtl2831u_read_config.__UNIQUE_ID_ddebug396, ptr noundef %dev78, ptr noundef nonnull @.str.79, i32 noundef %ret.0) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then76, %do.body64, %if.then57, %do.body45
  %retval.0 = phi i32 [ 0, %if.then57 ], [ %ret.0, %if.then76 ], [ 0, %do.body45 ], [ %ret.0, %do.body64 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %req_qt1010) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %req_mt2060) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %req_gate_open) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %buf) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rtl2832u_read_config(ptr noundef %d) unnamed_addr #2 align 64 {
entry:
  %req.i.i25.i631 = alloca %struct.rtl28xxu_req, align 8
  %val.addr.i.i632 = alloca i8, align 1
  %req.i.i.i633 = alloca %struct.rtl28xxu_req, align 8
  %tmp.i634 = alloca i8, align 1
  %req.i.i25.i616 = alloca %struct.rtl28xxu_req, align 8
  %val.addr.i.i617 = alloca i8, align 1
  %req.i.i.i618 = alloca %struct.rtl28xxu_req, align 8
  %tmp.i619 = alloca i8, align 1
  %req.i.i25.i = alloca %struct.rtl28xxu_req, align 8
  %val.addr.i.i = alloca i8, align 1
  %req.i.i.i = alloca %struct.rtl28xxu_req, align 8
  %tmp.i = alloca i8, align 1
  %buf = alloca [2 x i8], align 1
  %req_gate_open = alloca %struct.rtl28xxu_req, align 4
  %req_gate_close = alloca %struct.rtl28xxu_req, align 4
  %req_fc0012 = alloca %struct.rtl28xxu_req, align 4
  %req_fc0013 = alloca %struct.rtl28xxu_req, align 4
  %req_mt2266 = alloca %struct.rtl28xxu_req, align 4
  %req_fc2580 = alloca %struct.rtl28xxu_req, align 4
  %req_mt2063 = alloca %struct.rtl28xxu_req, align 4
  %req_max3543 = alloca %struct.rtl28xxu_req, align 4
  %req_tua9001 = alloca %struct.rtl28xxu_req, align 4
  %req_mxl5007t = alloca %struct.rtl28xxu_req, align 4
  %req_e4000 = alloca %struct.rtl28xxu_req, align 4
  %req_tda18272 = alloca %struct.rtl28xxu_req, align 4
  %req_r820t = alloca %struct.rtl28xxu_req, align 4
  %req_r828d = alloca %struct.rtl28xxu_req, align 4
  %req_mn88472 = alloca %struct.rtl28xxu_req, align 4
  %req_mn88473 = alloca %struct.rtl28xxu_req, align 4
  %req_cxd2837er = alloca %struct.rtl28xxu_req, align 4
  %req_si2157 = alloca %struct.rtl28xxu_req, align 4
  %req_si2168 = alloca %struct.rtl28xxu_req, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 15
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf) #6
  %2 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %buf, align 1, !annotation !421
  %3 = getelementptr inbounds [2 x i8], ptr %buf, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %3, align 1, !annotation !421
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %req_gate_open) #6
  %5 = call ptr @memcpy(ptr %req_gate_open, ptr @__const.rtl2832u_read_config.req_gate_open, i32 12)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %req_gate_close) #6
  %6 = call ptr @memcpy(ptr %req_gate_close, ptr @__const.rtl2832u_read_config.req_gate_close, i32 12)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %req_fc0012) #6
  %7 = getelementptr inbounds i8, ptr %req_fc0012, i32 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %7, align 4
  %9 = ptrtoint ptr %req_fc0012 to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 198, ptr %req_fc0012, align 4
  %index = getelementptr inbounds %struct.rtl28xxu_req, ptr %req_fc0012, i32 0, i32 1
  %10 = ptrtoint ptr %index to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 768, ptr %index, align 2
  %size = getelementptr inbounds %struct.rtl28xxu_req, ptr %req_fc0012, i32 0, i32 2
  %11 = ptrtoint ptr %size to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 1, ptr %size, align 4
  %data = getelementptr inbounds %struct.rtl28xxu_req, ptr %req_fc0012, i32 0, i32 3
  %12 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %buf, ptr %data, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %req_fc0013) #6
  %13 = getelementptr inbounds i8, ptr %req_fc0013, i32 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -1, ptr %13, align 4
  %15 = ptrtoint ptr %req_fc0013 to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 198, ptr %req_fc0013, align 4
  %index2 = getelementptr inbounds %struct.rtl28xxu_req, ptr %req_fc0013, i32 0, i32 1
  %16 = ptrtoint ptr %index2 to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 768, ptr %index2, align 2
  %size3 = getelementptr inbounds %struct.rtl28xxu_req, ptr %req_fc0013, i32 0, i32 2
  %17 = ptrtoint ptr %size3 to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 1, ptr %size3, align 4
  %data4 = getelementptr inbounds %struct.rtl28xxu_req, ptr %req_fc0013, i32 0, i32 3
  %18 = ptrtoint ptr %data4 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %buf, ptr %data4, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %req_mt2266) #6
  %19 = getelementptr inbounds i8, ptr %req_mt2266, i32 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 -1, ptr %19, align 4
  %21 = ptrtoint ptr %req_mt2266 to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 192, ptr %req_mt2266, align 4
  %index7 = getelementptr inbounds %struct.rtl28xxu_req, ptr %req_mt2266, i32 0, i32 1
  %22 = ptrtoint ptr %index7 to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 768, ptr %index7, align 2
  %size8 = getelementptr inbounds %struct.rtl28xxu_req, ptr %req_mt2266, i32 0, i32 2
  %23 = ptrtoint ptr %size8 to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 1, ptr %size8, align 4
  %data9 = getelementptr inbounds %struct.rtl28xxu_req, ptr %req_mt2266, i32 0, i32 3
  %24 = ptrtoint ptr %data9 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %buf, ptr %data9, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %req_fc2580) #6
  %25 = getelementptr inbounds i8, ptr %req_fc2580, i32 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 -1, ptr %25, align 4
  %27 = ptrtoint ptr %req_fc2580 to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 428, ptr %req_fc2580, align 4
  %index12 = getelementptr inbounds %struct.rtl28xxu_req, ptr %req_fc2580, i32 0, i32 1
  %28 = ptrtoint ptr %index12 to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 768, ptr %index12, align 2
  %size13 = getelementptr inbounds %struct.rtl28xxu_req, ptr %req_fc2580, i32 0, i32 2
  %29 = ptrtoint ptr %size13 to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 1, ptr %size13, align 4
  %data14 = getelementptr inbounds %struct.rtl28xxu_req, ptr %req_fc2580, i32 0, i32 3
  %30 = ptrtoint ptr %data14 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %buf, ptr %data14, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %req_mt2063) #6
  %31 = getelementptr inbounds i8, ptr %req_mt2063, i32 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 -1, ptr %31, align 4
  %33 = ptrtoint ptr %req_mt2063 to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 192, ptr %req_mt2063, align 4
  %index17 = getelementptr inbounds %struct.rtl28xxu_req, ptr %req_mt2063, i32 0, i32 1
  %34 = ptrtoint ptr %index17 to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 768, ptr %index17, align 2
  %size18 = getelementptr inbounds %struct.rtl28xxu_req, ptr %req_mt2063, i32 0, i32 2
  %35 = ptrtoint ptr %size18 to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 1, ptr %size18, align 4
  %data19 = getelementptr inbounds %struct.rtl28xxu_req, ptr %req_mt2063, i32 0, i32 3
  %36 = ptrtoint ptr %data19 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %buf, ptr %data19, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %req_max3543) #6
  %37 = getelementptr inbounds i8, ptr %req_max3543, i32 4
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 -1, ptr %37, align 4
  %39 = ptrtoint ptr %req_max3543 to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 192, ptr %req_max3543, align 4
  %index22 = getelementptr inbounds %struct.rtl28xxu_req, ptr %req_max3543, i32 0, i32 1
  %40 = ptrtoint ptr %index22 to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 768, ptr %index22, align 2
  %size23 = getelementptr inbounds %struct.rtl28xxu_req, ptr %req_max3543, i32 0, i32 2
  %41 = ptrtoint ptr %size23 to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 1, ptr %size23, align 4
  %data24 = getelementptr inbounds %struct.rtl28xxu_req, ptr %req_max3543, i32 0, i32 3
  %42 = ptrtoint ptr %data24 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %buf, ptr %data24, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %req_tua9001) #6
  %43 = getelementptr inbounds i8, ptr %req_tua9001, i32 4
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 -1, ptr %43, align 4
  %45 = ptrtoint ptr %req_tua9001 to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 32448, ptr %req_tua9001, align 4
  %index27 = getelementptr inbounds %struct.rtl28xxu_req, ptr %req_tua9001, i32 0, i32 1
  %46 = ptrtoint ptr %index27 to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 768, ptr %index27, align 2
  %size28 = getelementptr inbounds %struct.rtl28xxu_req, ptr %req_tua9001, i32 0, i32 2
  %47 = ptrtoint ptr %size28 to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 2, ptr %size28, align 4
  %data29 = getelementptr inbounds %struct.rtl28xxu_req, ptr %req_tua9001, i32 0, i32 3
  %48 = ptrtoint ptr %data29 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %buf, ptr %data29, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %req_mxl5007t) #6
  %49 = getelementptr inbounds i8, ptr %req_mxl5007t, i32 4
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 -1, ptr %49, align 4
  %51 = ptrtoint ptr %req_mxl5007t to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 -9792, ptr %req_mxl5007t, align 4
  %index32 = getelementptr inbounds %struct.rtl28xxu_req, ptr %req_mxl5007t, i32 0, i32 1
  %52 = ptrtoint ptr %index32 to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 768, ptr %index32, align 2
  %size33 = getelementptr inbounds %struct.rtl28xxu_req, ptr %req_mxl5007t, i32 0, i32 2
  %53 = ptrtoint ptr %size33 to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 1, ptr %size33, align 4
  %data34 = getelementptr inbounds %struct.rtl28xxu_req, ptr %req_mxl5007t, i32 0, i32 3
  %54 = ptrtoint ptr %data34 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %buf, ptr %data34, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %req_e4000) #6
  %55 = getelementptr inbounds i8, ptr %req_e4000, i32 4
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 -1, ptr %55, align 4
  %57 = ptrtoint ptr %req_e4000 to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 712, ptr %req_e4000, align 4
  %index37 = getelementptr inbounds %struct.rtl28xxu_req, ptr %req_e4000, i32 0, i32 1
  %58 = ptrtoint ptr %index37 to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 768, ptr %index37, align 2
  %size38 = getelementptr inbounds %struct.rtl28xxu_req, ptr %req_e4000, i32 0, i32 2
  %59 = ptrtoint ptr %size38 to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 1, ptr %size38, align 4
  %data39 = getelementptr inbounds %struct.rtl28xxu_req, ptr %req_e4000, i32 0, i32 3
  %60 = ptrtoint ptr %data39 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %buf, ptr %data39, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %req_tda18272) #6
  %61 = getelementptr inbounds i8, ptr %req_tda18272, i32 4
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 -1, ptr %61, align 4
  %63 = ptrtoint ptr %req_tda18272 to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 192, ptr %req_tda18272, align 4
  %index42 = getelementptr inbounds %struct.rtl28xxu_req, ptr %req_tda18272, i32 0, i32 1
  %64 = ptrtoint ptr %index42 to i32
  call void @__asan_store2_noabort(i32 %64)
  store i16 768, ptr %index42, align 2
  %size43 = getelementptr inbounds %struct.rtl28xxu_req, ptr %req_tda18272, i32 0, i32 2
  %65 = ptrtoint ptr %size43 to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 2, ptr %size43, align 4
  %data44 = getelementptr inbounds %struct.rtl28xxu_req, ptr %req_tda18272, i32 0, i32 3
  %66 = ptrtoint ptr %data44 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %buf, ptr %data44, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %req_r820t) #6
  %67 = getelementptr inbounds i8, ptr %req_r820t, i32 4
  %68 = ptrtoint ptr %67 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 -1, ptr %67, align 4
  %69 = ptrtoint ptr %req_r820t to i32
  call void @__asan_store2_noabort(i32 %69)
  store i16 52, ptr %req_r820t, align 4
  %index47 = getelementptr inbounds %struct.rtl28xxu_req, ptr %req_r820t, i32 0, i32 1
  %70 = ptrtoint ptr %index47 to i32
  call void @__asan_store2_noabort(i32 %70)
  store i16 768, ptr %index47, align 2
  %size48 = getelementptr inbounds %struct.rtl28xxu_req, ptr %req_r820t, i32 0, i32 2
  %71 = ptrtoint ptr %size48 to i32
  call void @__asan_store2_noabort(i32 %71)
  store i16 1, ptr %size48, align 4
  %data49 = getelementptr inbounds %struct.rtl28xxu_req, ptr %req_r820t, i32 0, i32 3
  %72 = ptrtoint ptr %data49 to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %buf, ptr %data49, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %req_r828d) #6
  %73 = getelementptr inbounds i8, ptr %req_r828d, i32 4
  %74 = ptrtoint ptr %73 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 -1, ptr %73, align 4
  %75 = ptrtoint ptr %req_r828d to i32
  call void @__asan_store2_noabort(i32 %75)
  store i16 116, ptr %req_r828d, align 4
  %index52 = getelementptr inbounds %struct.rtl28xxu_req, ptr %req_r828d, i32 0, i32 1
  %76 = ptrtoint ptr %index52 to i32
  call void @__asan_store2_noabort(i32 %76)
  store i16 768, ptr %index52, align 2
  %size53 = getelementptr inbounds %struct.rtl28xxu_req, ptr %req_r828d, i32 0, i32 2
  %77 = ptrtoint ptr %size53 to i32
  call void @__asan_store2_noabort(i32 %77)
  store i16 1, ptr %size53, align 4
  %data54 = getelementptr inbounds %struct.rtl28xxu_req, ptr %req_r828d, i32 0, i32 3
  %78 = ptrtoint ptr %data54 to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %buf, ptr %data54, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %req_mn88472) #6
  %79 = getelementptr inbounds i8, ptr %req_mn88472, i32 4
  %80 = ptrtoint ptr %79 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 -1, ptr %79, align 4
  %81 = ptrtoint ptr %req_mn88472 to i32
  call void @__asan_store2_noabort(i32 %81)
  store i16 -200, ptr %req_mn88472, align 4
  %index57 = getelementptr inbounds %struct.rtl28xxu_req, ptr %req_mn88472, i32 0, i32 1
  %82 = ptrtoint ptr %index57 to i32
  call void @__asan_store2_noabort(i32 %82)
  store i16 768, ptr %index57, align 2
  %size58 = getelementptr inbounds %struct.rtl28xxu_req, ptr %req_mn88472, i32 0, i32 2
  %83 = ptrtoint ptr %size58 to i32
  call void @__asan_store2_noabort(i32 %83)
  store i16 1, ptr %size58, align 4
  %data59 = getelementptr inbounds %struct.rtl28xxu_req, ptr %req_mn88472, i32 0, i32 3
  %84 = ptrtoint ptr %data59 to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %buf, ptr %data59, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %req_mn88473) #6
  %85 = getelementptr inbounds i8, ptr %req_mn88473, i32 4
  %86 = ptrtoint ptr %85 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 -1, ptr %85, align 4
  %87 = ptrtoint ptr %req_mn88473 to i32
  call void @__asan_store2_noabort(i32 %87)
  store i16 -200, ptr %req_mn88473, align 4
  %index62 = getelementptr inbounds %struct.rtl28xxu_req, ptr %req_mn88473, i32 0, i32 1
  %88 = ptrtoint ptr %index62 to i32
  call void @__asan_store2_noabort(i32 %88)
  store i16 768, ptr %index62, align 2
  %size63 = getelementptr inbounds %struct.rtl28xxu_req, ptr %req_mn88473, i32 0, i32 2
  %89 = ptrtoint ptr %size63 to i32
  call void @__asan_store2_noabort(i32 %89)
  store i16 1, ptr %size63, align 4
  %data64 = getelementptr inbounds %struct.rtl28xxu_req, ptr %req_mn88473, i32 0, i32 3
  %90 = ptrtoint ptr %data64 to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr %buf, ptr %data64, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %req_cxd2837er) #6
  %91 = getelementptr inbounds i8, ptr %req_cxd2837er, i32 4
  %92 = ptrtoint ptr %91 to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 -1, ptr %91, align 4
  %93 = ptrtoint ptr %req_cxd2837er to i32
  call void @__asan_store2_noabort(i32 %93)
  store i16 -552, ptr %req_cxd2837er, align 4
  %index67 = getelementptr inbounds %struct.rtl28xxu_req, ptr %req_cxd2837er, i32 0, i32 1
  %94 = ptrtoint ptr %index67 to i32
  call void @__asan_store2_noabort(i32 %94)
  store i16 768, ptr %index67, align 2
  %size68 = getelementptr inbounds %struct.rtl28xxu_req, ptr %req_cxd2837er, i32 0, i32 2
  %95 = ptrtoint ptr %size68 to i32
  call void @__asan_store2_noabort(i32 %95)
  store i16 1, ptr %size68, align 4
  %data69 = getelementptr inbounds %struct.rtl28xxu_req, ptr %req_cxd2837er, i32 0, i32 3
  %96 = ptrtoint ptr %data69 to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr %buf, ptr %data69, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %req_si2157) #6
  %97 = getelementptr inbounds i8, ptr %req_si2157, i32 4
  %98 = ptrtoint ptr %97 to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 -1, ptr %97, align 4
  %99 = ptrtoint ptr %req_si2157 to i32
  call void @__asan_store2_noabort(i32 %99)
  store i16 192, ptr %req_si2157, align 4
  %index72 = getelementptr inbounds %struct.rtl28xxu_req, ptr %req_si2157, i32 0, i32 1
  %100 = ptrtoint ptr %index72 to i32
  call void @__asan_store2_noabort(i32 %100)
  store i16 768, ptr %index72, align 2
  %size73 = getelementptr inbounds %struct.rtl28xxu_req, ptr %req_si2157, i32 0, i32 2
  %101 = ptrtoint ptr %size73 to i32
  call void @__asan_store2_noabort(i32 %101)
  store i16 1, ptr %size73, align 4
  %data74 = getelementptr inbounds %struct.rtl28xxu_req, ptr %req_si2157, i32 0, i32 3
  %102 = ptrtoint ptr %data74 to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr %buf, ptr %data74, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %req_si2168) #6
  %103 = getelementptr inbounds i8, ptr %req_si2168, i32 4
  %104 = ptrtoint ptr %103 to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 -1, ptr %103, align 4
  %105 = ptrtoint ptr %req_si2168 to i32
  call void @__asan_store2_noabort(i32 %105)
  store i16 200, ptr %req_si2168, align 4
  %index77 = getelementptr inbounds %struct.rtl28xxu_req, ptr %req_si2168, i32 0, i32 1
  %106 = ptrtoint ptr %index77 to i32
  call void @__asan_store2_noabort(i32 %106)
  store i16 768, ptr %index77, align 2
  %size78 = getelementptr inbounds %struct.rtl28xxu_req, ptr %req_si2168, i32 0, i32 2
  %107 = ptrtoint ptr %size78 to i32
  call void @__asan_store2_noabort(i32 %107)
  store i16 1, ptr %size78, align 4
  %data79 = getelementptr inbounds %struct.rtl28xxu_req, ptr %req_si2168, i32 0, i32 3
  %108 = ptrtoint ptr %data79 to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr %buf, ptr %data79, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtl2832u_read_config.__UNIQUE_ID_ddebug397, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtl2832u_read_config, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !420

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %intf = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 4
  %109 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %intf, align 8
  %dev83 = getelementptr inbounds %struct.usb_interface, ptr %110, i32 0, i32 7
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rtl2832u_read_config.__UNIQUE_ID_ddebug397, ptr noundef %dev83, ptr noundef nonnull @.str.74) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i) #6
  %111 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store1_noabort(i32 %111)
  store i8 -1, ptr %tmp.i, align 1, !annotation !421
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %req.i.i.i) #6
  %112 = ptrtoint ptr %req.i.i.i to i32
  call void @__asan_store8_noabort(i32 %112)
  store i64 3459892612750770175, ptr %req.i.i.i, align 8
  %data.i.i.i = getelementptr inbounds %struct.rtl28xxu_req, ptr %req.i.i.i, i32 0, i32 3
  %113 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr %tmp.i, ptr %data.i.i.i, align 8
  %call.i.i.i = call fastcc i32 @rtl28xxu_ctrl_msg(ptr noundef %d, ptr noundef nonnull %req.i.i.i) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %req.i.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i, label %rtl28xxu_wr_reg_mask.exit, label %rtl28xxu_wr_reg_mask.exit.thread

rtl28xxu_wr_reg_mask.exit.thread:                 ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i) #6
  br label %do.body457

rtl28xxu_wr_reg_mask.exit:                        ; preds = %do.end
  %114 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %tmp.i, align 1
  %and8.i = and i8 %115, -65
  store i8 %and8.i, ptr %tmp.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i.i) #6
  %116 = ptrtoint ptr %val.addr.i.i to i32
  call void @__asan_store1_noabort(i32 %116)
  store i8 %and8.i, ptr %val.addr.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %req.i.i25.i) #6
  %117 = ptrtoint ptr %req.i.i25.i to i32
  call void @__asan_store8_noabort(i32 %117)
  store i64 3459892681470246911, ptr %req.i.i25.i, align 8
  %data.i.i34.i = getelementptr inbounds %struct.rtl28xxu_req, ptr %req.i.i25.i, i32 0, i32 3
  %118 = ptrtoint ptr %data.i.i34.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr %val.addr.i.i, ptr %data.i.i34.i, align 8
  %call.i.i35.i = call fastcc i32 @rtl28xxu_ctrl_msg(ptr noundef %d, ptr noundef nonnull %req.i.i25.i) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %req.i.i25.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i35.i)
  %tobool85.not = icmp eq i32 %call.i.i35.i, 0
  br i1 %tobool85.not, label %if.end87, label %rtl28xxu_wr_reg_mask.exit.do.body457_crit_edge

rtl28xxu_wr_reg_mask.exit.do.body457_crit_edge:   ; preds = %rtl28xxu_wr_reg_mask.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body457

if.end87:                                         ; preds = %rtl28xxu_wr_reg_mask.exit
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i619) #6
  %119 = ptrtoint ptr %tmp.i619 to i32
  call void @__asan_store1_noabort(i32 %119)
  store i8 -1, ptr %tmp.i619, align 1, !annotation !421
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %req.i.i.i618) #6
  %120 = ptrtoint ptr %req.i.i.i618 to i32
  call void @__asan_store8_noabort(i32 %120)
  store i64 3459611137774059519, ptr %req.i.i.i618, align 8
  %data.i.i.i621 = getelementptr inbounds %struct.rtl28xxu_req, ptr %req.i.i.i618, i32 0, i32 3
  %121 = ptrtoint ptr %data.i.i.i621 to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr %tmp.i619, ptr %data.i.i.i621, align 8
  %call.i.i.i622 = call fastcc i32 @rtl28xxu_ctrl_msg(ptr noundef %d, ptr noundef nonnull %req.i.i.i618) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %req.i.i.i618) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i622)
  %tobool.not.i623 = icmp eq i32 %call.i.i.i622, 0
  br i1 %tobool.not.i623, label %rtl28xxu_wr_reg_mask.exit630, label %rtl28xxu_wr_reg_mask.exit630.thread

rtl28xxu_wr_reg_mask.exit630.thread:              ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i619) #6
  br label %do.body457

rtl28xxu_wr_reg_mask.exit630:                     ; preds = %if.end87
  %122 = ptrtoint ptr %tmp.i619 to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %tmp.i619, align 1
  %and8.i624 = and i8 %123, -73
  store i8 %and8.i624, ptr %tmp.i619, align 1
  %or24.i = or i8 %123, 72
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i.i617) #6
  %124 = ptrtoint ptr %val.addr.i.i617 to i32
  call void @__asan_store1_noabort(i32 %124)
  store i8 %or24.i, ptr %val.addr.i.i617, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %req.i.i25.i616) #6
  %125 = ptrtoint ptr %req.i.i25.i616 to i32
  call void @__asan_store8_noabort(i32 %125)
  store i64 3459611206493536255, ptr %req.i.i25.i616, align 8
  %data.i.i34.i627 = getelementptr inbounds %struct.rtl28xxu_req, ptr %req.i.i25.i616, i32 0, i32 3
  %126 = ptrtoint ptr %data.i.i34.i627 to i32
  call void @__asan_store4_noabort(i32 %126)
  store ptr %val.addr.i.i617, ptr %data.i.i34.i627, align 8
  %call.i.i35.i628 = call fastcc i32 @rtl28xxu_ctrl_msg(ptr noundef %d, ptr noundef nonnull %req.i.i25.i616) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %req.i.i25.i616) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i.i617) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i619) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i35.i628)
  %tobool89.not = icmp eq i32 %call.i.i35.i628, 0
  br i1 %tobool89.not, label %if.end91, label %rtl28xxu_wr_reg_mask.exit630.do.body457_crit_edge

rtl28xxu_wr_reg_mask.exit630.do.body457_crit_edge: ; preds = %rtl28xxu_wr_reg_mask.exit630
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body457

if.end91:                                         ; preds = %rtl28xxu_wr_reg_mask.exit630
  %call92 = call fastcc i32 @rtl28xxu_ctrl_msg(ptr noundef %d, ptr noundef nonnull %req_gate_open)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call92)
  %tobool93.not = icmp eq i32 %call92, 0
  br i1 %tobool93.not, label %if.end95, label %if.end91.do.body457_crit_edge

if.end91.do.body457_crit_edge:                    ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body457

if.end95:                                         ; preds = %if.end91
  %tuner_name = getelementptr inbounds %struct.rtl28xxu_dev, ptr %1, i32 0, i32 3
  %127 = ptrtoint ptr %tuner_name to i32
  call void @__asan_store4_noabort(i32 %127)
  store ptr @.str.94, ptr %tuner_name, align 4
  %call96 = call fastcc i32 @rtl28xxu_ctrl_msg(ptr noundef %d, ptr noundef nonnull %req_fc0012)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call96)
  %cmp = icmp eq i32 %call96, 0
  br i1 %cmp, label %land.lhs.true, label %if.end95.if.end101_crit_edge

if.end95.if.end101_crit_edge:                     ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end101

land.lhs.true:                                    ; preds = %if.end95
  %128 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %buf, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -95, i8 %129)
  %cmp97 = icmp eq i8 %129, -95
  br i1 %cmp97, label %land.lhs.true.do.body276.sink.split_crit_edge, label %land.lhs.true.if.end101_crit_edge

land.lhs.true.if.end101_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end101

land.lhs.true.do.body276.sink.split_crit_edge:    ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body276.sink.split

if.end101:                                        ; preds = %land.lhs.true.if.end101_crit_edge, %if.end95.if.end101_crit_edge
  %call102 = call fastcc i32 @rtl28xxu_ctrl_msg(ptr noundef %d, ptr noundef nonnull %req_fc0013)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call102)
  %cmp103 = icmp eq i32 %call102, 0
  br i1 %cmp103, label %land.lhs.true105, label %if.end101.if.end113_crit_edge

if.end101.if.end113_crit_edge:                    ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end113

land.lhs.true105:                                 ; preds = %if.end101
  %130 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %130)
  %131 = load i8, ptr %buf, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -93, i8 %131)
  %cmp108 = icmp eq i8 %131, -93
  br i1 %cmp108, label %land.lhs.true105.do.body276.sink.split_crit_edge, label %land.lhs.true105.if.end113_crit_edge

land.lhs.true105.if.end113_crit_edge:             ; preds = %land.lhs.true105
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end113

land.lhs.true105.do.body276.sink.split_crit_edge: ; preds = %land.lhs.true105
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body276.sink.split

if.end113:                                        ; preds = %land.lhs.true105.if.end113_crit_edge, %if.end101.if.end113_crit_edge
  %call114 = call fastcc i32 @rtl28xxu_ctrl_msg(ptr noundef %d, ptr noundef nonnull %req_mt2266)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call114)
  %cmp115 = icmp eq i32 %call114, 0
  br i1 %cmp115, label %land.lhs.true117, label %if.end113.if.end125_crit_edge

if.end113.if.end125_crit_edge:                    ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end125

land.lhs.true117:                                 ; preds = %if.end113
  %132 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %132)
  %133 = load i8, ptr %buf, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -123, i8 %133)
  %cmp120 = icmp eq i8 %133, -123
  br i1 %cmp120, label %land.lhs.true117.do.body276.sink.split_crit_edge, label %land.lhs.true117.if.end125_crit_edge

land.lhs.true117.if.end125_crit_edge:             ; preds = %land.lhs.true117
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end125

land.lhs.true117.do.body276.sink.split_crit_edge: ; preds = %land.lhs.true117
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body276.sink.split

if.end125:                                        ; preds = %land.lhs.true117.if.end125_crit_edge, %if.end113.if.end125_crit_edge
  %call126 = call fastcc i32 @rtl28xxu_ctrl_msg(ptr noundef %d, ptr noundef nonnull %req_fc2580)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call126)
  %cmp127 = icmp eq i32 %call126, 0
  br i1 %cmp127, label %land.lhs.true129, label %if.end125.if.end137_crit_edge

if.end125.if.end137_crit_edge:                    ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end137

land.lhs.true129:                                 ; preds = %if.end125
  %134 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %134)
  %135 = load i8, ptr %buf, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 86, i8 %135)
  %cmp132 = icmp eq i8 %135, 86
  br i1 %cmp132, label %land.lhs.true129.do.body276.sink.split_crit_edge, label %land.lhs.true129.if.end137_crit_edge

land.lhs.true129.if.end137_crit_edge:             ; preds = %land.lhs.true129
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end137

land.lhs.true129.do.body276.sink.split_crit_edge: ; preds = %land.lhs.true129
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body276.sink.split

if.end137:                                        ; preds = %land.lhs.true129.if.end137_crit_edge, %if.end125.if.end137_crit_edge
  %call138 = call fastcc i32 @rtl28xxu_ctrl_msg(ptr noundef %d, ptr noundef nonnull %req_mt2063)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call138)
  %cmp139 = icmp eq i32 %call138, 0
  br i1 %cmp139, label %land.lhs.true141, label %if.end137.if.end153_crit_edge

if.end137.if.end153_crit_edge:                    ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end153

land.lhs.true141:                                 ; preds = %if.end137
  %136 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %136)
  %137 = load i8, ptr %buf, align 1
  %138 = zext i8 %137 to i64
  call void @__sanitizer_cov_trace_switch(i64 %138, ptr @__sancov_gen_cov_switch_values.193)
  switch i8 %137, label %land.lhs.true141.if.end153_crit_edge [
    i8 -98, label %land.lhs.true141.do.body276.sink.split_crit_edge
    i8 -100, label %land.lhs.true141.do.body276.sink.split_crit_edge661
  ]

land.lhs.true141.do.body276.sink.split_crit_edge661: ; preds = %land.lhs.true141
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body276.sink.split

land.lhs.true141.do.body276.sink.split_crit_edge: ; preds = %land.lhs.true141
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body276.sink.split

land.lhs.true141.if.end153_crit_edge:             ; preds = %land.lhs.true141
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end153

if.end153:                                        ; preds = %land.lhs.true141.if.end153_crit_edge, %if.end137.if.end153_crit_edge
  %call154 = call fastcc i32 @rtl28xxu_ctrl_msg(ptr noundef %d, ptr noundef nonnull %req_max3543)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call154)
  %cmp155 = icmp eq i32 %call154, 0
  br i1 %cmp155, label %land.lhs.true157, label %if.end153.if.end165_crit_edge

if.end153.if.end165_crit_edge:                    ; preds = %if.end153
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end165

land.lhs.true157:                                 ; preds = %if.end153
  %139 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %139)
  %140 = load i8, ptr %buf, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 56, i8 %140)
  %cmp160 = icmp eq i8 %140, 56
  br i1 %cmp160, label %land.lhs.true157.do.body276.sink.split_crit_edge, label %land.lhs.true157.if.end165_crit_edge

land.lhs.true157.if.end165_crit_edge:             ; preds = %land.lhs.true157
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end165

land.lhs.true157.do.body276.sink.split_crit_edge: ; preds = %land.lhs.true157
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body276.sink.split

if.end165:                                        ; preds = %land.lhs.true157.if.end165_crit_edge, %if.end153.if.end165_crit_edge
  %call166 = call fastcc i32 @rtl28xxu_ctrl_msg(ptr noundef %d, ptr noundef nonnull %req_tua9001)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call166)
  %cmp167 = icmp eq i32 %call166, 0
  br i1 %cmp167, label %land.lhs.true169, label %if.end165.if.end182_crit_edge

if.end165.if.end182_crit_edge:                    ; preds = %if.end165
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end182

land.lhs.true169:                                 ; preds = %if.end165
  %141 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %141)
  %142 = load i8, ptr %buf, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 35, i8 %142)
  %cmp172 = icmp eq i8 %142, 35
  br i1 %cmp172, label %land.lhs.true174, label %land.lhs.true169.if.end182_crit_edge

land.lhs.true169.if.end182_crit_edge:             ; preds = %land.lhs.true169
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end182

land.lhs.true174:                                 ; preds = %land.lhs.true169
  %143 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %143)
  %144 = load i8, ptr %3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 40, i8 %144)
  %cmp177 = icmp eq i8 %144, 40
  br i1 %cmp177, label %land.lhs.true174.do.body276.sink.split_crit_edge, label %land.lhs.true174.if.end182_crit_edge

land.lhs.true174.if.end182_crit_edge:             ; preds = %land.lhs.true174
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end182

land.lhs.true174.do.body276.sink.split_crit_edge: ; preds = %land.lhs.true174
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body276.sink.split

if.end182:                                        ; preds = %land.lhs.true174.if.end182_crit_edge, %land.lhs.true169.if.end182_crit_edge, %if.end165.if.end182_crit_edge
  %call183 = call fastcc i32 @rtl28xxu_ctrl_msg(ptr noundef %d, ptr noundef nonnull %req_mxl5007t)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call183)
  %cmp184 = icmp eq i32 %call183, 0
  br i1 %cmp184, label %land.lhs.true186, label %if.end182.if.end194_crit_edge

if.end182.if.end194_crit_edge:                    ; preds = %if.end182
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end194

land.lhs.true186:                                 ; preds = %if.end182
  %145 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %145)
  %146 = load i8, ptr %buf, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 20, i8 %146)
  %cmp189 = icmp eq i8 %146, 20
  br i1 %cmp189, label %land.lhs.true186.do.body276.sink.split_crit_edge, label %land.lhs.true186.if.end194_crit_edge

land.lhs.true186.if.end194_crit_edge:             ; preds = %land.lhs.true186
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end194

land.lhs.true186.do.body276.sink.split_crit_edge: ; preds = %land.lhs.true186
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body276.sink.split

if.end194:                                        ; preds = %land.lhs.true186.if.end194_crit_edge, %if.end182.if.end194_crit_edge
  %call195 = call fastcc i32 @rtl28xxu_ctrl_msg(ptr noundef %d, ptr noundef nonnull %req_e4000)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call195)
  %cmp196 = icmp eq i32 %call195, 0
  br i1 %cmp196, label %land.lhs.true198, label %if.end194.if.end206_crit_edge

if.end194.if.end206_crit_edge:                    ; preds = %if.end194
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end206

land.lhs.true198:                                 ; preds = %if.end194
  %147 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %147)
  %148 = load i8, ptr %buf, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %148)
  %cmp201 = icmp eq i8 %148, 64
  br i1 %cmp201, label %land.lhs.true198.do.body276.sink.split_crit_edge, label %land.lhs.true198.if.end206_crit_edge

land.lhs.true198.if.end206_crit_edge:             ; preds = %land.lhs.true198
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end206

land.lhs.true198.do.body276.sink.split_crit_edge: ; preds = %land.lhs.true198
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body276.sink.split

if.end206:                                        ; preds = %land.lhs.true198.if.end206_crit_edge, %if.end194.if.end206_crit_edge
  %call207 = call fastcc i32 @rtl28xxu_ctrl_msg(ptr noundef %d, ptr noundef nonnull %req_tda18272)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call207)
  %cmp208 = icmp eq i32 %call207, 0
  br i1 %cmp208, label %land.lhs.true210, label %if.end206.if.end223_crit_edge

if.end206.if.end223_crit_edge:                    ; preds = %if.end206
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end223

land.lhs.true210:                                 ; preds = %if.end206
  %149 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %149)
  %150 = load i8, ptr %buf, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -57, i8 %150)
  %cmp213 = icmp eq i8 %150, -57
  br i1 %cmp213, label %land.lhs.true210.do.body276.sink.split_crit_edge, label %lor.lhs.false215

land.lhs.true210.do.body276.sink.split_crit_edge: ; preds = %land.lhs.true210
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body276.sink.split

lor.lhs.false215:                                 ; preds = %land.lhs.true210
  %151 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %151)
  %152 = load i8, ptr %3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 96, i8 %152)
  %cmp218 = icmp eq i8 %152, 96
  br i1 %cmp218, label %lor.lhs.false215.do.body276.sink.split_crit_edge, label %lor.lhs.false215.if.end223_crit_edge

lor.lhs.false215.if.end223_crit_edge:             ; preds = %lor.lhs.false215
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end223

lor.lhs.false215.do.body276.sink.split_crit_edge: ; preds = %lor.lhs.false215
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body276.sink.split

if.end223:                                        ; preds = %lor.lhs.false215.if.end223_crit_edge, %if.end206.if.end223_crit_edge
  %call224 = call fastcc i32 @rtl28xxu_ctrl_msg(ptr noundef %d, ptr noundef nonnull %req_r820t)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call224)
  %cmp225 = icmp eq i32 %call224, 0
  br i1 %cmp225, label %land.lhs.true227, label %if.end223.if.end235_crit_edge

if.end223.if.end235_crit_edge:                    ; preds = %if.end223
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end235

land.lhs.true227:                                 ; preds = %if.end223
  %153 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %153)
  %154 = load i8, ptr %buf, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 105, i8 %154)
  %cmp230 = icmp eq i8 %154, 105
  br i1 %cmp230, label %land.lhs.true227.do.body276.sink.split_crit_edge, label %land.lhs.true227.if.end235_crit_edge

land.lhs.true227.if.end235_crit_edge:             ; preds = %land.lhs.true227
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end235

land.lhs.true227.do.body276.sink.split_crit_edge: ; preds = %land.lhs.true227
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body276.sink.split

if.end235:                                        ; preds = %land.lhs.true227.if.end235_crit_edge, %if.end223.if.end235_crit_edge
  %call236 = call fastcc i32 @rtl28xxu_ctrl_msg(ptr noundef %d, ptr noundef nonnull %req_r828d)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call236)
  %cmp237 = icmp eq i32 %call236, 0
  br i1 %cmp237, label %land.lhs.true239, label %if.end235.if.end247_crit_edge

if.end235.if.end247_crit_edge:                    ; preds = %if.end235
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end247

land.lhs.true239:                                 ; preds = %if.end235
  %155 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %155)
  %156 = load i8, ptr %buf, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 105, i8 %156)
  %cmp242 = icmp eq i8 %156, 105
  br i1 %cmp242, label %land.lhs.true239.do.body276.sink.split_crit_edge, label %land.lhs.true239.if.end247_crit_edge

land.lhs.true239.if.end247_crit_edge:             ; preds = %land.lhs.true239
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end247

land.lhs.true239.do.body276.sink.split_crit_edge: ; preds = %land.lhs.true239
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body276.sink.split

if.end247:                                        ; preds = %land.lhs.true239.if.end247_crit_edge, %if.end235.if.end247_crit_edge
  %call248 = call fastcc i32 @rtl28xxu_wr_reg_mask(ptr noundef %d, i16 noundef zeroext 12289, i8 noundef zeroext 0, i8 noundef zeroext 33)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call248)
  %tobool249.not = icmp eq i32 %call248, 0
  br i1 %tobool249.not, label %if.end251, label %if.end247.do.body457_crit_edge

if.end247.do.body457_crit_edge:                   ; preds = %if.end247
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body457

if.end251:                                        ; preds = %if.end247
  %call252 = call fastcc i32 @rtl28xxu_wr_reg_mask(ptr noundef %d, i16 noundef zeroext 12291, i8 noundef zeroext 0, i8 noundef zeroext 33)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call252)
  %tobool253.not = icmp eq i32 %call252, 0
  br i1 %tobool253.not, label %if.end255, label %if.end251.do.body457_crit_edge

if.end251.do.body457_crit_edge:                   ; preds = %if.end251
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body457

if.end255:                                        ; preds = %if.end251
  call void @msleep(i32 noundef 50) #6
  %call256 = call fastcc i32 @rtl28xxu_wr_reg_mask(ptr noundef %d, i16 noundef zeroext 12289, i8 noundef zeroext 33, i8 noundef zeroext 33)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call256)
  %tobool257.not = icmp eq i32 %call256, 0
  br i1 %tobool257.not, label %if.end259, label %if.end255.do.body457_crit_edge

if.end255.do.body457_crit_edge:                   ; preds = %if.end255
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body457

if.end259:                                        ; preds = %if.end255
  %call260 = call fastcc i32 @rtl28xxu_wr_reg_mask(ptr noundef %d, i16 noundef zeroext 12291, i8 noundef zeroext 33, i8 noundef zeroext 33)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call260)
  %tobool261.not = icmp eq i32 %call260, 0
  br i1 %tobool261.not, label %if.end263, label %if.end259.do.body457_crit_edge

if.end259.do.body457_crit_edge:                   ; preds = %if.end259
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body457

if.end263:                                        ; preds = %if.end259
  call void @msleep(i32 noundef 50) #6
  %call264 = call fastcc i32 @rtl28xxu_ctrl_msg(ptr noundef %d, ptr noundef nonnull %req_si2157)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call264)
  %cmp265 = icmp eq i32 %call264, 0
  br i1 %cmp265, label %land.lhs.true267, label %if.end263.do.body276_crit_edge

if.end263.do.body276_crit_edge:                   ; preds = %if.end263
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body276

land.lhs.true267:                                 ; preds = %if.end263
  %157 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %157)
  %158 = load i8, ptr %buf, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %158)
  %cmp270 = icmp slt i8 %158, 0
  br i1 %cmp270, label %land.lhs.true267.do.body276.sink.split_crit_edge, label %land.lhs.true267.do.body276_crit_edge

land.lhs.true267.do.body276_crit_edge:            ; preds = %land.lhs.true267
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body276

land.lhs.true267.do.body276.sink.split_crit_edge: ; preds = %land.lhs.true267
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body276.sink.split

do.body276.sink.split:                            ; preds = %land.lhs.true267.do.body276.sink.split_crit_edge, %land.lhs.true239.do.body276.sink.split_crit_edge, %land.lhs.true227.do.body276.sink.split_crit_edge, %lor.lhs.false215.do.body276.sink.split_crit_edge, %land.lhs.true210.do.body276.sink.split_crit_edge, %land.lhs.true198.do.body276.sink.split_crit_edge, %land.lhs.true186.do.body276.sink.split_crit_edge, %land.lhs.true174.do.body276.sink.split_crit_edge, %land.lhs.true157.do.body276.sink.split_crit_edge, %land.lhs.true141.do.body276.sink.split_crit_edge, %land.lhs.true141.do.body276.sink.split_crit_edge661, %land.lhs.true129.do.body276.sink.split_crit_edge, %land.lhs.true117.do.body276.sink.split_crit_edge, %land.lhs.true105.do.body276.sink.split_crit_edge, %land.lhs.true.do.body276.sink.split_crit_edge
  %.sink = phi i8 [ 38, %land.lhs.true.do.body276.sink.split_crit_edge ], [ 41, %land.lhs.true105.do.body276.sink.split_crit_edge ], [ 32, %land.lhs.true117.do.body276.sink.split_crit_edge ], [ 33, %land.lhs.true129.do.body276.sink.split_crit_edge ], [ 34, %land.lhs.true141.do.body276.sink.split_crit_edge ], [ 34, %land.lhs.true141.do.body276.sink.split_crit_edge661 ], [ 35, %land.lhs.true157.do.body276.sink.split_crit_edge ], [ 36, %land.lhs.true174.do.body276.sink.split_crit_edge ], [ 37, %land.lhs.true186.do.body276.sink.split_crit_edge ], [ 39, %land.lhs.true198.do.body276.sink.split_crit_edge ], [ 40, %lor.lhs.false215.do.body276.sink.split_crit_edge ], [ 40, %land.lhs.true210.do.body276.sink.split_crit_edge ], [ 42, %land.lhs.true227.do.body276.sink.split_crit_edge ], [ 43, %land.lhs.true239.do.body276.sink.split_crit_edge ], [ 44, %land.lhs.true267.do.body276.sink.split_crit_edge ]
  %.str.102.sink = phi ptr [ @.str.102, %land.lhs.true.do.body276.sink.split_crit_edge ], [ @.str.103, %land.lhs.true105.do.body276.sink.split_crit_edge ], [ @.str.104, %land.lhs.true117.do.body276.sink.split_crit_edge ], [ @.str.105, %land.lhs.true129.do.body276.sink.split_crit_edge ], [ @.str.106, %land.lhs.true141.do.body276.sink.split_crit_edge ], [ @.str.106, %land.lhs.true141.do.body276.sink.split_crit_edge661 ], [ @.str.107, %land.lhs.true157.do.body276.sink.split_crit_edge ], [ @.str.108, %land.lhs.true174.do.body276.sink.split_crit_edge ], [ @.str.109, %land.lhs.true186.do.body276.sink.split_crit_edge ], [ @.str.110, %land.lhs.true198.do.body276.sink.split_crit_edge ], [ @.str.111, %lor.lhs.false215.do.body276.sink.split_crit_edge ], [ @.str.111, %land.lhs.true210.do.body276.sink.split_crit_edge ], [ @.str.112, %land.lhs.true227.do.body276.sink.split_crit_edge ], [ @.str.113, %land.lhs.true239.do.body276.sink.split_crit_edge ], [ @.str.114, %land.lhs.true267.do.body276.sink.split_crit_edge ]
  %tuner = getelementptr inbounds %struct.rtl28xxu_dev, ptr %1, i32 0, i32 2
  %159 = ptrtoint ptr %tuner to i32
  call void @__asan_store1_noabort(i32 %159)
  store i8 %.sink, ptr %tuner, align 1
  %160 = ptrtoint ptr %tuner_name to i32
  call void @__asan_store4_noabort(i32 %160)
  store ptr %.str.102.sink, ptr %tuner_name, align 4
  br label %do.body276

do.body276:                                       ; preds = %do.body276.sink.split, %land.lhs.true267.do.body276_crit_edge, %if.end263.do.body276_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtl2832u_read_config.__UNIQUE_ID_ddebug398, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtl2832u_read_config, %if.then288)) #6
          to label %do.end294 [label %if.then288], !srcloc !420

if.then288:                                       ; preds = %do.body276
  call void @__sanitizer_cov_trace_pc() #8
  %intf289 = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 4
  %161 = ptrtoint ptr %intf289 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %intf289, align 8
  %dev290 = getelementptr inbounds %struct.usb_interface, ptr %162, i32 0, i32 7
  %163 = ptrtoint ptr %tuner_name to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %tuner_name, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rtl2832u_read_config.__UNIQUE_ID_ddebug398, ptr noundef %dev290, ptr noundef nonnull @.str.98, ptr noundef %164) #6
  br label %do.end294

do.end294:                                        ; preds = %if.then288, %do.body276
  %tuner295 = getelementptr inbounds %struct.rtl28xxu_dev, ptr %1, i32 0, i32 2
  %165 = ptrtoint ptr %tuner295 to i32
  call void @__asan_load1_noabort(i32 %165)
  %166 = load i8, ptr %tuner295, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 43, i8 %166)
  %cmp297 = icmp eq i8 %166, 43
  br i1 %cmp297, label %if.then299, label %do.end294.if.end412_crit_edge

do.end294.if.end412_crit_edge:                    ; preds = %do.end294
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end412

if.then299:                                       ; preds = %do.end294
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i634) #6
  %167 = ptrtoint ptr %tmp.i634 to i32
  call void @__asan_store1_noabort(i32 %167)
  store i8 -1, ptr %tmp.i634, align 1, !annotation !421
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %req.i.i.i633) #6
  %168 = ptrtoint ptr %req.i.i.i633 to i32
  call void @__asan_store8_noabort(i32 %168)
  store i64 3459048187820638207, ptr %req.i.i.i633, align 8
  %data.i.i.i636 = getelementptr inbounds %struct.rtl28xxu_req, ptr %req.i.i.i633, i32 0, i32 3
  %169 = ptrtoint ptr %data.i.i.i636 to i32
  call void @__asan_store4_noabort(i32 %169)
  store ptr %tmp.i634, ptr %data.i.i.i636, align 8
  %call.i.i.i637 = call fastcc i32 @rtl28xxu_ctrl_msg(ptr noundef %d, ptr noundef nonnull %req.i.i.i633) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %req.i.i.i633) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i637)
  %tobool.not.i638 = icmp eq i32 %call.i.i.i637, 0
  br i1 %tobool.not.i638, label %rtl28xxu_wr_reg_mask.exit645, label %rtl28xxu_wr_reg_mask.exit645.thread

rtl28xxu_wr_reg_mask.exit645.thread:              ; preds = %if.then299
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i634) #6
  br label %do.body457

rtl28xxu_wr_reg_mask.exit645:                     ; preds = %if.then299
  %170 = ptrtoint ptr %tmp.i634 to i32
  call void @__asan_load1_noabort(i32 %170)
  %171 = load i8, ptr %tmp.i634, align 1
  %and8.i639 = and i8 %171, -2
  store i8 %and8.i639, ptr %tmp.i634, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i.i632) #6
  %172 = ptrtoint ptr %val.addr.i.i632 to i32
  call void @__asan_store1_noabort(i32 %172)
  store i8 %and8.i639, ptr %val.addr.i.i632, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %req.i.i25.i631) #6
  %173 = ptrtoint ptr %req.i.i25.i631 to i32
  call void @__asan_store8_noabort(i32 %173)
  store i64 3459048256540114943, ptr %req.i.i25.i631, align 8
  %data.i.i34.i642 = getelementptr inbounds %struct.rtl28xxu_req, ptr %req.i.i25.i631, i32 0, i32 3
  %174 = ptrtoint ptr %data.i.i34.i642 to i32
  call void @__asan_store4_noabort(i32 %174)
  store ptr %val.addr.i.i632, ptr %data.i.i34.i642, align 8
  %call.i.i35.i643 = call fastcc i32 @rtl28xxu_ctrl_msg(ptr noundef %d, ptr noundef nonnull %req.i.i25.i631) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %req.i.i25.i631) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i.i632) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i634) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i35.i643)
  %tobool301.not = icmp eq i32 %call.i.i35.i643, 0
  br i1 %tobool301.not, label %if.end303, label %rtl28xxu_wr_reg_mask.exit645.do.body457_crit_edge

rtl28xxu_wr_reg_mask.exit645.do.body457_crit_edge: ; preds = %rtl28xxu_wr_reg_mask.exit645
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body457

if.end303:                                        ; preds = %rtl28xxu_wr_reg_mask.exit645
  %call304 = call fastcc i32 @rtl28xxu_wr_reg_mask(ptr noundef %d, i16 noundef zeroext 12291, i8 noundef zeroext 0, i8 noundef zeroext 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call304)
  %tobool305.not = icmp eq i32 %call304, 0
  br i1 %tobool305.not, label %if.end307, label %if.end303.do.body457_crit_edge

if.end303.do.body457_crit_edge:                   ; preds = %if.end303
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body457

if.end307:                                        ; preds = %if.end303
  call void @msleep(i32 noundef 50) #6
  %call308 = call fastcc i32 @rtl28xxu_wr_reg_mask(ptr noundef %d, i16 noundef zeroext 12289, i8 noundef zeroext 1, i8 noundef zeroext 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call308)
  %tobool309.not = icmp eq i32 %call308, 0
  br i1 %tobool309.not, label %if.end311, label %if.end307.do.body457_crit_edge

if.end307.do.body457_crit_edge:                   ; preds = %if.end307
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body457

if.end311:                                        ; preds = %if.end307
  %call312 = call fastcc i32 @rtl28xxu_wr_reg_mask(ptr noundef %d, i16 noundef zeroext 12292, i8 noundef zeroext 0, i8 noundef zeroext 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call312)
  %tobool313.not = icmp eq i32 %call312, 0
  br i1 %tobool313.not, label %if.end315, label %if.end311.do.body457_crit_edge

if.end311.do.body457_crit_edge:                   ; preds = %if.end311
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body457

if.end315:                                        ; preds = %if.end311
  %call316 = call fastcc i32 @rtl28xxu_wr_reg_mask(ptr noundef %d, i16 noundef zeroext 12291, i8 noundef zeroext 1, i8 noundef zeroext 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call316)
  %tobool317.not = icmp eq i32 %call316, 0
  br i1 %tobool317.not, label %if.end319, label %if.end315.do.body457_crit_edge

if.end315.do.body457_crit_edge:                   ; preds = %if.end315
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body457

if.end319:                                        ; preds = %if.end315
  call void @msleep(i32 noundef 20) #6
  %call320 = call fastcc i32 @rtl28xxu_ctrl_msg(ptr noundef %d, ptr noundef nonnull %req_mn88472)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call320)
  %cmp321 = icmp eq i32 %call320, 0
  br i1 %cmp321, label %land.lhs.true323, label %if.end319.if.end347_crit_edge

if.end319.if.end347_crit_edge:                    ; preds = %if.end319
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end347

land.lhs.true323:                                 ; preds = %if.end319
  %175 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %175)
  %176 = load i8, ptr %buf, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %176)
  %cmp326 = icmp eq i8 %176, 2
  br i1 %cmp326, label %do.body329, label %land.lhs.true323.if.end347_crit_edge

land.lhs.true323.if.end347_crit_edge:             ; preds = %land.lhs.true323
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end347

do.body329:                                       ; preds = %land.lhs.true323
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtl2832u_read_config.__UNIQUE_ID_ddebug399, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtl2832u_read_config, %if.then341)) #6
          to label %demod_found.sink.split [label %if.then341], !srcloc !420

if.then341:                                       ; preds = %do.body329
  call void @__sanitizer_cov_trace_pc() #8
  %intf342 = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 4
  %177 = ptrtoint ptr %intf342 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %intf342, align 8
  %dev343 = getelementptr inbounds %struct.usb_interface, ptr %178, i32 0, i32 7
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rtl2832u_read_config.__UNIQUE_ID_ddebug399, ptr noundef %dev343, ptr noundef nonnull @.str.115) #6
  br label %demod_found.sink.split

if.end347:                                        ; preds = %land.lhs.true323.if.end347_crit_edge, %if.end319.if.end347_crit_edge
  %call348 = call fastcc i32 @rtl28xxu_ctrl_msg(ptr noundef %d, ptr noundef nonnull %req_mn88473)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call348)
  %cmp349 = icmp eq i32 %call348, 0
  br i1 %cmp349, label %land.lhs.true351, label %if.end347.if.end379_crit_edge

if.end347.if.end379_crit_edge:                    ; preds = %if.end347
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end379

land.lhs.true351:                                 ; preds = %if.end347
  %179 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %179)
  %180 = load i8, ptr %buf, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %180)
  %cmp354 = icmp eq i8 %180, 3
  br i1 %cmp354, label %do.body357, label %land.lhs.true351.if.end379_crit_edge

land.lhs.true351.if.end379_crit_edge:             ; preds = %land.lhs.true351
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end379

do.body357:                                       ; preds = %land.lhs.true351
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtl2832u_read_config.__UNIQUE_ID_ddebug400, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtl2832u_read_config, %if.then369)) #6
          to label %demod_found.sink.split [label %if.then369], !srcloc !420

if.then369:                                       ; preds = %do.body357
  call void @__sanitizer_cov_trace_pc() #8
  %intf370 = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 4
  %181 = ptrtoint ptr %intf370 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %intf370, align 8
  %dev371 = getelementptr inbounds %struct.usb_interface, ptr %182, i32 0, i32 7
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rtl2832u_read_config.__UNIQUE_ID_ddebug400, ptr noundef %dev371, ptr noundef nonnull @.str.116) #6
  br label %demod_found.sink.split

if.end379:                                        ; preds = %land.lhs.true351.if.end379_crit_edge, %if.end347.if.end379_crit_edge
  %call380 = call fastcc i32 @rtl28xxu_ctrl_msg(ptr noundef %d, ptr noundef nonnull %req_cxd2837er)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call380)
  %cmp381 = icmp eq i32 %call380, 0
  br i1 %cmp381, label %land.lhs.true383, label %if.end379.if.end412thread-pre-split_crit_edge

if.end379.if.end412thread-pre-split_crit_edge:    ; preds = %if.end379
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end412thread-pre-split

land.lhs.true383:                                 ; preds = %if.end379
  %183 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %183)
  %184 = load i8, ptr %buf, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -79, i8 %184)
  %cmp386 = icmp eq i8 %184, -79
  br i1 %cmp386, label %do.body389, label %land.lhs.true383.if.end412thread-pre-split_crit_edge

land.lhs.true383.if.end412thread-pre-split_crit_edge: ; preds = %land.lhs.true383
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end412thread-pre-split

do.body389:                                       ; preds = %land.lhs.true383
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtl2832u_read_config.__UNIQUE_ID_ddebug401, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtl2832u_read_config, %if.then401)) #6
          to label %demod_found.sink.split [label %if.then401], !srcloc !420

if.then401:                                       ; preds = %do.body389
  call void @__sanitizer_cov_trace_pc() #8
  %intf402 = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 4
  %185 = ptrtoint ptr %intf402 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %intf402, align 8
  %dev403 = getelementptr inbounds %struct.usb_interface, ptr %186, i32 0, i32 7
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rtl2832u_read_config.__UNIQUE_ID_ddebug401, ptr noundef %dev403, ptr noundef nonnull @.str.117) #6
  br label %demod_found.sink.split

if.end412thread-pre-split:                        ; preds = %land.lhs.true383.if.end412thread-pre-split_crit_edge, %if.end379.if.end412thread-pre-split_crit_edge
  %187 = ptrtoint ptr %tuner295 to i32
  call void @__asan_load1_noabort(i32 %187)
  %.pr = load i8, ptr %tuner295, align 1
  br label %if.end412

if.end412:                                        ; preds = %if.end412thread-pre-split, %do.end294.if.end412_crit_edge
  %188 = phi i8 [ %.pr, %if.end412thread-pre-split ], [ %166, %do.end294.if.end412_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 44, i8 %188)
  %cmp415 = icmp eq i8 %188, 44
  br i1 %cmp415, label %if.then417, label %if.end412.demod_found_crit_edge

if.end412.demod_found_crit_edge:                  ; preds = %if.end412
  call void @__sanitizer_cov_trace_pc() #8
  br label %demod_found

if.then417:                                       ; preds = %if.end412
  %call418 = call fastcc i32 @rtl28xxu_ctrl_msg(ptr noundef %d, ptr noundef nonnull %req_si2168)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call418)
  %cmp419 = icmp eq i32 %call418, 0
  br i1 %cmp419, label %land.lhs.true421, label %if.then417.demod_found_crit_edge

if.then417.demod_found_crit_edge:                 ; preds = %if.then417
  call void @__sanitizer_cov_trace_pc() #8
  br label %demod_found

land.lhs.true421:                                 ; preds = %if.then417
  %189 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %189)
  %190 = load i8, ptr %buf, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %190)
  %cmp425 = icmp slt i8 %190, 0
  br i1 %cmp425, label %do.body428, label %land.lhs.true421.demod_found_crit_edge

land.lhs.true421.demod_found_crit_edge:           ; preds = %land.lhs.true421
  call void @__sanitizer_cov_trace_pc() #8
  br label %demod_found

do.body428:                                       ; preds = %land.lhs.true421
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtl2832u_read_config.__UNIQUE_ID_ddebug402, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtl2832u_read_config, %if.then440)) #6
          to label %demod_found.sink.split [label %if.then440], !srcloc !420

if.then440:                                       ; preds = %do.body428
  call void @__sanitizer_cov_trace_pc() #8
  %intf441 = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 4
  %191 = ptrtoint ptr %intf441 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %intf441, align 8
  %dev442 = getelementptr inbounds %struct.usb_interface, ptr %192, i32 0, i32 7
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rtl2832u_read_config.__UNIQUE_ID_ddebug402, ptr noundef %dev442, ptr noundef nonnull @.str.118) #6
  br label %demod_found.sink.split

demod_found.sink.split:                           ; preds = %if.then440, %do.body428, %if.then401, %do.body389, %if.then369, %do.body357, %if.then341, %do.body329
  %.sink659 = phi i8 [ 32, %do.body329 ], [ 32, %if.then341 ], [ 64, %do.body357 ], [ 64, %if.then369 ], [ -128, %do.body389 ], [ -128, %if.then401 ], [ 96, %do.body428 ], [ 96, %if.then440 ]
  %slave_demod = getelementptr inbounds %struct.rtl28xxu_dev, ptr %1, i32 0, i32 12
  %193 = ptrtoint ptr %slave_demod to i32
  call void @__asan_load1_noabort(i32 %193)
  %bf.load447 = load i8, ptr %slave_demod, align 4
  %bf.clear448 = and i8 %bf.load447, 31
  %bf.set449 = or i8 %bf.clear448, %.sink659
  store i8 %bf.set449, ptr %slave_demod, align 4
  br label %demod_found

demod_found:                                      ; preds = %demod_found.sink.split, %land.lhs.true421.demod_found_crit_edge, %if.then417.demod_found_crit_edge, %if.end412.demod_found_crit_edge
  %call452 = call fastcc i32 @rtl28xxu_ctrl_msg(ptr noundef %d, ptr noundef nonnull %req_gate_close)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call452)
  %cmp453 = icmp slt i32 %call452, 0
  br i1 %cmp453, label %demod_found.do.body457_crit_edge, label %demod_found.cleanup_crit_edge

demod_found.cleanup_crit_edge:                    ; preds = %demod_found
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

demod_found.do.body457_crit_edge:                 ; preds = %demod_found
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body457

do.body457:                                       ; preds = %demod_found.do.body457_crit_edge, %if.end315.do.body457_crit_edge, %if.end311.do.body457_crit_edge, %if.end307.do.body457_crit_edge, %if.end303.do.body457_crit_edge, %rtl28xxu_wr_reg_mask.exit645.do.body457_crit_edge, %rtl28xxu_wr_reg_mask.exit645.thread, %if.end259.do.body457_crit_edge, %if.end255.do.body457_crit_edge, %if.end251.do.body457_crit_edge, %if.end247.do.body457_crit_edge, %if.end91.do.body457_crit_edge, %rtl28xxu_wr_reg_mask.exit630.do.body457_crit_edge, %rtl28xxu_wr_reg_mask.exit630.thread, %rtl28xxu_wr_reg_mask.exit.do.body457_crit_edge, %rtl28xxu_wr_reg_mask.exit.thread
  %ret.0 = phi i32 [ %call.i.i35.i, %rtl28xxu_wr_reg_mask.exit.do.body457_crit_edge ], [ %call.i.i35.i628, %rtl28xxu_wr_reg_mask.exit630.do.body457_crit_edge ], [ %call92, %if.end91.do.body457_crit_edge ], [ %call.i.i35.i643, %rtl28xxu_wr_reg_mask.exit645.do.body457_crit_edge ], [ %call304, %if.end303.do.body457_crit_edge ], [ %call308, %if.end307.do.body457_crit_edge ], [ %call312, %if.end311.do.body457_crit_edge ], [ %call316, %if.end315.do.body457_crit_edge ], [ %call452, %demod_found.do.body457_crit_edge ], [ %call248, %if.end247.do.body457_crit_edge ], [ %call252, %if.end251.do.body457_crit_edge ], [ %call256, %if.end255.do.body457_crit_edge ], [ %call260, %if.end259.do.body457_crit_edge ], [ %call.i.i.i, %rtl28xxu_wr_reg_mask.exit.thread ], [ %call.i.i.i622, %rtl28xxu_wr_reg_mask.exit630.thread ], [ %call.i.i.i637, %rtl28xxu_wr_reg_mask.exit645.thread ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtl2832u_read_config.__UNIQUE_ID_ddebug403, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtl2832u_read_config, %if.then469)) #6
          to label %cleanup [label %if.then469], !srcloc !420

if.then469:                                       ; preds = %do.body457
  call void @__sanitizer_cov_trace_pc() #8
  %intf470 = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 4
  %194 = ptrtoint ptr %intf470 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %intf470, align 8
  %dev471 = getelementptr inbounds %struct.usb_interface, ptr %195, i32 0, i32 7
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rtl2832u_read_config.__UNIQUE_ID_ddebug403, ptr noundef %dev471, ptr noundef nonnull @.str.79, i32 noundef %ret.0) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then469, %do.body457, %demod_found.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %demod_found.cleanup_crit_edge ], [ %ret.0, %if.then469 ], [ %ret.0, %do.body457 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %req_si2168) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %req_si2157) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %req_cxd2837er) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %req_mn88473) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %req_mn88472) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %req_r828d) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %req_r820t) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %req_tda18272) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %req_e4000) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %req_mxl5007t) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %req_tua9001) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %req_max3543) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %req_mt2063) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %req_fc2580) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %req_mt2266) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %req_fc0013) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %req_fc0012) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %req_gate_close) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %req_gate_open) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rtl2831u_frontend_attach(ptr noundef %adap) unnamed_addr #2 align 64 {
entry:
  %board_info = alloca %struct.i2c_board_info, align 4
  call void @__sanitizer_cov_trace_pc() #8
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
  %4 = getelementptr inbounds %struct.rtl28xxu_dev, ptr %3, i32 0, i32 13
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %board_info) #6
  %5 = call ptr @memset(ptr %board_info, i32 255, i32 56)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtl2831u_frontend_attach.__UNIQUE_ID_ddebug407, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtl2831u_frontend_attach, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !420

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %intf = getelementptr inbounds %struct.dvb_usb_device, ptr %add.ptr, i32 0, i32 4
  %6 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %intf, align 8
  %dev4 = getelementptr inbounds %struct.usb_interface, ptr %7, i32 0, i32 7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rtl2831u_frontend_attach.__UNIQUE_ID_ddebug407, ptr noundef %dev4, ptr noundef nonnull @.str.74) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %tuner = getelementptr inbounds %struct.rtl28xxu_dev, ptr %3, i32 0, i32 2
  %8 = ptrtoint ptr %tuner to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %tuner, align 1
  %10 = zext i8 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.194)
  switch i8 %9, label %do.end10 [
    i8 16, label %sw.bb
    i8 17, label %sw.bb6
    i8 18, label %sw.bb7
  ]

sw.bb:                                            ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %11 = call ptr @memcpy(ptr %4, ptr @rtl2830_qt1010_platform_data, i32 24)
  br label %sw.epilog

sw.bb6:                                           ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %12 = call ptr @memcpy(ptr %4, ptr @rtl2830_mt2060_platform_data, i32 24)
  br label %sw.epilog

sw.bb7:                                           ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %13 = call ptr @memcpy(ptr %4, ptr @rtl2830_mxl5005s_platform_data, i32 24)
  br label %sw.epilog

do.end10:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %intf11 = getelementptr inbounds %struct.dvb_usb_device, ptr %add.ptr, i32 0, i32 4
  %14 = ptrtoint ptr %intf11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %intf11, align 8
  %dev12 = getelementptr inbounds %struct.usb_interface, ptr %15, i32 0, i32 7
  %tuner_name = getelementptr inbounds %struct.rtl28xxu_dev, ptr %3, i32 0, i32 3
  %16 = ptrtoint ptr %tuner_name to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %tuner_name, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev12, ptr noundef nonnull @.str.120, ptr noundef %17) #9
  br label %do.body27

sw.epilog:                                        ; preds = %sw.bb7, %sw.bb6, %sw.bb
  %18 = call ptr @memset(ptr %board_info, i32 0, i32 56)
  %call13 = call i32 @strscpy(ptr noundef nonnull %board_info, ptr noundef nonnull @.str.121, i32 noundef 20) #6
  %addr = getelementptr inbounds %struct.i2c_board_info, ptr %board_info, i32 0, i32 2
  %19 = ptrtoint ptr %addr to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 16, ptr %addr, align 2
  %platform_data = getelementptr inbounds %struct.i2c_board_info, ptr %board_info, i32 0, i32 4
  %20 = ptrtoint ptr %platform_data to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %4, ptr %platform_data, align 4
  %call16 = call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.122, ptr noundef nonnull %board_info) #6
  %i2c_adap = getelementptr inbounds %struct.dvb_usb_device, ptr %add.ptr, i32 0, i32 10
  %call17 = call ptr @i2c_new_client_device(ptr noundef %i2c_adap, ptr noundef nonnull %board_info) #6
  %tobool.not.i.i = icmp eq ptr %call17, null
  %cmp.i.i = icmp ugt ptr %call17, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i = or i1 %tobool.not.i.i, %cmp.i.i
  br i1 %spec.select.i.i, label %sw.epilog.do.body27_crit_edge, label %i2c_client_has_driver.exit

sw.epilog.do.body27_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body27

i2c_client_has_driver.exit:                       ; preds = %sw.epilog
  %driver.i = getelementptr inbounds %struct.i2c_client, ptr %call17, i32 0, i32 4, i32 6
  %21 = ptrtoint ptr %driver.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %driver.i, align 4
  %tobool.i.not = icmp eq ptr %22, null
  br i1 %tobool.i.not, label %i2c_client_has_driver.exit.do.body27_crit_edge, label %if.end20

i2c_client_has_driver.exit.do.body27_crit_edge:   ; preds = %i2c_client_has_driver.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body27

if.end20:                                         ; preds = %i2c_client_has_driver.exit
  %23 = ptrtoint ptr %driver.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %driver.i, align 4
  %owner = getelementptr inbounds %struct.device_driver, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %owner, align 4
  %call22 = call zeroext i1 @try_module_get(ptr noundef %26) #6
  br i1 %call22, label %if.end24, label %if.then23

if.then23:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  call void @i2c_unregister_device(ptr noundef nonnull %call17) #6
  br label %do.body27

if.end24:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  %get_dvb_frontend = getelementptr inbounds %struct.rtl28xxu_dev, ptr %3, i32 0, i32 13, i32 0, i32 2
  %27 = ptrtoint ptr %get_dvb_frontend to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %get_dvb_frontend, align 4
  %call25 = call ptr %28(ptr noundef nonnull %call17) #6
  %fe = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 14
  %29 = ptrtoint ptr %fe to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call25, ptr %fe, align 8
  %get_i2c_adapter = getelementptr inbounds %struct.rtl28xxu_dev, ptr %3, i32 0, i32 13, i32 0, i32 3
  %30 = ptrtoint ptr %get_i2c_adapter to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %get_i2c_adapter, align 4
  %call26 = call ptr %31(ptr noundef nonnull %call17) #6
  %demod_i2c_adapter = getelementptr inbounds %struct.rtl28xxu_dev, ptr %3, i32 0, i32 5
  %32 = ptrtoint ptr %demod_i2c_adapter to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call26, ptr %demod_i2c_adapter, align 4
  %i2c_client_demod = getelementptr inbounds %struct.rtl28xxu_dev, ptr %3, i32 0, i32 8
  %33 = ptrtoint ptr %i2c_client_demod to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call17, ptr %i2c_client_demod, align 4
  br label %cleanup

do.body27:                                        ; preds = %if.then23, %i2c_client_has_driver.exit.do.body27_crit_edge, %sw.epilog.do.body27_crit_edge, %do.end10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtl2831u_frontend_attach.__UNIQUE_ID_ddebug408, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtl2831u_frontend_attach, %if.then39)) #6
          to label %cleanup [label %if.then39], !srcloc !420

if.then39:                                        ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #8
  %intf40 = getelementptr inbounds %struct.dvb_usb_device, ptr %add.ptr, i32 0, i32 4
  %34 = ptrtoint ptr %intf40 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %intf40, align 8
  %dev41 = getelementptr inbounds %struct.usb_interface, ptr %35, i32 0, i32 7
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rtl2831u_frontend_attach.__UNIQUE_ID_ddebug408, ptr noundef %dev41, ptr noundef nonnull @.str.79, i32 noundef -19) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then39, %do.body27, %if.end24
  %retval.0 = phi i32 [ 0, %if.end24 ], [ -19, %if.then39 ], [ -19, %do.body27 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %board_info) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rtl2832u_frontend_attach(ptr noundef %adap) unnamed_addr #2 align 64 {
entry:
  %board_info = alloca %struct.i2c_board_info, align 4
  %info = alloca %struct.i2c_board_info, align 4
  %mn88472_config = alloca %struct.mn88472_config, align 4
  %mn88473_config = alloca %struct.mn88473_config, align 8
  %cxd2837er_config = alloca %struct.cxd2841er_config, align 4
  %si2168_config = alloca %struct.si2168_config, align 4
  %adapter = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #8
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
  %4 = getelementptr inbounds %struct.rtl28xxu_dev, ptr %3, i32 0, i32 13
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %board_info) #6
  %5 = call ptr @memset(ptr %board_info, i32 255, i32 56)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtl2832u_frontend_attach.__UNIQUE_ID_ddebug414, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtl2832u_frontend_attach, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !420

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %intf = getelementptr inbounds %struct.dvb_usb_device, ptr %add.ptr, i32 0, i32 4
  %6 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %intf, align 8
  %dev4 = getelementptr inbounds %struct.usb_interface, ptr %7, i32 0, i32 7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rtl2832u_frontend_attach.__UNIQUE_ID_ddebug414, ptr noundef %dev4, ptr noundef nonnull @.str.74) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %tuner = getelementptr inbounds %struct.rtl28xxu_dev, ptr %3, i32 0, i32 2
  %8 = ptrtoint ptr %tuner to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %tuner, align 1
  %10 = zext i8 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.195)
  switch i8 %9, label %do.end14 [
    i8 38, label %sw.bb
    i8 41, label %sw.bb6
    i8 33, label %sw.bb7
    i8 36, label %sw.bb8
    i8 39, label %sw.bb9
    i8 42, label %do.end.sw.bb10_crit_edge
    i8 43, label %do.end.sw.bb10_crit_edge320
    i8 44, label %sw.bb11
  ]

do.end.sw.bb10_crit_edge320:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb10

do.end.sw.bb10_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb10

sw.bb:                                            ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %11 = call ptr @memcpy(ptr %4, ptr @rtl2832_fc0012_platform_data, i32 32)
  br label %sw.epilog

sw.bb6:                                           ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %12 = call ptr @memcpy(ptr %4, ptr @rtl2832_fc0013_platform_data, i32 32)
  br label %sw.epilog

sw.bb7:                                           ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %13 = call ptr @memcpy(ptr %4, ptr @rtl2832_fc2580_platform_data, i32 32)
  br label %sw.epilog

sw.bb8:                                           ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %14 = call ptr @memcpy(ptr %4, ptr @rtl2832_tua9001_platform_data, i32 32)
  br label %sw.epilog

sw.bb9:                                           ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %15 = call ptr @memcpy(ptr %4, ptr @rtl2832_e4000_platform_data, i32 32)
  br label %sw.epilog

sw.bb10:                                          ; preds = %do.end.sw.bb10_crit_edge, %do.end.sw.bb10_crit_edge320
  %16 = call ptr @memcpy(ptr %4, ptr @rtl2832_r820t_platform_data, i32 32)
  br label %sw.epilog

sw.bb11:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %17 = call ptr @memcpy(ptr %4, ptr @rtl2832_si2157_platform_data, i32 32)
  br label %sw.epilog

do.end14:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %intf15 = getelementptr inbounds %struct.dvb_usb_device, ptr %add.ptr, i32 0, i32 4
  %18 = ptrtoint ptr %intf15 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %intf15, align 8
  %dev16 = getelementptr inbounds %struct.usb_interface, ptr %19, i32 0, i32 7
  %tuner_name = getelementptr inbounds %struct.rtl28xxu_dev, ptr %3, i32 0, i32 3
  %20 = ptrtoint ptr %tuner_name to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %tuner_name, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev16, ptr noundef nonnull @.str.120, ptr noundef %21) #9
  br label %do.body180

sw.epilog:                                        ; preds = %sw.bb11, %sw.bb10, %sw.bb9, %sw.bb8, %sw.bb7, %sw.bb6, %sw.bb
  %22 = call ptr @memset(ptr %board_info, i32 0, i32 56)
  %call17 = call i32 @strscpy(ptr noundef nonnull %board_info, ptr noundef nonnull @.str.124, i32 noundef 20) #6
  %addr = getelementptr inbounds %struct.i2c_board_info, ptr %board_info, i32 0, i32 2
  %23 = ptrtoint ptr %addr to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 16, ptr %addr, align 2
  %platform_data = getelementptr inbounds %struct.i2c_board_info, ptr %board_info, i32 0, i32 4
  %24 = ptrtoint ptr %platform_data to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %4, ptr %platform_data, align 4
  %call20 = call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.122, ptr noundef nonnull %board_info) #6
  %i2c_adap = getelementptr inbounds %struct.dvb_usb_device, ptr %add.ptr, i32 0, i32 10
  %call21 = call ptr @i2c_new_client_device(ptr noundef %i2c_adap, ptr noundef nonnull %board_info) #6
  %tobool.not.i.i = icmp eq ptr %call21, null
  %cmp.i.i = icmp ugt ptr %call21, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i = or i1 %tobool.not.i.i, %cmp.i.i
  br i1 %spec.select.i.i, label %sw.epilog.do.body180_crit_edge, label %i2c_client_has_driver.exit

sw.epilog.do.body180_crit_edge:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body180

i2c_client_has_driver.exit:                       ; preds = %sw.epilog
  %driver.i = getelementptr inbounds %struct.i2c_client, ptr %call21, i32 0, i32 4, i32 6
  %25 = ptrtoint ptr %driver.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %driver.i, align 4
  %tobool.i.not = icmp eq ptr %26, null
  br i1 %tobool.i.not, label %i2c_client_has_driver.exit.do.body180_crit_edge, label %if.end24

i2c_client_has_driver.exit.do.body180_crit_edge:  ; preds = %i2c_client_has_driver.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body180

if.end24:                                         ; preds = %i2c_client_has_driver.exit
  %27 = ptrtoint ptr %driver.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %driver.i, align 4
  %owner = getelementptr inbounds %struct.device_driver, ptr %28, i32 0, i32 2
  %29 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %owner, align 4
  %call26 = call zeroext i1 @try_module_get(ptr noundef %30) #6
  br i1 %call26, label %if.end28, label %if.then27

if.then27:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  call void @i2c_unregister_device(ptr noundef nonnull %call21) #6
  br label %do.body180

if.end28:                                         ; preds = %if.end24
  %get_dvb_frontend = getelementptr inbounds %struct.rtl28xxu_dev, ptr %3, i32 0, i32 13, i32 0, i32 2
  %31 = ptrtoint ptr %get_dvb_frontend to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %get_dvb_frontend, align 4
  %call29 = call ptr %32(ptr noundef nonnull %call21) #6
  %fe = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 14
  %33 = ptrtoint ptr %fe to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call29, ptr %fe, align 8
  %get_i2c_adapter = getelementptr inbounds %struct.rtl28xxu_dev, ptr %3, i32 0, i32 13, i32 0, i32 3
  %34 = ptrtoint ptr %get_i2c_adapter to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %get_i2c_adapter, align 4
  %call30 = call ptr %35(ptr noundef nonnull %call21) #6
  %demod_i2c_adapter = getelementptr inbounds %struct.rtl28xxu_dev, ptr %3, i32 0, i32 5
  %36 = ptrtoint ptr %demod_i2c_adapter to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call30, ptr %demod_i2c_adapter, align 4
  %i2c_client_demod = getelementptr inbounds %struct.rtl28xxu_dev, ptr %3, i32 0, i32 8
  %37 = ptrtoint ptr %i2c_client_demod to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call21, ptr %i2c_client_demod, align 4
  %38 = ptrtoint ptr %fe to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %fe, align 8
  %callback = getelementptr inbounds %struct.dvb_frontend, ptr %39, i32 0, i32 9
  %40 = ptrtoint ptr %callback to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr @rtl2832u_frontend_callback, ptr %callback, align 4
  %slave_demod = getelementptr inbounds %struct.rtl28xxu_dev, ptr %3, i32 0, i32 12
  %41 = ptrtoint ptr %slave_demod to i32
  call void @__asan_load1_noabort(i32 %41)
  %bf.load = load i8, ptr %slave_demod, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %bf.load)
  %tobool33.not = icmp ult i8 %bf.load, 32
  br i1 %tobool33.not, label %if.end28.cleanup202_crit_edge, label %if.then34

if.end28.cleanup202_crit_edge:                    ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup202

if.then34:                                        ; preds = %if.end28
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %info) #6
  %42 = call ptr @memset(ptr %info, i32 0, i32 56)
  %bf.lshr37 = lshr i8 %bf.load, 5
  %trunc = trunc i8 %bf.lshr37 to i3
  %43 = zext i3 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %43, ptr @__sancov_gen_cov_switch_values.196)
  switch i3 %trunc, label %if.else140 [
    i3 1, label %if.then40
    i3 2, label %if.then69
    i3 -4, label %if.then104
  ]

if.then40:                                        ; preds = %if.then34
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %mn88472_config) #6
  %44 = getelementptr inbounds i8, ptr %mn88472_config, i32 12
  %45 = call ptr @memset(ptr %44, i32 0, i32 12)
  %arrayidx42 = getelementptr %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 14, i32 1
  %fe43 = getelementptr inbounds %struct.mn88472_config, ptr %mn88472_config, i32 0, i32 4
  %46 = ptrtoint ptr %fe43 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %arrayidx42, ptr %fe43, align 4
  %i2c_wr_max = getelementptr inbounds %struct.mn88472_config, ptr %mn88472_config, i32 0, i32 3
  %47 = ptrtoint ptr %i2c_wr_max to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 22, ptr %i2c_wr_max, align 4
  %call46 = call i32 @strscpy(ptr noundef nonnull %info, ptr noundef nonnull @.str.125, i32 noundef 20) #6
  %48 = ptrtoint ptr %mn88472_config to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 20500000, ptr %mn88472_config, align 4
  %ts_mode = getelementptr inbounds %struct.mn88472_config, ptr %mn88472_config, i32 0, i32 1
  %49 = ptrtoint ptr %ts_mode to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 0, ptr %ts_mode, align 4
  %ts_clock = getelementptr inbounds %struct.mn88472_config, ptr %mn88472_config, i32 0, i32 2
  %50 = ptrtoint ptr %ts_clock to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 1, ptr %ts_clock, align 4
  %addr47 = getelementptr inbounds %struct.i2c_board_info, ptr %info, i32 0, i32 2
  %51 = ptrtoint ptr %addr47 to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 24, ptr %addr47, align 2
  %platform_data48 = getelementptr inbounds %struct.i2c_board_info, ptr %info, i32 0, i32 4
  %52 = ptrtoint ptr %platform_data48 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %mn88472_config, ptr %platform_data48, align 4
  %call51 = call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull %info) #6
  %call53 = call ptr @i2c_new_client_device(ptr noundef %i2c_adap, ptr noundef nonnull %info) #6
  %tobool.not.i.i280 = icmp eq ptr %call53, null
  %cmp.i.i281 = icmp ugt ptr %call53, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i282 = or i1 %tobool.not.i.i280, %cmp.i.i281
  br i1 %spec.select.i.i282, label %if.then40.cleanup.thread_crit_edge, label %i2c_client_has_driver.exit286

if.then40.cleanup.thread_crit_edge:               ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.thread

i2c_client_has_driver.exit286:                    ; preds = %if.then40
  %driver.i283 = getelementptr inbounds %struct.i2c_client, ptr %call53, i32 0, i32 4, i32 6
  %53 = ptrtoint ptr %driver.i283 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %driver.i283, align 4
  %tobool.i284.not = icmp eq ptr %54, null
  br i1 %tobool.i284.not, label %i2c_client_has_driver.exit286.cleanup.thread_crit_edge, label %if.end56

i2c_client_has_driver.exit286.cleanup.thread_crit_edge: ; preds = %i2c_client_has_driver.exit286
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.thread

if.end56:                                         ; preds = %i2c_client_has_driver.exit286
  %55 = ptrtoint ptr %driver.i283 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %driver.i283, align 4
  %owner59 = getelementptr inbounds %struct.device_driver, ptr %56, i32 0, i32 2
  %57 = ptrtoint ptr %owner59 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %owner59, align 4
  %call60 = call zeroext i1 @try_module_get(ptr noundef %58) #6
  br i1 %call60, label %cleanup, label %if.then61

if.then61:                                        ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #8
  call void @i2c_unregister_device(ptr noundef nonnull %call53) #6
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.then61, %i2c_client_has_driver.exit286.cleanup.thread_crit_edge, %if.then40.cleanup.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %mn88472_config) #6
  br label %err_slave_demod_failed

cleanup:                                          ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #8
  %i2c_client_slave_demod = getelementptr inbounds %struct.rtl28xxu_dev, ptr %3, i32 0, i32 10
  %59 = ptrtoint ptr %i2c_client_slave_demod to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %call53, ptr %i2c_client_slave_demod, align 4
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %mn88472_config) #6
  br label %cleanup176

if.then69:                                        ; preds = %if.then34
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %mn88473_config) #6
  %60 = ptrtoint ptr %mn88473_config to i32
  call void @__asan_store8_noabort(i32 %60)
  store i64 0, ptr %mn88473_config, align 8
  %arrayidx71 = getelementptr %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 14, i32 1
  %fe72 = getelementptr inbounds %struct.mn88473_config, ptr %mn88473_config, i32 0, i32 2
  %61 = ptrtoint ptr %fe72 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %arrayidx71, ptr %fe72, align 8
  store i16 22, ptr %mn88473_config, align 8
  %call76 = call i32 @strscpy(ptr noundef nonnull %info, ptr noundef nonnull @.str.126, i32 noundef 20) #6
  %addr77 = getelementptr inbounds %struct.i2c_board_info, ptr %info, i32 0, i32 2
  %62 = ptrtoint ptr %addr77 to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 24, ptr %addr77, align 2
  %platform_data78 = getelementptr inbounds %struct.i2c_board_info, ptr %info, i32 0, i32 4
  %63 = ptrtoint ptr %platform_data78 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %mn88473_config, ptr %platform_data78, align 4
  %call81 = call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull %info) #6
  %call83 = call ptr @i2c_new_client_device(ptr noundef %i2c_adap, ptr noundef nonnull %info) #6
  %tobool.not.i.i287 = icmp eq ptr %call83, null
  %cmp.i.i288 = icmp ugt ptr %call83, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i289 = or i1 %tobool.not.i.i287, %cmp.i.i288
  br i1 %spec.select.i.i289, label %if.then69.cleanup94.thread_crit_edge, label %i2c_client_has_driver.exit293

if.then69.cleanup94.thread_crit_edge:             ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup94.thread

i2c_client_has_driver.exit293:                    ; preds = %if.then69
  %driver.i290 = getelementptr inbounds %struct.i2c_client, ptr %call83, i32 0, i32 4, i32 6
  %64 = ptrtoint ptr %driver.i290 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %driver.i290, align 4
  %tobool.i291.not = icmp eq ptr %65, null
  br i1 %tobool.i291.not, label %i2c_client_has_driver.exit293.cleanup94.thread_crit_edge, label %if.end86

i2c_client_has_driver.exit293.cleanup94.thread_crit_edge: ; preds = %i2c_client_has_driver.exit293
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup94.thread

if.end86:                                         ; preds = %i2c_client_has_driver.exit293
  %66 = ptrtoint ptr %driver.i290 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %driver.i290, align 4
  %owner89 = getelementptr inbounds %struct.device_driver, ptr %67, i32 0, i32 2
  %68 = ptrtoint ptr %owner89 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %owner89, align 4
  %call90 = call zeroext i1 @try_module_get(ptr noundef %69) #6
  br i1 %call90, label %cleanup94, label %if.then91

if.then91:                                        ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #8
  call void @i2c_unregister_device(ptr noundef nonnull %call83) #6
  br label %cleanup94.thread

cleanup94.thread:                                 ; preds = %if.then91, %i2c_client_has_driver.exit293.cleanup94.thread_crit_edge, %if.then69.cleanup94.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %mn88473_config) #6
  br label %err_slave_demod_failed

cleanup94:                                        ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #8
  %i2c_client_slave_demod93 = getelementptr inbounds %struct.rtl28xxu_dev, ptr %3, i32 0, i32 10
  %70 = ptrtoint ptr %i2c_client_slave_demod93 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %call83, ptr %i2c_client_slave_demod93, align 4
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %mn88473_config) #6
  br label %cleanup176

if.then104:                                       ; preds = %if.then34
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %cxd2837er_config) #6
  %71 = ptrtoint ptr %cxd2837er_config to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 0, ptr %cxd2837er_config, align 4
  store i8 -40, ptr %cxd2837er_config, align 4
  %xtal105 = getelementptr inbounds %struct.cxd2841er_config, ptr %cxd2837er_config, i32 0, i32 1
  %72 = ptrtoint ptr %xtal105 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 0, ptr %xtal105, align 4
  %flags = getelementptr inbounds %struct.cxd2841er_config, ptr %cxd2837er_config, i32 0, i32 2
  %73 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 214, ptr %flags, align 4
  %call106 = call ptr @__symbol_get(ptr noundef nonnull @.str.127) #6
  %tobool107.not = icmp eq ptr %call106, null
  br i1 %tobool107.not, label %cond.end, label %if.then104.if.then111_crit_edge

if.then104.if.then111_crit_edge:                  ; preds = %if.then104
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then111

cond.end:                                         ; preds = %if.then104
  %call108 = call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.128) #6
  %call109 = call ptr @__symbol_get(ptr noundef nonnull @.str.127) #6
  %tobool110.not = icmp eq ptr %call109, null
  br i1 %tobool110.not, label %do.end121, label %cond.end.if.then111_crit_edge

cond.end.if.then111_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then111

if.then111:                                       ; preds = %cond.end.if.then111_crit_edge, %if.then104.if.then111_crit_edge
  %cond308 = phi ptr [ %call109, %cond.end.if.then111_crit_edge ], [ %call106, %if.then104.if.then111_crit_edge ]
  %call113 = call ptr %cond308(ptr noundef nonnull %cxd2837er_config, ptr noundef %i2c_adap) #6
  %cmp114 = icmp eq ptr %call113, null
  br i1 %cmp114, label %if.then116, label %cleanup137

if.then116:                                       ; preds = %if.then111
  call void @__sanitizer_cov_trace_pc() #8
  call void @__symbol_put(ptr noundef nonnull @.str.127) #6
  br label %cleanup137.thread

do.end121:                                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  %call123 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.130) #9
  br label %cleanup137.thread

cleanup137.thread:                                ; preds = %do.end121, %if.then116
  %arrayidx127310 = getelementptr %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 14, i32 1
  %74 = ptrtoint ptr %arrayidx127310 to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr null, ptr %arrayidx127310, align 4
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %cxd2837er_config) #6
  br label %err_slave_demod_failed

cleanup137:                                       ; preds = %if.then111
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx127 = getelementptr %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 14, i32 1
  %75 = ptrtoint ptr %arrayidx127 to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %call113, ptr %arrayidx127, align 4
  %id135 = getelementptr inbounds %struct.dvb_frontend, ptr %call113, i32 0, i32 10
  %76 = ptrtoint ptr %id135 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 1, ptr %id135, align 4
  %i2c_client_slave_demod136 = getelementptr inbounds %struct.rtl28xxu_dev, ptr %3, i32 0, i32 10
  %77 = ptrtoint ptr %i2c_client_slave_demod136 to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr null, ptr %i2c_client_slave_demod136, align 4
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %cxd2837er_config) #6
  br label %cleanup176

if.else140:                                       ; preds = %if.then34
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %si2168_config) #6
  %78 = getelementptr inbounds i8, ptr %si2168_config, i32 8
  %79 = ptrtoint ptr %78 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 0, ptr %78, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %adapter) #6
  %80 = ptrtoint ptr %adapter to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr inttoptr (i32 -1 to ptr), ptr %adapter, align 4, !annotation !421
  %i2c_adapter = getelementptr inbounds %struct.si2168_config, ptr %si2168_config, i32 0, i32 1
  %81 = ptrtoint ptr %i2c_adapter to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %adapter, ptr %i2c_adapter, align 4
  %arrayidx142 = getelementptr %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 14, i32 1
  %82 = ptrtoint ptr %si2168_config to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %arrayidx142, ptr %si2168_config, align 4
  %ts_mode144 = getelementptr inbounds %struct.si2168_config, ptr %si2168_config, i32 0, i32 2
  %83 = ptrtoint ptr %ts_mode144 to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 3, ptr %ts_mode144, align 4
  %ts_clock_inv = getelementptr inbounds %struct.si2168_config, ptr %si2168_config, i32 0, i32 3
  %84 = ptrtoint ptr %ts_clock_inv to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 64, ptr %ts_clock_inv, align 1
  %call151 = call i32 @strscpy(ptr noundef nonnull %info, ptr noundef nonnull @.str.132, i32 noundef 20) #6
  %addr152 = getelementptr inbounds %struct.i2c_board_info, ptr %info, i32 0, i32 2
  %85 = ptrtoint ptr %addr152 to i32
  call void @__asan_store2_noabort(i32 %85)
  store i16 100, ptr %addr152, align 2
  %platform_data153 = getelementptr inbounds %struct.i2c_board_info, ptr %info, i32 0, i32 4
  %86 = ptrtoint ptr %platform_data153 to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %si2168_config, ptr %platform_data153, align 4
  %call156 = call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull %info) #6
  %call158 = call ptr @i2c_new_client_device(ptr noundef %i2c_adap, ptr noundef nonnull %info) #6
  %tobool.not.i.i294 = icmp eq ptr %call158, null
  %cmp.i.i295 = icmp ugt ptr %call158, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i296 = or i1 %tobool.not.i.i294, %cmp.i.i295
  br i1 %spec.select.i.i296, label %if.else140.cleanup169.thread_crit_edge, label %i2c_client_has_driver.exit300

if.else140.cleanup169.thread_crit_edge:           ; preds = %if.else140
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup169.thread

i2c_client_has_driver.exit300:                    ; preds = %if.else140
  %driver.i297 = getelementptr inbounds %struct.i2c_client, ptr %call158, i32 0, i32 4, i32 6
  %87 = ptrtoint ptr %driver.i297 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %driver.i297, align 4
  %tobool.i298.not = icmp eq ptr %88, null
  br i1 %tobool.i298.not, label %i2c_client_has_driver.exit300.cleanup169.thread_crit_edge, label %if.end161

i2c_client_has_driver.exit300.cleanup169.thread_crit_edge: ; preds = %i2c_client_has_driver.exit300
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup169.thread

if.end161:                                        ; preds = %i2c_client_has_driver.exit300
  %89 = ptrtoint ptr %driver.i297 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %driver.i297, align 4
  %owner164 = getelementptr inbounds %struct.device_driver, ptr %90, i32 0, i32 2
  %91 = ptrtoint ptr %owner164 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %owner164, align 4
  %call165 = call zeroext i1 @try_module_get(ptr noundef %92) #6
  br i1 %call165, label %cleanup169, label %if.then166

if.then166:                                       ; preds = %if.end161
  call void @__sanitizer_cov_trace_pc() #8
  call void @i2c_unregister_device(ptr noundef nonnull %call158) #6
  br label %cleanup169.thread

cleanup169.thread:                                ; preds = %if.then166, %i2c_client_has_driver.exit300.cleanup169.thread_crit_edge, %if.else140.cleanup169.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %adapter) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %si2168_config) #6
  br label %err_slave_demod_failed

cleanup169:                                       ; preds = %if.end161
  call void @__sanitizer_cov_trace_pc() #8
  %i2c_client_slave_demod168 = getelementptr inbounds %struct.rtl28xxu_dev, ptr %3, i32 0, i32 10
  %93 = ptrtoint ptr %i2c_client_slave_demod168 to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %call158, ptr %i2c_client_slave_demod168, align 4
  %new_i2c_write = getelementptr inbounds %struct.rtl28xxu_dev, ptr %3, i32 0, i32 7
  %94 = ptrtoint ptr %new_i2c_write to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 1, ptr %new_i2c_write, align 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %adapter) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %si2168_config) #6
  br label %cleanup176

cleanup176:                                       ; preds = %cleanup169, %cleanup137, %cleanup94, %cleanup
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %info) #6
  br label %cleanup202

do.body180:                                       ; preds = %if.then27, %i2c_client_has_driver.exit.do.body180_crit_edge, %sw.epilog.do.body180_crit_edge, %do.end14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtl2832u_frontend_attach.__UNIQUE_ID_ddebug415, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtl2832u_frontend_attach, %if.then192)) #6
          to label %cleanup202 [label %if.then192], !srcloc !420

if.then192:                                       ; preds = %do.body180
  call void @__sanitizer_cov_trace_pc() #8
  %intf193 = getelementptr inbounds %struct.dvb_usb_device, ptr %add.ptr, i32 0, i32 4
  %95 = ptrtoint ptr %intf193 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %intf193, align 8
  %dev194 = getelementptr inbounds %struct.usb_interface, ptr %96, i32 0, i32 7
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rtl2832u_frontend_attach.__UNIQUE_ID_ddebug415, ptr noundef %dev194, ptr noundef nonnull @.str.79, i32 noundef -19) #6
  br label %cleanup202

err_slave_demod_failed:                           ; preds = %cleanup169.thread, %cleanup137.thread, %cleanup94.thread, %cleanup.thread
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %info) #6
  %97 = ptrtoint ptr %slave_demod to i32
  call void @__asan_load1_noabort(i32 %97)
  %bf.load199 = load i8, ptr %slave_demod, align 4
  %bf.clear200 = and i8 %bf.load199, 31
  store i8 %bf.clear200, ptr %slave_demod, align 4
  br label %cleanup202

cleanup202:                                       ; preds = %err_slave_demod_failed, %if.then192, %do.body180, %cleanup176, %if.end28.cleanup202_crit_edge
  %retval.0 = phi i32 [ 0, %err_slave_demod_failed ], [ 0, %cleanup176 ], [ 0, %if.end28.cleanup202_crit_edge ], [ -19, %if.then192 ], [ -19, %do.body180 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %board_info) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__request_module(i1 noundef zeroext, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @i2c_new_client_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtl2832u_frontend_callback(ptr nocapture noundef readonly %adapter_priv, i32 noundef %component, i32 noundef %cmd, i32 noundef %arg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %parent1 = getelementptr inbounds %struct.i2c_adapter, ptr %adapter_priv, i32 0, i32 9, i32 1
  %0 = ptrtoint ptr %parent1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent1, align 8
  %cmp.not = icmp eq ptr %1, null
  br i1 %cmp.not, label %entry.cleanup_crit_edge, label %land.lhs.true

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true:                                    ; preds = %entry
  %type = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %type, align 4
  %cmp3 = icmp eq ptr %3, @i2c_adapter_type
  br i1 %cmp3, label %if.then, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then:                                          ; preds = %land.lhs.true
  %driver_data.i.i = getelementptr i8, ptr %1, i32 164
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %priv = getelementptr inbounds %struct.dvb_usb_device, ptr %5, i32 0, i32 15
  %6 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %priv, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtl2832u_frontend_callback.__UNIQUE_ID_ddebug413, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtl2832u_frontend_callback, %if.then8)) #6
          to label %do.end [label %if.then8], !srcloc !420

if.then8:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %intf = getelementptr inbounds %struct.dvb_usb_device, ptr %5, i32 0, i32 4
  %8 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %intf, align 8
  %dev9 = getelementptr inbounds %struct.usb_interface, ptr %9, i32 0, i32 7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rtl2832u_frontend_callback.__UNIQUE_ID_ddebug413, ptr noundef %dev9, ptr noundef nonnull @.str.134, i32 noundef %component, i32 noundef %cmd, i32 noundef %arg) #6
  br label %do.end

do.end:                                           ; preds = %if.then8, %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %component)
  %cond = icmp eq i32 %component, 0
  br i1 %cond, label %sw.bb, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %do.end
  %tuner = getelementptr inbounds %struct.rtl28xxu_dev, ptr %7, i32 0, i32 2
  %10 = ptrtoint ptr %tuner to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %tuner, align 1
  %12 = zext i8 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.197)
  switch i8 %11, label %sw.bb.cleanup_crit_edge [
    i8 38, label %sw.bb11
    i8 36, label %sw.bb13
  ]

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb11:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %call12 = tail call fastcc i32 @rtl2832u_fc0012_tuner_callback(ptr noundef %5, i32 noundef %cmd, i32 noundef %arg)
  br label %cleanup

sw.bb13:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %call14 = tail call fastcc i32 @rtl2832u_tua9001_tuner_callback(ptr noundef %5, i32 noundef %cmd, i32 noundef %arg)
  br label %cleanup

cleanup:                                          ; preds = %sw.bb13, %sw.bb11, %sw.bb.cleanup_crit_edge, %do.end.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call14, %sw.bb13 ], [ %call12, %sw.bb11 ], [ -22, %land.lhs.true.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ 0, %sw.bb.cleanup_crit_edge ], [ 0, %do.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__symbol_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__symbol_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rtl2832u_fc0012_tuner_callback(ptr noundef %d, i32 noundef %cmd, i32 noundef %arg) unnamed_addr #2 align 64 {
entry:
  %req.i.i47 = alloca %struct.rtl28xxu_req, align 8
  %val.addr.i = alloca i8, align 1
  %req.i.i = alloca %struct.rtl28xxu_req, align 8
  %val = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val) #6
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %val, align 1, !annotation !421
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtl2832u_fc0012_tuner_callback.__UNIQUE_ID_ddebug409, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtl2832u_fc0012_tuner_callback, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !420

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %intf = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 4
  %1 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %intf, align 8
  %dev = getelementptr inbounds %struct.usb_interface, ptr %2, i32 0, i32 7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rtl2832u_fc0012_tuner_callback.__UNIQUE_ID_ddebug409, ptr noundef %dev, ptr noundef nonnull @.str.136, i32 noundef %cmd, i32 noundef %arg) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cmd)
  %cond = icmp eq i32 %cmd, 0
  br i1 %cond, label %sw.bb, label %do.end.do.body17_crit_edge

do.end.do.body17_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body17

sw.bb:                                            ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %req.i.i) #6
  %3 = ptrtoint ptr %req.i.i to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 3459048187820638207, ptr %req.i.i, align 8
  %data.i.i = getelementptr inbounds %struct.rtl28xxu_req, ptr %req.i.i, i32 0, i32 3
  %4 = ptrtoint ptr %data.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %val, ptr %data.i.i, align 8
  %call.i.i = call fastcc i32 @rtl28xxu_ctrl_msg(ptr noundef %d, ptr noundef nonnull %req.i.i) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %req.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool4.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool4.not, label %if.end6, label %sw.bb.do.body17_crit_edge

sw.bb.do.body17_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body17

if.end6:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %arg)
  %tobool7.not = icmp eq i32 %arg, 0
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %val, align 1
  %7 = and i8 %6, -65
  %masksel = select i1 %tobool7.not, i8 64, i8 0
  %storemerge = or i8 %7, %masksel
  store i8 %storemerge, ptr %val, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i)
  %8 = ptrtoint ptr %val.addr.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %storemerge, ptr %val.addr.i, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %req.i.i47) #6
  %9 = ptrtoint ptr %req.i.i47 to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 3459048256540114943, ptr %req.i.i47, align 8
  %data.i.i49 = getelementptr inbounds %struct.rtl28xxu_req, ptr %req.i.i47, i32 0, i32 3
  %10 = ptrtoint ptr %data.i.i49 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %val.addr.i, ptr %data.i.i49, align 8
  %call.i.i50 = call fastcc i32 @rtl28xxu_ctrl_msg(ptr noundef %d, ptr noundef nonnull %req.i.i47) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %req.i.i47) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i50)
  %tobool14.not = icmp eq i32 %call.i.i50, 0
  br i1 %tobool14.not, label %if.end6.cleanup_crit_edge, label %if.end6.do.body17_crit_edge

if.end6.do.body17_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body17

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body17:                                        ; preds = %if.end6.do.body17_crit_edge, %sw.bb.do.body17_crit_edge, %do.end.do.body17_crit_edge
  %ret.0 = phi i32 [ %call.i.i, %sw.bb.do.body17_crit_edge ], [ %call.i.i50, %if.end6.do.body17_crit_edge ], [ -22, %do.end.do.body17_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtl2832u_fc0012_tuner_callback.__UNIQUE_ID_ddebug410, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtl2832u_fc0012_tuner_callback, %if.then29)) #6
          to label %cleanup [label %if.then29], !srcloc !420

if.then29:                                        ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #8
  %intf30 = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 4
  %11 = ptrtoint ptr %intf30 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %intf30, align 8
  %dev31 = getelementptr inbounds %struct.usb_interface, ptr %12, i32 0, i32 7
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rtl2832u_fc0012_tuner_callback.__UNIQUE_ID_ddebug410, ptr noundef %dev31, ptr noundef nonnull @.str.79, i32 noundef %ret.0) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then29, %do.body17, %if.end6.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end6.cleanup_crit_edge ], [ %ret.0, %if.then29 ], [ %ret.0, %do.body17 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rtl2832u_tua9001_tuner_callback(ptr noundef %d, i32 noundef %cmd, i32 noundef %arg) unnamed_addr #2 align 64 {
entry:
  %req.i.i25.i53 = alloca %struct.rtl28xxu_req, align 8
  %val.addr.i.i54 = alloca i8, align 1
  %req.i.i.i55 = alloca %struct.rtl28xxu_req, align 8
  %tmp.i56 = alloca i8, align 1
  %req.i.i25.i = alloca %struct.rtl28xxu_req, align 8
  %val.addr.i.i = alloca i8, align 1
  %req.i.i.i = alloca %struct.rtl28xxu_req, align 8
  %tmp.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtl2832u_tua9001_tuner_callback.__UNIQUE_ID_ddebug411, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtl2832u_tua9001_tuner_callback, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !420

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %intf = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 4
  %0 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %intf, align 8
  %dev = getelementptr inbounds %struct.usb_interface, ptr %1, i32 0, i32 7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rtl2832u_tua9001_tuner_callback.__UNIQUE_ID_ddebug411, ptr noundef %dev, ptr noundef nonnull @.str.136, i32 noundef %cmd, i32 noundef %arg) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %2 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.198)
  switch i32 %cmd, label %do.end.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb10
  ]

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i) #6
  %3 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -1, ptr %tmp.i, align 1, !annotation !421
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %req.i.i.i) #6
  %4 = ptrtoint ptr %req.i.i.i to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 3459048187820638207, ptr %req.i.i.i, align 8
  %data.i.i.i = getelementptr inbounds %struct.rtl28xxu_req, ptr %req.i.i.i, i32 0, i32 3
  %5 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %tmp.i, ptr %data.i.i.i, align 8
  %call.i.i.i = call fastcc i32 @rtl28xxu_ctrl_msg(ptr noundef %d, ptr noundef nonnull %req.i.i.i) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %req.i.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i, label %rtl28xxu_wr_reg_mask.exit, label %rtl28xxu_wr_reg_mask.exit.thread

rtl28xxu_wr_reg_mask.exit.thread:                 ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i) #6
  br label %do.body19

rtl28xxu_wr_reg_mask.exit:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %arg)
  %tobool3.not = icmp eq i32 %arg, 0
  %. = select i1 %tobool3.not, i8 0, i8 16
  %6 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %tmp.i, align 1
  %and8.i = and i8 %7, -17
  store i8 %and8.i, ptr %tmp.i, align 1
  %or24.i = or i8 %and8.i, %.
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i.i) #6
  %8 = ptrtoint ptr %val.addr.i.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %or24.i, ptr %val.addr.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %req.i.i25.i) #6
  %9 = ptrtoint ptr %req.i.i25.i to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 3459048256540114943, ptr %req.i.i25.i, align 8
  %data.i.i34.i = getelementptr inbounds %struct.rtl28xxu_req, ptr %req.i.i25.i, i32 0, i32 3
  %10 = ptrtoint ptr %data.i.i34.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %val.addr.i.i, ptr %data.i.i34.i, align 8
  %call.i.i35.i = call fastcc i32 @rtl28xxu_ctrl_msg(ptr noundef %d, ptr noundef nonnull %req.i.i25.i) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %req.i.i25.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i35.i)
  %tobool7.not = icmp eq i32 %call.i.i35.i, 0
  br i1 %tobool7.not, label %rtl28xxu_wr_reg_mask.exit.cleanup_crit_edge, label %rtl28xxu_wr_reg_mask.exit.do.body19_crit_edge

rtl28xxu_wr_reg_mask.exit.do.body19_crit_edge:    ; preds = %rtl28xxu_wr_reg_mask.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body19

rtl28xxu_wr_reg_mask.exit.cleanup_crit_edge:      ; preds = %rtl28xxu_wr_reg_mask.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb10:                                          ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i56) #6
  %11 = ptrtoint ptr %tmp.i56 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 -1, ptr %tmp.i56, align 1, !annotation !421
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %req.i.i.i55) #6
  %12 = ptrtoint ptr %req.i.i.i55 to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 3459048187820638207, ptr %req.i.i.i55, align 8
  %data.i.i.i58 = getelementptr inbounds %struct.rtl28xxu_req, ptr %req.i.i.i55, i32 0, i32 3
  %13 = ptrtoint ptr %data.i.i.i58 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %tmp.i56, ptr %data.i.i.i58, align 8
  %call.i.i.i59 = call fastcc i32 @rtl28xxu_ctrl_msg(ptr noundef %d, ptr noundef nonnull %req.i.i.i55) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %req.i.i.i55) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i59)
  %tobool.not.i60 = icmp eq i32 %call.i.i.i59, 0
  br i1 %tobool.not.i60, label %rtl28xxu_wr_reg_mask.exit68, label %rtl28xxu_wr_reg_mask.exit68.thread

rtl28xxu_wr_reg_mask.exit68.thread:               ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i56) #6
  br label %do.body19

rtl28xxu_wr_reg_mask.exit68:                      ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %arg)
  %tobool11.not = icmp eq i32 %arg, 0
  %.48 = select i1 %tobool11.not, i8 0, i8 2
  %14 = ptrtoint ptr %tmp.i56 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %tmp.i56, align 1
  %and8.i61 = and i8 %15, -3
  store i8 %and8.i61, ptr %tmp.i56, align 1
  %or24.i62 = or i8 %and8.i61, %.48
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i.i54) #6
  %16 = ptrtoint ptr %val.addr.i.i54 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %or24.i62, ptr %val.addr.i.i54, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %req.i.i25.i53) #6
  %17 = ptrtoint ptr %req.i.i25.i53 to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 3459048256540114943, ptr %req.i.i25.i53, align 8
  %data.i.i34.i65 = getelementptr inbounds %struct.rtl28xxu_req, ptr %req.i.i25.i53, i32 0, i32 3
  %18 = ptrtoint ptr %data.i.i34.i65 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %val.addr.i.i54, ptr %data.i.i34.i65, align 8
  %call.i.i35.i66 = call fastcc i32 @rtl28xxu_ctrl_msg(ptr noundef %d, ptr noundef nonnull %req.i.i25.i53) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %req.i.i25.i53) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i.i54) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i56) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i35.i66)
  %tobool16.not = icmp eq i32 %call.i.i35.i66, 0
  br i1 %tobool16.not, label %rtl28xxu_wr_reg_mask.exit68.cleanup_crit_edge, label %rtl28xxu_wr_reg_mask.exit68.do.body19_crit_edge

rtl28xxu_wr_reg_mask.exit68.do.body19_crit_edge:  ; preds = %rtl28xxu_wr_reg_mask.exit68
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body19

rtl28xxu_wr_reg_mask.exit68.cleanup_crit_edge:    ; preds = %rtl28xxu_wr_reg_mask.exit68
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body19:                                        ; preds = %rtl28xxu_wr_reg_mask.exit68.do.body19_crit_edge, %rtl28xxu_wr_reg_mask.exit68.thread, %rtl28xxu_wr_reg_mask.exit.do.body19_crit_edge, %rtl28xxu_wr_reg_mask.exit.thread
  %ret.0 = phi i32 [ %call.i.i35.i66, %rtl28xxu_wr_reg_mask.exit68.do.body19_crit_edge ], [ %call.i.i35.i, %rtl28xxu_wr_reg_mask.exit.do.body19_crit_edge ], [ %call.i.i.i, %rtl28xxu_wr_reg_mask.exit.thread ], [ %call.i.i.i59, %rtl28xxu_wr_reg_mask.exit68.thread ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtl2832u_tua9001_tuner_callback.__UNIQUE_ID_ddebug412, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtl2832u_tua9001_tuner_callback, %if.then31)) #6
          to label %cleanup [label %if.then31], !srcloc !420

if.then31:                                        ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #8
  %intf32 = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 4
  %19 = ptrtoint ptr %intf32 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %intf32, align 8
  %dev33 = getelementptr inbounds %struct.usb_interface, ptr %20, i32 0, i32 7
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rtl2832u_tua9001_tuner_callback.__UNIQUE_ID_ddebug412, ptr noundef %dev33, ptr noundef nonnull @.str.79, i32 noundef %ret.0) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then31, %do.body19, %rtl28xxu_wr_reg_mask.exit68.cleanup_crit_edge, %rtl28xxu_wr_reg_mask.exit.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %rtl28xxu_wr_reg_mask.exit68.cleanup_crit_edge ], [ 0, %rtl28xxu_wr_reg_mask.exit.cleanup_crit_edge ], [ 0, %do.end.cleanup_crit_edge ], [ %ret.0, %if.then31 ], [ %ret.0, %do.body19 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rtl2831u_tuner_attach(ptr nocapture noundef readonly %adap) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
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
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtl2831u_tuner_attach.__UNIQUE_ID_ddebug417, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtl2831u_tuner_attach, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !420

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %intf = getelementptr inbounds %struct.dvb_usb_device, ptr %add.ptr, i32 0, i32 4
  %4 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %intf, align 8
  %dev4 = getelementptr inbounds %struct.usb_interface, ptr %5, i32 0, i32 7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rtl2831u_tuner_attach.__UNIQUE_ID_ddebug417, ptr noundef %dev4, ptr noundef nonnull @.str.74) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %tuner = getelementptr inbounds %struct.rtl28xxu_dev, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %tuner to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %tuner, align 1
  %8 = zext i8 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.199)
  switch i8 %7, label %sw.default [
    i8 16, label %sw.bb
    i8 17, label %sw.bb24
    i8 18, label %sw.bb53
  ]

sw.bb:                                            ; preds = %do.end
  %call6 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.140) #6
  %tobool7.not = icmp eq ptr %call6, null
  br i1 %tobool7.not, label %cond.end, label %sw.bb.if.then11_crit_edge

sw.bb.if.then11_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then11

cond.end:                                         ; preds = %sw.bb
  %call8 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.141) #6
  %call9 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.140) #6
  %tobool10.not = icmp eq ptr %call9, null
  br i1 %tobool10.not, label %do.end19, label %cond.end.if.then11_crit_edge

cond.end.if.then11_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then11

if.then11:                                        ; preds = %cond.end.if.then11_crit_edge, %sw.bb.if.then11_crit_edge
  %cond138 = phi ptr [ %call9, %cond.end.if.then11_crit_edge ], [ %call6, %sw.bb.if.then11_crit_edge ]
  %fe12 = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 14
  %9 = ptrtoint ptr %fe12 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %fe12, align 8
  %demod_i2c_adapter = getelementptr inbounds %struct.rtl28xxu_dev, ptr %3, i32 0, i32 5
  %11 = ptrtoint ptr %demod_i2c_adapter to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %demod_i2c_adapter, align 4
  %call13 = tail call ptr %cond138(ptr noundef %10, ptr noundef %12, ptr noundef nonnull @rtl28xxu_qt1010_config) #6
  %cmp = icmp eq ptr %call13, null
  br i1 %cmp, label %if.then15, label %if.then11.cleanup_crit_edge

if.then11.cleanup_crit_edge:                      ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then15:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @__symbol_put(ptr noundef nonnull @.str.140) #6
  br label %if.then91

do.end19:                                         ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  %call21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.142) #9
  br label %if.then91

sw.bb24:                                          ; preds = %do.end
  %call27 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.143) #6
  %tobool28.not = icmp eq ptr %call27, null
  br i1 %tobool28.not, label %cond.end33, label %sw.bb24.if.then36_crit_edge

sw.bb24.if.then36_crit_edge:                      ; preds = %sw.bb24
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then36

cond.end33:                                       ; preds = %sw.bb24
  %call31 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.144) #6
  %call32 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.143) #6
  %tobool35.not = icmp eq ptr %call32, null
  br i1 %tobool35.not, label %do.end48, label %cond.end33.if.then36_crit_edge

cond.end33.if.then36_crit_edge:                   ; preds = %cond.end33
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then36

if.then36:                                        ; preds = %cond.end33.if.then36_crit_edge, %sw.bb24.if.then36_crit_edge
  %cond34141 = phi ptr [ %call32, %cond.end33.if.then36_crit_edge ], [ %call27, %sw.bb24.if.then36_crit_edge ]
  %fe37 = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 14
  %13 = ptrtoint ptr %fe37 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %fe37, align 8
  %demod_i2c_adapter39 = getelementptr inbounds %struct.rtl28xxu_dev, ptr %3, i32 0, i32 5
  %15 = ptrtoint ptr %demod_i2c_adapter39 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %demod_i2c_adapter39, align 4
  %call40 = tail call ptr %cond34141(ptr noundef %14, ptr noundef %16, ptr noundef nonnull @rtl28xxu_mt2060_config, i16 noundef zeroext 1220) #6
  %cmp41 = icmp eq ptr %call40, null
  br i1 %cmp41, label %if.then43, label %if.then36.cleanup_crit_edge

if.then36.cleanup_crit_edge:                      ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then43:                                        ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @__symbol_put(ptr noundef nonnull @.str.143) #6
  br label %if.then91

do.end48:                                         ; preds = %cond.end33
  call void @__sanitizer_cov_trace_pc() #8
  %call50 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.146) #9
  br label %if.then91

sw.bb53:                                          ; preds = %do.end
  %call56 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.148) #6
  %tobool57.not = icmp eq ptr %call56, null
  br i1 %tobool57.not, label %cond.end62, label %sw.bb53.if.then65_crit_edge

sw.bb53.if.then65_crit_edge:                      ; preds = %sw.bb53
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then65

cond.end62:                                       ; preds = %sw.bb53
  %call60 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.149) #6
  %call61 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.148) #6
  %tobool64.not = icmp eq ptr %call61, null
  br i1 %tobool64.not, label %do.end77, label %cond.end62.if.then65_crit_edge

cond.end62.if.then65_crit_edge:                   ; preds = %cond.end62
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then65

if.then65:                                        ; preds = %cond.end62.if.then65_crit_edge, %sw.bb53.if.then65_crit_edge
  %cond63144 = phi ptr [ %call61, %cond.end62.if.then65_crit_edge ], [ %call56, %sw.bb53.if.then65_crit_edge ]
  %fe66 = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 14
  %17 = ptrtoint ptr %fe66 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %fe66, align 8
  %demod_i2c_adapter68 = getelementptr inbounds %struct.rtl28xxu_dev, ptr %3, i32 0, i32 5
  %19 = ptrtoint ptr %demod_i2c_adapter68 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %demod_i2c_adapter68, align 4
  %call69 = tail call ptr %cond63144(ptr noundef %18, ptr noundef %20, ptr noundef nonnull @rtl28xxu_mxl5005s_config) #6
  %cmp70 = icmp eq ptr %call69, null
  br i1 %cmp70, label %if.then72, label %if.then65.cleanup_crit_edge

if.then65.cleanup_crit_edge:                      ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then72:                                        ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @__symbol_put(ptr noundef nonnull @.str.148) #6
  br label %if.then91

do.end77:                                         ; preds = %cond.end62
  call void @__sanitizer_cov_trace_pc() #8
  %call79 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.151) #9
  br label %if.then91

sw.default:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %conv5 = zext i8 %7 to i32
  %intf85 = getelementptr inbounds %struct.dvb_usb_device, ptr %add.ptr, i32 0, i32 4
  %21 = ptrtoint ptr %intf85 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %intf85, align 8
  %dev86 = getelementptr inbounds %struct.usb_interface, ptr %22, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev86, ptr noundef nonnull @.str.154, i32 noundef %conv5) #9
  br label %if.then91

if.then91:                                        ; preds = %sw.default, %do.end77, %if.then72, %do.end48, %if.then43, %do.end19, %if.then15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtl2831u_tuner_attach.__UNIQUE_ID_ddebug418, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtl2831u_tuner_attach, %if.then105)) #6
          to label %cleanup [label %if.then105], !srcloc !420

if.then105:                                       ; preds = %if.then91
  call void @__sanitizer_cov_trace_pc() #8
  %intf106 = getelementptr inbounds %struct.dvb_usb_device, ptr %add.ptr, i32 0, i32 4
  %23 = ptrtoint ptr %intf106 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %intf106, align 8
  %dev107 = getelementptr inbounds %struct.usb_interface, ptr %24, i32 0, i32 7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rtl2831u_tuner_attach.__UNIQUE_ID_ddebug418, ptr noundef %dev107, ptr noundef nonnull @.str.79, i32 noundef -19) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then105, %if.then91, %if.then65.cleanup_crit_edge, %if.then36.cleanup_crit_edge, %if.then11.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %if.then105 ], [ 0, %if.then65.cleanup_crit_edge ], [ 0, %if.then36.cleanup_crit_edge ], [ 0, %if.then11.cleanup_crit_edge ], [ -19, %if.then91 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rtl2832u_tuner_attach(ptr noundef %adap) unnamed_addr #2 align 64 {
entry:
  %pdevinfo.i.i = alloca %struct.platform_device_info, align 8
  %req.i.i25.i501 = alloca %struct.rtl28xxu_req, align 8
  %val.addr.i.i502 = alloca i8, align 1
  %req.i.i.i503 = alloca %struct.rtl28xxu_req, align 8
  %tmp.i504 = alloca i8, align 1
  %req.i.i25.i = alloca %struct.rtl28xxu_req, align 8
  %val.addr.i.i = alloca i8, align 1
  %req.i.i.i = alloca %struct.rtl28xxu_req, align 8
  %tmp.i = alloca i8, align 1
  %info = alloca %struct.i2c_board_info, align 4
  %pdata = alloca %struct.rtl2832_sdr_platform_data, align 4
  %e4000_config = alloca %struct.e4000_config, align 4
  %fc2580_pdata = alloca %struct.fc2580_platform_data, align 4
  %board_info = alloca %struct.i2c_board_info, align 4
  %tua9001_pdata = alloca %struct.tua9001_platform_data, align 4
  %board_info116 = alloca %struct.i2c_board_info, align 4
  %si2157_config = alloca %struct.si2157_config, align 4
  call void @__sanitizer_cov_trace_pc() #8
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
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %info) #6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %pdata) #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtl2832u_tuner_attach.__UNIQUE_ID_ddebug419, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtl2832u_tuner_attach, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !420

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %intf = getelementptr inbounds %struct.dvb_usb_device, ptr %add.ptr, i32 0, i32 4
  %4 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %intf, align 8
  %dev4 = getelementptr inbounds %struct.usb_interface, ptr %5, i32 0, i32 7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rtl2832u_tuner_attach.__UNIQUE_ID_ddebug419, ptr noundef %dev4, ptr noundef nonnull @.str.74) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %6 = call ptr @memset(ptr %info, i32 0, i32 56)
  %7 = call ptr @memset(ptr %pdata, i32 0, i32 24)
  %tuner = getelementptr inbounds %struct.rtl28xxu_dev, ptr %3, i32 0, i32 2
  %8 = ptrtoint ptr %tuner to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %tuner, align 1
  %10 = zext i8 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.200)
  switch i8 %9, label %do.end314 [
    i8 38, label %sw.bb
    i8 41, label %sw.bb29
    i8 39, label %sw.bb67
    i8 33, label %sw.bb85
    i8 36, label %sw.bb112
    i8 42, label %sw.bb146
    i8 43, label %sw.bb184
    i8 44, label %sw.bb264
  ]

sw.bb:                                            ; preds = %do.end
  %call6 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.157) #6
  %tobool7.not = icmp eq ptr %call6, null
  br i1 %tobool7.not, label %cond.end, label %sw.bb.if.then11_crit_edge

sw.bb.if.then11_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then11

cond.end:                                         ; preds = %sw.bb
  %call8 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.158) #6
  %call9 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.157) #6
  %tobool10.not = icmp eq ptr %call9, null
  br i1 %tobool10.not, label %do.end19, label %cond.end.if.then11_crit_edge

cond.end.if.then11_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then11

if.then11:                                        ; preds = %cond.end.if.then11_crit_edge, %sw.bb.if.then11_crit_edge
  %cond534 = phi ptr [ %call9, %cond.end.if.then11_crit_edge ], [ %call6, %sw.bb.if.then11_crit_edge ]
  %fe12 = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 14
  %11 = ptrtoint ptr %fe12 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %fe12, align 8
  %demod_i2c_adapter = getelementptr inbounds %struct.rtl28xxu_dev, ptr %3, i32 0, i32 5
  %13 = ptrtoint ptr %demod_i2c_adapter to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %demod_i2c_adapter, align 4
  %call13 = tail call ptr %cond534(ptr noundef %12, ptr noundef %14, ptr noundef nonnull @rtl2832u_fc0012_config) #6
  %cmp = icmp eq ptr %call13, null
  br i1 %cmp, label %if.then15, label %if.then11.if.end22_crit_edge

if.then11.if.end22_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end22

if.then15:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @__symbol_put(ptr noundef nonnull @.str.157) #6
  br label %if.end22

do.end19:                                         ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  %call21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.159) #9
  br label %if.end22

if.end22:                                         ; preds = %do.end19, %if.then15, %if.then11.if.end22_crit_edge
  %__r.0 = phi ptr [ null, %if.then15 ], [ %call13, %if.then11.if.end22_crit_edge ], [ null, %do.end19 ]
  %fe24 = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 14
  br label %sw.epilog.sink.split

sw.bb29:                                          ; preds = %do.end
  %call32 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.160) #6
  %tobool33.not = icmp eq ptr %call32, null
  br i1 %tobool33.not, label %cond.end38, label %sw.bb29.if.then41_crit_edge

sw.bb29.if.then41_crit_edge:                      ; preds = %sw.bb29
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then41

cond.end38:                                       ; preds = %sw.bb29
  %call36 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.161) #6
  %call37 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.160) #6
  %tobool40.not = icmp eq ptr %call37, null
  br i1 %tobool40.not, label %do.end53, label %cond.end38.if.then41_crit_edge

cond.end38.if.then41_crit_edge:                   ; preds = %cond.end38
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then41

if.then41:                                        ; preds = %cond.end38.if.then41_crit_edge, %sw.bb29.if.then41_crit_edge
  %cond39537 = phi ptr [ %call37, %cond.end38.if.then41_crit_edge ], [ %call32, %sw.bb29.if.then41_crit_edge ]
  %fe42 = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 14
  %15 = ptrtoint ptr %fe42 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %fe42, align 8
  %demod_i2c_adapter44 = getelementptr inbounds %struct.rtl28xxu_dev, ptr %3, i32 0, i32 5
  %17 = ptrtoint ptr %demod_i2c_adapter44 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %demod_i2c_adapter44, align 4
  %call45 = tail call ptr %cond39537(ptr noundef %16, ptr noundef %18, i8 noundef zeroext 99, i32 noundef 0, i32 noundef 1) #6
  %cmp46 = icmp eq ptr %call45, null
  br i1 %cmp46, label %if.then48, label %if.then41.if.end56_crit_edge

if.then41.if.end56_crit_edge:                     ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end56

if.then48:                                        ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @__symbol_put(ptr noundef nonnull @.str.160) #6
  br label %if.end56

do.end53:                                         ; preds = %cond.end38
  call void @__sanitizer_cov_trace_pc() #8
  %call55 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.163) #9
  br label %if.end56

if.end56:                                         ; preds = %do.end53, %if.then48, %if.then41.if.end56_crit_edge
  %__r30.0 = phi ptr [ null, %if.then48 ], [ %call45, %if.then41.if.end56_crit_edge ], [ null, %do.end53 ]
  %fe58 = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 14
  br label %sw.epilog.sink.split

sw.bb67:                                          ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %e4000_config) #6
  %19 = getelementptr inbounds %struct.e4000_config, ptr %e4000_config, i32 0, i32 1
  %fe69 = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 14
  %20 = ptrtoint ptr %fe69 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %fe69, align 8
  %22 = ptrtoint ptr %e4000_config to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %21, ptr %e4000_config, align 4
  %23 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 28800000, ptr %19, align 4
  %call71 = call i32 @strscpy(ptr noundef nonnull %info, ptr noundef nonnull @.str.165, i32 noundef 20) #6
  %addr = getelementptr inbounds %struct.i2c_board_info, ptr %info, i32 0, i32 2
  %24 = ptrtoint ptr %addr to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 100, ptr %addr, align 2
  %platform_data = getelementptr inbounds %struct.i2c_board_info, ptr %info, i32 0, i32 4
  %25 = ptrtoint ptr %platform_data to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %e4000_config, ptr %platform_data, align 4
  %call74 = call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull %info) #6
  %demod_i2c_adapter75 = getelementptr inbounds %struct.rtl28xxu_dev, ptr %3, i32 0, i32 5
  %26 = ptrtoint ptr %demod_i2c_adapter75 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %demod_i2c_adapter75, align 4
  %call76 = call ptr @i2c_new_client_device(ptr noundef %27, ptr noundef nonnull %info) #6
  %tobool.not.i.i = icmp eq ptr %call76, null
  %cmp.i.i = icmp ugt ptr %call76, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i = or i1 %tobool.not.i.i, %cmp.i.i
  br i1 %spec.select.i.i, label %sw.bb67.cleanup_crit_edge, label %i2c_client_has_driver.exit

sw.bb67.cleanup_crit_edge:                        ; preds = %sw.bb67
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

i2c_client_has_driver.exit:                       ; preds = %sw.bb67
  %driver.i = getelementptr inbounds %struct.i2c_client, ptr %call76, i32 0, i32 4, i32 6
  %28 = ptrtoint ptr %driver.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %driver.i, align 4
  %tobool.i.not = icmp eq ptr %29, null
  br i1 %tobool.i.not, label %i2c_client_has_driver.exit.cleanup_crit_edge, label %if.end79

i2c_client_has_driver.exit.cleanup_crit_edge:     ; preds = %i2c_client_has_driver.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end79:                                         ; preds = %i2c_client_has_driver.exit
  %30 = ptrtoint ptr %driver.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %driver.i, align 4
  %owner = getelementptr inbounds %struct.device_driver, ptr %31, i32 0, i32 2
  %32 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %owner, align 4
  %call81 = call zeroext i1 @try_module_get(ptr noundef %33) #6
  br i1 %call81, label %if.end83, label %if.then82

if.then82:                                        ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #8
  call void @i2c_unregister_device(ptr noundef nonnull %call76) #6
  br label %cleanup

if.end83:                                         ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #8
  %i2c_client_tuner = getelementptr inbounds %struct.rtl28xxu_dev, ptr %3, i32 0, i32 9
  %34 = ptrtoint ptr %i2c_client_tuner to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call76, ptr %i2c_client_tuner, align 4
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %call76, i32 0, i32 4, i32 8
  %35 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %driver_data.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end83, %if.then82, %i2c_client_has_driver.exit.cleanup_crit_edge, %sw.bb67.cleanup_crit_edge
  %subdev.0 = phi ptr [ %36, %if.end83 ], [ null, %if.then82 ], [ null, %i2c_client_has_driver.exit.cleanup_crit_edge ], [ null, %sw.bb67.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %e4000_config) #6
  br label %land.lhs.true

sw.bb85:                                          ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %fc2580_pdata) #6
  %37 = getelementptr inbounds %struct.fc2580_platform_data, ptr %fc2580_pdata, i32 0, i32 1
  %38 = getelementptr inbounds %struct.fc2580_platform_data, ptr %fc2580_pdata, i32 0, i32 2
  %39 = ptrtoint ptr %fc2580_pdata to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %fc2580_pdata, align 4
  %fe86 = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 14
  %40 = ptrtoint ptr %fe86 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %fe86, align 8
  %42 = ptrtoint ptr %37 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %41, ptr %37, align 4
  %43 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr null, ptr %38, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %board_info) #6
  %44 = call ptr @memset(ptr %board_info, i32 0, i32 56)
  %call90 = call i32 @strscpy(ptr noundef nonnull %board_info, ptr noundef nonnull @.str.166, i32 noundef 20) #6
  %addr91 = getelementptr inbounds %struct.i2c_board_info, ptr %board_info, i32 0, i32 2
  %45 = ptrtoint ptr %addr91 to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 86, ptr %addr91, align 2
  %platform_data92 = getelementptr inbounds %struct.i2c_board_info, ptr %board_info, i32 0, i32 4
  %46 = ptrtoint ptr %platform_data92 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %fc2580_pdata, ptr %platform_data92, align 4
  %call93 = call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.166) #6
  %demod_i2c_adapter94 = getelementptr inbounds %struct.rtl28xxu_dev, ptr %3, i32 0, i32 5
  %47 = ptrtoint ptr %demod_i2c_adapter94 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %demod_i2c_adapter94, align 4
  %call95 = call ptr @i2c_new_client_device(ptr noundef %48, ptr noundef nonnull %board_info) #6
  %tobool.not.i.i493 = icmp eq ptr %call95, null
  %cmp.i.i494 = icmp ugt ptr %call95, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i495 = or i1 %tobool.not.i.i493, %cmp.i.i494
  br i1 %spec.select.i.i495, label %sw.bb85.cleanup108_crit_edge, label %i2c_client_has_driver.exit499

sw.bb85.cleanup108_crit_edge:                     ; preds = %sw.bb85
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup108

i2c_client_has_driver.exit499:                    ; preds = %sw.bb85
  %driver.i496 = getelementptr inbounds %struct.i2c_client, ptr %call95, i32 0, i32 4, i32 6
  %49 = ptrtoint ptr %driver.i496 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %driver.i496, align 4
  %tobool.i497.not = icmp eq ptr %50, null
  br i1 %tobool.i497.not, label %i2c_client_has_driver.exit499.cleanup108_crit_edge, label %if.end98

i2c_client_has_driver.exit499.cleanup108_crit_edge: ; preds = %i2c_client_has_driver.exit499
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup108

if.end98:                                         ; preds = %i2c_client_has_driver.exit499
  %51 = ptrtoint ptr %driver.i496 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %driver.i496, align 4
  %owner101 = getelementptr inbounds %struct.device_driver, ptr %52, i32 0, i32 2
  %53 = ptrtoint ptr %owner101 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %owner101, align 4
  %call102 = call zeroext i1 @try_module_get(ptr noundef %54) #6
  br i1 %call102, label %if.end104, label %if.then103

if.then103:                                       ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #8
  call void @i2c_unregister_device(ptr noundef nonnull %call95) #6
  br label %cleanup108

if.end104:                                        ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #8
  %i2c_client_tuner105 = getelementptr inbounds %struct.rtl28xxu_dev, ptr %3, i32 0, i32 9
  %55 = ptrtoint ptr %i2c_client_tuner105 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %call95, ptr %i2c_client_tuner105, align 4
  %56 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %38, align 4
  %call107 = call ptr %57(ptr noundef nonnull %call95) #6
  br label %cleanup108

cleanup108:                                       ; preds = %if.end104, %if.then103, %i2c_client_has_driver.exit499.cleanup108_crit_edge, %sw.bb85.cleanup108_crit_edge
  %subdev.1 = phi ptr [ %call107, %if.end104 ], [ null, %if.then103 ], [ null, %i2c_client_has_driver.exit499.cleanup108_crit_edge ], [ null, %sw.bb85.cleanup108_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %board_info) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %fc2580_pdata) #6
  br label %land.lhs.true

sw.bb112:                                         ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tua9001_pdata) #6
  %fe114 = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 14
  %58 = ptrtoint ptr %fe114 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %fe114, align 8
  %60 = ptrtoint ptr %tua9001_pdata to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %59, ptr %tua9001_pdata, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %board_info116) #6
  %61 = call ptr @memset(ptr %board_info116, i32 0, i32 56)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i) #6
  %62 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 -1, ptr %tmp.i, align 1, !annotation !421
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %req.i.i.i) #6
  %63 = ptrtoint ptr %req.i.i.i to i32
  call void @__asan_store8_noabort(i32 %63)
  store i64 3459892612750770175, ptr %req.i.i.i, align 8
  %data.i.i.i = getelementptr inbounds %struct.rtl28xxu_req, ptr %req.i.i.i, i32 0, i32 3
  %64 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %tmp.i, ptr %data.i.i.i, align 8
  %call.i.i.i = call fastcc i32 @rtl28xxu_ctrl_msg(ptr noundef %add.ptr, ptr noundef nonnull %req.i.i.i) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %req.i.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i, label %rtl28xxu_wr_reg_mask.exit, label %rtl28xxu_wr_reg_mask.exit.thread

rtl28xxu_wr_reg_mask.exit.thread:                 ; preds = %sw.bb112
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i) #6
  br label %cleanup143

rtl28xxu_wr_reg_mask.exit:                        ; preds = %sw.bb112
  %65 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %tmp.i, align 1
  %and8.i = and i8 %66, -19
  store i8 %and8.i, ptr %tmp.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i.i) #6
  %67 = ptrtoint ptr %val.addr.i.i to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %and8.i, ptr %val.addr.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %req.i.i25.i) #6
  %68 = ptrtoint ptr %req.i.i25.i to i32
  call void @__asan_store8_noabort(i32 %68)
  store i64 3459892681470246911, ptr %req.i.i25.i, align 8
  %data.i.i34.i = getelementptr inbounds %struct.rtl28xxu_req, ptr %req.i.i25.i, i32 0, i32 3
  %69 = ptrtoint ptr %data.i.i34.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %val.addr.i.i, ptr %data.i.i34.i, align 8
  %call.i.i35.i = call fastcc i32 @rtl28xxu_ctrl_msg(ptr noundef %add.ptr, ptr noundef nonnull %req.i.i25.i) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %req.i.i25.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i35.i)
  %tobool118.not = icmp eq i32 %call.i.i35.i, 0
  br i1 %tobool118.not, label %if.end120, label %rtl28xxu_wr_reg_mask.exit.cleanup143_crit_edge

rtl28xxu_wr_reg_mask.exit.cleanup143_crit_edge:   ; preds = %rtl28xxu_wr_reg_mask.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup143

if.end120:                                        ; preds = %rtl28xxu_wr_reg_mask.exit
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i504) #6
  %70 = ptrtoint ptr %tmp.i504 to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 -1, ptr %tmp.i504, align 1, !annotation !421
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %req.i.i.i503) #6
  %71 = ptrtoint ptr %req.i.i.i503 to i32
  call void @__asan_store8_noabort(i32 %71)
  store i64 3459611137774059519, ptr %req.i.i.i503, align 8
  %data.i.i.i506 = getelementptr inbounds %struct.rtl28xxu_req, ptr %req.i.i.i503, i32 0, i32 3
  %72 = ptrtoint ptr %data.i.i.i506 to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %tmp.i504, ptr %data.i.i.i506, align 8
  %call.i.i.i507 = call fastcc i32 @rtl28xxu_ctrl_msg(ptr noundef %add.ptr, ptr noundef nonnull %req.i.i.i503) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %req.i.i.i503) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i507)
  %tobool.not.i508 = icmp eq i32 %call.i.i.i507, 0
  br i1 %tobool.not.i508, label %rtl28xxu_wr_reg_mask.exit515, label %rtl28xxu_wr_reg_mask.exit515.thread

rtl28xxu_wr_reg_mask.exit515.thread:              ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i504) #6
  br label %cleanup143

rtl28xxu_wr_reg_mask.exit515:                     ; preds = %if.end120
  %73 = ptrtoint ptr %tmp.i504 to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %tmp.i504, align 1
  %and8.i509 = and i8 %74, -19
  store i8 %and8.i509, ptr %tmp.i504, align 1
  %or24.i = or i8 %74, 18
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i.i502) #6
  %75 = ptrtoint ptr %val.addr.i.i502 to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 %or24.i, ptr %val.addr.i.i502, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %req.i.i25.i501) #6
  %76 = ptrtoint ptr %req.i.i25.i501 to i32
  call void @__asan_store8_noabort(i32 %76)
  store i64 3459611206493536255, ptr %req.i.i25.i501, align 8
  %data.i.i34.i512 = getelementptr inbounds %struct.rtl28xxu_req, ptr %req.i.i25.i501, i32 0, i32 3
  %77 = ptrtoint ptr %data.i.i34.i512 to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %val.addr.i.i502, ptr %data.i.i34.i512, align 8
  %call.i.i35.i513 = call fastcc i32 @rtl28xxu_ctrl_msg(ptr noundef %add.ptr, ptr noundef nonnull %req.i.i25.i501) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %req.i.i25.i501) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i.i502) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i504) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i35.i513)
  %tobool122.not = icmp eq i32 %call.i.i35.i513, 0
  br i1 %tobool122.not, label %if.end124, label %rtl28xxu_wr_reg_mask.exit515.cleanup143_crit_edge

rtl28xxu_wr_reg_mask.exit515.cleanup143_crit_edge: ; preds = %rtl28xxu_wr_reg_mask.exit515
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup143

if.end124:                                        ; preds = %rtl28xxu_wr_reg_mask.exit515
  %call127 = call i32 @strscpy(ptr noundef nonnull %board_info116, ptr noundef nonnull @.str.167, i32 noundef 20) #6
  %addr128 = getelementptr inbounds %struct.i2c_board_info, ptr %board_info116, i32 0, i32 2
  %78 = ptrtoint ptr %addr128 to i32
  call void @__asan_store2_noabort(i32 %78)
  store i16 96, ptr %addr128, align 2
  %platform_data129 = getelementptr inbounds %struct.i2c_board_info, ptr %board_info116, i32 0, i32 4
  %79 = ptrtoint ptr %platform_data129 to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %tua9001_pdata, ptr %platform_data129, align 4
  %call130 = call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.167) #6
  %demod_i2c_adapter131 = getelementptr inbounds %struct.rtl28xxu_dev, ptr %3, i32 0, i32 5
  %80 = ptrtoint ptr %demod_i2c_adapter131 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %demod_i2c_adapter131, align 4
  %call132 = call ptr @i2c_new_client_device(ptr noundef %81, ptr noundef nonnull %board_info116) #6
  %tobool.not.i.i516 = icmp eq ptr %call132, null
  %cmp.i.i517 = icmp ugt ptr %call132, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i518 = or i1 %tobool.not.i.i516, %cmp.i.i517
  br i1 %spec.select.i.i518, label %if.end124.cleanup143.thread_crit_edge, label %i2c_client_has_driver.exit522

if.end124.cleanup143.thread_crit_edge:            ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup143.thread

i2c_client_has_driver.exit522:                    ; preds = %if.end124
  %driver.i519 = getelementptr inbounds %struct.i2c_client, ptr %call132, i32 0, i32 4, i32 6
  %82 = ptrtoint ptr %driver.i519 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %driver.i519, align 4
  %tobool.i520.not = icmp eq ptr %83, null
  br i1 %tobool.i520.not, label %i2c_client_has_driver.exit522.cleanup143.thread_crit_edge, label %if.end135

i2c_client_has_driver.exit522.cleanup143.thread_crit_edge: ; preds = %i2c_client_has_driver.exit522
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup143.thread

if.end135:                                        ; preds = %i2c_client_has_driver.exit522
  %84 = ptrtoint ptr %driver.i519 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %driver.i519, align 4
  %owner138 = getelementptr inbounds %struct.device_driver, ptr %85, i32 0, i32 2
  %86 = ptrtoint ptr %owner138 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %owner138, align 4
  %call139 = call zeroext i1 @try_module_get(ptr noundef %87) #6
  br i1 %call139, label %if.end141, label %if.then140

if.then140:                                       ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #8
  call void @i2c_unregister_device(ptr noundef nonnull %call132) #6
  br label %cleanup143.thread

if.end141:                                        ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #8
  %i2c_client_tuner142 = getelementptr inbounds %struct.rtl28xxu_dev, ptr %3, i32 0, i32 9
  %88 = ptrtoint ptr %i2c_client_tuner142 to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %call132, ptr %i2c_client_tuner142, align 4
  br label %cleanup143.thread

cleanup143.thread:                                ; preds = %if.end141, %if.then140, %i2c_client_has_driver.exit522.cleanup143.thread_crit_edge, %if.end124.cleanup143.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %board_info116) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tua9001_pdata) #6
  br label %land.lhs.true

cleanup143:                                       ; preds = %rtl28xxu_wr_reg_mask.exit515.cleanup143_crit_edge, %rtl28xxu_wr_reg_mask.exit515.thread, %rtl28xxu_wr_reg_mask.exit.cleanup143_crit_edge, %rtl28xxu_wr_reg_mask.exit.thread
  %ret.0 = phi i32 [ %call.i.i35.i, %rtl28xxu_wr_reg_mask.exit.cleanup143_crit_edge ], [ %call.i.i35.i513, %rtl28xxu_wr_reg_mask.exit515.cleanup143_crit_edge ], [ %call.i.i.i, %rtl28xxu_wr_reg_mask.exit.thread ], [ %call.i.i.i507, %rtl28xxu_wr_reg_mask.exit515.thread ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %board_info116) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tua9001_pdata) #6
  br label %do.body371

sw.bb146:                                         ; preds = %do.end
  %call149 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.168) #6
  %tobool150.not = icmp eq ptr %call149, null
  br i1 %tobool150.not, label %cond.end155, label %sw.bb146.if.then158_crit_edge

sw.bb146.if.then158_crit_edge:                    ; preds = %sw.bb146
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then158

cond.end155:                                      ; preds = %sw.bb146
  %call153 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.169) #6
  %call154 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.168) #6
  %tobool157.not = icmp eq ptr %call154, null
  br i1 %tobool157.not, label %do.end170, label %cond.end155.if.then158_crit_edge

cond.end155.if.then158_crit_edge:                 ; preds = %cond.end155
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then158

if.then158:                                       ; preds = %cond.end155.if.then158_crit_edge, %sw.bb146.if.then158_crit_edge
  %cond156546 = phi ptr [ %call154, %cond.end155.if.then158_crit_edge ], [ %call149, %sw.bb146.if.then158_crit_edge ]
  %fe159 = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 14
  %89 = ptrtoint ptr %fe159 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %fe159, align 8
  %demod_i2c_adapter161 = getelementptr inbounds %struct.rtl28xxu_dev, ptr %3, i32 0, i32 5
  %91 = ptrtoint ptr %demod_i2c_adapter161 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %demod_i2c_adapter161, align 4
  %call162 = tail call ptr %cond156546(ptr noundef %90, ptr noundef %92, ptr noundef nonnull @rtl2832u_r820t_config) #6
  %cmp163 = icmp eq ptr %call162, null
  br i1 %cmp163, label %if.then165, label %if.then158.if.end173_crit_edge

if.then158.if.end173_crit_edge:                   ; preds = %if.then158
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end173

if.then165:                                       ; preds = %if.then158
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @__symbol_put(ptr noundef nonnull @.str.168) #6
  br label %if.end173

do.end170:                                        ; preds = %cond.end155
  call void @__sanitizer_cov_trace_pc() #8
  %call172 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.171) #9
  br label %if.end173

if.end173:                                        ; preds = %do.end170, %if.then165, %if.then158.if.end173_crit_edge
  %__r147.0 = phi ptr [ null, %if.then165 ], [ %call162, %if.then158.if.end173_crit_edge ], [ null, %do.end170 ]
  %fe175 = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 14
  br label %sw.epilog.sink.split

sw.bb184:                                         ; preds = %do.end
  %call187 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.168) #6
  %tobool188.not = icmp eq ptr %call187, null
  br i1 %tobool188.not, label %cond.end193, label %sw.bb184.if.then196_crit_edge

sw.bb184.if.then196_crit_edge:                    ; preds = %sw.bb184
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then196

cond.end193:                                      ; preds = %sw.bb184
  %call191 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.169) #6
  %call192 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.168) #6
  %tobool195.not = icmp eq ptr %call192, null
  br i1 %tobool195.not, label %do.end208, label %cond.end193.if.then196_crit_edge

cond.end193.if.then196_crit_edge:                 ; preds = %cond.end193
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then196

if.then196:                                       ; preds = %cond.end193.if.then196_crit_edge, %sw.bb184.if.then196_crit_edge
  %cond194549 = phi ptr [ %call192, %cond.end193.if.then196_crit_edge ], [ %call187, %sw.bb184.if.then196_crit_edge ]
  %fe197 = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 14
  %93 = ptrtoint ptr %fe197 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %fe197, align 8
  %demod_i2c_adapter199 = getelementptr inbounds %struct.rtl28xxu_dev, ptr %3, i32 0, i32 5
  %95 = ptrtoint ptr %demod_i2c_adapter199 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %demod_i2c_adapter199, align 4
  %call200 = tail call ptr %cond194549(ptr noundef %94, ptr noundef %96, ptr noundef nonnull @rtl2832u_r828d_config) #6
  %cmp201 = icmp eq ptr %call200, null
  br i1 %cmp201, label %if.then203, label %if.then196.if.end211_crit_edge

if.then196.if.end211_crit_edge:                   ; preds = %if.then196
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end211

if.then203:                                       ; preds = %if.then196
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @__symbol_put(ptr noundef nonnull @.str.168) #6
  br label %if.end211

do.end208:                                        ; preds = %cond.end193
  call void @__sanitizer_cov_trace_pc() #8
  %call210 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.171) #9
  br label %if.end211

if.end211:                                        ; preds = %do.end208, %if.then203, %if.then196.if.end211_crit_edge
  %__r185.0 = phi ptr [ null, %if.then203 ], [ %call200, %if.then196.if.end211_crit_edge ], [ null, %do.end208 ]
  %fe213 = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 14
  %97 = ptrtoint ptr %fe213 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %fe213, align 8
  %get_rf_strength217 = getelementptr inbounds %struct.dvb_frontend, ptr %98, i32 0, i32 1, i32 32, i32 13
  %99 = ptrtoint ptr %get_rf_strength217 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %get_rf_strength217, align 4
  %read_signal_strength221 = getelementptr inbounds %struct.dvb_frontend, ptr %98, i32 0, i32 1, i32 17
  %101 = ptrtoint ptr %read_signal_strength221 to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr %100, ptr %read_signal_strength221, align 4
  %arrayidx223 = getelementptr %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 14, i32 1
  %102 = ptrtoint ptr %arrayidx223 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %arrayidx223, align 4
  %tobool224.not = icmp eq ptr %103, null
  br i1 %tobool224.not, label %if.end211.sw.epilog_crit_edge, label %if.then225

if.end211.sw.epilog_crit_edge:                    ; preds = %if.end211
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.then225:                                       ; preds = %if.end211
  %call228 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.168) #6
  %tobool229.not = icmp eq ptr %call228, null
  br i1 %tobool229.not, label %cond.end234, label %if.then225.if.then237_crit_edge

if.then225.if.then237_crit_edge:                  ; preds = %if.then225
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then237

cond.end234:                                      ; preds = %if.then225
  %call232 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.169) #6
  %call233 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.168) #6
  %tobool236.not = icmp eq ptr %call233, null
  br i1 %tobool236.not, label %do.end249, label %cond.end234.if.then237_crit_edge

cond.end234.if.then237_crit_edge:                 ; preds = %cond.end234
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then237

if.then237:                                       ; preds = %cond.end234.if.then237_crit_edge, %if.then225.if.then237_crit_edge
  %cond235552 = phi ptr [ %call233, %cond.end234.if.then237_crit_edge ], [ %call228, %if.then225.if.then237_crit_edge ]
  %104 = ptrtoint ptr %arrayidx223 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %arrayidx223, align 4
  %demod_i2c_adapter240 = getelementptr inbounds %struct.rtl28xxu_dev, ptr %3, i32 0, i32 5
  %106 = ptrtoint ptr %demod_i2c_adapter240 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %demod_i2c_adapter240, align 4
  %call241 = tail call ptr %cond235552(ptr noundef %105, ptr noundef %107, ptr noundef nonnull @rtl2832u_r828d_config) #6
  %cmp242 = icmp eq ptr %call241, null
  br i1 %cmp242, label %if.then244, label %if.then237.sw.epilog.sink.split_crit_edge

if.then237.sw.epilog.sink.split_crit_edge:        ; preds = %if.then237
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.sink.split

if.then244:                                       ; preds = %if.then237
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @__symbol_put(ptr noundef nonnull @.str.168) #6
  br label %sw.epilog.sink.split

do.end249:                                        ; preds = %cond.end234
  call void @__sanitizer_cov_trace_pc() #8
  %call251 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.171) #9
  br label %sw.epilog.sink.split

sw.bb264:                                         ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %si2157_config) #6
  %108 = getelementptr inbounds i8, ptr %si2157_config, i32 8
  %109 = ptrtoint ptr %108 to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 -1, ptr %108, align 4
  %fe266 = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 14
  %110 = ptrtoint ptr %fe266 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %fe266, align 8
  %112 = ptrtoint ptr %si2157_config to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr %111, ptr %si2157_config, align 4
  %mdev = getelementptr inbounds %struct.si2157_config, ptr %si2157_config, i32 0, i32 1
  %113 = ptrtoint ptr %mdev to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr null, ptr %mdev, align 4
  %inversion = getelementptr inbounds %struct.si2157_config, ptr %si2157_config, i32 0, i32 2
  %114 = ptrtoint ptr %inversion to i32
  call void @__asan_store1_noabort(i32 %114)
  store i8 63, ptr %inversion, align 4
  %if_port = getelementptr inbounds %struct.si2157_config, ptr %si2157_config, i32 0, i32 3
  %115 = ptrtoint ptr %if_port to i32
  call void @__asan_store1_noabort(i32 %115)
  store i8 0, ptr %if_port, align 1
  %call273 = call i32 @strscpy(ptr noundef nonnull %info, ptr noundef nonnull @.str.177, i32 noundef 20) #6
  %addr274 = getelementptr inbounds %struct.i2c_board_info, ptr %info, i32 0, i32 2
  %116 = ptrtoint ptr %addr274 to i32
  call void @__asan_store2_noabort(i32 %116)
  store i16 96, ptr %addr274, align 2
  %platform_data275 = getelementptr inbounds %struct.i2c_board_info, ptr %info, i32 0, i32 4
  %117 = ptrtoint ptr %platform_data275 to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr %si2157_config, ptr %platform_data275, align 4
  %call278 = call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull %info) #6
  %i2c_adap = getelementptr inbounds %struct.dvb_usb_device, ptr %add.ptr, i32 0, i32 10
  %call279 = call ptr @i2c_new_client_device(ptr noundef %i2c_adap, ptr noundef nonnull %info) #6
  %tobool.not.i.i523 = icmp eq ptr %call279, null
  %cmp.i.i524 = icmp ugt ptr %call279, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i525 = or i1 %tobool.not.i.i523, %cmp.i.i524
  br i1 %spec.select.i.i525, label %sw.bb264.cleanup309_crit_edge, label %i2c_client_has_driver.exit529

sw.bb264.cleanup309_crit_edge:                    ; preds = %sw.bb264
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup309

i2c_client_has_driver.exit529:                    ; preds = %sw.bb264
  %driver.i526 = getelementptr inbounds %struct.i2c_client, ptr %call279, i32 0, i32 4, i32 6
  %118 = ptrtoint ptr %driver.i526 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %driver.i526, align 4
  %tobool.i527.not = icmp eq ptr %119, null
  br i1 %tobool.i527.not, label %i2c_client_has_driver.exit529.cleanup309_crit_edge, label %if.end282

i2c_client_has_driver.exit529.cleanup309_crit_edge: ; preds = %i2c_client_has_driver.exit529
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup309

if.end282:                                        ; preds = %i2c_client_has_driver.exit529
  %120 = ptrtoint ptr %driver.i526 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %driver.i526, align 4
  %owner285 = getelementptr inbounds %struct.device_driver, ptr %121, i32 0, i32 2
  %122 = ptrtoint ptr %owner285 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %owner285, align 4
  %call286 = call zeroext i1 @try_module_get(ptr noundef %123) #6
  br i1 %call286, label %if.end288, label %if.then287

if.then287:                                       ; preds = %if.end282
  call void @__sanitizer_cov_trace_pc() #8
  call void @i2c_unregister_device(ptr noundef nonnull %call279) #6
  br label %cleanup309

if.end288:                                        ; preds = %if.end282
  %i2c_client_tuner289 = getelementptr inbounds %struct.rtl28xxu_dev, ptr %3, i32 0, i32 9
  %124 = ptrtoint ptr %i2c_client_tuner289 to i32
  call void @__asan_store4_noabort(i32 %124)
  store ptr %call279, ptr %i2c_client_tuner289, align 4
  %driver_data.i.i530 = getelementptr inbounds %struct.i2c_client, ptr %call279, i32 0, i32 4, i32 8
  %125 = ptrtoint ptr %driver_data.i.i530 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %driver_data.i.i530, align 4
  %arrayidx292 = getelementptr %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 14, i32 1
  %127 = ptrtoint ptr %arrayidx292 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %arrayidx292, align 4
  %tobool293.not = icmp eq ptr %128, null
  br i1 %tobool293.not, label %if.end288.cleanup309_crit_edge, label %if.then294

if.end288.cleanup309_crit_edge:                   ; preds = %if.end288
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup309

if.then294:                                       ; preds = %if.end288
  call void @__sanitizer_cov_trace_pc() #8
  %129 = ptrtoint ptr %fe266 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %fe266, align 8
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %130, i32 0, i32 4
  %131 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %tuner_priv, align 4
  %tuner_priv299 = getelementptr inbounds %struct.dvb_frontend, ptr %128, i32 0, i32 4
  %133 = ptrtoint ptr %tuner_priv299 to i32
  call void @__asan_store4_noabort(i32 %133)
  store ptr %132, ptr %tuner_priv299, align 4
  %134 = ptrtoint ptr %arrayidx292 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %arrayidx292, align 4
  %tuner_ops303 = getelementptr inbounds %struct.dvb_frontend, ptr %135, i32 0, i32 1, i32 32
  %136 = load ptr, ptr %fe266, align 8
  %tuner_ops307 = getelementptr inbounds %struct.dvb_frontend, ptr %136, i32 0, i32 1, i32 32
  %137 = call ptr @memcpy(ptr %tuner_ops303, ptr %tuner_ops307, i32 220)
  br label %cleanup309

cleanup309:                                       ; preds = %if.then294, %if.end288.cleanup309_crit_edge, %if.then287, %i2c_client_has_driver.exit529.cleanup309_crit_edge, %sw.bb264.cleanup309_crit_edge
  %subdev.2 = phi ptr [ null, %if.then287 ], [ null, %i2c_client_has_driver.exit529.cleanup309_crit_edge ], [ %126, %if.then294 ], [ %126, %if.end288.cleanup309_crit_edge ], [ null, %sw.bb264.cleanup309_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %si2157_config) #6
  br label %land.lhs.true

do.end314:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %conv5 = zext i8 %9 to i32
  %intf315 = getelementptr inbounds %struct.dvb_usb_device, ptr %add.ptr, i32 0, i32 4
  %138 = ptrtoint ptr %intf315 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %intf315, align 8
  %dev316 = getelementptr inbounds %struct.usb_interface, ptr %139, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev316, ptr noundef nonnull @.str.154, i32 noundef %conv5) #9
  br label %land.lhs.true

sw.epilog.sink.split:                             ; preds = %do.end249, %if.then244, %if.then237.sw.epilog.sink.split_crit_edge, %if.end173, %if.end56, %if.end22
  %.sink.in = phi ptr [ %fe175, %if.end173 ], [ %fe58, %if.end56 ], [ %fe24, %if.end22 ], [ %arrayidx223, %if.then237.sw.epilog.sink.split_crit_edge ], [ %arrayidx223, %if.then244 ], [ %arrayidx223, %do.end249 ]
  %fe.0.ph = phi ptr [ %__r147.0, %if.end173 ], [ %__r30.0, %if.end56 ], [ %__r.0, %if.end22 ], [ %call241, %if.then237.sw.epilog.sink.split_crit_edge ], [ null, %if.then244 ], [ null, %do.end249 ]
  %140 = ptrtoint ptr %.sink.in to i32
  call void @__asan_load4_noabort(i32 %140)
  %.sink = load ptr, ptr %.sink.in, align 4
  %get_rf_strength258 = getelementptr inbounds %struct.dvb_frontend, ptr %.sink, i32 0, i32 1, i32 32, i32 13
  %141 = ptrtoint ptr %get_rf_strength258 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %get_rf_strength258, align 4
  %read_signal_strength262 = getelementptr inbounds %struct.dvb_frontend, ptr %.sink, i32 0, i32 1, i32 17
  %143 = ptrtoint ptr %read_signal_strength262 to i32
  call void @__asan_store4_noabort(i32 %143)
  store ptr %142, ptr %read_signal_strength262, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %if.end211.sw.epilog_crit_edge
  %fe.0 = phi ptr [ %__r185.0, %if.end211.sw.epilog_crit_edge ], [ %fe.0.ph, %sw.epilog.sink.split ]
  %cmp319 = icmp eq ptr %fe.0, null
  br i1 %cmp319, label %sw.epilog.land.lhs.true_crit_edge, label %sw.epilog.if.end325_crit_edge

sw.epilog.if.end325_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end325

sw.epilog.land.lhs.true_crit_edge:                ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %sw.epilog.land.lhs.true_crit_edge, %do.end314, %cleanup309, %cleanup143.thread, %cleanup108, %cleanup
  %subdev.3557 = phi ptr [ null, %sw.epilog.land.lhs.true_crit_edge ], [ null, %cleanup143.thread ], [ %subdev.0, %cleanup ], [ %subdev.1, %cleanup108 ], [ %subdev.2, %cleanup309 ], [ null, %do.end314 ]
  %i2c_client_tuner321 = getelementptr inbounds %struct.rtl28xxu_dev, ptr %3, i32 0, i32 9
  %144 = ptrtoint ptr %i2c_client_tuner321 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %i2c_client_tuner321, align 4
  %cmp322 = icmp eq ptr %145, null
  br i1 %cmp322, label %land.lhs.true.do.body371_crit_edge, label %land.lhs.true.if.end325_crit_edge

land.lhs.true.if.end325_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end325

land.lhs.true.do.body371_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body371

if.end325:                                        ; preds = %land.lhs.true.if.end325_crit_edge, %sw.epilog.if.end325_crit_edge
  %subdev.3556 = phi ptr [ %subdev.3557, %land.lhs.true.if.end325_crit_edge ], [ null, %sw.epilog.if.end325_crit_edge ]
  %146 = ptrtoint ptr %tuner to i32
  call void @__asan_load1_noabort(i32 %146)
  %147 = load i8, ptr %tuner, align 1
  %148 = zext i8 %147 to i64
  call void @__sanitizer_cov_trace_switch(i64 %148, ptr @__sancov_gen_cov_switch_values.201)
  switch i8 %147, label %do.body350 [
    i8 33, label %if.end325.sw.bb328_crit_edge
    i8 38, label %if.end325.sw.bb328_crit_edge561
    i8 41, label %if.end325.sw.bb328_crit_edge562
    i8 39, label %if.end325.sw.bb328_crit_edge563
    i8 42, label %if.end325.sw.bb328_crit_edge564
    i8 43, label %if.end325.sw.bb328_crit_edge565
  ]

if.end325.sw.bb328_crit_edge565:                  ; preds = %if.end325
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb328

if.end325.sw.bb328_crit_edge564:                  ; preds = %if.end325
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb328

if.end325.sw.bb328_crit_edge563:                  ; preds = %if.end325
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb328

if.end325.sw.bb328_crit_edge562:                  ; preds = %if.end325
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb328

if.end325.sw.bb328_crit_edge561:                  ; preds = %if.end325
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb328

if.end325.sw.bb328_crit_edge:                     ; preds = %if.end325
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb328

sw.bb328:                                         ; preds = %if.end325.sw.bb328_crit_edge, %if.end325.sw.bb328_crit_edge561, %if.end325.sw.bb328_crit_edge562, %if.end325.sw.bb328_crit_edge563, %if.end325.sw.bb328_crit_edge564, %if.end325.sw.bb328_crit_edge565
  %149 = getelementptr inbounds %struct.rtl28xxu_dev, ptr %3, i32 0, i32 13
  %150 = ptrtoint ptr %149 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %149, align 4
  %152 = ptrtoint ptr %pdata to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 %151, ptr %pdata, align 4
  %tuner332 = getelementptr inbounds %struct.rtl2832_sdr_platform_data, ptr %pdata, i32 0, i32 1
  %153 = ptrtoint ptr %tuner332 to i32
  call void @__asan_store1_noabort(i32 %153)
  store i8 %147, ptr %tuner332, align 4
  %regmap = getelementptr inbounds %struct.rtl28xxu_dev, ptr %3, i32 0, i32 13, i32 0, i32 7
  %154 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %regmap, align 4
  %regmap333 = getelementptr inbounds %struct.rtl2832_sdr_platform_data, ptr %pdata, i32 0, i32 2
  %156 = ptrtoint ptr %regmap333 to i32
  call void @__asan_store4_noabort(i32 %156)
  store ptr %155, ptr %regmap333, align 4
  %fe334 = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 14
  %157 = ptrtoint ptr %fe334 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %fe334, align 8
  %dvb_frontend336 = getelementptr inbounds %struct.rtl2832_sdr_platform_data, ptr %pdata, i32 0, i32 3
  %159 = ptrtoint ptr %dvb_frontend336 to i32
  call void @__asan_store4_noabort(i32 %159)
  store ptr %158, ptr %dvb_frontend336, align 4
  %dvb_usb_device = getelementptr inbounds %struct.rtl2832_sdr_platform_data, ptr %pdata, i32 0, i32 5
  %160 = ptrtoint ptr %dvb_usb_device to i32
  call void @__asan_store4_noabort(i32 %160)
  store ptr %add.ptr, ptr %dvb_usb_device, align 4
  %v4l2_subdev = getelementptr inbounds %struct.rtl2832_sdr_platform_data, ptr %pdata, i32 0, i32 4
  %161 = ptrtoint ptr %v4l2_subdev to i32
  call void @__asan_store4_noabort(i32 %161)
  store ptr %subdev.3556, ptr %v4l2_subdev, align 4
  %call337 = call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.122, ptr noundef nonnull @.str.180) #6
  %intf338 = getelementptr inbounds %struct.dvb_usb_device, ptr %add.ptr, i32 0, i32 4
  %162 = ptrtoint ptr %intf338 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %intf338, align 8
  %dev339 = getelementptr inbounds %struct.usb_interface, ptr %163, i32 0, i32 7
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %pdevinfo.i.i) #6
  %164 = getelementptr inbounds i8, ptr %pdevinfo.i.i, i32 8
  %165 = call ptr @memset(ptr %164, i32 255, i32 48)
  %166 = ptrtoint ptr %pdevinfo.i.i to i32
  call void @__asan_store4_noabort(i32 %166)
  store ptr %dev339, ptr %pdevinfo.i.i, align 8
  %fwnode.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 1
  %167 = ptrtoint ptr %fwnode.i.i to i32
  call void @__asan_store4_noabort(i32 %167)
  store ptr null, ptr %fwnode.i.i, align 4
  %168 = ptrtoint ptr %164 to i32
  call void @__asan_store1_noabort(i32 %168)
  store i8 0, ptr %164, align 8
  %name2.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 3
  %169 = ptrtoint ptr %name2.i.i to i32
  call void @__asan_store4_noabort(i32 %169)
  store ptr @.str.180, ptr %name2.i.i, align 4
  %id3.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 4
  %170 = ptrtoint ptr %id3.i.i to i32
  call void @__asan_store4_noabort(i32 %170)
  store i32 -2, ptr %id3.i.i, align 8
  %res4.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 5
  %171 = ptrtoint ptr %res4.i.i to i32
  call void @__asan_store4_noabort(i32 %171)
  store ptr null, ptr %res4.i.i, align 4
  %num_res.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 6
  %172 = ptrtoint ptr %num_res.i.i to i32
  call void @__asan_store4_noabort(i32 %172)
  store i32 0, ptr %num_res.i.i, align 8
  %data5.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 7
  %173 = ptrtoint ptr %data5.i.i to i32
  call void @__asan_store4_noabort(i32 %173)
  store ptr %pdata, ptr %data5.i.i, align 4
  %size_data.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 8
  %174 = ptrtoint ptr %size_data.i.i to i32
  call void @__asan_store4_noabort(i32 %174)
  store i32 24, ptr %size_data.i.i, align 8
  %dma_mask.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 9
  %175 = ptrtoint ptr %dma_mask.i.i to i32
  call void @__asan_store8_noabort(i32 %175)
  store i64 0, ptr %dma_mask.i.i, align 8
  %properties.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 10
  %176 = ptrtoint ptr %properties.i.i to i32
  call void @__asan_store4_noabort(i32 %176)
  store ptr null, ptr %properties.i.i, align 8
  %call.i.i = call ptr @platform_device_register_full(ptr noundef nonnull %pdevinfo.i.i) #6
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %pdevinfo.i.i) #6
  %cmp.i = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %sw.bb328.cleanup389_crit_edge, label %lor.lhs.false

sw.bb328.cleanup389_crit_edge:                    ; preds = %sw.bb328
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup389

lor.lhs.false:                                    ; preds = %sw.bb328
  %driver344 = getelementptr inbounds %struct.platform_device, ptr %call.i.i, i32 0, i32 3, i32 6
  %177 = ptrtoint ptr %driver344 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %driver344, align 4
  %cmp345 = icmp eq ptr %178, null
  br i1 %cmp345, label %lor.lhs.false.cleanup389_crit_edge, label %if.end348

lor.lhs.false.cleanup389_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup389

if.end348:                                        ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  %platform_device_sdr = getelementptr inbounds %struct.rtl28xxu_dev, ptr %3, i32 0, i32 11
  %179 = ptrtoint ptr %platform_device_sdr to i32
  call void @__asan_store4_noabort(i32 %179)
  store ptr %call.i.i, ptr %platform_device_sdr, align 4
  br label %cleanup389

do.body350:                                       ; preds = %if.end325
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtl2832u_tuner_attach.__UNIQUE_ID_ddebug420, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtl2832u_tuner_attach, %if.then362)) #6
          to label %cleanup389 [label %if.then362], !srcloc !420

if.then362:                                       ; preds = %do.body350
  call void @__sanitizer_cov_trace_pc() #8
  %intf363 = getelementptr inbounds %struct.dvb_usb_device, ptr %add.ptr, i32 0, i32 4
  %180 = ptrtoint ptr %intf363 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %intf363, align 8
  %dev364 = getelementptr inbounds %struct.usb_interface, ptr %181, i32 0, i32 7
  %182 = ptrtoint ptr %tuner to i32
  call void @__asan_load1_noabort(i32 %182)
  %183 = load i8, ptr %tuner, align 1
  %conv366 = zext i8 %183 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rtl2832u_tuner_attach.__UNIQUE_ID_ddebug420, ptr noundef %dev364, ptr noundef nonnull @.str.181, i32 noundef %conv366) #6
  br label %cleanup389

do.body371:                                       ; preds = %land.lhs.true.do.body371_crit_edge, %cleanup143
  %ret.1 = phi i32 [ %ret.0, %cleanup143 ], [ -19, %land.lhs.true.do.body371_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtl2832u_tuner_attach.__UNIQUE_ID_ddebug421, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtl2832u_tuner_attach, %if.then383)) #6
          to label %cleanup389 [label %if.then383], !srcloc !420

if.then383:                                       ; preds = %do.body371
  call void @__sanitizer_cov_trace_pc() #8
  %intf384 = getelementptr inbounds %struct.dvb_usb_device, ptr %add.ptr, i32 0, i32 4
  %184 = ptrtoint ptr %intf384 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %intf384, align 8
  %dev385 = getelementptr inbounds %struct.usb_interface, ptr %185, i32 0, i32 7
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rtl2832u_tuner_attach.__UNIQUE_ID_ddebug421, ptr noundef %dev385, ptr noundef nonnull @.str.79, i32 noundef %ret.1) #6
  br label %cleanup389

cleanup389:                                       ; preds = %if.then383, %do.body371, %if.then362, %do.body350, %if.end348, %lor.lhs.false.cleanup389_crit_edge, %sw.bb328.cleanup389_crit_edge
  %retval.0 = phi i32 [ 0, %if.then362 ], [ 0, %sw.bb328.cleanup389_crit_edge ], [ 0, %lor.lhs.false.cleanup389_crit_edge ], [ 0, %if.end348 ], [ %ret.1, %if.then383 ], [ 0, %do.body350 ], [ %ret.1, %do.body371 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %pdata) #6
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %info) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_device_register_full(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtl2831u_rc_query(ptr noundef %d) #2 align 64 {
entry:
  %req.i.i109 = alloca %struct.rtl28xxu_req, align 8
  %val.addr.i110 = alloca i8, align 1
  %req.i.i102 = alloca %struct.rtl28xxu_req, align 8
  %val.addr.i103 = alloca i8, align 1
  %req.i = alloca %struct.rtl28xxu_req, align 8
  %req.i.i = alloca %struct.rtl28xxu_req, align 8
  %val.addr.i = alloca i8, align 1
  %buf = alloca [5 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 15
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %buf) #6
  %2 = getelementptr inbounds [5 x i8], ptr %buf, i32 0, i32 1
  %3 = getelementptr inbounds [5 x i8], ptr %buf, i32 0, i32 2
  %4 = getelementptr inbounds [5 x i8], ptr %buf, i32 0, i32 3
  %5 = getelementptr inbounds [5 x i8], ptr %buf, i32 0, i32 4
  %rc_active = getelementptr inbounds %struct.rtl28xxu_dev, ptr %1, i32 0, i32 6
  %6 = call ptr @memset(ptr %buf, i32 255, i32 5)
  %7 = ptrtoint ptr %rc_active to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %rc_active, align 4, !range !422
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not = icmp eq i8 %8, 0
  br i1 %tobool.not, label %for.cond.preheader, label %entry.if.end5_crit_edge

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

for.cond.preheader:                               ; preds = %entry
  %data.i.i = getelementptr inbounds %struct.rtl28xxu_req, ptr %req.i.i, i32 0, i32 3
  %index6.i.i = getelementptr inbounds %struct.rtl28xxu_req, ptr %req.i.i, i32 0, i32 1
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %i.0120, 1
  %exitcond.not = icmp eq i32 %inc, 14
  br i1 %exitcond.not, label %for.end, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.cond.preheader
  %i.0120 = phi i32 [ 0, %for.cond.preheader ], [ %inc, %for.cond.for.body_crit_edge ]
  %arrayidx = getelementptr [14 x %struct.rtl28xxu_reg_val], ptr @rtl2831u_rc_query.rc_nec_tab, i32 0, i32 %i.0120
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %arrayidx, align 2
  %val = getelementptr [14 x %struct.rtl28xxu_reg_val], ptr @rtl2831u_rc_query.rc_nec_tab, i32 0, i32 %i.0120, i32 1
  %11 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %val, align 2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i)
  %13 = ptrtoint ptr %val.addr.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %12, ptr %val.addr.i, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %req.i.i) #6
  %14 = ptrtoint ptr %req.i.i to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 -4294836225, ptr %req.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 12288, i16 %10)
  %cmp.i.i = icmp ult i16 %10, 12288
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %10)
  %cmp3.i.i = icmp ult i16 %10, 16384
  %. = select i1 %cmp3.i.i, i16 528, i16 529
  %.sink = select i1 %cmp.i.i, i16 272, i16 %.
  %15 = ptrtoint ptr %index6.i.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %.sink, ptr %index6.i.i, align 2
  %16 = ptrtoint ptr %req.i.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %10, ptr %req.i.i, align 8
  %17 = ptrtoint ptr %data.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %val.addr.i, ptr %data.i.i, align 8
  %call.i.i = call fastcc i32 @rtl28xxu_ctrl_msg(ptr noundef %d, ptr noundef nonnull %req.i.i) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %req.i.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool2.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool2.not, label %for.cond, label %for.body.do.body_crit_edge

for.body.do.body_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

for.end:                                          ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  %18 = ptrtoint ptr %rc_active to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 1, ptr %rc_active, align 4
  br label %if.end5

if.end5:                                          ; preds = %for.end, %entry.if.end5_crit_edge
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %req.i) #6
  %19 = ptrtoint ptr %req.i to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 3473403411633143807, ptr %req.i, align 8
  %data.i = getelementptr inbounds %struct.rtl28xxu_req, ptr %req.i, i32 0, i32 3
  %20 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %buf, ptr %data.i, align 8
  %call.i = call fastcc i32 @rtl28xxu_ctrl_msg(ptr noundef %d, ptr noundef nonnull %req.i) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %req.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool7.not = icmp eq i32 %call.i, 0
  br i1 %tobool7.not, label %if.end9, label %if.end5.do.body_crit_edge

if.end5.do.body_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

if.end9:                                          ; preds = %if.end5
  %21 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %5, align 1
  %23 = and i8 %22, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool11.not = icmp eq i8 %23, 0
  br i1 %tobool11.not, label %if.end9.cleanup81_crit_edge, label %if.then12

if.end9.cleanup81_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup81

if.then12:                                        ; preds = %if.end9
  %24 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %3, align 1
  %conv14 = zext i8 %25 to i32
  %26 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %4, align 1
  %neg = xor i8 %27, -1
  call void @__sanitizer_cov_trace_cmp1(i8 %25, i8 %neg)
  %cmp19 = icmp eq i8 %25, %neg
  br i1 %cmp19, label %if.then21, label %if.else47

if.then21:                                        ; preds = %if.then12
  %28 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %buf, align 1
  %conv23 = zext i8 %29 to i32
  %30 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %2, align 1
  %neg26 = xor i8 %31, -1
  call void @__sanitizer_cov_trace_cmp1(i8 %29, i8 %neg26)
  %cmp29 = icmp eq i8 %29, %neg26
  br i1 %cmp29, label %if.then31, label %if.else

if.then31:                                        ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #8
  %shl = shl nuw nsw i32 %conv23, 8
  %or = or i32 %shl, %conv14
  br label %if.end63

if.else:                                          ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #8
  %conv25 = zext i8 %31 to i32
  %32 = shl nuw nsw i32 %conv23, 16
  %33 = shl nuw nsw i32 %conv25, 8
  %shl42 = or i32 %32, %conv14
  %or45 = or i32 %shl42, %33
  br label %if.end63

if.else47:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #8
  %conv16 = zext i8 %27 to i32
  %34 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %buf, align 1
  %conv49 = zext i8 %35 to i32
  %shl50 = shl nuw i32 %conv49, 24
  %36 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %2, align 1
  %conv52 = zext i8 %37 to i32
  %shl53 = shl nuw nsw i32 %conv52, 16
  %shl57 = shl nuw nsw i32 %conv14, 8
  %or54 = or i32 %shl57, %conv16
  %or58 = or i32 %or54, %shl50
  %or61 = or i32 %or58, %shl53
  br label %if.end63

if.end63:                                         ; preds = %if.else47, %if.else, %if.then31
  %rc_code.0 = phi i32 [ %or, %if.then31 ], [ %or45, %if.else ], [ %or61, %if.else47 ]
  %proto.0 = phi i32 [ 9, %if.then31 ], [ 10, %if.else ], [ 11, %if.else47 ]
  %rc_dev = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 12
  %38 = ptrtoint ptr %rc_dev to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %rc_dev, align 8
  %conv64 = zext i32 %rc_code.0 to i64
  call void @rc_keydown(ptr noundef %39, i32 noundef %proto.0, i64 noundef %conv64, i8 noundef zeroext 0) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i103)
  %40 = ptrtoint ptr %val.addr.i103 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 1, ptr %val.addr.i103, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %req.i.i102) #6
  %41 = ptrtoint ptr %req.i.i102 to i32
  call void @__asan_store8_noabort(i32 %41)
  store i64 3474529380259201023, ptr %req.i.i102, align 8
  %data.i.i107 = getelementptr inbounds %struct.rtl28xxu_req, ptr %req.i.i102, i32 0, i32 3
  %42 = ptrtoint ptr %data.i.i107 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %val.addr.i103, ptr %data.i.i107, align 8
  %call.i.i108 = call fastcc i32 @rtl28xxu_ctrl_msg(ptr noundef %d, ptr noundef nonnull %req.i.i102) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %req.i.i102) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i103)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i108)
  %tobool66.not = icmp eq i32 %call.i.i108, 0
  br i1 %tobool66.not, label %if.end68, label %if.end63.do.body_crit_edge

if.end63.do.body_crit_edge:                       ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

if.end68:                                         ; preds = %if.end63
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i110)
  %43 = ptrtoint ptr %val.addr.i110 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 1, ptr %val.addr.i110, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %req.i.i109) #6
  %44 = ptrtoint ptr %req.i.i109 to i32
  call void @__asan_store8_noabort(i32 %44)
  store i64 3474529380259201023, ptr %req.i.i109, align 8
  %data.i.i114 = getelementptr inbounds %struct.rtl28xxu_req, ptr %req.i.i109, i32 0, i32 3
  %45 = ptrtoint ptr %data.i.i114 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %val.addr.i110, ptr %data.i.i114, align 8
  %call.i.i115 = call fastcc i32 @rtl28xxu_ctrl_msg(ptr noundef %d, ptr noundef nonnull %req.i.i109) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %req.i.i109) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i110)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i115)
  %tobool70.not = icmp eq i32 %call.i.i115, 0
  br i1 %tobool70.not, label %if.end68.cleanup81_crit_edge, label %if.end68.do.body_crit_edge

if.end68.do.body_crit_edge:                       ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

if.end68.cleanup81_crit_edge:                     ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup81

do.body:                                          ; preds = %if.end68.do.body_crit_edge, %if.end63.do.body_crit_edge, %if.end5.do.body_crit_edge, %for.body.do.body_crit_edge
  %ret.2 = phi i32 [ %call.i, %if.end5.do.body_crit_edge ], [ %call.i.i115, %if.end68.do.body_crit_edge ], [ %call.i.i108, %if.end63.do.body_crit_edge ], [ %call.i.i, %for.body.do.body_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtl2831u_rc_query.__UNIQUE_ID_ddebug433, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtl2831u_rc_query, %if.then78)) #6
          to label %cleanup81 [label %if.then78], !srcloc !420

if.then78:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %intf = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 4
  %46 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %intf, align 8
  %dev79 = getelementptr inbounds %struct.usb_interface, ptr %47, i32 0, i32 7
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rtl2831u_rc_query.__UNIQUE_ID_ddebug433, ptr noundef %dev79, ptr noundef nonnull @.str.79, i32 noundef %ret.2) #6
  br label %cleanup81

cleanup81:                                        ; preds = %if.then78, %do.body, %if.end68.cleanup81_crit_edge, %if.end9.cleanup81_crit_edge
  %retval.0 = phi i32 [ 0, %if.end9.cleanup81_crit_edge ], [ %ret.2, %if.then78 ], [ 0, %if.end68.cleanup81_crit_edge ], [ %ret.2, %do.body ]
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %buf) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rc_keydown(ptr noundef, i32 noundef, i64 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtl2832u_rc_query(ptr noundef %d) #2 align 64 {
entry:
  %req.i.i25.i109 = alloca %struct.rtl28xxu_req, align 8
  %val.addr.i.i110 = alloca i8, align 1
  %req.i = alloca %struct.rtl28xxu_req, align 8
  %req.i.i105 = alloca %struct.rtl28xxu_req, align 8
  %req.i.i = alloca %struct.rtl28xxu_req, align 8
  %req.i.i25.i = alloca %struct.rtl28xxu_req, align 8
  %val.addr.i.i = alloca i8, align 1
  %req.i.i.i = alloca %struct.rtl28xxu_req, align 8
  %tmp.i = alloca i8, align 1
  %ev = alloca %struct.ir_raw_event, align 8
  %buf = alloca [128 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 15
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ev) #6
  %2 = ptrtoint ptr %ev to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 0, ptr %ev, align 8
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %buf) #6
  %3 = call ptr @memset(ptr %buf, i32 255, i32 128)
  %rc_active = getelementptr inbounds %struct.rtl28xxu_dev, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %rc_active to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %rc_active, align 4, !range !422
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %for.cond.preheader, label %entry.if.end6_crit_edge

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

for.cond.preheader:                               ; preds = %entry
  %index6.i.i.i = getelementptr inbounds %struct.rtl28xxu_req, ptr %req.i.i.i, i32 0, i32 1
  %data.i.i.i = getelementptr inbounds %struct.rtl28xxu_req, ptr %req.i.i.i, i32 0, i32 3
  %index6.i.i30.i = getelementptr inbounds %struct.rtl28xxu_req, ptr %req.i.i25.i, i32 0, i32 1
  %data.i.i34.i = getelementptr inbounds %struct.rtl28xxu_req, ptr %req.i.i25.i, i32 0, i32 3
  br label %for.body

for.cond:                                         ; preds = %if.end13.i
  %inc = add nuw nsw i32 %i.0153, 1
  %exitcond.not = icmp eq i32 %inc, 16
  br i1 %exitcond.not, label %for.end, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.cond.preheader
  %i.0153 = phi i32 [ 0, %for.cond.preheader ], [ %inc, %for.cond.for.body_crit_edge ]
  %arrayidx = getelementptr [16 x %struct.rtl28xxu_reg_val_mask], ptr @rtl2832u_rc_query.init_tab, i32 0, i32 %i.0153
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %arrayidx, align 2
  %val = getelementptr [16 x %struct.rtl28xxu_reg_val_mask], ptr @rtl2832u_rc_query.init_tab, i32 0, i32 %i.0153, i32 1
  %8 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %val, align 2
  %mask = getelementptr [16 x %struct.rtl28xxu_reg_val_mask], ptr @rtl2832u_rc_query.init_tab, i32 0, i32 %i.0153, i32 2
  %10 = ptrtoint ptr %mask to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %mask, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i) #6
  %12 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 -1, ptr %tmp.i, align 1, !annotation !421
  %13 = add nsw i32 %i.0153, -6
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %13)
  %cmp.not.i = icmp ult i32 %13, 10
  br i1 %cmp.not.i, label %for.body.if.end13.i_crit_edge, label %if.then.i

for.body.if.end13.i_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13.i

if.then.i:                                        ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %req.i.i.i) #6
  %14 = ptrtoint ptr %req.i.i.i to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 -4294836225, ptr %req.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 12288, i16 %7)
  %cmp.i.i.i = icmp ult i16 %7, 12288
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %7)
  %cmp3.i.i.i = icmp ult i16 %7, 16384
  %. = select i1 %cmp3.i.i.i, i16 512, i16 513
  %.sink = select i1 %cmp.i.i.i, i16 256, i16 %.
  %15 = ptrtoint ptr %index6.i.i.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %.sink, ptr %index6.i.i.i, align 2
  %16 = ptrtoint ptr %req.i.i.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %7, ptr %req.i.i.i, align 8
  %17 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %tmp.i, ptr %data.i.i.i, align 8
  %call.i.i.i = call fastcc i32 @rtl28xxu_ctrl_msg(ptr noundef %d, ptr noundef nonnull %req.i.i.i) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %req.i.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %rtl28xxu_wr_reg_mask.exit.thread

rtl28xxu_wr_reg_mask.exit.thread:                 ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i) #6
  br label %do.body

if.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %and23.i = and i8 %11, %9
  %neg.i = xor i8 %11, -1
  %18 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %tmp.i, align 1
  %and8.i = and i8 %19, %neg.i
  store i8 %and8.i, ptr %tmp.i, align 1
  %or24.i = or i8 %and8.i, %and23.i
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.end.i, %for.body.if.end13.i_crit_edge
  %val.addr.0.i = phi i8 [ %or24.i, %if.end.i ], [ %9, %for.body.if.end13.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i.i) #6
  %20 = ptrtoint ptr %val.addr.i.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %val.addr.0.i, ptr %val.addr.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %req.i.i25.i) #6
  %21 = ptrtoint ptr %req.i.i25.i to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 -4294836225, ptr %req.i.i25.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 12288, i16 %7)
  %cmp.i.i26.i = icmp ult i16 %7, 12288
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %7)
  %cmp3.i.i29.i = icmp ult i16 %7, 16384
  %.164 = select i1 %cmp3.i.i29.i, i16 528, i16 529
  %.sink163 = select i1 %cmp.i.i26.i, i16 272, i16 %.164
  %22 = ptrtoint ptr %index6.i.i30.i to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %.sink163, ptr %index6.i.i30.i, align 2
  %23 = ptrtoint ptr %req.i.i25.i to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %7, ptr %req.i.i25.i, align 8
  %24 = ptrtoint ptr %data.i.i34.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %val.addr.i.i, ptr %data.i.i34.i, align 8
  %call.i.i35.i = call fastcc i32 @rtl28xxu_ctrl_msg(ptr noundef %d, ptr noundef nonnull %req.i.i25.i) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %req.i.i25.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i35.i)
  %tobool3.not = icmp eq i32 %call.i.i35.i, 0
  br i1 %tobool3.not, label %for.cond, label %if.end13.i.do.body_crit_edge

if.end13.i.do.body_crit_edge:                     ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

for.end:                                          ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  %25 = ptrtoint ptr %rc_active to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 1, ptr %rc_active, align 4
  br label %if.end6

if.end6:                                          ; preds = %for.end, %entry.if.end6_crit_edge
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %req.i.i) #6
  %26 = ptrtoint ptr %req.i.i to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 -215889103818719233, ptr %req.i.i, align 8
  %data.i.i = getelementptr inbounds %struct.rtl28xxu_req, ptr %req.i.i, i32 0, i32 3
  %27 = ptrtoint ptr %data.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %buf, ptr %data.i.i, align 8
  %call.i.i = call fastcc i32 @rtl28xxu_ctrl_msg(ptr noundef %d, ptr noundef nonnull %req.i.i) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %req.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool9.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool9.not, label %if.end11, label %if.end6.do.body_crit_edge

if.end6.do.body_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

if.end11:                                         ; preds = %if.end6
  %28 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %buf, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -125, i8 %29)
  %cmp13.not = icmp eq i8 %29, -125
  br i1 %cmp13.not, label %if.end16, label %if.end11.cleanup_crit_edge

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end16:                                         ; preds = %if.end11
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %req.i.i105) #6
  %30 = ptrtoint ptr %req.i.i105 to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 -213074354051612673, ptr %req.i.i105, align 8
  %data.i.i107 = getelementptr inbounds %struct.rtl28xxu_req, ptr %req.i.i105, i32 0, i32 3
  %31 = ptrtoint ptr %data.i.i107 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %buf, ptr %data.i.i107, align 8
  %call.i.i108 = call fastcc i32 @rtl28xxu_ctrl_msg(ptr noundef %d, ptr noundef nonnull %req.i.i105) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %req.i.i105) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i108)
  %tobool19.not = icmp eq i32 %call.i.i108, 0
  br i1 %tobool19.not, label %lor.lhs.false, label %if.end16.do.body_crit_edge

if.end16.do.body_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

lor.lhs.false:                                    ; preds = %if.end16
  %32 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %buf, align 1
  %conv21 = zext i8 %33 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %33)
  %cmp22 = icmp ugt i8 %33, -128
  br i1 %cmp22, label %lor.lhs.false.do.body_crit_edge, label %if.end25

lor.lhs.false.do.body_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

if.end25:                                         ; preds = %lor.lhs.false
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %req.i) #6
  %34 = ptrtoint ptr %req.i to i32
  call void @__asan_store8_noabort(i32 %34)
  store i64 -288228168538521601, ptr %req.i, align 8
  %conv10.i = zext i8 %33 to i16
  %size.i = getelementptr inbounds %struct.rtl28xxu_req, ptr %req.i, i32 0, i32 2
  %35 = ptrtoint ptr %size.i to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %conv10.i, ptr %size.i, align 4
  %data.i = getelementptr inbounds %struct.rtl28xxu_req, ptr %req.i, i32 0, i32 3
  %36 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %buf, ptr %data.i, align 8
  %call.i = call fastcc i32 @rtl28xxu_ctrl_msg(ptr noundef %d, ptr noundef nonnull %req.i) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %req.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool29.not = icmp eq i32 %call.i, 0
  br i1 %tobool29.not, label %rtl28xxu_wr_reg_mask.exit146, label %if.end25.do.body_crit_edge

if.end25.do.body_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

rtl28xxu_wr_reg_mask.exit146.1:                   ; preds = %rtl28xxu_wr_reg_mask.exit146
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i.i110) #6
  %37 = ptrtoint ptr %val.addr.i.i110 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 -128, ptr %val.addr.i.i110, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %req.i.i25.i109) #6
  %38 = ptrtoint ptr %req.i.i25.i109 to i32
  call void @__asan_store8_noabort(i32 %38)
  store i64 -213637235285557249, ptr %req.i.i25.i109, align 8
  %39 = ptrtoint ptr %data.i.i34.i142 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %val.addr.i.i110, ptr %data.i.i34.i142, align 8
  %call.i.i35.i143.1 = call fastcc i32 @rtl28xxu_ctrl_msg(ptr noundef %d, ptr noundef nonnull %req.i.i25.i109) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %req.i.i25.i109) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i.i110) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i35.i143.1)
  %tobool43.not.1 = icmp eq i32 %call.i.i35.i143.1, 0
  br i1 %tobool43.not.1, label %rtl28xxu_wr_reg_mask.exit146.2, label %rtl28xxu_wr_reg_mask.exit146.1.do.body_crit_edge

rtl28xxu_wr_reg_mask.exit146.1.do.body_crit_edge: ; preds = %rtl28xxu_wr_reg_mask.exit146.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

rtl28xxu_wr_reg_mask.exit146.2:                   ; preds = %rtl28xxu_wr_reg_mask.exit146.1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i.i110) #6
  %40 = ptrtoint ptr %val.addr.i.i110 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 -128, ptr %val.addr.i.i110, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %req.i.i25.i109) #6
  %41 = ptrtoint ptr %req.i.i25.i109 to i32
  call void @__asan_store8_noabort(i32 %41)
  store i64 -215607560122531841, ptr %req.i.i25.i109, align 8
  %42 = ptrtoint ptr %data.i.i34.i142 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %val.addr.i.i110, ptr %data.i.i34.i142, align 8
  %call.i.i35.i143.2 = call fastcc i32 @rtl28xxu_ctrl_msg(ptr noundef %d, ptr noundef nonnull %req.i.i25.i109) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %req.i.i25.i109) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i.i110) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i35.i143.2)
  %tobool43.not.2 = icmp eq i32 %call.i.i35.i143.2, 0
  br i1 %tobool43.not.2, label %for.cond32.2, label %rtl28xxu_wr_reg_mask.exit146.2.do.body_crit_edge

rtl28xxu_wr_reg_mask.exit146.2.do.body_crit_edge: ; preds = %rtl28xxu_wr_reg_mask.exit146.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

for.cond32.2:                                     ; preds = %rtl28xxu_wr_reg_mask.exit146.2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %cmp50155.not = icmp eq i8 %33, 0
  br i1 %cmp50155.not, label %for.cond32.2.for.end60_crit_edge, label %for.body52.lr.ph

for.cond32.2.for.end60_crit_edge:                 ; preds = %for.cond32.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end60

for.body52.lr.ph:                                 ; preds = %for.cond32.2
  %pulse = getelementptr inbounds %struct.ir_raw_event, ptr %ev, i32 0, i32 2
  %rc_dev = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 12
  br label %for.body52

rtl28xxu_wr_reg_mask.exit146:                     ; preds = %if.end25
  %data.i.i34.i142 = getelementptr inbounds %struct.rtl28xxu_req, ptr %req.i.i25.i109, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i.i110) #6
  %43 = ptrtoint ptr %val.addr.i.i110 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 3, ptr %val.addr.i.i110, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %req.i.i25.i109) #6
  %44 = ptrtoint ptr %req.i.i25.i109 to i32
  call void @__asan_store8_noabort(i32 %44)
  store i64 -215889035099242497, ptr %req.i.i25.i109, align 8
  %45 = ptrtoint ptr %data.i.i34.i142 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %val.addr.i.i110, ptr %data.i.i34.i142, align 8
  %call.i.i35.i143 = call fastcc i32 @rtl28xxu_ctrl_msg(ptr noundef %d, ptr noundef nonnull %req.i.i25.i109) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %req.i.i25.i109) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i.i110) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i35.i143)
  %tobool43.not = icmp eq i32 %call.i.i35.i143, 0
  br i1 %tobool43.not, label %rtl28xxu_wr_reg_mask.exit146.1, label %rtl28xxu_wr_reg_mask.exit146.do.body_crit_edge

rtl28xxu_wr_reg_mask.exit146.do.body_crit_edge:   ; preds = %rtl28xxu_wr_reg_mask.exit146
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

for.body52:                                       ; preds = %for.body52.for.body52_crit_edge, %for.body52.lr.ph
  %i.2156 = phi i32 [ 0, %for.body52.lr.ph ], [ %inc59, %for.body52.for.body52_crit_edge ]
  %arrayidx53 = getelementptr [128 x i8], ptr %buf, i32 0, i32 %i.2156
  %46 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx53, align 1
  %48 = and i8 %47, -128
  %49 = ptrtoint ptr %pulse to i32
  call void @__asan_load1_noabort(i32 %49)
  %bf.load = load i8, ptr %pulse, align 1
  %bf.clear = and i8 %bf.load, 127
  %bf.set = or i8 %bf.clear, %48
  store i8 %bf.set, ptr %pulse, align 1
  %50 = and i8 %47, 127
  %and = zext i8 %50 to i32
  %mul = mul nuw nsw i32 %and, 51
  %51 = ptrtoint ptr %ev to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %mul, ptr %ev, align 8
  %52 = ptrtoint ptr %rc_dev to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %rc_dev, align 8
  %call57 = call i32 @ir_raw_event_store_with_filter(ptr noundef %53, ptr noundef nonnull %ev) #6
  %inc59 = add nuw nsw i32 %i.2156, 1
  %exitcond161.not = icmp eq i32 %inc59, %conv21
  br i1 %exitcond161.not, label %for.body52.for.end60_crit_edge, label %for.body52.for.body52_crit_edge

for.body52.for.body52_crit_edge:                  ; preds = %for.body52
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body52

for.body52.for.end60_crit_edge:                   ; preds = %for.body52
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end60

for.end60:                                        ; preds = %for.body52.for.end60_crit_edge, %for.cond32.2.for.end60_crit_edge
  %rc_dev61 = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 12
  %54 = ptrtoint ptr %rc_dev61 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %rc_dev61, align 8
  call void @ir_raw_event_handle(ptr noundef %55) #6
  br label %cleanup

do.body:                                          ; preds = %rtl28xxu_wr_reg_mask.exit146.do.body_crit_edge, %rtl28xxu_wr_reg_mask.exit146.2.do.body_crit_edge, %rtl28xxu_wr_reg_mask.exit146.1.do.body_crit_edge, %if.end25.do.body_crit_edge, %lor.lhs.false.do.body_crit_edge, %if.end16.do.body_crit_edge, %if.end6.do.body_crit_edge, %if.end13.i.do.body_crit_edge, %rtl28xxu_wr_reg_mask.exit.thread
  %ret.2 = phi i32 [ %call.i.i, %if.end6.do.body_crit_edge ], [ %call.i.i108, %if.end16.do.body_crit_edge ], [ 0, %lor.lhs.false.do.body_crit_edge ], [ %call.i, %if.end25.do.body_crit_edge ], [ %call.i.i.i, %rtl28xxu_wr_reg_mask.exit.thread ], [ %call.i.i35.i143, %rtl28xxu_wr_reg_mask.exit146.do.body_crit_edge ], [ %call.i.i35.i143.1, %rtl28xxu_wr_reg_mask.exit146.1.do.body_crit_edge ], [ %call.i.i35.i143.2, %rtl28xxu_wr_reg_mask.exit146.2.do.body_crit_edge ], [ %call.i.i35.i, %if.end13.i.do.body_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtl2832u_rc_query.__UNIQUE_ID_ddebug434, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtl2832u_rc_query, %if.then66)) #6
          to label %cleanup [label %if.then66], !srcloc !420

if.then66:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %intf = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 4
  %56 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %intf, align 8
  %dev67 = getelementptr inbounds %struct.usb_interface, ptr %57, i32 0, i32 7
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rtl2832u_rc_query.__UNIQUE_ID_ddebug434, ptr noundef %dev67, ptr noundef nonnull @.str.79, i32 noundef %ret.2) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then66, %do.body, %for.end60, %if.end11.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end11.cleanup_crit_edge ], [ 0, %for.end60 ], [ %ret.2, %if.then66 ], [ %ret.2, %do.body ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %buf) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ev) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ir_raw_event_store_with_filter(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ir_raw_event_handle(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

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

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 212)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 212)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !9, !11, !12, !14, !16, !18, !20, !21, !23, !24, !25, !26, !27, !28, !30, !32, !34, !36, !38, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !97, !99, !101, !103, !105, !106, !107, !108, !110, !111, !112, !113, !114, !116, !117, !119, !120, !122, !123, !124, !125, !127, !128, !129, !130, !132, !134, !136, !137, !138, !140, !141, !143, !144, !146, !148, !149, !151, !153, !155, !157, !159, !160, !162, !164, !166, !168, !170, !171, !173, !175, !177, !179, !180, !182, !184, !186, !188, !190, !192, !194, !196, !198, !200, !202, !204, !206, !208, !210, !211, !213, !214, !216, !217, !219, !220, !222, !224, !225, !227, !228, !229, !231, !233, !235, !237, !239, !241, !243, !244, !246, !247, !249, !251, !253, !255, !256, !257, !258, !259, !261, !263, !265, !267, !269, !271, !273, !275, !277, !279, !280, !281, !283, !284, !285, !287, !289, !290, !292, !294, !295, !297, !298, !300, !301, !302, !303, !304, !306, !307, !308, !309, !310, !312, !313, !314, !315, !316, !318, !319, !320, !322, !324, !326, !328, !330, !331, !333, !334, !335, !336, !337, !339, !340, !341, !342, !343, !345, !347, !349, !351, !352, !353, !354, !355, !357, !358, !360, !361, !363, !365, !366, !368, !370, !371, !373, !375, !377, !379, !381, !382, !384, !385, !386, !388, !390, !391, !393, !395, !397, !399, !401, !403, !404, !406, !408, !410}
!llvm.module.flags = !{!411, !412, !413, !414, !415, !416, !417, !418}
!llvm.ident = !{!419}

!0 = !{ptr @__param_disable_rc, !1, !"__param_disable_rc", i1 false, i1 false}
!1 = !{!"../drivers/media/usb/dvb-usb-v2/rtl28xxu.c", i32 13, i32 1}
!2 = !{ptr @__UNIQUE_ID_disable_rctype388, !1, !"__UNIQUE_ID_disable_rctype388", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_disable_rc389, !4, !"__UNIQUE_ID_disable_rc389", i1 false, i1 false}
!4 = !{!"../drivers/media/usb/dvb-usb-v2/rtl28xxu.c", i32 14, i32 1}
!5 = !{ptr @__param_adapter_nr, !6, !"__param_adapter_nr", i1 false, i1 false}
!6 = !{!"../drivers/media/usb/dvb-usb-v2/rtl28xxu.c", i32 15, i32 1}
!7 = !{ptr @__UNIQUE_ID_adapter_nrtype390, !6, !"__UNIQUE_ID_adapter_nrtype390", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_adapter_nr391, !6, !"__UNIQUE_ID_adapter_nr391", i1 false, i1 false}
!9 = !{ptr @__initcall__kmod_dvb_usb_rtl28xxu__435_1988_rtl28xxu_usb_driver_init6, !10, !"__initcall__kmod_dvb_usb_rtl28xxu__435_1988_rtl28xxu_usb_driver_init6", i1 false, i1 false}
!10 = !{!"../drivers/media/usb/dvb-usb-v2/rtl28xxu.c", i32 1988, i32 1}
!11 = !{ptr @__exitcall_rtl28xxu_usb_driver_exit, !10, !"__exitcall_rtl28xxu_usb_driver_exit", i1 false, i1 false}
!12 = !{ptr @__UNIQUE_ID_description436, !13, !"__UNIQUE_ID_description436", i1 false, i1 false}
!13 = !{!"../drivers/media/usb/dvb-usb-v2/rtl28xxu.c", i32 1990, i32 1}
!14 = !{ptr @__UNIQUE_ID_author437, !15, !"__UNIQUE_ID_author437", i1 false, i1 false}
!15 = !{!"../drivers/media/usb/dvb-usb-v2/rtl28xxu.c", i32 1991, i32 1}
!16 = !{ptr @__UNIQUE_ID_author438, !17, !"__UNIQUE_ID_author438", i1 false, i1 false}
!17 = !{!"../drivers/media/usb/dvb-usb-v2/rtl28xxu.c", i32 1992, i32 1}
!18 = !{ptr @__UNIQUE_ID_file439, !19, !"__UNIQUE_ID_file439", i1 false, i1 false}
!19 = !{!"../drivers/media/usb/dvb-usb-v2/rtl28xxu.c", i32 1993, i32 1}
!20 = !{ptr @__UNIQUE_ID_license440, !19, !"__UNIQUE_ID_license440", i1 false, i1 false}
!21 = !{ptr @rtl28xxu_disable_rc, !22, !"rtl28xxu_disable_rc", i1 false, i1 false}
!22 = !{!"../drivers/media/usb/dvb-usb-v2/rtl28xxu.c", i32 12, i32 12}
!23 = !{ptr @__param_str_disable_rc, !1, !"__param_str_disable_rc", i1 false, i1 false}
!24 = !{ptr @__param_str_adapter_nr, !6, !"__param_str_adapter_nr", i1 false, i1 false}
!25 = !{ptr @__param_arr_adapter_nr, !6, !"__param_arr_adapter_nr", i1 false, i1 false}
!26 = !{ptr @adapter_nr, !6, !"adapter_nr", i1 false, i1 false}
!27 = !{ptr @.str, !10, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @rtl28xxu_usb_driver, !29, !"rtl28xxu_usb_driver", i1 false, i1 false}
!29 = !{!"../drivers/media/usb/dvb-usb-v2/rtl28xxu.c", i32 1976, i32 26}
!30 = !{ptr @.str.1, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/media/usb/dvb-usb-v2/rtl28xxu.c", i32 1897, i32 4}
!32 = !{ptr @.str.2, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/media/usb/dvb-usb-v2/rtl28xxu.c", i32 1899, i32 4}
!34 = !{ptr @.str.5, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/media/usb/dvb-usb-v2/rtl28xxu.c", i32 1905, i32 4}
!36 = !{ptr @.str.8, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/media/usb/dvb-usb-v2/rtl28xxu.c", i32 1909, i32 4}
!38 = !{ptr @.str.9, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @.str.11, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/media/usb/dvb-usb-v2/rtl28xxu.c", i32 1911, i32 4}
!41 = !{ptr @.str.13, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/media/usb/dvb-usb-v2/rtl28xxu.c", i32 1913, i32 4}
!43 = !{ptr @.str.15, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/media/usb/dvb-usb-v2/rtl28xxu.c", i32 1915, i32 4}
!45 = !{ptr @.str.17, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/media/usb/dvb-usb-v2/rtl28xxu.c", i32 1917, i32 4}
!47 = !{ptr @.str.19, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/media/usb/dvb-usb-v2/rtl28xxu.c", i32 1919, i32 4}
!49 = !{ptr @.str.21, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/media/usb/dvb-usb-v2/rtl28xxu.c", i32 1921, i32 4}
!51 = !{ptr @.str.23, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/media/usb/dvb-usb-v2/rtl28xxu.c", i32 1923, i32 4}
!53 = !{ptr @.str.25, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/media/usb/dvb-usb-v2/rtl28xxu.c", i32 1925, i32 4}
!55 = !{ptr @.str.27, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/media/usb/dvb-usb-v2/rtl28xxu.c", i32 1927, i32 4}
!57 = !{ptr @.str.28, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @.str.30, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/media/usb/dvb-usb-v2/rtl28xxu.c", i32 1929, i32 4}
!60 = !{ptr @.str.32, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/media/usb/dvb-usb-v2/rtl28xxu.c", i32 1931, i32 4}
!62 = !{ptr @.str.34, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/media/usb/dvb-usb-v2/rtl28xxu.c", i32 1933, i32 4}
!64 = !{ptr @.str.36, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/media/usb/dvb-usb-v2/rtl28xxu.c", i32 1935, i32 4}
!66 = !{ptr @.str.38, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/media/usb/dvb-usb-v2/rtl28xxu.c", i32 1937, i32 4}
!68 = !{ptr @.str.40, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/media/usb/dvb-usb-v2/rtl28xxu.c", i32 1939, i32 4}
!70 = !{ptr @.str.42, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/media/usb/dvb-usb-v2/rtl28xxu.c", i32 1941, i32 4}
!72 = !{ptr @.str.44, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/media/usb/dvb-usb-v2/rtl28xxu.c", i32 1943, i32 4}
!74 = !{ptr @.str.46, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/media/usb/dvb-usb-v2/rtl28xxu.c", i32 1945, i32 4}
!76 = !{ptr @.str.48, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/media/usb/dvb-usb-v2/rtl28xxu.c", i32 1947, i32 4}
!78 = !{ptr @.str.50, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/media/usb/dvb-usb-v2/rtl28xxu.c", i32 1949, i32 4}
!80 = !{ptr @.str.52, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/media/usb/dvb-usb-v2/rtl28xxu.c", i32 1951, i32 4}
!82 = !{ptr @.str.54, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/media/usb/dvb-usb-v2/rtl28xxu.c", i32 1953, i32 4}
!84 = !{ptr @.str.56, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/media/usb/dvb-usb-v2/rtl28xxu.c", i32 1955, i32 4}
!86 = !{ptr @.str.58, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/media/usb/dvb-usb-v2/rtl28xxu.c", i32 1957, i32 4}
!88 = !{ptr @.str.60, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/media/usb/dvb-usb-v2/rtl28xxu.c", i32 1959, i32 4}
!90 = !{ptr @.str.62, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/media/usb/dvb-usb-v2/rtl28xxu.c", i32 1961, i32 4}
!92 = !{ptr @.str.64, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/media/usb/dvb-usb-v2/rtl28xxu.c", i32 1963, i32 4}
!94 = !{ptr @.str.66, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/media/usb/dvb-usb-v2/rtl28xxu.c", i32 1967, i32 4}
!96 = !{ptr @.str.67, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @.str.69, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/media/usb/dvb-usb-v2/rtl28xxu.c", i32 1970, i32 4}
!99 = !{ptr @rtl28xxu_id_table, !100, !"rtl28xxu_id_table", i1 false, i1 false}
!100 = !{!"../drivers/media/usb/dvb-usb-v2/rtl28xxu.c", i32 1895, i32 35}
!101 = !{ptr @rtl28xxu_props, !102, !"rtl28xxu_props", i1 false, i1 false}
!102 = !{!"../drivers/media/usb/dvb-usb-v2/rtl28xxu.c", i32 1862, i32 47}
!103 = !{ptr @.str.72, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/media/usb/dvb-usb-v2/rtl28xxu.c", i32 627, i32 2}
!105 = !{ptr @.str.73, !104, !"<string literal>", i1 false, i1 false}
!106 = !{ptr @.str.74, !104, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @rtl28xxu_identify_state.__UNIQUE_ID_ddebug404, !104, !"__UNIQUE_ID_ddebug404", i1 false, i1 false}
!108 = !{ptr @.str.75, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/media/usb/dvb-usb-v2/rtl28xxu.c", i32 639, i32 3}
!110 = !{ptr @.str.76, !109, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @.str.77, !109, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @rtl28xxu_identify_state._entry, !109, !"_entry", i1 false, i1 false}
!113 = !{ptr @rtl28xxu_identify_state._entry_ptr, !109, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @.str.78, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/media/usb/dvb-usb-v2/rtl28xxu.c", i32 642, i32 2}
!116 = !{ptr @rtl28xxu_identify_state.__UNIQUE_ID_ddebug405, !115, !"__UNIQUE_ID_ddebug405", i1 false, i1 false}
!117 = !{ptr @.str.79, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/media/usb/dvb-usb-v2/rtl28xxu.c", i32 650, i32 2}
!119 = !{ptr @rtl28xxu_identify_state.__UNIQUE_ID_ddebug406, !118, !"__UNIQUE_ID_ddebug406", i1 false, i1 false}
!120 = !{ptr @.str.80, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/media/usb/dvb-usb-v2/rtl28xxu.c", i32 27, i32 3}
!122 = !{ptr @.str.81, !121, !"<string literal>", i1 false, i1 false}
!123 = !{ptr @rtl28xxu_ctrl_msg._entry, !121, !"_entry", i1 false, i1 false}
!124 = !{ptr @rtl28xxu_ctrl_msg._entry_ptr, !121, !"_entry_ptr", i1 false, i1 false}
!125 = !{ptr @.str.82, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/media/usb/dvb-usb-v2/rtl28xxu.c", i32 54, i32 2}
!127 = !{ptr @.str.83, !126, !"<string literal>", i1 false, i1 false}
!128 = !{ptr @.str.84, !126, !"<string literal>", i1 false, i1 false}
!129 = !{ptr @rtl28xxu_ctrl_msg.__UNIQUE_ID_ddebug392, !126, !"__UNIQUE_ID_ddebug392", i1 false, i1 false}
!130 = !{ptr @rtl28xxu_ctrl_msg.__UNIQUE_ID_ddebug393, !131, !"__UNIQUE_ID_ddebug393", i1 false, i1 false}
!131 = !{!"../drivers/media/usb/dvb-usb-v2/rtl28xxu.c", i32 68, i32 2}
!132 = !{ptr @rtl28xxu_i2c_algo, !133, !"rtl28xxu_i2c_algo", i1 false, i1 false}
!133 = !{!"../drivers/media/usb/dvb-usb-v2/rtl28xxu.c", i32 273, i32 29}
!134 = !{ptr @.str.85, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/media/usb/dvb-usb-v2/rtl28xxu.c", i32 1461, i32 2}
!136 = !{ptr @.str.86, !135, !"<string literal>", i1 false, i1 false}
!137 = !{ptr @rtl2831u_power_ctrl.__UNIQUE_ID_ddebug425, !135, !"__UNIQUE_ID_ddebug425", i1 false, i1 false}
!138 = !{ptr @.str.87, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/media/usb/dvb-usb-v2/rtl28xxu.c", i32 1473, i32 2}
!140 = !{ptr @rtl2831u_power_ctrl.__UNIQUE_ID_ddebug426, !139, !"__UNIQUE_ID_ddebug426", i1 false, i1 false}
!141 = !{ptr @.str.88, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/media/usb/dvb-usb-v2/rtl28xxu.c", i32 1492, i32 2}
!143 = !{ptr @rtl2831u_power_ctrl.__UNIQUE_ID_ddebug427, !142, !"__UNIQUE_ID_ddebug427", i1 false, i1 false}
!144 = !{ptr @rtl2831u_power_ctrl.__UNIQUE_ID_ddebug428, !145, !"__UNIQUE_ID_ddebug428", i1 false, i1 false}
!145 = !{!"../drivers/media/usb/dvb-usb-v2/rtl28xxu.c", i32 1514, i32 2}
!146 = !{ptr @.str.89, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/media/usb/dvb-usb-v2/rtl28xxu.c", i32 1522, i32 2}
!148 = !{ptr @rtl2832u_power_ctrl.__UNIQUE_ID_ddebug429, !147, !"__UNIQUE_ID_ddebug429", i1 false, i1 false}
!149 = !{ptr @.str.90, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/media/usb/dvb-usb-v2/rtl28xxu.c", i32 1546, i32 42}
!151 = !{ptr @.str.91, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/media/usb/dvb-usb-v2/rtl28xxu.c", i32 1565, i32 42}
!153 = !{ptr @rtl2832u_power_ctrl.__UNIQUE_ID_ddebug430, !154, !"__UNIQUE_ID_ddebug430", i1 false, i1 false}
!154 = !{!"../drivers/media/usb/dvb-usb-v2/rtl28xxu.c", i32 1572, i32 2}
!155 = !{ptr @.str.92, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/media/usb/dvb-usb-v2/rtl28xxu.c", i32 284, i32 63}
!157 = !{ptr @.str.93, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/media/usb/dvb-usb-v2/rtl28xxu.c", i32 289, i32 2}
!159 = !{ptr @rtl2831u_read_config.__UNIQUE_ID_ddebug394, !158, !"__UNIQUE_ID_ddebug394", i1 false, i1 false}
!160 = !{ptr @.str.94, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/media/usb/dvb-usb-v2/rtl28xxu.c", i32 317, i32 20}
!162 = !{ptr @.str.95, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/media/usb/dvb-usb-v2/rtl28xxu.c", i32 328, i32 21}
!164 = !{ptr @.str.96, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/media/usb/dvb-usb-v2/rtl28xxu.c", i32 341, i32 21}
!166 = !{ptr @.str.97, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/media/usb/dvb-usb-v2/rtl28xxu.c", i32 347, i32 20}
!168 = !{ptr @.str.98, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/media/usb/dvb-usb-v2/rtl28xxu.c", i32 351, i32 2}
!170 = !{ptr @rtl2831u_read_config.__UNIQUE_ID_ddebug395, !169, !"__UNIQUE_ID_ddebug395", i1 false, i1 false}
!171 = !{ptr @rtl2831u_read_config.__UNIQUE_ID_ddebug396, !172, !"__UNIQUE_ID_ddebug396", i1 false, i1 false}
!172 = !{!"../drivers/media/usb/dvb-usb-v2/rtl28xxu.c", i32 355, i32 2}
!173 = !{ptr @.str.99, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/media/usb/dvb-usb-v2/rtl28xxu.c", i32 365, i32 63}
!175 = !{ptr @.str.100, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/media/usb/dvb-usb-v2/rtl28xxu.c", i32 367, i32 64}
!177 = !{ptr @.str.101, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/media/usb/dvb-usb-v2/rtl28xxu.c", i32 387, i32 2}
!179 = !{ptr @rtl2832u_read_config.__UNIQUE_ID_ddebug397, !178, !"__UNIQUE_ID_ddebug397", i1 false, i1 false}
!180 = !{ptr @.str.102, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/media/usb/dvb-usb-v2/rtl28xxu.c", i32 414, i32 21}
!182 = !{ptr @.str.103, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/media/usb/dvb-usb-v2/rtl28xxu.c", i32 422, i32 21}
!184 = !{ptr @.str.104, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/media/usb/dvb-usb-v2/rtl28xxu.c", i32 430, i32 21}
!186 = !{ptr @.str.105, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/media/usb/dvb-usb-v2/rtl28xxu.c", i32 438, i32 21}
!188 = !{ptr @.str.106, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/media/usb/dvb-usb-v2/rtl28xxu.c", i32 446, i32 21}
!190 = !{ptr @.str.107, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/media/usb/dvb-usb-v2/rtl28xxu.c", i32 454, i32 21}
!192 = !{ptr @.str.108, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/media/usb/dvb-usb-v2/rtl28xxu.c", i32 462, i32 21}
!194 = !{ptr @.str.109, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/media/usb/dvb-usb-v2/rtl28xxu.c", i32 470, i32 21}
!196 = !{ptr @.str.110, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/media/usb/dvb-usb-v2/rtl28xxu.c", i32 478, i32 21}
!198 = !{ptr @.str.111, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/media/usb/dvb-usb-v2/rtl28xxu.c", i32 486, i32 21}
!200 = !{ptr @.str.112, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/media/usb/dvb-usb-v2/rtl28xxu.c", i32 494, i32 21}
!202 = !{ptr @.str.113, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/media/usb/dvb-usb-v2/rtl28xxu.c", i32 502, i32 21}
!204 = !{ptr @.str.114, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/media/usb/dvb-usb-v2/rtl28xxu.c", i32 531, i32 21}
!206 = !{ptr @rtl2832u_read_config.__UNIQUE_ID_ddebug398, !207, !"__UNIQUE_ID_ddebug398", i1 false, i1 false}
!207 = !{!"../drivers/media/usb/dvb-usb-v2/rtl28xxu.c", i32 536, i32 2}
!208 = !{ptr @.str.115, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/media/usb/dvb-usb-v2/rtl28xxu.c", i32 570, i32 4}
!210 = !{ptr @rtl2832u_read_config.__UNIQUE_ID_ddebug399, !209, !"__UNIQUE_ID_ddebug399", i1 false, i1 false}
!211 = !{ptr @.str.116, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../drivers/media/usb/dvb-usb-v2/rtl28xxu.c", i32 577, i32 4}
!213 = !{ptr @rtl2832u_read_config.__UNIQUE_ID_ddebug400, !212, !"__UNIQUE_ID_ddebug400", i1 false, i1 false}
!214 = !{ptr @.str.117, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/media/usb/dvb-usb-v2/rtl28xxu.c", i32 584, i32 4}
!216 = !{ptr @rtl2832u_read_config.__UNIQUE_ID_ddebug401, !215, !"__UNIQUE_ID_ddebug401", i1 false, i1 false}
!217 = !{ptr @.str.118, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/media/usb/dvb-usb-v2/rtl28xxu.c", i32 593, i32 4}
!219 = !{ptr @rtl2832u_read_config.__UNIQUE_ID_ddebug402, !218, !"__UNIQUE_ID_ddebug402", i1 false, i1 false}
!220 = !{ptr @rtl2832u_read_config.__UNIQUE_ID_ddebug403, !221, !"__UNIQUE_ID_ddebug403", i1 false, i1 false}
!221 = !{!"../drivers/media/usb/dvb-usb-v2/rtl28xxu.c", i32 607, i32 2}
!222 = !{ptr @.str.119, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../drivers/media/usb/dvb-usb-v2/rtl28xxu.c", i32 688, i32 2}
!224 = !{ptr @rtl2831u_frontend_attach.__UNIQUE_ID_ddebug407, !223, !"__UNIQUE_ID_ddebug407", i1 false, i1 false}
!225 = !{ptr @.str.120, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../drivers/media/usb/dvb-usb-v2/rtl28xxu.c", i32 701, i32 3}
!227 = !{ptr @rtl2831u_frontend_attach._entry, !226, !"_entry", i1 false, i1 false}
!228 = !{ptr @rtl2831u_frontend_attach._entry_ptr, !226, !"_entry_ptr", i1 false, i1 false}
!229 = !{ptr @.str.121, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../drivers/media/usb/dvb-usb-v2/rtl28xxu.c", i32 708, i32 27}
!231 = !{ptr @.str.122, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../drivers/media/usb/dvb-usb-v2/rtl28xxu.c", i32 711, i32 2}
!233 = !{ptr @rtl2831u_frontend_attach.__UNIQUE_ID_ddebug408, !234, !"__UNIQUE_ID_ddebug408", i1 false, i1 false}
!234 = !{!"../drivers/media/usb/dvb-usb-v2/rtl28xxu.c", i32 731, i32 2}
!235 = !{ptr @rtl2830_qt1010_platform_data, !236, !"rtl2830_qt1010_platform_data", i1 false, i1 false}
!236 = !{!"../drivers/media/usb/dvb-usb-v2/rtl28xxu.c", i32 663, i32 43}
!237 = !{ptr @rtl2830_mt2060_platform_data, !238, !"rtl2830_mt2060_platform_data", i1 false, i1 false}
!238 = !{!"../drivers/media/usb/dvb-usb-v2/rtl28xxu.c", i32 654, i32 43}
!239 = !{ptr @rtl2830_mxl5005s_platform_data, !240, !"rtl2830_mxl5005s_platform_data", i1 false, i1 false}
!240 = !{!"../drivers/media/usb/dvb-usb-v2/rtl28xxu.c", i32 671, i32 43}
!241 = !{ptr @.str.123, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../drivers/media/usb/dvb-usb-v2/rtl28xxu.c", i32 896, i32 2}
!243 = !{ptr @rtl2832u_frontend_attach.__UNIQUE_ID_ddebug414, !242, !"__UNIQUE_ID_ddebug414", i1 false, i1 false}
!244 = !{ptr @rtl2832u_frontend_attach._entry, !245, !"_entry", i1 false, i1 false}
!245 = !{!"../drivers/media/usb/dvb-usb-v2/rtl28xxu.c", i32 922, i32 3}
!246 = !{ptr @rtl2832u_frontend_attach._entry_ptr, !245, !"_entry_ptr", i1 false, i1 false}
!247 = !{ptr @.str.124, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../drivers/media/usb/dvb-usb-v2/rtl28xxu.c", i32 929, i32 27}
!249 = !{ptr @.str.125, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../drivers/media/usb/dvb-usb-v2/rtl28xxu.c", i32 962, i32 23}
!251 = !{ptr @.str.126, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../drivers/media/usb/dvb-usb-v2/rtl28xxu.c", i32 984, i32 23}
!253 = !{ptr @.str.127, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../drivers/media/usb/dvb-usb-v2/rtl28xxu.c", i32 1006, i32 18}
!255 = !{ptr @.str.128, !254, !"<string literal>", i1 false, i1 false}
!256 = !{ptr @.str.130, !254, !"<string literal>", i1 false, i1 false}
!257 = !{ptr @rtl2832u_frontend_attach._entry.129, !254, !"_entry", i1 false, i1 false}
!258 = !{ptr @rtl2832u_frontend_attach._entry_ptr.131, !254, !"_entry_ptr", i1 false, i1 false}
!259 = !{ptr @.str.132, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../drivers/media/usb/dvb-usb-v2/rtl28xxu.c", i32 1022, i32 23}
!261 = !{ptr @rtl2832u_frontend_attach.__UNIQUE_ID_ddebug415, !262, !"__UNIQUE_ID_ddebug415", i1 false, i1 false}
!262 = !{!"../drivers/media/usb/dvb-usb-v2/rtl28xxu.c", i32 1044, i32 2}
!263 = !{ptr @rtl2832_fc0012_platform_data, !264, !"rtl2832_fc0012_platform_data", i1 false, i1 false}
!264 = !{!"../drivers/media/usb/dvb-usb-v2/rtl28xxu.c", i32 740, i32 43}
!265 = !{ptr @rtl2832_fc0013_platform_data, !266, !"rtl2832_fc0013_platform_data", i1 false, i1 false}
!266 = !{!"../drivers/media/usb/dvb-usb-v2/rtl28xxu.c", i32 745, i32 43}
!267 = !{ptr @rtl2832_fc2580_platform_data, !268, !"rtl2832_fc2580_platform_data", i1 false, i1 false}
!268 = !{!"../drivers/media/usb/dvb-usb-v2/rtl28xxu.c", i32 735, i32 43}
!269 = !{ptr @rtl2832_tua9001_platform_data, !270, !"rtl2832_tua9001_platform_data", i1 false, i1 false}
!270 = !{!"../drivers/media/usb/dvb-usb-v2/rtl28xxu.c", i32 750, i32 43}
!271 = !{ptr @rtl2832_e4000_platform_data, !272, !"rtl2832_e4000_platform_data", i1 false, i1 false}
!272 = !{!"../drivers/media/usb/dvb-usb-v2/rtl28xxu.c", i32 755, i32 43}
!273 = !{ptr @rtl2832_r820t_platform_data, !274, !"rtl2832_r820t_platform_data", i1 false, i1 false}
!274 = !{!"../drivers/media/usb/dvb-usb-v2/rtl28xxu.c", i32 760, i32 43}
!275 = !{ptr @rtl2832_si2157_platform_data, !276, !"rtl2832_si2157_platform_data", i1 false, i1 false}
!276 = !{!"../drivers/media/usb/dvb-usb-v2/rtl28xxu.c", i32 765, i32 43}
!277 = !{ptr @.str.133, !278, !"<string literal>", i1 false, i1 false}
!278 = !{!"../drivers/media/usb/dvb-usb-v2/rtl28xxu.c", i32 871, i32 2}
!279 = !{ptr @.str.134, !278, !"<string literal>", i1 false, i1 false}
!280 = !{ptr @rtl2832u_frontend_callback.__UNIQUE_ID_ddebug413, !278, !"__UNIQUE_ID_ddebug413", i1 false, i1 false}
!281 = !{ptr @.str.135, !282, !"<string literal>", i1 false, i1 false}
!282 = !{!"../drivers/media/usb/dvb-usb-v2/rtl28xxu.c", i32 776, i32 2}
!283 = !{ptr @.str.136, !282, !"<string literal>", i1 false, i1 false}
!284 = !{ptr @rtl2832u_fc0012_tuner_callback.__UNIQUE_ID_ddebug409, !282, !"__UNIQUE_ID_ddebug409", i1 false, i1 false}
!285 = !{ptr @rtl2832u_fc0012_tuner_callback.__UNIQUE_ID_ddebug410, !286, !"__UNIQUE_ID_ddebug410", i1 false, i1 false}
!286 = !{!"../drivers/media/usb/dvb-usb-v2/rtl28xxu.c", i32 801, i32 2}
!287 = !{ptr @.str.137, !288, !"<string literal>", i1 false, i1 false}
!288 = !{!"../drivers/media/usb/dvb-usb-v2/rtl28xxu.c", i32 811, i32 2}
!289 = !{ptr @rtl2832u_tua9001_tuner_callback.__UNIQUE_ID_ddebug411, !288, !"__UNIQUE_ID_ddebug411", i1 false, i1 false}
!290 = !{ptr @rtl2832u_tua9001_tuner_callback.__UNIQUE_ID_ddebug412, !291, !"__UNIQUE_ID_ddebug412", i1 false, i1 false}
!291 = !{!"../drivers/media/usb/dvb-usb-v2/rtl28xxu.c", i32 844, i32 2}
!292 = !{ptr @.str.138, !293, !"<string literal>", i1 false, i1 false}
!293 = !{!"../drivers/media/usb/dvb-usb-v2/rtl28xxu.c", i32 1072, i32 2}
!294 = !{ptr @rtl28xxu_frontend_detach.__UNIQUE_ID_ddebug416, !293, !"__UNIQUE_ID_ddebug416", i1 false, i1 false}
!295 = !{ptr @.str.139, !296, !"<string literal>", i1 false, i1 false}
!296 = !{!"../drivers/media/usb/dvb-usb-v2/rtl28xxu.c", i32 1124, i32 2}
!297 = !{ptr @rtl2831u_tuner_attach.__UNIQUE_ID_ddebug417, !296, !"__UNIQUE_ID_ddebug417", i1 false, i1 false}
!298 = !{ptr @.str.140, !299, !"<string literal>", i1 false, i1 false}
!299 = !{!"../drivers/media/usb/dvb-usb-v2/rtl28xxu.c", i32 1128, i32 8}
!300 = !{ptr @.str.141, !299, !"<string literal>", i1 false, i1 false}
!301 = !{ptr @.str.142, !299, !"<string literal>", i1 false, i1 false}
!302 = !{ptr @rtl2831u_tuner_attach._entry, !299, !"_entry", i1 false, i1 false}
!303 = !{ptr @rtl2831u_tuner_attach._entry_ptr, !299, !"_entry_ptr", i1 false, i1 false}
!304 = !{ptr @.str.143, !305, !"<string literal>", i1 false, i1 false}
!305 = !{!"../drivers/media/usb/dvb-usb-v2/rtl28xxu.c", i32 1133, i32 8}
!306 = !{ptr @.str.144, !305, !"<string literal>", i1 false, i1 false}
!307 = !{ptr @.str.146, !305, !"<string literal>", i1 false, i1 false}
!308 = !{ptr @rtl2831u_tuner_attach._entry.145, !305, !"_entry", i1 false, i1 false}
!309 = !{ptr @rtl2831u_tuner_attach._entry_ptr.147, !305, !"_entry_ptr", i1 false, i1 false}
!310 = !{ptr @.str.148, !311, !"<string literal>", i1 false, i1 false}
!311 = !{!"../drivers/media/usb/dvb-usb-v2/rtl28xxu.c", i32 1138, i32 8}
!312 = !{ptr @.str.149, !311, !"<string literal>", i1 false, i1 false}
!313 = !{ptr @.str.151, !311, !"<string literal>", i1 false, i1 false}
!314 = !{ptr @rtl2831u_tuner_attach._entry.150, !311, !"_entry", i1 false, i1 false}
!315 = !{ptr @rtl2831u_tuner_attach._entry_ptr.152, !311, !"_entry_ptr", i1 false, i1 false}
!316 = !{ptr @.str.154, !317, !"<string literal>", i1 false, i1 false}
!317 = !{!"../drivers/media/usb/dvb-usb-v2/rtl28xxu.c", i32 1144, i32 3}
!318 = !{ptr @rtl2831u_tuner_attach._entry.153, !317, !"_entry", i1 false, i1 false}
!319 = !{ptr @rtl2831u_tuner_attach._entry_ptr.155, !317, !"_entry_ptr", i1 false, i1 false}
!320 = !{ptr @rtl2831u_tuner_attach.__UNIQUE_ID_ddebug418, !321, !"__UNIQUE_ID_ddebug418", i1 false, i1 false}
!321 = !{!"../drivers/media/usb/dvb-usb-v2/rtl28xxu.c", i32 1154, i32 2}
!322 = !{ptr @rtl28xxu_qt1010_config, !323, !"rtl28xxu_qt1010_config", i1 false, i1 false}
!323 = !{!"../drivers/media/usb/dvb-usb-v2/rtl28xxu.c", i32 1091, i32 29}
!324 = !{ptr @rtl28xxu_mt2060_config, !325, !"rtl28xxu_mt2060_config", i1 false, i1 false}
!325 = !{!"../drivers/media/usb/dvb-usb-v2/rtl28xxu.c", i32 1095, i32 29}
!326 = !{ptr @rtl28xxu_mxl5005s_config, !327, !"rtl28xxu_mxl5005s_config", i1 false, i1 false}
!327 = !{!"../drivers/media/usb/dvb-usb-v2/rtl28xxu.c", i32 1100, i32 31}
!328 = !{ptr @.str.156, !329, !"<string literal>", i1 false, i1 false}
!329 = !{!"../drivers/media/usb/dvb-usb-v2/rtl28xxu.c", i32 1189, i32 2}
!330 = !{ptr @rtl2832u_tuner_attach.__UNIQUE_ID_ddebug419, !329, !"__UNIQUE_ID_ddebug419", i1 false, i1 false}
!331 = !{ptr @.str.157, !332, !"<string literal>", i1 false, i1 false}
!332 = !{!"../drivers/media/usb/dvb-usb-v2/rtl28xxu.c", i32 1196, i32 8}
!333 = !{ptr @.str.158, !332, !"<string literal>", i1 false, i1 false}
!334 = !{ptr @.str.159, !332, !"<string literal>", i1 false, i1 false}
!335 = !{ptr @rtl2832u_tuner_attach._entry, !332, !"_entry", i1 false, i1 false}
!336 = !{ptr @rtl2832u_tuner_attach._entry_ptr, !332, !"_entry_ptr", i1 false, i1 false}
!337 = !{ptr @.str.160, !338, !"<string literal>", i1 false, i1 false}
!338 = !{!"../drivers/media/usb/dvb-usb-v2/rtl28xxu.c", i32 1205, i32 8}
!339 = !{ptr @.str.161, !338, !"<string literal>", i1 false, i1 false}
!340 = !{ptr @.str.163, !338, !"<string literal>", i1 false, i1 false}
!341 = !{ptr @rtl2832u_tuner_attach._entry.162, !338, !"_entry", i1 false, i1 false}
!342 = !{ptr @rtl2832u_tuner_attach._entry_ptr.164, !338, !"_entry_ptr", i1 false, i1 false}
!343 = !{ptr @.str.165, !344, !"<string literal>", i1 false, i1 false}
!344 = !{!"../drivers/media/usb/dvb-usb-v2/rtl28xxu.c", i32 1218, i32 23}
!345 = !{ptr @.str.166, !346, !"<string literal>", i1 false, i1 false}
!346 = !{!"../drivers/media/usb/dvb-usb-v2/rtl28xxu.c", i32 1243, i32 29}
!347 = !{ptr @.str.167, !348, !"<string literal>", i1 false, i1 false}
!348 = !{!"../drivers/media/usb/dvb-usb-v2/rtl28xxu.c", i32 1274, i32 28}
!349 = !{ptr @.str.168, !350, !"<string literal>", i1 false, i1 false}
!350 = !{!"../drivers/media/usb/dvb-usb-v2/rtl28xxu.c", i32 1290, i32 8}
!351 = !{ptr @.str.169, !350, !"<string literal>", i1 false, i1 false}
!352 = !{ptr @.str.171, !350, !"<string literal>", i1 false, i1 false}
!353 = !{ptr @rtl2832u_tuner_attach._entry.170, !350, !"_entry", i1 false, i1 false}
!354 = !{ptr @rtl2832u_tuner_attach._entry_ptr.172, !350, !"_entry_ptr", i1 false, i1 false}
!355 = !{ptr @rtl2832u_tuner_attach._entry.173, !356, !"_entry", i1 false, i1 false}
!356 = !{!"../drivers/media/usb/dvb-usb-v2/rtl28xxu.c", i32 1299, i32 8}
!357 = !{ptr @rtl2832u_tuner_attach._entry_ptr.174, !356, !"_entry_ptr", i1 false, i1 false}
!358 = !{ptr @rtl2832u_tuner_attach._entry.175, !359, !"_entry", i1 false, i1 false}
!359 = !{!"../drivers/media/usb/dvb-usb-v2/rtl28xxu.c", i32 1306, i32 9}
!360 = !{ptr @rtl2832u_tuner_attach._entry_ptr.176, !359, !"_entry_ptr", i1 false, i1 false}
!361 = !{ptr @.str.177, !362, !"<string literal>", i1 false, i1 false}
!362 = !{!"../drivers/media/usb/dvb-usb-v2/rtl28xxu.c", i32 1320, i32 23}
!363 = !{ptr @rtl2832u_tuner_attach._entry.178, !364, !"_entry", i1 false, i1 false}
!364 = !{!"../drivers/media/usb/dvb-usb-v2/rtl28xxu.c", i32 1347, i32 3}
!365 = !{ptr @rtl2832u_tuner_attach._entry_ptr.179, !364, !"_entry_ptr", i1 false, i1 false}
!366 = !{ptr @.str.180, !367, !"<string literal>", i1 false, i1 false}
!367 = !{!"../drivers/media/usb/dvb-usb-v2/rtl28xxu.c", i32 1369, i32 3}
!368 = !{ptr @.str.181, !369, !"<string literal>", i1 false, i1 false}
!369 = !{!"../drivers/media/usb/dvb-usb-v2/rtl28xxu.c", i32 1379, i32 3}
!370 = !{ptr @rtl2832u_tuner_attach.__UNIQUE_ID_ddebug420, !369, !"__UNIQUE_ID_ddebug420", i1 false, i1 false}
!371 = !{ptr @rtl2832u_tuner_attach.__UNIQUE_ID_ddebug421, !372, !"__UNIQUE_ID_ddebug421", i1 false, i1 false}
!372 = !{!"../drivers/media/usb/dvb-usb-v2/rtl28xxu.c", i32 1384, i32 2}
!373 = !{ptr @rtl2832u_fc0012_config, !374, !"rtl2832u_fc0012_config", i1 false, i1 false}
!374 = !{!"../drivers/media/usb/dvb-usb-v2/rtl28xxu.c", i32 1158, i32 35}
!375 = !{ptr @rtl2832u_r820t_config, !376, !"rtl2832u_r820t_config", i1 false, i1 false}
!376 = !{!"../drivers/media/usb/dvb-usb-v2/rtl28xxu.c", i32 1163, i32 34}
!377 = !{ptr @rtl2832u_r828d_config, !378, !"rtl2832u_r828d_config", i1 false, i1 false}
!378 = !{!"../drivers/media/usb/dvb-usb-v2/rtl28xxu.c", i32 1170, i32 34}
!379 = !{ptr @.str.182, !380, !"<string literal>", i1 false, i1 false}
!380 = !{!"../drivers/media/usb/dvb-usb-v2/rtl28xxu.c", i32 1405, i32 2}
!381 = !{ptr @rtl28xxu_tuner_detach.__UNIQUE_ID_ddebug422, !380, !"__UNIQUE_ID_ddebug422", i1 false, i1 false}
!382 = !{ptr @.str.183, !383, !"<string literal>", i1 false, i1 false}
!383 = !{!"../drivers/media/usb/dvb-usb-v2/rtl28xxu.c", i32 1594, i32 2}
!384 = !{ptr @.str.184, !383, !"<string literal>", i1 false, i1 false}
!385 = !{ptr @rtl28xxu_frontend_ctrl.__UNIQUE_ID_ddebug431, !383, !"__UNIQUE_ID_ddebug431", i1 false, i1 false}
!386 = !{ptr @rtl28xxu_frontend_ctrl.__UNIQUE_ID_ddebug432, !387, !"__UNIQUE_ID_ddebug432", i1 false, i1 false}
!387 = !{!"../drivers/media/usb/dvb-usb-v2/rtl28xxu.c", i32 1618, i32 2}
!388 = !{ptr @.str.185, !389, !"<string literal>", i1 false, i1 false}
!389 = !{!"../drivers/media/usb/dvb-usb-v2/rtl28xxu.c", i32 1427, i32 2}
!390 = !{ptr @rtl28xxu_init.__UNIQUE_ID_ddebug423, !389, !"__UNIQUE_ID_ddebug423", i1 false, i1 false}
!391 = !{ptr @.str.186, !392, !"<string literal>", i1 false, i1 false}
!392 = !{!"../drivers/media/usb/dvb-usb-v2/rtl28xxu.c", i32 1441, i32 44}
!393 = !{ptr @.str.187, !394, !"<string literal>", i1 false, i1 false}
!394 = !{!"../drivers/media/usb/dvb-usb-v2/rtl28xxu.c", i32 1446, i32 46}
!395 = !{ptr @rtl28xxu_init.__UNIQUE_ID_ddebug424, !396, !"__UNIQUE_ID_ddebug424", i1 false, i1 false}
!396 = !{!"../drivers/media/usb/dvb-usb-v2/rtl28xxu.c", i32 1452, i32 2}
!397 = !{ptr @.str.188, !398, !"<string literal>", i1 false, i1 false}
!398 = !{!"../drivers/media/usb/dvb-usb-v2/rtl28xxu.c", i32 1703, i32 17}
!399 = !{ptr @rtl2831u_rc_query.rc_nec_tab, !400, !"rc_nec_tab", i1 false, i1 false}
!400 = !{!"../drivers/media/usb/dvb-usb-v2/rtl28xxu.c", i32 1629, i32 39}
!401 = !{ptr @.str.189, !402, !"<string literal>", i1 false, i1 false}
!402 = !{!"../drivers/media/usb/dvb-usb-v2/rtl28xxu.c", i32 1696, i32 2}
!403 = !{ptr @rtl2831u_rc_query.__UNIQUE_ID_ddebug433, !402, !"__UNIQUE_ID_ddebug433", i1 false, i1 false}
!404 = distinct !{null, !405, !"refresh_tab", i1 false, i1 false}
!405 = !{!"../drivers/media/usb/dvb-usb-v2/rtl28xxu.c", i32 1718, i32 44}
!406 = !{ptr @rtl2832u_rc_query.init_tab, !407, !"init_tab", i1 false, i1 false}
!407 = !{!"../drivers/media/usb/dvb-usb-v2/rtl28xxu.c", i32 1726, i32 45}
!408 = !{ptr @.str.190, !409, !"<string literal>", i1 false, i1 false}
!409 = !{!"../drivers/media/usb/dvb-usb-v2/rtl28xxu.c", i32 1793, i32 2}
!410 = !{ptr @rtl2832u_rc_query.__UNIQUE_ID_ddebug434, !409, !"__UNIQUE_ID_ddebug434", i1 false, i1 false}
!411 = !{i32 1, !"wchar_size", i32 2}
!412 = !{i32 1, !"min_enum_size", i32 4}
!413 = !{i32 8, !"branch-target-enforcement", i32 0}
!414 = !{i32 8, !"sign-return-address", i32 0}
!415 = !{i32 8, !"sign-return-address-all", i32 0}
!416 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!417 = !{i32 7, !"uwtable", i32 1}
!418 = !{i32 7, !"frame-pointer", i32 2}
!419 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!420 = !{i64 2148349893, i64 2148349898, i64 2148349911, i64 2148349955, i64 2148349989, i64 2148350010}
!421 = !{!"auto-init"}
!422 = !{i8 0, i8 2}
