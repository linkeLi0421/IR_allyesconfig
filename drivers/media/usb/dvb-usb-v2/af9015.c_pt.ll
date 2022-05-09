; ModuleID = '/llk/IR_all_yes/drivers/media/usb/dvb-usb-v2/af9015.c_pt.bc'
source_filename = "../drivers/media/usb/dvb-usb-v2/af9015.c"
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
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.regmap_bus = type { i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, i32, i32, i32, i8 }
%struct.atomic_t = type { i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.mt2060_config = type { i8, i8 }
%struct.qt1010_config = type { i8 }
%struct.tda18271_config = type { ptr, i32, i32, i32, i32, i8, i32 }
%struct.tda18218_config = type { i8, i8, i8 }
%struct.mxl5005s_config = type { i8, i32, i32, i8, i8, i8, i8, i8, i8, i32, i32, i8, i8, i8, i8 }
%struct.mc44s803_config = type { i8, i8 }
%struct.mxl5007t_config = type { i32, i32, i32, i32, i8 }
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
%struct.usb_data_stream_properties = type { i8, i8, i8, %union.anon.125 }
%union.anon.125 = type { %struct.anon.127 }
%struct.anon.127 = type { i32, i32, i32 }
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
%struct.usb_interface = type { ptr, ptr, i32, ptr, i32, i32, i8, %struct.device, ptr, %struct.work_struct }
%struct.req_t = type { i8, i8, i16, i8, i8, i8, ptr }
%struct.firmware = type { i32, ptr, ptr }
%struct.af9015_state = type { ptr, [63 x i8], i8, i8, i32, [4 x i8], i8, i8, i8, [2 x i16], i16, i16, i32, [2 x %struct.af9013_platform_data], [2 x ptr], [2 x i8], [2 x i8], [2 x ptr], [2 x ptr], [2 x ptr], [2 x ptr], [2 x ptr], [2 x ptr], %struct.mutex }
%struct.af9013_platform_data = type { i32, i8, i32, i8, i8, i8, [4 x i8], [4 x i8], ptr, ptr, ptr, ptr }
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
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, [3 x %struct.anon.141], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats }
%struct.anon.141 = type { i8, i32, i32, i8 }
%struct.dtv_fe_stats = type { i8, [4 x %struct.dtv_stats] }
%struct.dtv_stats = type <{ i8, %union.anon.142 }>
%union.anon.142 = type { i64 }
%struct.i2c_msg = type { i16, i16, i16, ptr }

@__param_str_remote = internal constant [22 x i8] c"dvb_usb_af9015.remote\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@dvb_usb_af9015_remote = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_remote = internal constant %struct.kernel_param { ptr @__param_str_remote, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.101 { ptr @dvb_usb_af9015_remote } }, section "__param", align 4
@__UNIQUE_ID_remotetype386 = internal constant [35 x i8] c"dvb_usb_af9015.parmtype=remote:int\00", section ".modinfo", align 1
@__UNIQUE_ID_remote387 = internal constant [41 x i8] c"dvb_usb_af9015.parm=remote:select remote\00", section ".modinfo", align 1
@__param_str_adapter_nr = internal constant [26 x i8] c"dvb_usb_af9015.adapter_nr\00", align 1
@param_array_ops = external dso_local constant %struct.kernel_param_ops, align 4
@__param_arr_adapter_nr = internal constant %struct.kparam_array { i32 16, i32 2, ptr null, ptr @param_ops_short, ptr @adapter_nr }, align 4
@__param_adapter_nr = internal constant %struct.kernel_param { ptr @__param_str_adapter_nr, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.101 { ptr @__param_arr_adapter_nr } }, section "__param", align 4
@__UNIQUE_ID_adapter_nrtype388 = internal constant [50 x i8] c"dvb_usb_af9015.parmtype=adapter_nr:array of short\00", section ".modinfo", align 1
@__UNIQUE_ID_adapter_nr389 = internal constant [51 x i8] c"dvb_usb_af9015.parm=adapter_nr:DVB adapter numbers\00", section ".modinfo", align 1
@__initcall__kmod_dvb_usb_af9015__432_1551_af9015_usb_driver_init6 = internal global ptr @af9015_usb_driver_init, section ".initcall6.init", align 4
@af9015_usb_driver = internal global { %struct.usb_driver, [44 x i8] } { %struct.usb_driver { ptr @.str, ptr @dvb_usbv2_probe, ptr @dvb_usbv2_disconnect, ptr null, ptr @dvb_usbv2_suspend, ptr @dvb_usbv2_resume, ptr @dvb_usbv2_reset_resume, ptr null, ptr null, ptr @af9015_id_table, ptr null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 -112 }, [44 x i8] zeroinitializer }, align 32
@__exitcall_af9015_usb_driver_exit = internal global ptr @af9015_usb_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author433 = internal constant [53 x i8] c"dvb_usb_af9015.author=Antti Palosaari <crope@iki.fi>\00", section ".modinfo", align 1
@__UNIQUE_ID_description434 = internal constant [49 x i8] c"dvb_usb_af9015.description=Afatech AF9015 driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file435 = internal constant [64 x i8] c"dvb_usb_af9015.file=drivers/media/usb/dvb-usb-v2/dvb-usb-af9015\00", section ".modinfo", align 1
@__UNIQUE_ID_license436 = internal constant [27 x i8] c"dvb_usb_af9015.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware437 = internal constant [42 x i8] c"dvb_usb_af9015.firmware=dvb-usb-af9015.fw\00", section ".modinfo", align 1
@param_ops_short = external dso_local constant %struct.kernel_param_ops, align 4
@adapter_nr = internal global { [16 x i16], [32 x i8] } { [16 x i16] [i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1], [32 x i8] zeroinitializer }, align 32
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"dvb_usb_af9015\00", [17 x i8] zeroinitializer }, align 32
@af9015_id_table = internal constant { [39 x %struct.usb_device_id], [248 x i8] } { [39 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 5540, i16 -28651, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral to i32) }, %struct.usb_device_id { i16 3, i16 5540, i16 -28650, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.2 to i32) }, %struct.usb_device_id { i16 3, i16 1043, i16 24617, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.5 to i32) }, %struct.usb_device_id { i16 3, i16 8964, i16 555, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.7 to i32) }, %struct.usb_device_id { i16 3, i16 7040, i16 -7271, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.9 to i32) }, %struct.usb_device_id { i16 3, i16 5075, i16 12838, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.12 to i32) }, %struct.usb_device_id { i16 3, i16 5075, i16 12855, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.14 to i32) }, %struct.usb_device_id { i16 3, i16 3277, i16 105, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.16 to i32) }, %struct.usb_device_id { i16 3, i16 7040, i16 -16032, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.18 to i32) }, %struct.usb_device_id { i16 3, i16 1994, i16 -22507, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.21 to i32) }, %struct.usb_device_id { i16 3, i16 6887, i16 897, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.23 to i32) }, %struct.usb_device_id { i16 3, i16 5218, i16 -30719, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.26 to i32) }, %struct.usb_device_id { i16 3, i16 1994, i16 -32432, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.28 to i32) }, %struct.usb_device_id { i16 3, i16 4281, i16 -32768, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.30 to i32) }, %struct.usb_device_id { i16 3, i16 1994, i16 -23799, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.32 to i32) }, %struct.usb_device_id { i16 3, i16 5218, i16 -30713, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.34 to i32) }, %struct.usb_device_id { i16 3, i16 7040, i16 -7274, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.36 to i32) }, %struct.usb_device_id { i16 3, i16 7040, i16 -7269, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.37 to i32) }, %struct.usb_device_id { i16 3, i16 7040, i16 -7275, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.38 to i32) }, %struct.usb_device_id { i16 3, i16 5540, i16 -28645, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.41 to i32) }, %struct.usb_device_id { i16 3, i16 1994, i16 -31478, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.43 to i32) }, %struct.usb_device_id { i16 3, i16 1994, i16 -22523, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.45 to i32) }, %struct.usb_device_id { i16 3, i16 7040, i16 -7273, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.47 to i32) }, %struct.usb_device_id { i16 3, i16 7040, i16 -14320, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.49 to i32) }, %struct.usb_device_id { i16 3, i16 1112, i16 16402, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.51 to i32) }, %struct.usb_device_id { i16 3, i16 7040, i16 -7168, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.52 to i32) }, %struct.usb_device_id { i16 3, i16 7040, i16 -16031, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.54 to i32) }, %struct.usb_device_id { i16 3, i16 7040, i16 -7267, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.56 to i32) }, %struct.usb_device_id { i16 3, i16 7040, i16 -7166, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.59 to i32) }, %struct.usb_device_id { i16 3, i16 1043, i16 27140, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.61 to i32) }, %struct.usb_device_id { i16 3, i16 7040, i16 -7293, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.63 to i32) }, %struct.usb_device_id { i16 3, i16 7040, i16 -7270, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.64 to i32) }, %struct.usb_device_id { i16 3, i16 1994, i16 -32422, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.66 to i32) }, %struct.usb_device_id { i16 3, i16 3277, i16 151, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.69 to i32) }, %struct.usb_device_id { i16 3, i16 3277, i16 153, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.72 to i32) }, %struct.usb_device_id { i16 3, i16 1994, i16 -31477, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.74 to i32) }, %struct.usb_device_id { i16 3, i16 8013, i16 -28650, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.76 to i32) }, %struct.usb_device_id { i16 3, i16 7040, i16 -7167, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.78 to i32) }, %struct.usb_device_id zeroinitializer], [248 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Afatech AF9015 reference design\00", [32 x i8] zeroinitializer }, align 32
@.compoundliteral = internal constant { %struct.dvb_usb_driver_info, [20 x i8] } { %struct.dvb_usb_driver_info { ptr @.str.1, ptr null, ptr @af9015_props }, [20 x i8] zeroinitializer }, align 32
@.compoundliteral.2 = internal constant { %struct.dvb_usb_driver_info, [20 x i8] } { %struct.dvb_usb_driver_info { ptr @.str.1, ptr null, ptr @af9015_props }, [20 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Leadtek WinFast DTV Dongle Gold\00", [32 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"rc-leadtek-y04g0051\00", [44 x i8] zeroinitializer }, align 32
@.compoundliteral.5 = internal constant { %struct.dvb_usb_driver_info, [20 x i8] } { %struct.dvb_usb_driver_info { ptr @.str.3, ptr @.str.4, ptr @af9015_props }, [20 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Pinnacle PCTV 71e\00", [46 x i8] zeroinitializer }, align 32
@.compoundliteral.7 = internal constant { %struct.dvb_usb_driver_info, [20 x i8] } { %struct.dvb_usb_driver_info { ptr @.str.6, ptr null, ptr @af9015_props }, [20 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"KWorld PlusTV Dual DVB-T Stick (DVB-T 399U)\00", [52 x i8] zeroinitializer }, align 32
@.compoundliteral.9 = internal constant { %struct.dvb_usb_driver_info, [20 x i8] } { %struct.dvb_usb_driver_info { ptr @.str.8, ptr null, ptr @af9015_props }, [20 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"DigitalNow TinyTwin\00", [44 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"rc-azurewave-ad-tu700\00", [42 x i8] zeroinitializer }, align 32
@.compoundliteral.12 = internal constant { %struct.dvb_usb_driver_info, [20 x i8] } { %struct.dvb_usb_driver_info { ptr @.str.10, ptr @.str.11, ptr @af9015_props }, [20 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"TwinHan AzureWave AD-TU700(704J)\00", [63 x i8] zeroinitializer }, align 32
@.compoundliteral.14 = internal constant { %struct.dvb_usb_driver_info, [20 x i8] } { %struct.dvb_usb_driver_info { ptr @.str.13, ptr @.str.11, ptr @af9015_props }, [20 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"TerraTec Cinergy T USB XE\00", [38 x i8] zeroinitializer }, align 32
@.compoundliteral.16 = internal constant { %struct.dvb_usb_driver_info, [20 x i8] } { %struct.dvb_usb_driver_info { ptr @.str.15, ptr null, ptr @af9015_props }, [20 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"KWorld PlusTV Dual DVB-T PCI (DVB-T PC160-2T)\00", [50 x i8] zeroinitializer }, align 32
@.compoundliteral.18 = internal constant { %struct.dvb_usb_driver_info, [20 x i8] } { %struct.dvb_usb_driver_info { ptr @.str.17, ptr null, ptr @af9015_props }, [20 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"AVerMedia AVerTV DVB-T Volar X\00", [33 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"rc-avermedia-m135a\00", [45 x i8] zeroinitializer }, align 32
@.compoundliteral.21 = internal constant { %struct.dvb_usb_driver_info, [20 x i8] } { %struct.dvb_usb_driver_info { ptr @.str.19, ptr @.str.20, ptr @af9015_props }, [20 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Xtensions XD-380\00", [47 x i8] zeroinitializer }, align 32
@.compoundliteral.23 = internal constant { %struct.dvb_usb_driver_info, [20 x i8] } { %struct.dvb_usb_driver_info { ptr @.str.22, ptr null, ptr @af9015_props }, [20 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"MSI DIGIVOX Duo\00", [16 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"rc-msi-digivox-iii\00", [45 x i8] zeroinitializer }, align 32
@.compoundliteral.26 = internal constant { %struct.dvb_usb_driver_info, [20 x i8] } { %struct.dvb_usb_driver_info { ptr @.str.24, ptr @.str.25, ptr @af9015_props }, [20 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Fujitsu-Siemens Slim Mobile USB DVB-T\00", [58 x i8] zeroinitializer }, align 32
@.compoundliteral.28 = internal constant { %struct.dvb_usb_driver_info, [20 x i8] } { %struct.dvb_usb_driver_info { ptr @.str.27, ptr null, ptr @af9015_props }, [20 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Telestar Starstick 2\00", [43 x i8] zeroinitializer }, align 32
@.compoundliteral.30 = internal constant { %struct.dvb_usb_driver_info, [20 x i8] } { %struct.dvb_usb_driver_info { ptr @.str.29, ptr null, ptr @af9015_props }, [20 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"AVerMedia A309\00", [17 x i8] zeroinitializer }, align 32
@.compoundliteral.32 = internal constant { %struct.dvb_usb_driver_info, [20 x i8] } { %struct.dvb_usb_driver_info { ptr @.str.31, ptr null, ptr @af9015_props }, [20 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"MSI Digi VOX mini III\00", [42 x i8] zeroinitializer }, align 32
@.compoundliteral.34 = internal constant { %struct.dvb_usb_driver_info, [20 x i8] } { %struct.dvb_usb_driver_info { ptr @.str.33, ptr @.str.25, ptr @af9015_props }, [20 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"KWorld USB DVB-T TV Stick II (VS-DVB-T 395U)\00", [51 x i8] zeroinitializer }, align 32
@.compoundliteral.36 = internal constant { %struct.dvb_usb_driver_info, [20 x i8] } { %struct.dvb_usb_driver_info { ptr @.str.35, ptr null, ptr @af9015_props }, [20 x i8] zeroinitializer }, align 32
@.compoundliteral.37 = internal constant { %struct.dvb_usb_driver_info, [20 x i8] } { %struct.dvb_usb_driver_info { ptr @.str.35, ptr null, ptr @af9015_props }, [20 x i8] zeroinitializer }, align 32
@.compoundliteral.38 = internal constant { %struct.dvb_usb_driver_info, [20 x i8] } { %struct.dvb_usb_driver_info { ptr @.str.35, ptr null, ptr @af9015_props }, [20 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"TrekStor DVB-T USB Stick\00", [39 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"rc-trekstor\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.41 = internal constant { %struct.dvb_usb_driver_info, [20 x i8] } { %struct.dvb_usb_driver_info { ptr @.str.39, ptr @.str.40, ptr @af9015_props }, [20 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"AverMedia AVerTV Volar Black HD (A850)\00", [57 x i8] zeroinitializer }, align 32
@.compoundliteral.43 = internal constant { %struct.dvb_usb_driver_info, [20 x i8] } { %struct.dvb_usb_driver_info { ptr @.str.42, ptr null, ptr @af9015_props }, [20 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"AverMedia AVerTV Volar GPS 805 (A805)\00", [58 x i8] zeroinitializer }, align 32
@.compoundliteral.45 = internal constant { %struct.dvb_usb_driver_info, [20 x i8] } { %struct.dvb_usb_driver_info { ptr @.str.44, ptr null, ptr @af9015_props }, [20 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Conceptronic USB2.0 DVB-T CTVDIGRCU V3.0\00", [55 x i8] zeroinitializer }, align 32
@.compoundliteral.47 = internal constant { %struct.dvb_usb_driver_info, [20 x i8] } { %struct.dvb_usb_driver_info { ptr @.str.46, ptr null, ptr @af9015_props }, [20 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"KWorld Digital MC-810\00", [42 x i8] zeroinitializer }, align 32
@.compoundliteral.49 = internal constant { %struct.dvb_usb_driver_info, [20 x i8] } { %struct.dvb_usb_driver_info { ptr @.str.48, ptr null, ptr @af9015_props }, [20 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Genius TVGo DVB-T03\00", [44 x i8] zeroinitializer }, align 32
@.compoundliteral.51 = internal constant { %struct.dvb_usb_driver_info, [20 x i8] } { %struct.dvb_usb_driver_info { ptr @.str.50, ptr null, ptr @af9015_props }, [20 x i8] zeroinitializer }, align 32
@.compoundliteral.52 = internal constant { %struct.dvb_usb_driver_info, [20 x i8] } { %struct.dvb_usb_driver_info { ptr @.str.8, ptr null, ptr @af9015_props }, [20 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"KWorld PlusTV DVB-T PCI Pro Card (DVB-T PC160-T)\00", [47 x i8] zeroinitializer }, align 32
@.compoundliteral.54 = internal constant { %struct.dvb_usb_driver_info, [20 x i8] } { %struct.dvb_usb_driver_info { ptr @.str.53, ptr null, ptr @af9015_props }, [20 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Sveon STV20 Tuner USB DVB-T HDTV\00", [63 x i8] zeroinitializer }, align 32
@.compoundliteral.56 = internal constant { %struct.dvb_usb_driver_info, [20 x i8] } { %struct.dvb_usb_driver_info { ptr @.str.55, ptr null, ptr @af9015_props }, [20 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"DigitalNow TinyTwin v2\00", [41 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"rc-digitalnow-tinytwin\00", [41 x i8] zeroinitializer }, align 32
@.compoundliteral.59 = internal constant { %struct.dvb_usb_driver_info, [20 x i8] } { %struct.dvb_usb_driver_info { ptr @.str.57, ptr @.str.58, ptr @af9015_props }, [20 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Leadtek WinFast DTV2000DS\00", [38 x i8] zeroinitializer }, align 32
@.compoundliteral.61 = internal constant { %struct.dvb_usb_driver_info, [20 x i8] } { %struct.dvb_usb_driver_info { ptr @.str.60, ptr @.str.4, ptr @af9015_props }, [20 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"KWorld USB DVB-T Stick Mobile (UB383-T)\00", [56 x i8] zeroinitializer }, align 32
@.compoundliteral.63 = internal constant { %struct.dvb_usb_driver_info, [20 x i8] } { %struct.dvb_usb_driver_info { ptr @.str.62, ptr null, ptr @af9015_props }, [20 x i8] zeroinitializer }, align 32
@.compoundliteral.64 = internal constant { %struct.dvb_usb_driver_info, [20 x i8] } { %struct.dvb_usb_driver_info { ptr @.str.35, ptr null, ptr @af9015_props }, [20 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"AverMedia AVerTV Volar M (A815Mac)\00", [61 x i8] zeroinitializer }, align 32
@.compoundliteral.66 = internal constant { %struct.dvb_usb_driver_info, [20 x i8] } { %struct.dvb_usb_driver_info { ptr @.str.65, ptr null, ptr @af9015_props }, [20 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"TerraTec Cinergy T Stick RC\00", [36 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"rc-terratec-slim-2\00", [45 x i8] zeroinitializer }, align 32
@.compoundliteral.69 = internal constant { %struct.dvb_usb_driver_info, [20 x i8] } { %struct.dvb_usb_driver_info { ptr @.str.67, ptr @.str.68, ptr @af9015_props }, [20 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"TerraTec Cinergy T Stick Dual RC\00", [63 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rc-terratec-slim\00", [47 x i8] zeroinitializer }, align 32
@.compoundliteral.72 = internal constant { %struct.dvb_usb_driver_info, [20 x i8] } { %struct.dvb_usb_driver_info { ptr @.str.70, ptr @.str.71, ptr @af9015_props }, [20 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"AverMedia AVerTV Red HD+ (A850T)\00", [63 x i8] zeroinitializer }, align 32
@.compoundliteral.74 = internal constant { %struct.dvb_usb_driver_info, [20 x i8] } { %struct.dvb_usb_driver_info { ptr @.str.73, ptr null, ptr @af9015_props }, [20 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"DigitalNow TinyTwin v3\00", [41 x i8] zeroinitializer }, align 32
@.compoundliteral.76 = internal constant { %struct.dvb_usb_driver_info, [20 x i8] } { %struct.dvb_usb_driver_info { ptr @.str.75, ptr @.str.58, ptr @af9015_props }, [20 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Sveon STV22 Dual USB DVB-T Tuner HDTV\00", [58 x i8] zeroinitializer }, align 32
@.compoundliteral.78 = internal constant { %struct.dvb_usb_driver_info, [20 x i8] } { %struct.dvb_usb_driver_info { ptr @.str.77, ptr @.str.25, ptr @af9015_props }, [20 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"dvb-usb-af9015.fw\00", [46 x i8] zeroinitializer }, align 32
@af9015_i2c_algo = internal global { %struct.i2c_algorithm, [36 x i8] } { %struct.i2c_algorithm { ptr @af9015_i2c_xfer, ptr null, ptr null, ptr null, ptr @af9015_i2c_func, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@af9015_props = internal constant { { ptr, ptr, ptr, i8, i32, i8, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, [2 x { i8, i8, ptr, ptr, { i8, i8, i8, { %struct.anon.126, [8 x i8] } } }], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }, [56 x i8] } { { ptr, ptr, ptr, i8, i32, i8, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, [2 x { i8, i8, ptr, ptr, { i8, i8, i8, { %struct.anon.126, [8 x i8] } } }], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @.str, ptr null, ptr @adapter_nr, i8 0, i32 328, i8 2, i8 -127, i32 0, ptr @af9015_probe, ptr @af9015_disconnect, ptr @af9015_identify_state, ptr @.str.79, ptr @af9015_download_firmware, ptr @af9015_i2c_algo, i32 0, ptr @af9015_get_adapter_count, [2 x { i8, i8, ptr, ptr, { i8, i8, i8, { %struct.anon.126, [8 x i8] } } }] [{ i8, i8, ptr, ptr, { i8, i8, i8, { %struct.anon.126, [8 x i8] } } } { i8 3, i8 32, ptr @af9015_pid_filter_ctrl, ptr @af9015_pid_filter, { i8, i8, i8, { %struct.anon.126, [8 x i8] } } { i8 1, i8 6, i8 -124, { %struct.anon.126, [8 x i8] } { %struct.anon.126 { i32 16356 }, [8 x i8] undef } } }, { i8, i8, ptr, ptr, { i8, i8, i8, { %struct.anon.126, [8 x i8] } } } { i8 3, i8 32, ptr @af9015_pid_filter_ctrl, ptr @af9015_pid_filter, { i8, i8, i8, { %struct.anon.126, [8 x i8] } } { i8 1, i8 6, i8 -123, { %struct.anon.126, [8 x i8] } { %struct.anon.126 { i32 16356 }, [8 x i8] undef } } }], ptr null, ptr @af9015_read_config, ptr null, ptr @af9015_af9013_frontend_attach, ptr @af9015_frontend_detach, ptr @af9015_tuner_attach, ptr null, ptr null, ptr @af9015_streaming_ctrl, ptr @af9015_init, ptr null, ptr @af9015_get_rc_config, ptr @af9015_get_stream_config }, [56 x i8] zeroinitializer }, align 32
@af9015_probe.regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 16, i32 0, i32 0, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@af9015_probe.regmap_bus = internal constant { %struct.regmap_bus, [32 x i8] } { %struct.regmap_bus { i8 0, ptr @af9015_regmap_write, ptr null, ptr null, ptr null, ptr null, ptr @af9015_regmap_read, ptr null, ptr null, ptr null, i8 0, i32 0, i32 0, i32 0, i32 0, i8 0 }, [32 x i8] zeroinitializer }, align 32
@af9015_probe.__UNIQUE_ID_ddebug428 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.81, ptr @.str.82, ptr @.str.83, i8 1, i8 82, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.81 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"af9015_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/media/usb/dvb-usb-v2/af9015.c\00", [58 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ITE Technologies, Inc.\00", [41 x i8] zeroinitializer }, align 32
@af9015_probe.__UNIQUE_ID_ddebug429 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.81, ptr @.str.82, ptr @.str.85, i8 1, i8 88, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.85 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"rejecting device\0A\00", [46 x i8] zeroinitializer }, align 32
@af9015_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.86 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"af9015:1383:(&regmap_config)->lock\00", [61 x i8] zeroinitializer }, align 32
@af9015_probe.__UNIQUE_ID_ddebug430 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.81, ptr @.str.82, ptr @.str.87, i8 1, i8 91, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.87 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"failed %d\0A\00", [21 x i8] zeroinitializer }, align 32
@af9015_regmap_write.__UNIQUE_ID_ddebug426 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.88, ptr @.str.82, ptr @.str.87, i8 1, i8 71, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.88 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"af9015_regmap_write\00", [44 x i8] zeroinitializer }, align 32
@af9015_ctrl_msg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.89, ptr @.str.90, ptr @.str.82, i32 61, ptr @.str.91, ptr @.str.92 }, [40 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"unknown cmd %d\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"af9015_ctrl_msg\00", [16 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@af9015_ctrl_msg._entry_ptr = internal global ptr @af9015_ctrl_msg._entry, section ".printk_index", align 4
@af9015_ctrl_msg._entry.93 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.94, ptr @.str.90, ptr @.str.82, i32 70, ptr @.str.91, ptr @.str.92 }, [40 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"too much data, cmd %u, len %u\0A\00", [33 x i8] zeroinitializer }, align 32
@af9015_ctrl_msg._entry_ptr.95 = internal global ptr @af9015_ctrl_msg._entry.93, section ".printk_index", align 4
@af9015_ctrl_msg._entry.96 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.97, ptr @.str.90, ptr @.str.82, i32 99, ptr @.str.91, ptr @.str.92 }, [40 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"cmd failed %u\0A\00", [17 x i8] zeroinitializer }, align 32
@af9015_ctrl_msg._entry_ptr.98 = internal global ptr @af9015_ctrl_msg._entry.96, section ".printk_index", align 4
@af9015_regmap_read.__UNIQUE_ID_ddebug427 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.99, ptr @.str.82, ptr @.str.87, i8 1, i8 77, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.99 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"af9015_regmap_read\00", [45 x i8] zeroinitializer }, align 32
@af9015_disconnect.__UNIQUE_ID_ddebug431 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.100, ptr @.str.82, ptr @.str.83, i8 1, i8 94, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.100 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"af9015_disconnect\00", [46 x i8] zeroinitializer }, align 32
@af9015_identify_state.__UNIQUE_ID_ddebug392 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.101, ptr @.str.82, ptr @.str.102, i8 0, i8 69, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.101 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"af9015_identify_state\00", [42 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"reply %02x\0A\00", [20 x i8] zeroinitializer }, align 32
@__const.af9015_download_firmware.req = private unnamed_addr constant { i8, i8, i16, i8, i8, i8, [1 x i8], ptr } { i8 17, i8 0, i16 0, i8 0, i8 0, i8 0, [1 x i8] zeroinitializer, ptr null }, align 4
@af9015_download_firmware.__UNIQUE_ID_ddebug393 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.103, ptr @.str.82, ptr @.str.83, i8 0, i8 74, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.103 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"af9015_download_firmware\00", [39 x i8] zeroinitializer }, align 32
@af9015_download_firmware._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.104, ptr @.str.103, ptr @.str.82, i32 315, ptr @.str.91, ptr @.str.92 }, [40 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"firmware download failed %d\0A\00", [35 x i8] zeroinitializer }, align 32
@af9015_download_firmware._entry_ptr = internal global ptr @af9015_download_firmware._entry, section ".printk_index", align 4
@af9015_download_firmware._entry.105 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.106, ptr @.str.103, ptr @.str.82, i32 324, ptr @.str.91, ptr @.str.92 }, [40 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"firmware boot failed %d\0A\00", [39 x i8] zeroinitializer }, align 32
@af9015_download_firmware._entry_ptr.107 = internal global ptr @af9015_download_firmware._entry.105, section ".printk_index", align 4
@af9015_download_firmware.__UNIQUE_ID_ddebug396 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.103, ptr @.str.82, ptr @.str.87, i8 0, i8 82, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@af9015_i2c_xfer.__UNIQUE_ID_ddebug390 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.108, ptr @.str.82, ptr @.str.109, i8 0, i8 61, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.108 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"af9015_i2c_xfer\00", [16 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"unknown msg, num %u\0A\00", [43 x i8] zeroinitializer }, align 32
@af9015_i2c_xfer.__UNIQUE_ID_ddebug391 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.108, ptr @.str.82, ptr @.str.87, i8 0, i8 63, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@af9015_read_config.__UNIQUE_ID_ddebug400 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.110, ptr @.str.82, ptr @.str.83, i8 0, i8 95, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.110 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"af9015_read_config\00", [45 x i8] zeroinitializer }, align 32
@af9015_read_config.__UNIQUE_ID_ddebug401 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.110, ptr @.str.82, ptr @.str.111, i8 0, i8 99, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.111 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ir mode %02x\0A\00", [18 x i8] zeroinitializer }, align 32
@af9015_read_config.__UNIQUE_ID_ddebug402 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.110, ptr @.str.82, ptr @.str.112, i8 0, i8 101, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.112 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ts mode %02x\0A\00", [18 x i8] zeroinitializer }, align 32
@af9015_read_config.__UNIQUE_ID_ddebug403 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.110, ptr @.str.82, ptr @.str.113, i8 0, i8 111, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.113 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"[%d] xtal %02x, clk %u\0A\00", [40 x i8] zeroinitializer }, align 32
@af9015_read_config.__UNIQUE_ID_ddebug404 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.110, ptr @.str.82, ptr @.str.114, i8 0, i8 115, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.114 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"[%d] if frequency %u\0A\00", [42 x i8] zeroinitializer }, align 32
@af9015_read_config.__UNIQUE_ID_ddebug405 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.110, ptr @.str.82, ptr @.str.115, i8 0, i8 119, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.115 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"[%d] MT2060 IF1 %u\0A\00", [44 x i8] zeroinitializer }, align 32
@af9015_read_config._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.116, ptr @.str.110, ptr @.str.82, i32 507, ptr @.str.91, ptr @.str.92 }, [40 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"tuner id %02x not supported, please report!\0A\00", [51 x i8] zeroinitializer }, align 32
@af9015_read_config._entry_ptr = internal global ptr @af9015_read_config._entry, section ".printk_index", align 4
@af9015_read_config.__UNIQUE_ID_ddebug406 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.110, ptr @.str.82, ptr @.str.117, i8 0, i8 -128, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.117 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"[%d] tuner id %02x\0A\00", [44 x i8] zeroinitializer }, align 32
@af9015_read_config._entry.118 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.119, ptr @.str.110, ptr @.str.82, i32 517, ptr @.str.91, ptr @.str.92 }, [40 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"eeprom read failed %d\0A\00", [41 x i8] zeroinitializer }, align 32
@af9015_read_config._entry_ptr.120 = internal global ptr @af9015_read_config._entry.118, section ".printk_index", align 4
@af9015_read_config.__UNIQUE_ID_ddebug407 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.110, ptr @.str.82, ptr @.str.121, i8 0, i8 -125, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.121 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"AverMedia A850: overriding config\0A\00", [61 x i8] zeroinitializer }, align 32
@af9015_eeprom_hash.__UNIQUE_ID_ddebug397 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.122, ptr @.str.82, ptr @.str.123, i8 0, i8 90, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.122 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"af9015_eeprom_hash\00", [45 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%*ph\0A\00", [26 x i8] zeroinitializer }, align 32
@af9015_eeprom_hash.__UNIQUE_ID_ddebug398 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.122, ptr @.str.82, ptr @.str.124, i8 0, i8 91, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.124 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"eeprom sum %.8x\0A\00", [47 x i8] zeroinitializer }, align 32
@af9015_eeprom_hash.__UNIQUE_ID_ddebug399 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.122, ptr @.str.82, ptr @.str.87, i8 0, i8 92, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@af9015_af9013_frontend_attach.__UNIQUE_ID_ddebug417 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.125, ptr @.str.82, ptr @.str.126, i8 0, i8 -43, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.125 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"af9015_af9013_frontend_attach\00", [34 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"adap id %u\0A\00", [20 x i8] zeroinitializer }, align 32
@af9015_af9013_frontend_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.128, ptr @.str.125, ptr @.str.82, i32 874, ptr @.str.91, ptr @.str.92 }, [40 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"firmware copy to 2nd frontend failed, will disable it\0A\00", [41 x i8] zeroinitializer }, align 32
@af9015_af9013_frontend_attach._entry_ptr = internal global ptr @af9015_af9013_frontend_attach._entry, section ".printk_index", align 4
@.str.129 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"af9013\00", [25 x i8] zeroinitializer }, align 32
@af9015_af9013_frontend_attach.__UNIQUE_ID_ddebug418 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.125, ptr @.str.82, ptr @.str.87, i8 0, i8 -28, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@af9015_copy_firmware.__UNIQUE_ID_ddebug412 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.130, ptr @.str.82, ptr @.str.83, i8 0, i8 -63, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.130 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"af9015_copy_firmware\00", [43 x i8] zeroinitializer }, align 32
@af9015_copy_firmware.__UNIQUE_ID_ddebug413 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.130, ptr @.str.82, ptr @.str.131, i8 0, i8 -60, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.131 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"firmware status %02x\0A\00", [42 x i8] zeroinitializer }, align 32
@af9015_copy_firmware._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.132, ptr @.str.130, ptr @.str.82, i32 797, ptr @.str.91, ptr @.str.92 }, [40 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"firmware copy cmd failed %d\0A\00", [35 x i8] zeroinitializer }, align 32
@af9015_copy_firmware._entry_ptr = internal global ptr @af9015_copy_firmware._entry, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@af9015_copy_firmware.__UNIQUE_ID_ddebug414 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.130, ptr @.str.82, ptr @.str.131, i8 0, i8 -51, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@af9015_copy_firmware.__UNIQUE_ID_ddebug415 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.130, ptr @.str.82, ptr @.str.133, i8 0, i8 -50, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.133 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"firmware boot took %u ms\0A\00", [38 x i8] zeroinitializer }, align 32
@af9015_copy_firmware._entry.134 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.135, ptr @.str.130, ptr @.str.82, i32 830, ptr @.str.91, ptr @.str.92 }, [40 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"firmware did not run\0A\00", [42 x i8] zeroinitializer }, align 32
@af9015_copy_firmware._entry_ptr.136 = internal global ptr @af9015_copy_firmware._entry.134, section ".printk_index", align 4
@af9015_copy_firmware._entry.137 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.138, ptr @.str.130, ptr @.str.82, i32 834, ptr @.str.91, ptr @.str.92 }, [40 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"firmware boot timeout\0A\00", [41 x i8] zeroinitializer }, align 32
@af9015_copy_firmware._entry_ptr.139 = internal global ptr @af9015_copy_firmware._entry.137, section ".printk_index", align 4
@af9015_copy_firmware.__UNIQUE_ID_ddebug416 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.130, ptr @.str.82, ptr @.str.87, i8 0, i8 -46, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@af9015_frontend_detach.__UNIQUE_ID_ddebug419 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.140, ptr @.str.82, ptr @.str.126, i8 0, i8 -25, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.140 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"af9015_frontend_detach\00", [41 x i8] zeroinitializer }, align 32
@af9015_tuner_attach.__UNIQUE_ID_ddebug420 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.141, ptr @.str.82, ptr @.str.126, i8 0, i8 -5, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.141 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"af9015_tuner_attach\00", [44 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mt2060_attach\00", [18 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"symbol:mt2060_attach\00", [43 x i8] zeroinitializer }, align 32
@af9015_mt2060_config = internal global { %struct.mt2060_config, [30 x i8] } { %struct.mt2060_config { i8 96, i8 0 }, [30 x i8] zeroinitializer }, align 32
@af9015_tuner_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.144, ptr @.str.141, ptr @.str.82, i32 1017, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013DVB: Unable to find symbol mt2060_attach()\0A\00", [50 x i8] zeroinitializer }, align 32
@af9015_tuner_attach._entry_ptr = internal global ptr @af9015_tuner_attach._entry, section ".printk_index", align 4
@.str.145 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"qt1010_attach\00", [18 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"symbol:qt1010_attach\00", [43 x i8] zeroinitializer }, align 32
@af9015_qt1010_config = internal global { %struct.qt1010_config, [31 x i8] } { %struct.qt1010_config { i8 98 }, [31 x i8] zeroinitializer }, align 32
@af9015_tuner_attach._entry.147 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.148, ptr @.str.141, ptr @.str.82, i32 1022, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013DVB: Unable to find symbol qt1010_attach()\0A\00", [50 x i8] zeroinitializer }, align 32
@af9015_tuner_attach._entry_ptr.149 = internal global ptr @af9015_tuner_attach._entry.147, section ".printk_index", align 4
@.str.150 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"tda18271_attach\00", [16 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"symbol:tda18271_attach\00", [41 x i8] zeroinitializer }, align 32
@af9015_tda18271_config = internal global { %struct.tda18271_config, [36 x i8] } { %struct.tda18271_config { ptr null, i32 0, i32 2, i32 0, i32 16, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@af9015_tuner_attach._entry.152 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.153, ptr @.str.141, ptr @.str.82, i32 1026, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013DVB: Unable to find symbol tda18271_attach()\0A\00", [48 x i8] zeroinitializer }, align 32
@af9015_tuner_attach._entry_ptr.154 = internal global ptr @af9015_tuner_attach._entry.152, section ".printk_index", align 4
@.str.155 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"tda18218_attach\00", [16 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"symbol:tda18218_attach\00", [41 x i8] zeroinitializer }, align 32
@af9015_tda18218_config = internal global { %struct.tda18218_config, [29 x i8] } { %struct.tda18218_config { i8 96, i8 21, i8 0 }, [29 x i8] zeroinitializer }, align 32
@af9015_tuner_attach._entry.157 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.158, ptr @.str.141, ptr @.str.82, i32 1030, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013DVB: Unable to find symbol tda18218_attach()\0A\00", [48 x i8] zeroinitializer }, align 32
@af9015_tuner_attach._entry_ptr.159 = internal global ptr @af9015_tuner_attach._entry.157, section ".printk_index", align 4
@.str.160 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"mxl5005s_attach\00", [16 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"symbol:mxl5005s_attach\00", [41 x i8] zeroinitializer }, align 32
@af9015_mxl5003_config = internal global { %struct.mxl5005s_config, [32 x i8] } { %struct.mxl5005s_config { i8 99, i32 4570000, i32 16000000, i8 1, i8 0, i8 1, i8 1, i8 1, i8 0, i32 200, i32 252, i8 1, i8 0, i8 0, i8 0 }, [32 x i8] zeroinitializer }, align 32
@af9015_tuner_attach._entry.162 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.163, ptr @.str.141, ptr @.str.82, i32 1034, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013DVB: Unable to find symbol mxl5005s_attach()\0A\00", [48 x i8] zeroinitializer }, align 32
@af9015_tuner_attach._entry_ptr.164 = internal global ptr @af9015_tuner_attach._entry.162, section ".printk_index", align 4
@af9015_mxl5005_config = internal global { %struct.mxl5005s_config, [32 x i8] } { %struct.mxl5005s_config { i8 99, i32 4570000, i32 16000000, i8 1, i8 1, i8 1, i8 1, i8 1, i8 0, i32 200, i32 252, i8 1, i8 0, i8 0, i8 0 }, [32 x i8] zeroinitializer }, align 32
@af9015_tuner_attach._entry.165 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.163, ptr @.str.141, ptr @.str.82, i32 1039, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@af9015_tuner_attach._entry_ptr.166 = internal global ptr @af9015_tuner_attach._entry.165, section ".printk_index", align 4
@.str.167 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"dvb_pll_attach\00", [17 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"symbol:dvb_pll_attach\00", [42 x i8] zeroinitializer }, align 32
@af9015_tuner_attach._entry.169 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.170, ptr @.str.141, ptr @.str.82, i32 1043, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013DVB: Unable to find symbol dvb_pll_attach()\0A\00", [49 x i8] zeroinitializer }, align 32
@af9015_tuner_attach._entry_ptr.171 = internal global ptr @af9015_tuner_attach._entry.169, section ".printk_index", align 4
@.str.172 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"mc44s803_attach\00", [16 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"symbol:mc44s803_attach\00", [41 x i8] zeroinitializer }, align 32
@af9015_mc44s803_config = internal global { %struct.mc44s803_config, [30 x i8] } { %struct.mc44s803_config { i8 96, i8 1 }, [30 x i8] zeroinitializer }, align 32
@af9015_tuner_attach._entry.174 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.175, ptr @.str.141, ptr @.str.82, i32 1047, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013DVB: Unable to find symbol mc44s803_attach()\0A\00", [48 x i8] zeroinitializer }, align 32
@af9015_tuner_attach._entry_ptr.176 = internal global ptr @af9015_tuner_attach._entry.174, section ".printk_index", align 4
@.str.177 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"mxl5007t_attach\00", [16 x i8] zeroinitializer }, align 32
@.str.178 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"symbol:mxl5007t_attach\00", [41 x i8] zeroinitializer }, align 32
@af9015_mxl5007t_config = internal global { %struct.mxl5007t_config, [44 x i8] } { %struct.mxl5007t_config { i32 0, i32 0, i32 4, i32 2, i8 0 }, [44 x i8] zeroinitializer }, align 32
@af9015_tuner_attach._entry.179 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.180, ptr @.str.141, ptr @.str.82, i32 1051, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.180 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013DVB: Unable to find symbol mxl5007t_attach()\0A\00", [48 x i8] zeroinitializer }, align 32
@af9015_tuner_attach._entry_ptr.181 = internal global ptr @af9015_tuner_attach._entry.179, section ".printk_index", align 4
@af9015_tuner_attach._entry.182 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.183, ptr @.str.141, ptr @.str.82, i32 1056, ptr @.str.91, ptr @.str.92 }, [40 x i8] zeroinitializer }, align 32
@.str.183 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"unknown tuner, tuner id %02x\0A\00", [34 x i8] zeroinitializer }, align 32
@af9015_tuner_attach._entry_ptr.184 = internal global ptr @af9015_tuner_attach._entry.182, section ".printk_index", align 4
@af9015_streaming_ctrl.__UNIQUE_ID_ddebug409 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.185, ptr @.str.82, ptr @.str.186, i8 0, i8 -116, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.185 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"af9015_streaming_ctrl\00", [42 x i8] zeroinitializer }, align 32
@.str.186 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"adap id %d, onoff %d\0A\00", [42 x i8] zeroinitializer }, align 32
@af9015_streaming_ctrl.__UNIQUE_ID_ddebug410 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.185, ptr @.str.82, ptr @.str.187, i8 0, i8 -115, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.187 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"set usb and ts interface\0A\00", [38 x i8] zeroinitializer }, align 32
@af9015_streaming_ctrl.__UNIQUE_ID_ddebug411 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.185, ptr @.str.82, ptr @.str.87, i8 0, i8 -93, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@af9015_init.__UNIQUE_ID_ddebug421 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.188, ptr @.str.82, ptr @.str.83, i8 1, i8 21, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.188 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"af9015_init\00", [20 x i8] zeroinitializer }, align 32
@af9015_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.189 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&state->fe_mutex\00", [47 x i8] zeroinitializer }, align 32
@.str.190 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"MSI\00", [28 x i8] zeroinitializer }, align 32
@.str.191 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"rc-empty\00", [23 x i8] zeroinitializer }, align 32
@.str.192 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"rc-alink-dtu-m\00", [17 x i8] zeroinitializer }, align 32
@.str.193 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"rc-msi-digivox-ii\00", [46 x i8] zeroinitializer }, align 32
@.str.194 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"rc-total-media-in-hand\00", [41 x i8] zeroinitializer }, align 32
@.str.195 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"rc-digittrade\00", [18 x i8] zeroinitializer }, align 32
@.str.196 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"rc-avermedia-rm-ks\00", [45 x i8] zeroinitializer }, align 32
@af9015_rc_query.__UNIQUE_ID_ddebug422 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.197, ptr @.str.82, ptr @.str.198, i8 1, i8 35, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.197 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"af9015_rc_query\00", [16 x i8] zeroinitializer }, align 32
@.str.198 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"invalid data\0A\00", [18 x i8] zeroinitializer }, align 32
@af9015_rc_query.__UNIQUE_ID_ddebug423 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.197, ptr @.str.82, ptr @.str.199, i8 1, i8 37, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.199 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"key repeated\0A\00", [18 x i8] zeroinitializer }, align 32
@af9015_rc_query.__UNIQUE_ID_ddebug424 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.197, ptr @.str.82, ptr @.str.200, i8 1, i8 40, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.200 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"key pressed %*ph\0A\00", [46 x i8] zeroinitializer }, align 32
@af9015_rc_query.__UNIQUE_ID_ddebug425 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.197, ptr @.str.82, ptr @.str.201, i8 1, i8 48, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.201 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"no key press\0A\00", [18 x i8] zeroinitializer }, align 32
@af9015_rc_query._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.202, ptr @.str.197, ptr @.str.82, i32 1227, ptr @.str.203, ptr @.str.92 }, [40 x i8] zeroinitializer }, align 32
@.str.202 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"rc query failed %d\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.203 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@af9015_rc_query._entry_ptr = internal global ptr @af9015_rc_query._entry, section ".printk_index", align 4
@af9015_get_stream_config.__UNIQUE_ID_ddebug408 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.204, ptr @.str.82, ptr @.str.205, i8 0, i8 -120, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.204 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"af9015_get_stream_config\00", [39 x i8] zeroinitializer }, align 32
@.str.205 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"adap %u\0A\00", [23 x i8] zeroinitializer }, align 32
@switch.table.af9015_read_config = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 28800000, i32 20480000, i32 28000000, i32 25000000], [16 x i8] zeroinitializer }, align 32
@switch.table.af9015_get_rc_config = internal constant { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.192, ptr @.str.193, ptr @.str.194, ptr @.str.195, ptr @.str.196], [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [15 x i64] [i64 13, i64 8, i64 3, i64 13, i64 30, i64 129, i64 130, i64 133, i64 134, i64 140, i64 147, i64 156, i64 162, i64 177, i64 179]
@__sancov_gen_cov_switch_values.206 = internal global [4 x i64] [i64 2, i64 16, i64 2693, i64 2949]
@__sancov_gen_cov_switch_values.207 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.208 = internal global [14 x i64] [i64 12, i64 8, i64 3, i64 13, i64 30, i64 129, i64 130, i64 133, i64 134, i64 147, i64 156, i64 162, i64 177, i64 179]
@__sancov_gen_cov_switch_values.209 = internal global [6 x i64] [i64 4, i64 32, i64 1565123547, i64 2608711246, i64 2742041856, i64 3103700744]
@__sancov_gen_cov_switch_values.210 = internal global [12 x i64] [i64 10, i64 8, i64 16, i64 17, i64 19, i64 32, i64 33, i64 35, i64 38, i64 40, i64 41, i64 90]
@__sancov_gen_cov_switch_values.211 = internal global [4 x i64] [i64 2, i64 8, i64 17, i64 90]
@__sancov_gen_cov_switch_values.212 = internal global [4 x i64] [i64 2, i64 16, i64 1, i64 2]
@__sancov_gen_cov_switch_values.213 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.214 = internal global [4 x i64] [i64 2, i64 8, i64 4, i64 12]
@__sancov_gen_cov_switch_values.215 = internal global [4 x i64] [i64 2, i64 8, i64 4, i64 12]
@___asan_gen_.216 = private unnamed_addr constant [22 x i8] c"dvb_usb_af9015_remote\00", align 1
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 12, i32 12 }
@___asan_gen_.219 = private unnamed_addr constant [18 x i8] c"af9015_usb_driver\00", align 1
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 1539, i32 26 }
@___asan_gen_.222 = private unnamed_addr constant [11 x i8] c"adapter_nr\00", align 1
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 15, i32 1 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 1551, i32 1 }
@___asan_gen_.228 = private unnamed_addr constant [16 x i8] c"af9015_id_table\00", align 1
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 1456, i32 35 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 1457, i32 4 }
@___asan_gen_.234 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.235 = private unnamed_addr constant [19 x i8] c".compoundliteral.2\00", align 1
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 1461, i32 4 }
@___asan_gen_.242 = private unnamed_addr constant [19 x i8] c".compoundliteral.5\00", align 1
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 1463, i32 4 }
@___asan_gen_.246 = private unnamed_addr constant [19 x i8] c".compoundliteral.7\00", align 1
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 1465, i32 4 }
@___asan_gen_.250 = private unnamed_addr constant [19 x i8] c".compoundliteral.9\00", align 1
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 1467, i32 4 }
@___asan_gen_.257 = private unnamed_addr constant [20 x i8] c".compoundliteral.12\00", align 1
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 1469, i32 4 }
@___asan_gen_.261 = private unnamed_addr constant [20 x i8] c".compoundliteral.14\00", align 1
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 1471, i32 4 }
@___asan_gen_.265 = private unnamed_addr constant [20 x i8] c".compoundliteral.16\00", align 1
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 1473, i32 4 }
@___asan_gen_.269 = private unnamed_addr constant [20 x i8] c".compoundliteral.18\00", align 1
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 1475, i32 4 }
@___asan_gen_.276 = private unnamed_addr constant [20 x i8] c".compoundliteral.21\00", align 1
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 1477, i32 4 }
@___asan_gen_.280 = private unnamed_addr constant [20 x i8] c".compoundliteral.23\00", align 1
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 1479, i32 4 }
@___asan_gen_.287 = private unnamed_addr constant [20 x i8] c".compoundliteral.26\00", align 1
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 1481, i32 4 }
@___asan_gen_.291 = private unnamed_addr constant [20 x i8] c".compoundliteral.28\00", align 1
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 1483, i32 4 }
@___asan_gen_.295 = private unnamed_addr constant [20 x i8] c".compoundliteral.30\00", align 1
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 1485, i32 4 }
@___asan_gen_.299 = private unnamed_addr constant [20 x i8] c".compoundliteral.32\00", align 1
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 1487, i32 4 }
@___asan_gen_.303 = private unnamed_addr constant [20 x i8] c".compoundliteral.34\00", align 1
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 1489, i32 4 }
@___asan_gen_.307 = private unnamed_addr constant [20 x i8] c".compoundliteral.36\00", align 1
@___asan_gen_.308 = private unnamed_addr constant [20 x i8] c".compoundliteral.37\00", align 1
@___asan_gen_.309 = private unnamed_addr constant [20 x i8] c".compoundliteral.38\00", align 1
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 1495, i32 4 }
@___asan_gen_.316 = private unnamed_addr constant [20 x i8] c".compoundliteral.41\00", align 1
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 1497, i32 4 }
@___asan_gen_.320 = private unnamed_addr constant [20 x i8] c".compoundliteral.43\00", align 1
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 1499, i32 4 }
@___asan_gen_.324 = private unnamed_addr constant [20 x i8] c".compoundliteral.45\00", align 1
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 1501, i32 4 }
@___asan_gen_.328 = private unnamed_addr constant [20 x i8] c".compoundliteral.47\00", align 1
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 1503, i32 4 }
@___asan_gen_.332 = private unnamed_addr constant [20 x i8] c".compoundliteral.49\00", align 1
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 1505, i32 4 }
@___asan_gen_.336 = private unnamed_addr constant [20 x i8] c".compoundliteral.51\00", align 1
@___asan_gen_.337 = private unnamed_addr constant [20 x i8] c".compoundliteral.52\00", align 1
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 1509, i32 4 }
@___asan_gen_.341 = private unnamed_addr constant [20 x i8] c".compoundliteral.54\00", align 1
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 1511, i32 4 }
@___asan_gen_.345 = private unnamed_addr constant [20 x i8] c".compoundliteral.56\00", align 1
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 1513, i32 4 }
@___asan_gen_.352 = private unnamed_addr constant [20 x i8] c".compoundliteral.59\00", align 1
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 1515, i32 4 }
@___asan_gen_.356 = private unnamed_addr constant [20 x i8] c".compoundliteral.61\00", align 1
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 1517, i32 4 }
@___asan_gen_.360 = private unnamed_addr constant [20 x i8] c".compoundliteral.63\00", align 1
@___asan_gen_.361 = private unnamed_addr constant [20 x i8] c".compoundliteral.64\00", align 1
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 1521, i32 4 }
@___asan_gen_.365 = private unnamed_addr constant [20 x i8] c".compoundliteral.66\00", align 1
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 1523, i32 4 }
@___asan_gen_.372 = private unnamed_addr constant [20 x i8] c".compoundliteral.69\00", align 1
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 1526, i32 4 }
@___asan_gen_.379 = private unnamed_addr constant [20 x i8] c".compoundliteral.72\00", align 1
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 1528, i32 4 }
@___asan_gen_.383 = private unnamed_addr constant [20 x i8] c".compoundliteral.74\00", align 1
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 1530, i32 4 }
@___asan_gen_.387 = private unnamed_addr constant [20 x i8] c".compoundliteral.76\00", align 1
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 1532, i32 4 }
@___asan_gen_.391 = private unnamed_addr constant [20 x i8] c".compoundliteral.78\00", align 1
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 1421, i32 14 }
@___asan_gen_.395 = private unnamed_addr constant [16 x i8] c"af9015_i2c_algo\00", align 1
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 263, i32 29 }
@___asan_gen_.398 = private unnamed_addr constant [13 x i8] c"af9015_props\00", align 1
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 1409, i32 47 }
@___asan_gen_.401 = private unnamed_addr constant [14 x i8] c"regmap_config\00", align 1
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 1343, i32 36 }
@___asan_gen_.404 = private unnamed_addr constant [11 x i8] c"regmap_bus\00", align 1
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 1347, i32 33 }
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 1352, i32 2 }
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 1376, i32 15 }
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 1378, i32 4 }
@___asan_gen_.422 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 1383, i32 18 }
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 1391, i32 2 }
@___asan_gen_.433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 1311, i32 2 }
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 61, i32 3 }
@___asan_gen_.454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 69, i32 3 }
@___asan_gen_.460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 99, i32 3 }
@___asan_gen_.463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 1332, i32 2 }
@___asan_gen_.466 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 1400, i32 2 }
@___asan_gen_.472 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 279, i32 2 }
@___asan_gen_.475 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 298, i32 2 }
@___asan_gen_.481 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 314, i32 4 }
@___asan_gen_.487 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 324, i32 3 }
@___asan_gen_.493 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 247, i32 3 }
@___asan_gen_.496 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 380, i32 2 }
@___asan_gen_.499 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 398, i32 2 }
@___asan_gen_.502 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 407, i32 2 }
@___asan_gen_.505 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 443, i32 3 }
@___asan_gen_.508 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 461, i32 3 }
@___asan_gen_.511 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 475, i32 3 }
@___asan_gen_.517 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 505, i32 4 }
@___asan_gen_.520 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 512, i32 3 }
@___asan_gen_.526 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 517, i32 3 }
@___asan_gen_.529 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 527, i32 3 }
@___asan_gen_.535 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 363, i32 3 }
@___asan_gen_.538 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 365, i32 2 }
@___asan_gen_.544 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 852, i32 2 }
@___asan_gen_.550 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 873, i32 5 }
@___asan_gen_.553 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 885, i32 28 }
@___asan_gen_.556 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 772, i32 2 }
@___asan_gen_.559 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 784, i32 2 }
@___asan_gen_.565 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 797, i32 3 }
@___asan_gen_.568 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 825, i32 2 }
@___asan_gen_.574 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 830, i32 3 }
@___asan_gen_.580 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 834, i32 3 }
@___asan_gen_.583 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 926, i32 2 }
@___asan_gen_.586 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 1007, i32 2 }
@___asan_gen_.593 = private unnamed_addr constant [21 x i8] c"af9015_mt2060_config\00", align 1
@___asan_gen_.595 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 935, i32 29 }
@___asan_gen_.601 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 1015, i32 9 }
@___asan_gen_.608 = private unnamed_addr constant [21 x i8] c"af9015_qt1010_config\00", align 1
@___asan_gen_.610 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 940, i32 29 }
@___asan_gen_.616 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 1021, i32 9 }
@___asan_gen_.623 = private unnamed_addr constant [23 x i8] c"af9015_tda18271_config\00", align 1
@___asan_gen_.625 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 944, i32 31 }
@___asan_gen_.631 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 1025, i32 9 }
@___asan_gen_.638 = private unnamed_addr constant [23 x i8] c"af9015_tda18218_config\00", align 1
@___asan_gen_.640 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 988, i32 31 }
@___asan_gen_.646 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 1029, i32 9 }
@___asan_gen_.653 = private unnamed_addr constant [22 x i8] c"af9015_mxl5003_config\00", align 1
@___asan_gen_.655 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 949, i32 31 }
@___asan_gen_.661 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 1033, i32 9 }
@___asan_gen_.662 = private unnamed_addr constant [22 x i8] c"af9015_mxl5005_config\00", align 1
@___asan_gen_.664 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 966, i32 31 }
@___asan_gen_.667 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 1038, i32 9 }
@___asan_gen_.679 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 1042, i32 9 }
@___asan_gen_.686 = private unnamed_addr constant [23 x i8] c"af9015_mc44s803_config\00", align 1
@___asan_gen_.688 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 983, i32 31 }
@___asan_gen_.694 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 1046, i32 9 }
@___asan_gen_.701 = private unnamed_addr constant [23 x i8] c"af9015_mxl5007t_config\00", align 1
@___asan_gen_.703 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 993, i32 31 }
@___asan_gen_.709 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 1050, i32 9 }
@___asan_gen_.715 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 1055, i32 3 }
@___asan_gen_.721 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 562, i32 2 }
@___asan_gen_.724 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 565, i32 3 }
@___asan_gen_.727 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 1108, i32 2 }
@___asan_gen_.728 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.733 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 1110, i32 2 }
@___asan_gen_.736 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 1270, i32 15 }
@___asan_gen_.739 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 1282, i32 18 }
@___asan_gen_.742 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 1137, i32 32 }
@___asan_gen_.745 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 1138, i32 42 }
@___asan_gen_.748 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 1139, i32 32 }
@___asan_gen_.751 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 1140, i32 36 }
@___asan_gen_.754 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 1141, i32 32 }
@___asan_gen_.760 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 1167, i32 3 }
@___asan_gen_.763 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 1174, i32 3 }
@___asan_gen_.766 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 1184, i32 3 }
@___asan_gen_.769 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 1216, i32 3 }
@___asan_gen_.770 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.778 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 1227, i32 3 }
@___asan_gen_.782 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.783 = private constant [41 x i8] c"../drivers/media/usb/dvb-usb-v2/af9015.c\00", align 1
@___asan_gen_.784 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 544, i32 2 }
@___asan_gen_.785 = private unnamed_addr constant [32 x i8] c"switch.table.af9015_read_config\00", align 1
@___asan_gen_.786 = private unnamed_addr constant [34 x i8] c"switch.table.af9015_get_rc_config\00", align 1
@llvm.compiler.used = appending global [253 x ptr] [ptr @__UNIQUE_ID_adapter_nr389, ptr @__UNIQUE_ID_adapter_nrtype388, ptr @__UNIQUE_ID_author433, ptr @__UNIQUE_ID_description434, ptr @__UNIQUE_ID_file435, ptr @__UNIQUE_ID_firmware437, ptr @__UNIQUE_ID_license436, ptr @__UNIQUE_ID_remote387, ptr @__UNIQUE_ID_remotetype386, ptr @__exitcall_af9015_usb_driver_exit, ptr @__initcall__kmod_dvb_usb_af9015__432_1551_af9015_usb_driver_init6, ptr @__param_adapter_nr, ptr @__param_remote, ptr @af9015_af9013_frontend_attach._entry, ptr @af9015_af9013_frontend_attach._entry_ptr, ptr @af9015_copy_firmware._entry, ptr @af9015_copy_firmware._entry.134, ptr @af9015_copy_firmware._entry.137, ptr @af9015_copy_firmware._entry_ptr, ptr @af9015_copy_firmware._entry_ptr.136, ptr @af9015_copy_firmware._entry_ptr.139, ptr @af9015_ctrl_msg._entry, ptr @af9015_ctrl_msg._entry.93, ptr @af9015_ctrl_msg._entry.96, ptr @af9015_ctrl_msg._entry_ptr, ptr @af9015_ctrl_msg._entry_ptr.95, ptr @af9015_ctrl_msg._entry_ptr.98, ptr @af9015_download_firmware._entry, ptr @af9015_download_firmware._entry.105, ptr @af9015_download_firmware._entry_ptr, ptr @af9015_download_firmware._entry_ptr.107, ptr @af9015_rc_query._entry, ptr @af9015_rc_query._entry_ptr, ptr @af9015_read_config._entry, ptr @af9015_read_config._entry.118, ptr @af9015_read_config._entry_ptr, ptr @af9015_read_config._entry_ptr.120, ptr @af9015_tuner_attach._entry, ptr @af9015_tuner_attach._entry.147, ptr @af9015_tuner_attach._entry.152, ptr @af9015_tuner_attach._entry.157, ptr @af9015_tuner_attach._entry.162, ptr @af9015_tuner_attach._entry.165, ptr @af9015_tuner_attach._entry.169, ptr @af9015_tuner_attach._entry.174, ptr @af9015_tuner_attach._entry.179, ptr @af9015_tuner_attach._entry.182, ptr @af9015_tuner_attach._entry_ptr, ptr @af9015_tuner_attach._entry_ptr.149, ptr @af9015_tuner_attach._entry_ptr.154, ptr @af9015_tuner_attach._entry_ptr.159, ptr @af9015_tuner_attach._entry_ptr.164, ptr @af9015_tuner_attach._entry_ptr.166, ptr @af9015_tuner_attach._entry_ptr.171, ptr @af9015_tuner_attach._entry_ptr.176, ptr @af9015_tuner_attach._entry_ptr.181, ptr @af9015_tuner_attach._entry_ptr.184, ptr @af9015_usb_driver_exit, ptr @dvb_usb_af9015_remote, ptr @af9015_usb_driver, ptr @adapter_nr, ptr @.str, ptr @af9015_id_table, ptr @.str.1, ptr @.compoundliteral, ptr @.compoundliteral.2, ptr @.str.3, ptr @.str.4, ptr @.compoundliteral.5, ptr @.str.6, ptr @.compoundliteral.7, ptr @.str.8, ptr @.compoundliteral.9, ptr @.str.10, ptr @.str.11, ptr @.compoundliteral.12, ptr @.str.13, ptr @.compoundliteral.14, ptr @.str.15, ptr @.compoundliteral.16, ptr @.str.17, ptr @.compoundliteral.18, ptr @.str.19, ptr @.str.20, ptr @.compoundliteral.21, ptr @.str.22, ptr @.compoundliteral.23, ptr @.str.24, ptr @.str.25, ptr @.compoundliteral.26, ptr @.str.27, ptr @.compoundliteral.28, ptr @.str.29, ptr @.compoundliteral.30, ptr @.str.31, ptr @.compoundliteral.32, ptr @.str.33, ptr @.compoundliteral.34, ptr @.str.35, ptr @.compoundliteral.36, ptr @.compoundliteral.37, ptr @.compoundliteral.38, ptr @.str.39, ptr @.str.40, ptr @.compoundliteral.41, ptr @.str.42, ptr @.compoundliteral.43, ptr @.str.44, ptr @.compoundliteral.45, ptr @.str.46, ptr @.compoundliteral.47, ptr @.str.48, ptr @.compoundliteral.49, ptr @.str.50, ptr @.compoundliteral.51, ptr @.compoundliteral.52, ptr @.str.53, ptr @.compoundliteral.54, ptr @.str.55, ptr @.compoundliteral.56, ptr @.str.57, ptr @.str.58, ptr @.compoundliteral.59, ptr @.str.60, ptr @.compoundliteral.61, ptr @.str.62, ptr @.compoundliteral.63, ptr @.compoundliteral.64, ptr @.str.65, ptr @.compoundliteral.66, ptr @.str.67, ptr @.str.68, ptr @.compoundliteral.69, ptr @.str.70, ptr @.str.71, ptr @.compoundliteral.72, ptr @.str.73, ptr @.compoundliteral.74, ptr @.str.75, ptr @.compoundliteral.76, ptr @.str.77, ptr @.compoundliteral.78, ptr @.str.79, ptr @af9015_i2c_algo, ptr @af9015_props, ptr @af9015_probe.regmap_config, ptr @af9015_probe.regmap_bus, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @af9015_probe._key, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.94, ptr @.str.97, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.106, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.119, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.135, ptr @.str.138, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @af9015_mt2060_config, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @af9015_qt1010_config, ptr @.str.148, ptr @.str.150, ptr @.str.151, ptr @af9015_tda18271_config, ptr @.str.153, ptr @.str.155, ptr @.str.156, ptr @af9015_tda18218_config, ptr @.str.158, ptr @.str.160, ptr @.str.161, ptr @af9015_mxl5003_config, ptr @.str.163, ptr @af9015_mxl5005_config, ptr @.str.167, ptr @.str.168, ptr @.str.170, ptr @.str.172, ptr @.str.173, ptr @af9015_mc44s803_config, ptr @.str.175, ptr @.str.177, ptr @.str.178, ptr @af9015_mxl5007t_config, ptr @.str.180, ptr @.str.183, ptr @.str.185, ptr @.str.186, ptr @.str.187, ptr @.str.188, ptr @af9015_init.__key, ptr @.str.189, ptr @.str.190, ptr @.str.191, ptr @.str.192, ptr @.str.193, ptr @.str.194, ptr @.str.195, ptr @.str.196, ptr @.str.197, ptr @.str.198, ptr @.str.199, ptr @.str.200, ptr @.str.201, ptr @.str.202, ptr @.str.203, ptr @.str.204, ptr @.str.205, ptr @switch.table.af9015_read_config, ptr @switch.table.af9015_get_rc_config], section "llvm.metadata"
@0 = internal global [217 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_usb_af9015_remote to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @af9015_usb_driver to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adapter_nr to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @af9015_id_table to i32), i32 936, i32 1184, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.2 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.5 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.7 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.9 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.12 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.14 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.16 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.18 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.21 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.23 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.26 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.28 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.30 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.32 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.34 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.36 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.37 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.38 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.41 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.43 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.45 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.47 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.49 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.51 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.52 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.54 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.56 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.59 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.61 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.63 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.64 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.66 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.69 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.72 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.74 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.76 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.78 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @af9015_i2c_algo to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @af9015_props to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @af9015_probe.regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @af9015_probe.regmap_bus to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @af9015_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @af9015_ctrl_msg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @af9015_ctrl_msg._entry.93 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @af9015_ctrl_msg._entry.96 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @af9015_download_firmware._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @af9015_download_firmware._entry.105 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @af9015_read_config._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @af9015_read_config._entry.118 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @af9015_af9013_frontend_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @af9015_copy_firmware._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @af9015_copy_firmware._entry.134 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @af9015_copy_firmware._entry.137 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @af9015_mt2060_config to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @af9015_tuner_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @af9015_qt1010_config to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @af9015_tuner_attach._entry.147 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @af9015_tda18271_config to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @af9015_tuner_attach._entry.152 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @af9015_tda18218_config to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @af9015_tuner_attach._entry.157 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @af9015_mxl5003_config to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @af9015_tuner_attach._entry.162 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @af9015_mxl5005_config to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @af9015_tuner_attach._entry.165 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @af9015_tuner_attach._entry.169 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @af9015_mc44s803_config to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @af9015_tuner_attach._entry.174 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @af9015_mxl5007t_config to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @af9015_tuner_attach._entry.179 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @af9015_tuner_attach._entry.182 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.185 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.186 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.187 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.188 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @af9015_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.189 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.190 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.191 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.192 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.193 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.194 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.195 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.196 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.754 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.197 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.198 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.199 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.200 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.201 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @af9015_rc_query._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.202 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.203 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.204 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.205 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.af9015_read_config to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.af9015_get_rc_config to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @af9015_usb_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usb_register_driver(ptr noundef nonnull @af9015_usb_driver, ptr noundef null, ptr noundef nonnull @.str) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @af9015_usb_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @usb_deregister(ptr noundef nonnull @af9015_usb_driver) #9
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
define internal i32 @af9015_probe(ptr noundef %d) #2 align 64 {
entry:
  %manufacturer = alloca [23 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 15
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %intf1 = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 4
  %2 = ptrtoint ptr %intf1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %intf1, align 8
  %parent.i = getelementptr inbounds %struct.usb_interface, ptr %3, i32 0, i32 7, i32 1
  %4 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent.i, align 8
  %add.ptr.i = getelementptr i8, ptr %5, i32 -128
  call void @llvm.lifetime.start.p0(i64 23, ptr nonnull %manufacturer) #9
  %6 = call ptr @memset(ptr %manufacturer, i32 255, i32 23)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @af9015_probe.__UNIQUE_ID_ddebug428, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@af9015_probe, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !400

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.usb_interface, ptr %3, i32 0, i32 7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @af9015_probe.__UNIQUE_ID_ddebug428, ptr noundef %dev, ptr noundef nonnull @.str.83) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %7 = call ptr @memset(ptr %manufacturer, i32 0, i32 23)
  %iManufacturer = getelementptr i8, ptr %5, i32 942
  %8 = ptrtoint ptr %iManufacturer to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %iManufacturer, align 2
  %conv = zext i8 %9 to i32
  %call6 = call i32 @usb_string(ptr noundef %add.ptr.i, i32 noundef %conv, ptr noundef nonnull %manufacturer, i32 noundef 23) #9
  %idVendor = getelementptr i8, ptr %5, i32 936
  %10 = ptrtoint ptr %idVendor to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %idVendor, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -13044, i16 %11)
  %cmp = icmp eq i16 %11, -13044
  br i1 %cmp, label %land.lhs.true, label %do.end.if.end37_crit_edge

do.end.if.end37_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end37

land.lhs.true:                                    ; preds = %do.end
  %idProduct = getelementptr i8, ptr %5, i32 938
  %12 = ptrtoint ptr %idProduct to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %idProduct, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -26368, i16 %13)
  %cmp12 = icmp eq i16 %13, -26368
  br i1 %cmp12, label %if.then14, label %land.lhs.true.if.end37_crit_edge

land.lhs.true.if.end37_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end37

if.then14:                                        ; preds = %land.lhs.true
  %bcmp = call i32 @bcmp(ptr noundef nonnull dereferenceable(23) @.str.84, ptr noundef nonnull dereferenceable(23) %manufacturer, i32 23) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool17.not = icmp eq i32 %bcmp, 0
  br i1 %tobool17.not, label %if.then18, label %if.then14.if.end37_crit_edge

if.then14.if.end37_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end37

if.then18:                                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @af9015_probe.__UNIQUE_ID_ddebug429, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@af9015_probe, %if.then31)) #9
          to label %do.body47 [label %if.then31], !srcloc !400

if.then31:                                        ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #11
  %dev32 = getelementptr inbounds %struct.usb_interface, ptr %3, i32 0, i32 7
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @af9015_probe.__UNIQUE_ID_ddebug429, ptr noundef %dev32, ptr noundef nonnull @.str.85) #9
  br label %do.body47

if.end37:                                         ; preds = %if.then14.if.end37_crit_edge, %land.lhs.true.if.end37_crit_edge, %do.end.if.end37_crit_edge
  %dev39 = getelementptr inbounds %struct.usb_interface, ptr %3, i32 0, i32 7
  %call40 = call ptr @__regmap_init(ptr noundef %dev39, ptr noundef nonnull @af9015_probe.regmap_bus, ptr noundef %d, ptr noundef nonnull @af9015_probe.regmap_config, ptr noundef nonnull @af9015_probe._key, ptr noundef nonnull @.str.86) #9
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call40, ptr %1, align 4
  %cmp.i = icmp ugt ptr %call40, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then43, label %if.end37.cleanup_crit_edge

if.end37.cleanup_crit_edge:                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then43:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #11
  %15 = ptrtoint ptr %call40 to i32
  br label %do.body47

do.body47:                                        ; preds = %if.then43, %if.then31, %if.then18
  %ret.0 = phi i32 [ %15, %if.then43 ], [ -19, %if.then31 ], [ -19, %if.then18 ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @af9015_probe.__UNIQUE_ID_ddebug430, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@af9015_probe, %if.then59)) #9
          to label %cleanup [label %if.then59], !srcloc !400

if.then59:                                        ; preds = %do.body47
  call void @__sanitizer_cov_trace_pc() #11
  %dev60 = getelementptr inbounds %struct.usb_interface, ptr %3, i32 0, i32 7
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @af9015_probe.__UNIQUE_ID_ddebug430, ptr noundef %dev60, ptr noundef nonnull @.str.87, i32 noundef %ret.0) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then59, %do.body47, %if.end37.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end37.cleanup_crit_edge ], [ %ret.0, %if.then59 ], [ %ret.0, %do.body47 ]
  call void @llvm.lifetime.end.p0(i64 23, ptr nonnull %manufacturer) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @af9015_disconnect(ptr nocapture noundef readonly %d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 15
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %intf1 = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 4
  %2 = ptrtoint ptr %intf1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %intf1, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @af9015_disconnect.__UNIQUE_ID_ddebug431, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@af9015_disconnect, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !400

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.usb_interface, ptr %3, i32 0, i32 7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @af9015_disconnect.__UNIQUE_ID_ddebug431, ptr noundef %dev, ptr noundef nonnull @.str.83) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  tail call void @regmap_exit(ptr noundef %5) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @af9015_identify_state(ptr noundef %d, ptr nocapture noundef readnone %name) #2 align 64 {
entry:
  %reply = alloca i8, align 1
  %req = alloca %struct.req_t, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %intf1 = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 4
  %0 = ptrtoint ptr %intf1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %intf1, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reply) #9
  %2 = ptrtoint ptr %reply to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %reply, align 1, !annotation !401
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %req) #9
  %3 = getelementptr inbounds i8, ptr %req, i32 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %3, align 4
  %5 = ptrtoint ptr %req to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 16, ptr %req, align 4
  %i2c_addr = getelementptr inbounds %struct.req_t, ptr %req, i32 0, i32 1
  %data_len = getelementptr inbounds %struct.req_t, ptr %req, i32 0, i32 5
  %6 = call ptr @memset(ptr %i2c_addr, i32 0, i32 5)
  %7 = ptrtoint ptr %data_len to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %data_len, align 2
  %data = getelementptr inbounds %struct.req_t, ptr %req, i32 0, i32 6
  %8 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %reply, ptr %data, align 4
  %call = call fastcc i32 @af9015_ctrl_msg(ptr noundef %d, ptr noundef nonnull %req)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.body, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @af9015_identify_state.__UNIQUE_ID_ddebug392, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@af9015_identify_state, %if.then6)) #9
          to label %do.end [label %if.then6], !srcloc !400

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.usb_interface, ptr %1, i32 0, i32 7
  %9 = ptrtoint ptr %reply to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %reply, align 1
  %conv = zext i8 %10 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @af9015_identify_state.__UNIQUE_ID_ddebug392, ptr noundef %dev, ptr noundef nonnull @.str.102, i32 noundef %conv) #9
  br label %do.end

do.end:                                           ; preds = %if.then6, %do.body
  %11 = ptrtoint ptr %reply to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %reply, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %12)
  %cmp = icmp ne i8 %12, 2
  %. = zext i1 %cmp to i32
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %., %do.end ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %req) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reply) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @af9015_download_firmware(ptr noundef %d, ptr nocapture noundef readonly %firmware) #2 align 64 {
entry:
  %req = alloca %struct.req_t, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 15
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %intf1 = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 4
  %2 = ptrtoint ptr %intf1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %intf1, align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %req) #9
  %4 = call ptr @memcpy(ptr %req, ptr @__const.af9015_download_firmware.req, i32 12)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @af9015_download_firmware.__UNIQUE_ID_ddebug393, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@af9015_download_firmware, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !400

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.usb_interface, ptr %3, i32 0, i32 7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @af9015_download_firmware.__UNIQUE_ID_ddebug393, ptr noundef %dev, ptr noundef nonnull @.str.83) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %5 = ptrtoint ptr %firmware to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %firmware, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp100.not = icmp eq i32 %6, 0
  br i1 %cmp100.not, label %do.end.for.end_crit_edge, label %for.body.lr.ph

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %do.end
  %data = getelementptr inbounds %struct.firmware, ptr %firmware, i32 0, i32 1
  %7 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data, align 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.0102 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %checksum.0101 = phi i16 [ 0, %for.body.lr.ph ], [ %add, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr i8, ptr %8, i32 %i.0102
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %10 to i16
  %add = add i16 %checksum.0101, %conv
  %inc = add nuw i32 %i.0102, 1
  %exitcond.not = icmp eq i32 %inc, %6
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %do.end.for.end_crit_edge
  %checksum.0.lcssa = phi i16 [ 0, %do.end.for.end_crit_edge ], [ %add, %for.body.for.end_crit_edge ]
  %conv7 = trunc i32 %6 to i16
  %firmware_size = getelementptr inbounds %struct.af9015_state, ptr %1, i32 0, i32 10
  %11 = ptrtoint ptr %firmware_size to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %conv7, ptr %firmware_size, align 4
  %firmware_checksum = getelementptr inbounds %struct.af9015_state, ptr %1, i32 0, i32 11
  %12 = ptrtoint ptr %firmware_checksum to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %checksum.0.lcssa, ptr %firmware_checksum, align 2
  %13 = ptrtoint ptr %firmware to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %firmware, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp10104 = icmp sgt i32 %14, 0
  br i1 %cmp10104, label %for.body12.lr.ph, label %for.end.for.end35_crit_edge

for.end.for.end35_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end35

for.body12.lr.ph:                                 ; preds = %for.end
  %data_len = getelementptr inbounds %struct.req_t, ptr %req, i32 0, i32 5
  %data17 = getelementptr inbounds %struct.firmware, ptr %firmware, i32 0, i32 1
  %data20 = getelementptr inbounds %struct.req_t, ptr %req, i32 0, i32 6
  %addr = getelementptr inbounds %struct.req_t, ptr %req, i32 0, i32 2
  br label %for.body12

for.cond9:                                        ; preds = %for.body12
  %sub34 = add nsw i32 %rem.0105, -55
  %cmp10 = icmp sgt i32 %rem.0105, 55
  br i1 %cmp10, label %for.cond9.for.body12_crit_edge, label %for.cond9.for.end35_crit_edge

for.cond9.for.end35_crit_edge:                    ; preds = %for.cond9
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end35

for.cond9.for.body12_crit_edge:                   ; preds = %for.cond9
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body12

for.body12:                                       ; preds = %for.cond9.for.body12_crit_edge, %for.body12.lr.ph
  %rem.0105 = phi i32 [ %14, %for.body12.lr.ph ], [ %sub34, %for.cond9.for.body12_crit_edge ]
  %15 = tail call i32 @llvm.umin.i32(i32 %rem.0105, i32 55)
  %conv16 = trunc i32 %15 to i8
  %16 = ptrtoint ptr %data_len to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv16, ptr %data_len, align 2
  %17 = ptrtoint ptr %data17 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %data17, align 4
  %19 = ptrtoint ptr %firmware to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %firmware, align 4
  %sub = sub i32 %20, %rem.0105
  %arrayidx19 = getelementptr i8, ptr %18, i32 %sub
  %21 = ptrtoint ptr %data20 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %arrayidx19, ptr %data20, align 4
  %add22 = sub nsw i32 20736, %rem.0105
  %sub23 = add i32 %add22, %20
  %conv24 = trunc i32 %sub23 to i16
  %22 = ptrtoint ptr %addr to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %conv24, ptr %addr, align 2
  %call25 = call fastcc i32 @af9015_ctrl_msg(ptr noundef %d, ptr noundef nonnull %req)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %for.cond9, label %do.end30

do.end30:                                         ; preds = %for.body12
  call void @__sanitizer_cov_trace_pc() #11
  %dev31 = getelementptr inbounds %struct.usb_interface, ptr %3, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev31, ptr noundef nonnull @.str.104, i32 noundef %call25) #13
  br label %do.body45

for.end35:                                        ; preds = %for.cond9.for.end35_crit_edge, %for.end.for.end35_crit_edge
  %23 = ptrtoint ptr %req to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 19, ptr %req, align 4
  %data_len36 = getelementptr inbounds %struct.req_t, ptr %req, i32 0, i32 5
  %24 = ptrtoint ptr %data_len36 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %data_len36, align 2
  %call37 = call fastcc i32 @af9015_ctrl_msg(ptr noundef %d, ptr noundef nonnull %req)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %for.end35.cleanup_crit_edge, label %do.end42

for.end35.cleanup_crit_edge:                      ; preds = %for.end35
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end42:                                         ; preds = %for.end35
  call void @__sanitizer_cov_trace_pc() #11
  %dev43 = getelementptr inbounds %struct.usb_interface, ptr %3, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev43, ptr noundef nonnull @.str.106, i32 noundef %call37) #13
  br label %do.body45

do.body45:                                        ; preds = %do.end42, %do.end30
  %ret.0 = phi i32 [ %call25, %do.end30 ], [ %call37, %do.end42 ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @af9015_download_firmware.__UNIQUE_ID_ddebug396, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@af9015_download_firmware, %if.then57)) #9
          to label %cleanup [label %if.then57], !srcloc !400

if.then57:                                        ; preds = %do.body45
  call void @__sanitizer_cov_trace_pc() #11
  %dev58 = getelementptr inbounds %struct.usb_interface, ptr %3, i32 0, i32 7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @af9015_download_firmware.__UNIQUE_ID_ddebug396, ptr noundef %dev58, ptr noundef nonnull @.str.87, i32 noundef %ret.0) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then57, %do.body45, %for.end35.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.end35.cleanup_crit_edge ], [ %ret.0, %if.then57 ], [ %ret.0, %do.body45 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %req) #9
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @af9015_get_adapter_count(ptr nocapture noundef readonly %d) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 15
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %dual_mode = getelementptr inbounds %struct.af9015_state, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %dual_mode to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %dual_mode, align 1
  %conv = zext i8 %3 to i32
  %add = add nuw nsw i32 %conv, 1
  ret i32 %add
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @af9015_pid_filter_ctrl(ptr nocapture noundef readonly %adap, i32 noundef %onoff) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
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
  %fe_mutex = getelementptr inbounds %struct.af9015_state, ptr %3, i32 0, i32 23
  tail call void @mutex_lock_nested(ptr noundef %fe_mutex, i32 noundef 0) #9
  %pid_filter_ctrl = getelementptr %struct.af9015_state, ptr %3, i32 0, i32 13, i32 %conv, i32 10
  %4 = ptrtoint ptr %pid_filter_ctrl to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pid_filter_ctrl, align 4
  %fe = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 14
  %6 = ptrtoint ptr %fe to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fe, align 8
  %call = tail call i32 %5(ptr noundef %7, i32 noundef %onoff) #9
  tail call void @mutex_unlock(ptr noundef %fe_mutex) #9
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @af9015_pid_filter(ptr nocapture noundef readonly %adap, i32 noundef %index, i16 noundef zeroext %pid, i32 noundef %onoff) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
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
  %fe_mutex = getelementptr inbounds %struct.af9015_state, ptr %3, i32 0, i32 23
  tail call void @mutex_lock_nested(ptr noundef %fe_mutex, i32 noundef 0) #9
  %pid_filter = getelementptr %struct.af9015_state, ptr %3, i32 0, i32 13, i32 %conv, i32 11
  %4 = ptrtoint ptr %pid_filter to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pid_filter, align 4
  %fe = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 14
  %6 = ptrtoint ptr %fe to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fe, align 8
  %conv3 = trunc i32 %index to i8
  %call = tail call i32 %5(ptr noundef %7, i8 noundef zeroext %conv3, i16 noundef zeroext %pid, i32 noundef %onoff) #9
  tail call void @mutex_unlock(ptr noundef %fe_mutex) #9
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @af9015_read_config(ptr noundef %d) #2 align 64 {
entry:
  %val = alloca i8, align 1
  %req = alloca %struct.req_t, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 15
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %intf1 = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 4
  %2 = ptrtoint ptr %intf1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %intf1, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val) #9
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %val, align 1, !annotation !401
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %req) #9
  %5 = getelementptr inbounds i8, ptr %req, i32 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %5, align 4
  %7 = ptrtoint ptr %req to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 40, ptr %req, align 4
  %i2c_addr = getelementptr inbounds %struct.req_t, ptr %req, i32 0, i32 1
  %8 = ptrtoint ptr %i2c_addr to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 80, ptr %i2c_addr, align 1
  %addr = getelementptr inbounds %struct.req_t, ptr %req, i32 0, i32 2
  %9 = ptrtoint ptr %addr to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 0, ptr %addr, align 2
  %mbox = getelementptr inbounds %struct.req_t, ptr %req, i32 0, i32 3
  %10 = ptrtoint ptr %mbox to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %mbox, align 4
  %addr_len = getelementptr inbounds %struct.req_t, ptr %req, i32 0, i32 4
  %11 = ptrtoint ptr %addr_len to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %addr_len, align 1
  %data_len = getelementptr inbounds %struct.req_t, ptr %req, i32 0, i32 5
  %12 = ptrtoint ptr %data_len to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %data_len, align 2
  %data = getelementptr inbounds %struct.req_t, ptr %req, i32 0, i32 6
  %13 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %val, ptr %data, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @af9015_read_config.__UNIQUE_ID_ddebug400, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@af9015_read_config, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !400

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.usb_interface, ptr %3, i32 0, i32 7
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @af9015_read_config.__UNIQUE_ID_ddebug400, ptr noundef %dev, ptr noundef nonnull @.str.83) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %14 = ptrtoint ptr %addr to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 24, ptr %addr, align 2
  %call6 = call fastcc i32 @af9015_ctrl_msg(ptr noundef %d, ptr noundef nonnull %req)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %do.end.if.end12_crit_edge, label %for.cond

do.end.if.end12_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

for.cond:                                         ; preds = %do.end
  %call6.1 = call fastcc i32 @af9015_ctrl_msg(ptr noundef %d, ptr noundef nonnull %req)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.1)
  %tobool7.not.1 = icmp eq i32 %call6.1, 0
  br i1 %tobool7.not.1, label %for.cond.if.end12_crit_edge, label %for.cond.1

for.cond.if.end12_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

for.cond.1:                                       ; preds = %for.cond
  %call6.2 = call fastcc i32 @af9015_ctrl_msg(ptr noundef %d, ptr noundef nonnull %req)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.2)
  %tobool7.not.2 = icmp eq i32 %call6.2, 0
  br i1 %tobool7.not.2, label %for.cond.1.if.end12_crit_edge, label %for.cond.2

for.cond.1.if.end12_crit_edge:                    ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

for.cond.2:                                       ; preds = %for.cond.1
  %call6.3 = call fastcc i32 @af9015_ctrl_msg(ptr noundef %d, ptr noundef nonnull %req)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.3)
  %tobool7.not.3 = icmp eq i32 %call6.3, 0
  br i1 %tobool7.not.3, label %for.cond.2.if.end12_crit_edge, label %for.cond.2.do.end296_crit_edge

for.cond.2.do.end296_crit_edge:                   ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end296

for.cond.2.if.end12_crit_edge:                    ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

if.end12:                                         ; preds = %for.cond.2.if.end12_crit_edge, %for.cond.1.if.end12_crit_edge, %for.cond.if.end12_crit_edge, %do.end.if.end12_crit_edge
  %call13 = call fastcc i32 @af9015_eeprom_hash(ptr noundef %d)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end16, label %if.end12.do.end296_crit_edge

if.end12.do.end296_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end296

if.end16:                                         ; preds = %if.end12
  %15 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %val, align 1
  %ir_mode = getelementptr inbounds %struct.af9015_state, ptr %1, i32 0, i32 2
  %17 = ptrtoint ptr %ir_mode to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %16, ptr %ir_mode, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @af9015_read_config.__UNIQUE_ID_ddebug401, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@af9015_read_config, %if.then29)) #9
          to label %do.end34 [label %if.then29], !srcloc !400

if.then29:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  %dev30 = getelementptr inbounds %struct.usb_interface, ptr %3, i32 0, i32 7
  %18 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %val, align 1
  %conv31 = zext i8 %19 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @af9015_read_config.__UNIQUE_ID_ddebug401, ptr noundef %dev30, ptr noundef nonnull @.str.111, i32 noundef %conv31) #9
  br label %do.end34

do.end34:                                         ; preds = %if.then29, %if.end16
  %20 = ptrtoint ptr %addr to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 49, ptr %addr, align 2
  %call36 = call fastcc i32 @af9015_ctrl_msg(ptr noundef %d, ptr noundef nonnull %req)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %if.end39, label %do.end34.do.end296_crit_edge

do.end34.do.end296_crit_edge:                     ; preds = %do.end34
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end296

if.end39:                                         ; preds = %do.end34
  %21 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %val, align 1
  %dual_mode = getelementptr inbounds %struct.af9015_state, ptr %1, i32 0, i32 7
  %23 = ptrtoint ptr %dual_mode to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %22, ptr %dual_mode, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @af9015_read_config.__UNIQUE_ID_ddebug402, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@af9015_read_config, %if.then52)) #9
          to label %do.end58 [label %if.then52], !srcloc !400

if.then52:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #11
  %dev53 = getelementptr inbounds %struct.usb_interface, ptr %3, i32 0, i32 7
  %24 = ptrtoint ptr %dual_mode to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %dual_mode, align 1
  %conv55 = zext i8 %25 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @af9015_read_config.__UNIQUE_ID_ddebug402, ptr noundef %dev53, ptr noundef nonnull @.str.112, i32 noundef %conv55) #9
  br label %do.end58

do.end58:                                         ; preds = %if.then52, %if.end39
  %af9013_i2c_addr = getelementptr inbounds %struct.af9015_state, ptr %1, i32 0, i32 15
  %26 = ptrtoint ptr %af9013_i2c_addr to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 28, ptr %af9013_i2c_addr, align 4
  %27 = ptrtoint ptr %dual_mode to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %dual_mode, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool60.not = icmp eq i8 %28, 0
  br i1 %tobool60.not, label %do.end58.if.end71_crit_edge, label %if.then61

do.end58.if.end71_crit_edge:                      ; preds = %do.end58
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end71

if.then61:                                        ; preds = %do.end58
  %29 = ptrtoint ptr %addr to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 50, ptr %addr, align 2
  %call63 = call fastcc i32 @af9015_ctrl_msg(ptr noundef %d, ptr noundef nonnull %req)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63)
  %tobool64.not = icmp eq i32 %call63, 0
  br i1 %tobool64.not, label %if.end66, label %if.then61.do.end296_crit_edge

if.then61.do.end296_crit_edge:                    ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end296

if.end66:                                         ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #11
  %30 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %val, align 1
  %32 = lshr i8 %31, 1
  %arrayidx70 = getelementptr %struct.af9015_state, ptr %1, i32 0, i32 15, i32 1
  %33 = ptrtoint ptr %arrayidx70 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %32, ptr %arrayidx70, align 1
  br label %if.end71

if.end71:                                         ; preds = %if.end66, %do.end58.if.end71_crit_edge
  %dev122 = getelementptr inbounds %struct.usb_interface, ptr %3, i32 0, i32 7
  br label %for.body78

for.body78:                                       ; preds = %for.inc289.for.body78_crit_edge, %if.end71
  %conv73473 = phi i32 [ 0, %if.end71 ], [ %conv73, %for.inc289.for.body78_crit_edge ]
  %i.1472 = phi i8 [ 0, %if.end71 ], [ %inc290, %for.inc289.for.body78_crit_edge ]
  %offset.0471 = phi i8 [ 0, %if.end71 ], [ %spec.select, %for.inc289.for.body78_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %i.1472)
  %cmp80 = icmp eq i8 %i.1472, 1
  %spec.select = select i1 %cmp80, i8 16, i8 %offset.0471
  %conv84 = zext i8 %spec.select to i16
  %conv86 = add nuw nsw i16 %conv84, 54
  %34 = ptrtoint ptr %addr to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %conv86, ptr %addr, align 2
  %call88 = call fastcc i32 @af9015_ctrl_msg(ptr noundef %d, ptr noundef nonnull %req)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call88)
  %tobool89.not = icmp eq i32 %call88, 0
  br i1 %tobool89.not, label %if.end91, label %for.body78.do.end296_crit_edge

for.body78.do.end296_crit_edge:                   ; preds = %for.body78
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end296

if.end91:                                         ; preds = %for.body78
  %35 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %val, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %36)
  %37 = icmp ult i8 %36, 4
  br i1 %37, label %switch.lookup, label %if.end91.do.body109_crit_edge

if.end91.do.body109_crit_edge:                    ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body109

switch.lookup:                                    ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #11
  %38 = sext i8 %36 to i32
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.af9015_read_config, i32 0, i32 %38
  %39 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %39)
  %switch.load = load i32, ptr %switch.gep, align 4
  %arrayidx93 = getelementptr %struct.af9015_state, ptr %1, i32 0, i32 13, i32 %conv73473
  %40 = ptrtoint ptr %arrayidx93 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %switch.load, ptr %arrayidx93, align 4
  br label %do.body109

do.body109:                                       ; preds = %switch.lookup, %if.end91.do.body109_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @af9015_read_config.__UNIQUE_ID_ddebug403, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@af9015_read_config, %if.then121)) #9
          to label %do.end131 [label %if.then121], !srcloc !400

if.then121:                                       ; preds = %do.body109
  call void @__sanitizer_cov_trace_pc() #11
  %41 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %val, align 1
  %conv124 = zext i8 %42 to i32
  %arrayidx127 = getelementptr %struct.af9015_state, ptr %1, i32 0, i32 13, i32 %conv73473
  %43 = ptrtoint ptr %arrayidx127 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx127, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @af9015_read_config.__UNIQUE_ID_ddebug403, ptr noundef %dev122, ptr noundef nonnull @.str.113, i32 noundef %conv73473, i32 noundef %conv124, i32 noundef %44) #9
  br label %do.end131

do.end131:                                        ; preds = %if.then121, %do.body109
  %conv134 = add nuw nsw i16 %conv84, 57
  %45 = ptrtoint ptr %addr to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %conv134, ptr %addr, align 2
  %call136 = call fastcc i32 @af9015_ctrl_msg(ptr noundef %d, ptr noundef nonnull %req)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call136)
  %tobool137.not = icmp eq i32 %call136, 0
  br i1 %tobool137.not, label %if.end139, label %do.end131.do.end296_crit_edge

do.end131.do.end296_crit_edge:                    ; preds = %do.end131
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end296

if.end139:                                        ; preds = %do.end131
  %46 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %val, align 1
  %conv140 = zext i8 %47 to i32
  %shl = shl nuw nsw i32 %conv140, 8
  %if_frequency = getelementptr %struct.af9015_state, ptr %1, i32 0, i32 13, i32 %conv73473, i32 2
  %48 = ptrtoint ptr %if_frequency to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %shl, ptr %if_frequency, align 4
  %conv146 = add nuw nsw i16 %conv84, 56
  %49 = ptrtoint ptr %addr to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 %conv146, ptr %addr, align 2
  %call148 = call fastcc i32 @af9015_ctrl_msg(ptr noundef %d, ptr noundef nonnull %req)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call148)
  %tobool149.not = icmp eq i32 %call148, 0
  br i1 %tobool149.not, label %if.end151, label %if.end139.do.end296_crit_edge

if.end139.do.end296_crit_edge:                    ; preds = %if.end139
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end296

if.end151:                                        ; preds = %if.end139
  %50 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %val, align 1
  %conv152 = zext i8 %51 to i32
  %52 = ptrtoint ptr %if_frequency to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %if_frequency, align 4
  %add157 = add i32 %53, %conv152
  %mul = mul i32 %add157, 1000
  store i32 %mul, ptr %if_frequency, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @af9015_read_config.__UNIQUE_ID_ddebug404, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@af9015_read_config, %if.then174)) #9
          to label %do.end183 [label %if.then174], !srcloc !400

if.then174:                                       ; preds = %if.end151
  call void @__sanitizer_cov_trace_pc() #11
  %54 = ptrtoint ptr %if_frequency to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %if_frequency, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @af9015_read_config.__UNIQUE_ID_ddebug404, ptr noundef %dev122, ptr noundef nonnull @.str.114, i32 noundef %conv73473, i32 noundef %55) #9
  br label %do.end183

do.end183:                                        ; preds = %if.then174, %if.end151
  %conv186 = add nuw nsw i16 %conv84, 59
  %56 = ptrtoint ptr %addr to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 %conv186, ptr %addr, align 2
  %call188 = call fastcc i32 @af9015_ctrl_msg(ptr noundef %d, ptr noundef nonnull %req)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call188)
  %tobool189.not = icmp eq i32 %call188, 0
  br i1 %tobool189.not, label %if.end191, label %do.end183.do.end296_crit_edge

do.end183.do.end296_crit_edge:                    ; preds = %do.end183
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end296

if.end191:                                        ; preds = %do.end183
  %57 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %val, align 1
  %conv192 = zext i8 %58 to i16
  %shl193 = shl nuw i16 %conv192, 8
  %arrayidx196 = getelementptr %struct.af9015_state, ptr %1, i32 0, i32 9, i32 %conv73473
  %59 = ptrtoint ptr %arrayidx196 to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 %shl193, ptr %arrayidx196, align 2
  %conv199 = add nuw nsw i16 %conv84, 58
  %60 = ptrtoint ptr %addr to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 %conv199, ptr %addr, align 2
  %call201 = call fastcc i32 @af9015_ctrl_msg(ptr noundef %d, ptr noundef nonnull %req)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call201)
  %tobool202.not = icmp eq i32 %call201, 0
  br i1 %tobool202.not, label %if.end204, label %if.end191.do.end296_crit_edge

if.end191.do.end296_crit_edge:                    ; preds = %if.end191
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end296

if.end204:                                        ; preds = %if.end191
  %61 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %val, align 1
  %conv205 = zext i8 %62 to i16
  %63 = ptrtoint ptr %arrayidx196 to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %arrayidx196, align 2
  %add210 = add i16 %64, %conv205
  store i16 %add210, ptr %arrayidx196, align 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @af9015_read_config.__UNIQUE_ID_ddebug405, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@af9015_read_config, %if.then224)) #9
          to label %do.end233 [label %if.then224], !srcloc !400

if.then224:                                       ; preds = %if.end204
  call void @__sanitizer_cov_trace_pc() #11
  %65 = ptrtoint ptr %arrayidx196 to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %arrayidx196, align 2
  %conv230 = zext i16 %66 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @af9015_read_config.__UNIQUE_ID_ddebug405, ptr noundef %dev122, ptr noundef nonnull @.str.115, i32 noundef %conv73473, i32 noundef %conv230) #9
  br label %do.end233

do.end233:                                        ; preds = %if.then224, %if.end204
  %add235 = add nuw nsw i16 %conv84, 60
  %67 = ptrtoint ptr %addr to i32
  call void @__asan_store2_noabort(i32 %67)
  store i16 %add235, ptr %addr, align 2
  %call238 = call fastcc i32 @af9015_ctrl_msg(ptr noundef %d, ptr noundef nonnull %req)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call238)
  %tobool239.not = icmp eq i32 %call238, 0
  br i1 %tobool239.not, label %if.end241, label %do.end233.do.end296_crit_edge

do.end233.do.end296_crit_edge:                    ; preds = %do.end233
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end296

if.end241:                                        ; preds = %do.end233
  %68 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %val, align 1
  %70 = zext i8 %69 to i64
  call void @__sanitizer_cov_trace_switch(i64 %70, ptr @__sancov_gen_cov_switch_values)
  switch i8 %69, label %do.end263 [
    i8 -127, label %if.end241.sw.epilog266_crit_edge
    i8 -126, label %if.end241.sw.epilog266_crit_edge485
    i8 -122, label %if.end241.sw.epilog266_crit_edge486
    i8 -116, label %if.end241.sw.epilog266_crit_edge487
    i8 -109, label %if.end241.sw.epilog266_crit_edge488
    i8 -100, label %if.end241.sw.epilog266_crit_edge489
    i8 -94, label %if.end241.sw.epilog266_crit_edge490
    i8 -77, label %if.end241.sw.epilog266_crit_edge491
    i8 3, label %if.end241.sw.bb247_crit_edge
    i8 13, label %if.end241.sw.bb247_crit_edge492
    i8 30, label %if.end241.sw.bb247_crit_edge493
    i8 -79, label %if.end241.sw.bb247_crit_edge494
    i8 -123, label %sw.bb252
  ]

if.end241.sw.bb247_crit_edge494:                  ; preds = %if.end241
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb247

if.end241.sw.bb247_crit_edge493:                  ; preds = %if.end241
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb247

if.end241.sw.bb247_crit_edge492:                  ; preds = %if.end241
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb247

if.end241.sw.bb247_crit_edge:                     ; preds = %if.end241
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb247

if.end241.sw.epilog266_crit_edge491:              ; preds = %if.end241
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog266

if.end241.sw.epilog266_crit_edge490:              ; preds = %if.end241
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog266

if.end241.sw.epilog266_crit_edge489:              ; preds = %if.end241
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog266

if.end241.sw.epilog266_crit_edge488:              ; preds = %if.end241
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog266

if.end241.sw.epilog266_crit_edge487:              ; preds = %if.end241
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog266

if.end241.sw.epilog266_crit_edge486:              ; preds = %if.end241
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog266

if.end241.sw.epilog266_crit_edge485:              ; preds = %if.end241
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog266

if.end241.sw.epilog266_crit_edge:                 ; preds = %if.end241
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog266

sw.bb247:                                         ; preds = %if.end241.sw.bb247_crit_edge, %if.end241.sw.bb247_crit_edge492, %if.end241.sw.bb247_crit_edge493, %if.end241.sw.bb247_crit_edge494
  br label %sw.epilog266

sw.bb252:                                         ; preds = %if.end241
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx256 = getelementptr %struct.af9015_state, ptr %1, i32 0, i32 13, i32 %conv73473, i32 7, i32 1
  %71 = ptrtoint ptr %arrayidx256 to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 3, ptr %arrayidx256, align 1
  br label %sw.epilog266

do.end263:                                        ; preds = %if.end241
  call void @__sanitizer_cov_trace_pc() #11
  %conv242 = zext i8 %69 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev122, ptr noundef nonnull @.str.116, i32 noundef %conv242) #13
  br label %cleanup

sw.epilog266:                                     ; preds = %sw.bb252, %sw.bb247, %if.end241.sw.epilog266_crit_edge, %if.end241.sw.epilog266_crit_edge485, %if.end241.sw.epilog266_crit_edge486, %if.end241.sw.epilog266_crit_edge487, %if.end241.sw.epilog266_crit_edge488, %if.end241.sw.epilog266_crit_edge489, %if.end241.sw.epilog266_crit_edge490, %if.end241.sw.epilog266_crit_edge491
  %.sink481 = phi i8 [ 1, %sw.bb252 ], [ 0, %sw.bb247 ], [ 1, %if.end241.sw.epilog266_crit_edge ], [ 1, %if.end241.sw.epilog266_crit_edge485 ], [ 1, %if.end241.sw.epilog266_crit_edge486 ], [ 1, %if.end241.sw.epilog266_crit_edge487 ], [ 1, %if.end241.sw.epilog266_crit_edge488 ], [ 1, %if.end241.sw.epilog266_crit_edge489 ], [ 1, %if.end241.sw.epilog266_crit_edge490 ], [ 1, %if.end241.sw.epilog266_crit_edge491 ]
  %spec_inv260 = getelementptr %struct.af9015_state, ptr %1, i32 0, i32 13, i32 %conv73473, i32 5
  %72 = ptrtoint ptr %spec_inv260 to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 %.sink481, ptr %spec_inv260, align 2
  %73 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %val, align 1
  %tuner = getelementptr %struct.af9015_state, ptr %1, i32 0, i32 13, i32 %conv73473, i32 1
  %75 = ptrtoint ptr %tuner to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 %74, ptr %tuner, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @af9015_read_config.__UNIQUE_ID_ddebug406, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@af9015_read_config, %if.then282)) #9
          to label %for.inc289 [label %if.then282], !srcloc !400

if.then282:                                       ; preds = %sw.epilog266
  call void @__sanitizer_cov_trace_pc() #11
  %76 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %val, align 1
  %conv285 = zext i8 %77 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @af9015_read_config.__UNIQUE_ID_ddebug406, ptr noundef %dev122, ptr noundef nonnull @.str.117, i32 noundef %conv73473, i32 noundef %conv285) #9
  br label %for.inc289

for.inc289:                                       ; preds = %if.then282, %sw.epilog266
  %inc290 = add i8 %i.1472, 1
  %conv73 = zext i8 %inc290 to i32
  %78 = ptrtoint ptr %dual_mode to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %dual_mode, align 1
  %cmp76.not = icmp ult i8 %79, %inc290
  br i1 %cmp76.not, label %for.inc289.if.end298_crit_edge, label %for.inc289.for.body78_crit_edge

for.inc289.for.body78_crit_edge:                  ; preds = %for.inc289
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body78

for.inc289.if.end298_crit_edge:                   ; preds = %for.inc289
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end298

do.end296:                                        ; preds = %do.end233.do.end296_crit_edge, %if.end191.do.end296_crit_edge, %do.end183.do.end296_crit_edge, %if.end139.do.end296_crit_edge, %do.end131.do.end296_crit_edge, %for.body78.do.end296_crit_edge, %if.then61.do.end296_crit_edge, %do.end34.do.end296_crit_edge, %if.end12.do.end296_crit_edge, %for.cond.2.do.end296_crit_edge
  %ret.4.ph = phi i32 [ %call63, %if.then61.do.end296_crit_edge ], [ %call36, %do.end34.do.end296_crit_edge ], [ %call13, %if.end12.do.end296_crit_edge ], [ %call6.3, %for.cond.2.do.end296_crit_edge ], [ %call88, %for.body78.do.end296_crit_edge ], [ %call136, %do.end131.do.end296_crit_edge ], [ %call148, %if.end139.do.end296_crit_edge ], [ %call188, %do.end183.do.end296_crit_edge ], [ %call201, %if.end191.do.end296_crit_edge ], [ %call238, %do.end233.do.end296_crit_edge ]
  %dev297 = getelementptr inbounds %struct.usb_interface, ptr %3, i32 0, i32 7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev297, ptr noundef nonnull @.str.119, i32 noundef %ret.4.ph) #13
  br label %if.end298

if.end298:                                        ; preds = %do.end296, %for.inc289.if.end298_crit_edge
  %ret.4466 = phi i32 [ %ret.4.ph, %do.end296 ], [ 0, %for.inc289.if.end298_crit_edge ]
  %udev = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 5
  %80 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %udev, align 4
  %idVendor = getelementptr inbounds %struct.usb_device, ptr %81, i32 0, i32 16, i32 7
  %82 = ptrtoint ptr %idVendor to i32
  call void @__asan_load2_noabort(i32 %82)
  %83 = load i16, ptr %idVendor, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -13817, i16 %83)
  %cmp300 = icmp eq i16 %83, -13817
  br i1 %cmp300, label %land.lhs.true, label %if.end298.cleanup_crit_edge

if.end298.cleanup_crit_edge:                      ; preds = %if.end298
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end298
  %idProduct = getelementptr inbounds %struct.usb_device, ptr %81, i32 0, i32 16, i32 8
  %84 = ptrtoint ptr %idProduct to i32
  call void @__asan_load2_noabort(i32 %84)
  %85 = load i16, ptr %idProduct, align 2
  %86 = zext i16 %85 to i64
  call void @__sanitizer_cov_trace_switch(i64 %86, ptr @__sancov_gen_cov_switch_values.206)
  switch i16 %85, label %land.lhs.true.cleanup_crit_edge [
    i16 2693, label %land.lhs.true.do.body314_crit_edge
    i16 2949, label %land.lhs.true.do.body314_crit_edge495
  ]

land.lhs.true.do.body314_crit_edge495:            ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body314

land.lhs.true.do.body314_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body314

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body314:                                       ; preds = %land.lhs.true.do.body314_crit_edge, %land.lhs.true.do.body314_crit_edge495
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @af9015_read_config.__UNIQUE_ID_ddebug407, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@af9015_read_config, %if.then326)) #9
          to label %do.end330 [label %if.then326], !srcloc !400

if.then326:                                       ; preds = %do.body314
  call void @__sanitizer_cov_trace_pc() #11
  %dev327 = getelementptr inbounds %struct.usb_interface, ptr %3, i32 0, i32 7
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @af9015_read_config.__UNIQUE_ID_ddebug407, ptr noundef %dev327, ptr noundef nonnull @.str.121) #9
  br label %do.end330

do.end330:                                        ; preds = %if.then326, %do.body314
  %dual_mode331 = getelementptr inbounds %struct.af9015_state, ptr %1, i32 0, i32 7
  %87 = ptrtoint ptr %dual_mode331 to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 0, ptr %dual_mode331, align 1
  %if_frequency334 = getelementptr inbounds %struct.af9015_state, ptr %1, i32 0, i32 13, i32 0, i32 2
  %88 = ptrtoint ptr %if_frequency334 to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 4570000, ptr %if_frequency334, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end330, %land.lhs.true.cleanup_crit_edge, %if.end298.cleanup_crit_edge, %do.end263
  %retval.0 = phi i32 [ -19, %do.end263 ], [ %ret.4466, %land.lhs.true.cleanup_crit_edge ], [ %ret.4466, %do.end330 ], [ %ret.4466, %if.end298.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %req) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @af9015_af9013_frontend_attach(ptr noundef %adap) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
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
  %intf7 = getelementptr inbounds %struct.dvb_usb_device, ptr %add.ptr, i32 0, i32 4
  %4 = ptrtoint ptr %intf7 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %intf7, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @af9015_af9013_frontend_attach.__UNIQUE_ID_ddebug417, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@af9015_af9013_frontend_attach, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !400

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.usb_interface, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %id, align 4
  %conv12 = zext i8 %7 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @af9015_af9013_frontend_attach.__UNIQUE_ID_ddebug417, ptr noundef %dev, ptr noundef nonnull @.str.126, i32 noundef %conv12) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %8 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %id, align 4
  %10 = zext i8 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.207)
  switch i8 %9, label %do.end.if.end68_crit_edge [
    i8 0, label %if.then16
    i8 1, label %if.then30
  ]

do.end.if.end68_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end68

if.then16:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %ts_mode = getelementptr inbounds %struct.af9015_state, ptr %3, i32 0, i32 13, i32 0, i32 3
  %11 = ptrtoint ptr %ts_mode to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %ts_mode, align 4
  %api_version = getelementptr inbounds %struct.af9015_state, ptr %3, i32 0, i32 13, i32 0, i32 6
  %12 = ptrtoint ptr %api_version to i32
  call void @__asan_storeN_noabort(i32 %12, i32 4)
  store i32 67840, ptr %api_version, align 1
  %gpio = getelementptr inbounds %struct.af9015_state, ptr %3, i32 0, i32 13, i32 0, i32 7
  %13 = ptrtoint ptr %gpio to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 7, ptr %gpio, align 1
  %arrayidx25 = getelementptr %struct.af9015_state, ptr %3, i32 0, i32 13, i32 0, i32 7, i32 3
  %14 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 3, ptr %arrayidx25, align 1
  br label %if.end68

if.then30:                                        ; preds = %do.end
  %ts_mode33 = getelementptr %struct.af9015_state, ptr %3, i32 0, i32 13, i32 1, i32 3
  %15 = ptrtoint ptr %ts_mode33 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 2, ptr %ts_mode33, align 4
  %ts_output_pin = getelementptr %struct.af9015_state, ptr %3, i32 0, i32 13, i32 1, i32 4
  %16 = ptrtoint ptr %ts_output_pin to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 7, ptr %ts_output_pin, align 1
  %api_version38 = getelementptr %struct.af9015_state, ptr %3, i32 0, i32 13, i32 1, i32 6
  %17 = ptrtoint ptr %api_version38 to i32
  call void @__asan_storeN_noabort(i32 %17, i32 4)
  store i32 67840, ptr %api_version38, align 1
  %gpio42 = getelementptr %struct.af9015_state, ptr %3, i32 0, i32 13, i32 1, i32 7
  %18 = ptrtoint ptr %gpio42 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 3, ptr %gpio42, align 1
  %arrayidx47 = getelementptr %struct.af9015_state, ptr %3, i32 0, i32 13, i32 1, i32 7, i32 1
  %19 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 3, ptr %arrayidx47, align 1
  %dual_mode = getelementptr inbounds %struct.af9015_state, ptr %3, i32 0, i32 7
  %20 = ptrtoint ptr %dual_mode to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %dual_mode, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool48.not = icmp eq i8 %21, 0
  br i1 %tobool48.not, label %if.then30.do.body136_crit_edge, label %if.then49

if.then30.do.body136_crit_edge:                   ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body136

if.then49:                                        ; preds = %if.then30
  tail call void @msleep(i32 noundef 100) #9
  %22 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %id, align 4
  %conv53 = zext i8 %23 to i32
  %.neg208 = mul nsw i32 %conv53, -2280
  %idx.neg54 = add nsw i32 %.neg208, -1616
  %add.ptr55 = getelementptr i8, ptr %adap, i32 %idx.neg54
  %call56 = tail call fastcc i32 @af9015_copy_firmware(ptr noundef %add.ptr55)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %tobool57.not = icmp eq i32 %call56, 0
  br i1 %tobool57.not, label %if.then49.if.end68_crit_edge, label %do.end61

if.then49.if.end68_crit_edge:                     ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end68

do.end61:                                         ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #11
  %dev62 = getelementptr inbounds %struct.usb_interface, ptr %5, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev62, ptr noundef nonnull @.str.128) #13
  %24 = ptrtoint ptr %dual_mode to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %dual_mode, align 1
  br label %do.body136

if.end68:                                         ; preds = %if.then49.if.end68_crit_edge, %if.then16, %do.end.if.end68_crit_edge
  %i2c_adap = getelementptr inbounds %struct.dvb_usb_device, ptr %add.ptr, i32 0, i32 10
  %25 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %id, align 4
  %idxprom = zext i8 %26 to i32
  %arrayidx70 = getelementptr %struct.af9015_state, ptr %3, i32 0, i32 15, i32 %idxprom
  %27 = ptrtoint ptr %arrayidx70 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx70, align 1
  %arrayidx74 = getelementptr %struct.af9015_state, ptr %3, i32 0, i32 13, i32 %idxprom
  %call75 = tail call ptr @dvb_module_probe(ptr noundef nonnull @.str.129, ptr noundef null, ptr noundef %i2c_adap, i8 noundef zeroext %28, ptr noundef %arrayidx74) #9
  %tobool76.not = icmp eq ptr %call75, null
  br i1 %tobool76.not, label %if.end68.do.body136_crit_edge, label %if.end78

if.end68.do.body136_crit_edge:                    ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body136

if.end78:                                         ; preds = %if.end68
  %29 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %id, align 4
  %idxprom81 = zext i8 %30 to i32
  %get_dvb_frontend = getelementptr %struct.af9015_state, ptr %3, i32 0, i32 13, i32 %idxprom81, i32 8
  %31 = ptrtoint ptr %get_dvb_frontend to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %get_dvb_frontend, align 4
  %call83 = tail call ptr %32(ptr noundef nonnull %call75) #9
  %fe = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 14
  %33 = ptrtoint ptr %fe to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call83, ptr %fe, align 8
  %34 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %id, align 4
  %idxprom86 = zext i8 %35 to i32
  %arrayidx87 = getelementptr %struct.af9015_state, ptr %3, i32 0, i32 14, i32 %idxprom86
  %36 = ptrtoint ptr %arrayidx87 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call75, ptr %arrayidx87, align 4
  %37 = load ptr, ptr %fe, align 8
  %tobool90.not = icmp eq ptr %37, null
  br i1 %tobool90.not, label %if.end78.cleanup_crit_edge, label %if.then91

if.end78.cleanup_crit_edge:                       ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then91:                                        ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #11
  %set_frontend = getelementptr inbounds %struct.dvb_frontend, ptr %37, i32 0, i32 1, i32 12
  %38 = ptrtoint ptr %set_frontend to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %set_frontend, align 4
  %40 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %id, align 4
  %idxprom96 = zext i8 %41 to i32
  %arrayidx97 = getelementptr %struct.af9015_state, ptr %3, i32 0, i32 17, i32 %idxprom96
  %42 = ptrtoint ptr %arrayidx97 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %39, ptr %arrayidx97, align 4
  %43 = ptrtoint ptr %fe to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %fe, align 8
  %set_frontend101 = getelementptr inbounds %struct.dvb_frontend, ptr %44, i32 0, i32 1, i32 12
  %45 = ptrtoint ptr %set_frontend101 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr @af9015_af9013_set_frontend, ptr %set_frontend101, align 4
  %46 = load ptr, ptr %fe, align 8
  %read_status = getelementptr inbounds %struct.dvb_frontend, ptr %46, i32 0, i32 1, i32 15
  %47 = ptrtoint ptr %read_status to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %read_status, align 4
  %49 = load i8, ptr %id, align 4
  %idxprom107 = zext i8 %49 to i32
  %arrayidx108 = getelementptr %struct.af9015_state, ptr %3, i32 0, i32 18, i32 %idxprom107
  %50 = ptrtoint ptr %arrayidx108 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %48, ptr %arrayidx108, align 4
  %51 = load ptr, ptr %fe, align 8
  %read_status112 = getelementptr inbounds %struct.dvb_frontend, ptr %51, i32 0, i32 1, i32 15
  %52 = ptrtoint ptr %read_status112 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr @af9015_af9013_read_status, ptr %read_status112, align 4
  %53 = load ptr, ptr %fe, align 8
  %init = getelementptr inbounds %struct.dvb_frontend, ptr %53, i32 0, i32 1, i32 5
  %54 = ptrtoint ptr %init to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %init, align 4
  %56 = load i8, ptr %id, align 4
  %idxprom118 = zext i8 %56 to i32
  %arrayidx119 = getelementptr %struct.af9015_state, ptr %3, i32 0, i32 19, i32 %idxprom118
  %57 = ptrtoint ptr %arrayidx119 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %55, ptr %arrayidx119, align 4
  %58 = load ptr, ptr %fe, align 8
  %init123 = getelementptr inbounds %struct.dvb_frontend, ptr %58, i32 0, i32 1, i32 5
  %59 = ptrtoint ptr %init123 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr @af9015_af9013_init, ptr %init123, align 4
  %60 = load ptr, ptr %fe, align 8
  %sleep = getelementptr inbounds %struct.dvb_frontend, ptr %60, i32 0, i32 1, i32 6
  %61 = ptrtoint ptr %sleep to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %sleep, align 4
  %63 = load i8, ptr %id, align 4
  %idxprom129 = zext i8 %63 to i32
  %arrayidx130 = getelementptr %struct.af9015_state, ptr %3, i32 0, i32 20, i32 %idxprom129
  %64 = ptrtoint ptr %arrayidx130 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %62, ptr %arrayidx130, align 4
  %65 = load ptr, ptr %fe, align 8
  %sleep134 = getelementptr inbounds %struct.dvb_frontend, ptr %65, i32 0, i32 1, i32 6
  %66 = ptrtoint ptr %sleep134 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr @af9015_af9013_sleep, ptr %sleep134, align 4
  br label %cleanup

do.body136:                                       ; preds = %if.end68.do.body136_crit_edge, %do.end61, %if.then30.do.body136_crit_edge
  %ret.0 = phi i32 [ %call56, %do.end61 ], [ -19, %if.then30.do.body136_crit_edge ], [ -19, %if.end68.do.body136_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @af9015_af9013_frontend_attach.__UNIQUE_ID_ddebug418, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@af9015_af9013_frontend_attach, %if.then148)) #9
          to label %cleanup [label %if.then148], !srcloc !400

if.then148:                                       ; preds = %do.body136
  call void @__sanitizer_cov_trace_pc() #11
  %dev149 = getelementptr inbounds %struct.usb_interface, ptr %5, i32 0, i32 7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @af9015_af9013_frontend_attach.__UNIQUE_ID_ddebug418, ptr noundef %dev149, ptr noundef nonnull @.str.87, i32 noundef %ret.0) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then148, %do.body136, %if.then91, %if.end78.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then91 ], [ 0, %if.end78.cleanup_crit_edge ], [ %ret.0, %if.then148 ], [ %ret.0, %do.body136 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @af9015_frontend_detach(ptr nocapture noundef readonly %adap) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
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
  %intf7 = getelementptr inbounds %struct.dvb_usb_device, ptr %add.ptr, i32 0, i32 4
  %4 = ptrtoint ptr %intf7 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %intf7, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @af9015_frontend_detach.__UNIQUE_ID_ddebug419, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@af9015_frontend_detach, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !400

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.usb_interface, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %id, align 4
  %conv12 = zext i8 %7 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @af9015_frontend_detach.__UNIQUE_ID_ddebug419, ptr noundef %dev, ptr noundef nonnull @.str.126, i32 noundef %conv12) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %8 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %id, align 4
  %idxprom = zext i8 %9 to i32
  %arrayidx = getelementptr %struct.af9015_state, ptr %3, i32 0, i32 14, i32 %idxprom
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx, align 4
  tail call void @dvb_module_release(ptr noundef %11) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @af9015_tuner_attach(ptr nocapture noundef readonly %adap) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
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
  %intf1 = getelementptr inbounds %struct.dvb_usb_device, ptr %add.ptr, i32 0, i32 4
  %4 = ptrtoint ptr %intf1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %intf1, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @af9015_tuner_attach.__UNIQUE_ID_ddebug420, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@af9015_tuner_attach, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !400

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.usb_interface, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %id, align 4
  %conv6 = zext i8 %7 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @af9015_tuner_attach.__UNIQUE_ID_ddebug420, ptr noundef %dev, ptr noundef nonnull @.str.126, i32 noundef %conv6) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %8 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %id, align 4
  %idxprom = zext i8 %9 to i32
  %arrayidx = getelementptr %struct.af9015_state, ptr %3, i32 0, i32 14, i32 %idxprom
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx, align 4
  %get_i2c_adapter = getelementptr %struct.af9015_state, ptr %3, i32 0, i32 13, i32 %idxprom, i32 9
  %12 = ptrtoint ptr %get_i2c_adapter to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %get_i2c_adapter, align 4
  %call11 = tail call ptr %13(ptr noundef %11) #9
  %14 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %id, align 4
  %idxprom14 = zext i8 %15 to i32
  %tuner = getelementptr %struct.af9015_state, ptr %3, i32 0, i32 13, i32 %idxprom14, i32 1
  %16 = ptrtoint ptr %tuner to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %tuner, align 4
  %18 = zext i8 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.208)
  switch i8 %17, label %do.end292 [
    i8 -126, label %do.end.sw.bb_crit_edge
    i8 -109, label %do.end.sw.bb_crit_edge425
    i8 -122, label %do.end.sw.bb41_crit_edge
    i8 -94, label %do.end.sw.bb41_crit_edge426
    i8 -100, label %sw.bb72
    i8 -77, label %sw.bb103
    i8 3, label %sw.bb134
    i8 13, label %do.end.sw.bb165_crit_edge
    i8 30, label %do.end.sw.bb165_crit_edge427
    i8 -127, label %sw.bb196
    i8 -123, label %sw.bb227
    i8 -79, label %sw.bb258
  ]

do.end.sw.bb165_crit_edge427:                     ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb165

do.end.sw.bb165_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb165

do.end.sw.bb41_crit_edge426:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb41

do.end.sw.bb41_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb41

do.end.sw.bb_crit_edge425:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

do.end.sw.bb_crit_edge:                           ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

sw.bb:                                            ; preds = %do.end.sw.bb_crit_edge, %do.end.sw.bb_crit_edge425
  %call17 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.142) #9
  %tobool18.not = icmp eq ptr %call17, null
  br i1 %tobool18.not, label %cond.end, label %sw.bb.if.then22_crit_edge

sw.bb.if.then22_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then22

cond.end:                                         ; preds = %sw.bb
  %call19 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.143) #9
  %call20 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.142) #9
  %tobool21.not = icmp eq ptr %call20, null
  br i1 %tobool21.not, label %do.end33, label %cond.end.if.then22_crit_edge

cond.end.if.then22_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then22

if.then22:                                        ; preds = %cond.end.if.then22_crit_edge, %sw.bb.if.then22_crit_edge
  %cond400 = phi ptr [ %call20, %cond.end.if.then22_crit_edge ], [ %call17, %sw.bb.if.then22_crit_edge ]
  %fe = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 14
  %19 = ptrtoint ptr %fe to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %fe, align 8
  %21 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %id, align 4
  %idxprom25 = zext i8 %22 to i32
  %arrayidx26 = getelementptr %struct.af9015_state, ptr %3, i32 0, i32 9, i32 %idxprom25
  %23 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %arrayidx26, align 2
  %call27 = tail call ptr %cond400(ptr noundef %20, ptr noundef %call11, ptr noundef nonnull @af9015_mt2060_config, i16 noundef zeroext %24) #9
  %cmp = icmp eq ptr %call27, null
  br i1 %cmp, label %if.then29, label %if.then22.if.end36_crit_edge

if.then22.if.end36_crit_edge:                     ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end36

if.then29:                                        ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__symbol_put(ptr noundef nonnull @.str.142) #9
  br label %if.end36

do.end33:                                         ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  %call35 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.144) #13
  br label %if.end36

if.end36:                                         ; preds = %do.end33, %if.then29, %if.then22.if.end36_crit_edge
  %__r.0 = phi ptr [ null, %if.then29 ], [ %call27, %if.then22.if.end36_crit_edge ], [ null, %do.end33 ]
  %cmp38 = icmp eq ptr %__r.0, null
  %cond40 = select i1 %cmp38, i32 -19, i32 0
  br label %sw.epilog

sw.bb41:                                          ; preds = %do.end.sw.bb41_crit_edge, %do.end.sw.bb41_crit_edge426
  %call44 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.145) #9
  %tobool45.not = icmp eq ptr %call44, null
  br i1 %tobool45.not, label %cond.end50, label %sw.bb41.if.then53_crit_edge

sw.bb41.if.then53_crit_edge:                      ; preds = %sw.bb41
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then53

cond.end50:                                       ; preds = %sw.bb41
  %call48 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.146) #9
  %call49 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.145) #9
  %tobool52.not = icmp eq ptr %call49, null
  br i1 %tobool52.not, label %do.end64, label %cond.end50.if.then53_crit_edge

cond.end50.if.then53_crit_edge:                   ; preds = %cond.end50
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then53

if.then53:                                        ; preds = %cond.end50.if.then53_crit_edge, %sw.bb41.if.then53_crit_edge
  %cond51403 = phi ptr [ %call49, %cond.end50.if.then53_crit_edge ], [ %call44, %sw.bb41.if.then53_crit_edge ]
  %fe54 = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 14
  %25 = ptrtoint ptr %fe54 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %fe54, align 8
  %call56 = tail call ptr %cond51403(ptr noundef %26, ptr noundef %call11, ptr noundef nonnull @af9015_qt1010_config) #9
  %cmp57 = icmp eq ptr %call56, null
  br i1 %cmp57, label %if.then59, label %if.then53.if.end67_crit_edge

if.then53.if.end67_crit_edge:                     ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end67

if.then59:                                        ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__symbol_put(ptr noundef nonnull @.str.145) #9
  br label %if.end67

do.end64:                                         ; preds = %cond.end50
  call void @__sanitizer_cov_trace_pc() #11
  %call66 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.148) #13
  br label %if.end67

if.end67:                                         ; preds = %do.end64, %if.then59, %if.then53.if.end67_crit_edge
  %__r42.0 = phi ptr [ null, %if.then59 ], [ %call56, %if.then53.if.end67_crit_edge ], [ null, %do.end64 ]
  %cmp69 = icmp eq ptr %__r42.0, null
  %cond71 = select i1 %cmp69, i32 -19, i32 0
  br label %sw.epilog

sw.bb72:                                          ; preds = %do.end
  %call75 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.150) #9
  %tobool76.not = icmp eq ptr %call75, null
  br i1 %tobool76.not, label %cond.end81, label %sw.bb72.if.then84_crit_edge

sw.bb72.if.then84_crit_edge:                      ; preds = %sw.bb72
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then84

cond.end81:                                       ; preds = %sw.bb72
  %call79 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.151) #9
  %call80 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.150) #9
  %tobool83.not = icmp eq ptr %call80, null
  br i1 %tobool83.not, label %do.end95, label %cond.end81.if.then84_crit_edge

cond.end81.if.then84_crit_edge:                   ; preds = %cond.end81
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then84

if.then84:                                        ; preds = %cond.end81.if.then84_crit_edge, %sw.bb72.if.then84_crit_edge
  %cond82406 = phi ptr [ %call80, %cond.end81.if.then84_crit_edge ], [ %call75, %sw.bb72.if.then84_crit_edge ]
  %fe85 = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 14
  %27 = ptrtoint ptr %fe85 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %fe85, align 8
  %call87 = tail call ptr %cond82406(ptr noundef %28, i8 noundef zeroext 96, ptr noundef %call11, ptr noundef nonnull @af9015_tda18271_config) #9
  %cmp88 = icmp eq ptr %call87, null
  br i1 %cmp88, label %if.then90, label %if.then84.if.end98_crit_edge

if.then84.if.end98_crit_edge:                     ; preds = %if.then84
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end98

if.then90:                                        ; preds = %if.then84
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__symbol_put(ptr noundef nonnull @.str.150) #9
  br label %if.end98

do.end95:                                         ; preds = %cond.end81
  call void @__sanitizer_cov_trace_pc() #11
  %call97 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.153) #13
  br label %if.end98

if.end98:                                         ; preds = %do.end95, %if.then90, %if.then84.if.end98_crit_edge
  %__r73.0 = phi ptr [ null, %if.then90 ], [ %call87, %if.then84.if.end98_crit_edge ], [ null, %do.end95 ]
  %cmp100 = icmp eq ptr %__r73.0, null
  %cond102 = select i1 %cmp100, i32 -19, i32 0
  br label %sw.epilog

sw.bb103:                                         ; preds = %do.end
  %call106 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.155) #9
  %tobool107.not = icmp eq ptr %call106, null
  br i1 %tobool107.not, label %cond.end112, label %sw.bb103.if.then115_crit_edge

sw.bb103.if.then115_crit_edge:                    ; preds = %sw.bb103
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then115

cond.end112:                                      ; preds = %sw.bb103
  %call110 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.156) #9
  %call111 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.155) #9
  %tobool114.not = icmp eq ptr %call111, null
  br i1 %tobool114.not, label %do.end126, label %cond.end112.if.then115_crit_edge

cond.end112.if.then115_crit_edge:                 ; preds = %cond.end112
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then115

if.then115:                                       ; preds = %cond.end112.if.then115_crit_edge, %sw.bb103.if.then115_crit_edge
  %cond113409 = phi ptr [ %call111, %cond.end112.if.then115_crit_edge ], [ %call106, %sw.bb103.if.then115_crit_edge ]
  %fe116 = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 14
  %29 = ptrtoint ptr %fe116 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %fe116, align 8
  %call118 = tail call ptr %cond113409(ptr noundef %30, ptr noundef %call11, ptr noundef nonnull @af9015_tda18218_config) #9
  %cmp119 = icmp eq ptr %call118, null
  br i1 %cmp119, label %if.then121, label %if.then115.if.end129_crit_edge

if.then115.if.end129_crit_edge:                   ; preds = %if.then115
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end129

if.then121:                                       ; preds = %if.then115
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__symbol_put(ptr noundef nonnull @.str.155) #9
  br label %if.end129

do.end126:                                        ; preds = %cond.end112
  call void @__sanitizer_cov_trace_pc() #11
  %call128 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.158) #13
  br label %if.end129

if.end129:                                        ; preds = %do.end126, %if.then121, %if.then115.if.end129_crit_edge
  %__r104.0 = phi ptr [ null, %if.then121 ], [ %call118, %if.then115.if.end129_crit_edge ], [ null, %do.end126 ]
  %cmp131 = icmp eq ptr %__r104.0, null
  %cond133 = select i1 %cmp131, i32 -19, i32 0
  br label %sw.epilog

sw.bb134:                                         ; preds = %do.end
  %call137 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.160) #9
  %tobool138.not = icmp eq ptr %call137, null
  br i1 %tobool138.not, label %cond.end143, label %sw.bb134.if.then146_crit_edge

sw.bb134.if.then146_crit_edge:                    ; preds = %sw.bb134
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then146

cond.end143:                                      ; preds = %sw.bb134
  %call141 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.161) #9
  %call142 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.160) #9
  %tobool145.not = icmp eq ptr %call142, null
  br i1 %tobool145.not, label %do.end157, label %cond.end143.if.then146_crit_edge

cond.end143.if.then146_crit_edge:                 ; preds = %cond.end143
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then146

if.then146:                                       ; preds = %cond.end143.if.then146_crit_edge, %sw.bb134.if.then146_crit_edge
  %cond144412 = phi ptr [ %call142, %cond.end143.if.then146_crit_edge ], [ %call137, %sw.bb134.if.then146_crit_edge ]
  %fe147 = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 14
  %31 = ptrtoint ptr %fe147 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %fe147, align 8
  %call149 = tail call ptr %cond144412(ptr noundef %32, ptr noundef %call11, ptr noundef nonnull @af9015_mxl5003_config) #9
  %cmp150 = icmp eq ptr %call149, null
  br i1 %cmp150, label %if.then152, label %if.then146.if.end160_crit_edge

if.then146.if.end160_crit_edge:                   ; preds = %if.then146
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end160

if.then152:                                       ; preds = %if.then146
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__symbol_put(ptr noundef nonnull @.str.160) #9
  br label %if.end160

do.end157:                                        ; preds = %cond.end143
  call void @__sanitizer_cov_trace_pc() #11
  %call159 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.163) #13
  br label %if.end160

if.end160:                                        ; preds = %do.end157, %if.then152, %if.then146.if.end160_crit_edge
  %__r135.0 = phi ptr [ null, %if.then152 ], [ %call149, %if.then146.if.end160_crit_edge ], [ null, %do.end157 ]
  %cmp162 = icmp eq ptr %__r135.0, null
  %cond164 = select i1 %cmp162, i32 -19, i32 0
  br label %sw.epilog

sw.bb165:                                         ; preds = %do.end.sw.bb165_crit_edge, %do.end.sw.bb165_crit_edge427
  %call168 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.160) #9
  %tobool169.not = icmp eq ptr %call168, null
  br i1 %tobool169.not, label %cond.end174, label %sw.bb165.if.then177_crit_edge

sw.bb165.if.then177_crit_edge:                    ; preds = %sw.bb165
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then177

cond.end174:                                      ; preds = %sw.bb165
  %call172 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.161) #9
  %call173 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.160) #9
  %tobool176.not = icmp eq ptr %call173, null
  br i1 %tobool176.not, label %do.end188, label %cond.end174.if.then177_crit_edge

cond.end174.if.then177_crit_edge:                 ; preds = %cond.end174
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then177

if.then177:                                       ; preds = %cond.end174.if.then177_crit_edge, %sw.bb165.if.then177_crit_edge
  %cond175415 = phi ptr [ %call173, %cond.end174.if.then177_crit_edge ], [ %call168, %sw.bb165.if.then177_crit_edge ]
  %fe178 = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 14
  %33 = ptrtoint ptr %fe178 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %fe178, align 8
  %call180 = tail call ptr %cond175415(ptr noundef %34, ptr noundef %call11, ptr noundef nonnull @af9015_mxl5005_config) #9
  %cmp181 = icmp eq ptr %call180, null
  br i1 %cmp181, label %if.then183, label %if.then177.if.end191_crit_edge

if.then177.if.end191_crit_edge:                   ; preds = %if.then177
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end191

if.then183:                                       ; preds = %if.then177
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__symbol_put(ptr noundef nonnull @.str.160) #9
  br label %if.end191

do.end188:                                        ; preds = %cond.end174
  call void @__sanitizer_cov_trace_pc() #11
  %call190 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.163) #13
  br label %if.end191

if.end191:                                        ; preds = %do.end188, %if.then183, %if.then177.if.end191_crit_edge
  %__r166.0 = phi ptr [ null, %if.then183 ], [ %call180, %if.then177.if.end191_crit_edge ], [ null, %do.end188 ]
  %cmp193 = icmp eq ptr %__r166.0, null
  %cond195 = select i1 %cmp193, i32 -19, i32 0
  br label %sw.epilog

sw.bb196:                                         ; preds = %do.end
  %call199 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.167) #9
  %tobool200.not = icmp eq ptr %call199, null
  br i1 %tobool200.not, label %cond.end205, label %sw.bb196.if.then208_crit_edge

sw.bb196.if.then208_crit_edge:                    ; preds = %sw.bb196
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then208

cond.end205:                                      ; preds = %sw.bb196
  %call203 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.168) #9
  %call204 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.167) #9
  %tobool207.not = icmp eq ptr %call204, null
  br i1 %tobool207.not, label %do.end219, label %cond.end205.if.then208_crit_edge

cond.end205.if.then208_crit_edge:                 ; preds = %cond.end205
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then208

if.then208:                                       ; preds = %cond.end205.if.then208_crit_edge, %sw.bb196.if.then208_crit_edge
  %cond206418 = phi ptr [ %call204, %cond.end205.if.then208_crit_edge ], [ %call199, %sw.bb196.if.then208_crit_edge ]
  %fe209 = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 14
  %35 = ptrtoint ptr %fe209 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %fe209, align 8
  %call211 = tail call ptr %cond206418(ptr noundef %36, i32 noundef 96, ptr noundef %call11, i32 noundef 8) #9
  %cmp212 = icmp eq ptr %call211, null
  br i1 %cmp212, label %if.then214, label %if.then208.if.end222_crit_edge

if.then208.if.end222_crit_edge:                   ; preds = %if.then208
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end222

if.then214:                                       ; preds = %if.then208
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__symbol_put(ptr noundef nonnull @.str.167) #9
  br label %if.end222

do.end219:                                        ; preds = %cond.end205
  call void @__sanitizer_cov_trace_pc() #11
  %call221 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.170) #13
  br label %if.end222

if.end222:                                        ; preds = %do.end219, %if.then214, %if.then208.if.end222_crit_edge
  %__r197.0 = phi ptr [ null, %if.then214 ], [ %call211, %if.then208.if.end222_crit_edge ], [ null, %do.end219 ]
  %cmp224 = icmp eq ptr %__r197.0, null
  %cond226 = select i1 %cmp224, i32 -19, i32 0
  br label %sw.epilog

sw.bb227:                                         ; preds = %do.end
  %call230 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.172) #9
  %tobool231.not = icmp eq ptr %call230, null
  br i1 %tobool231.not, label %cond.end236, label %sw.bb227.if.then239_crit_edge

sw.bb227.if.then239_crit_edge:                    ; preds = %sw.bb227
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then239

cond.end236:                                      ; preds = %sw.bb227
  %call234 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.173) #9
  %call235 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.172) #9
  %tobool238.not = icmp eq ptr %call235, null
  br i1 %tobool238.not, label %do.end250, label %cond.end236.if.then239_crit_edge

cond.end236.if.then239_crit_edge:                 ; preds = %cond.end236
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then239

if.then239:                                       ; preds = %cond.end236.if.then239_crit_edge, %sw.bb227.if.then239_crit_edge
  %cond237421 = phi ptr [ %call235, %cond.end236.if.then239_crit_edge ], [ %call230, %sw.bb227.if.then239_crit_edge ]
  %fe240 = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 14
  %37 = ptrtoint ptr %fe240 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %fe240, align 8
  %call242 = tail call ptr %cond237421(ptr noundef %38, ptr noundef %call11, ptr noundef nonnull @af9015_mc44s803_config) #9
  %cmp243 = icmp eq ptr %call242, null
  br i1 %cmp243, label %if.then245, label %if.then239.if.end253_crit_edge

if.then239.if.end253_crit_edge:                   ; preds = %if.then239
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end253

if.then245:                                       ; preds = %if.then239
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__symbol_put(ptr noundef nonnull @.str.172) #9
  br label %if.end253

do.end250:                                        ; preds = %cond.end236
  call void @__sanitizer_cov_trace_pc() #11
  %call252 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.175) #13
  br label %if.end253

if.end253:                                        ; preds = %do.end250, %if.then245, %if.then239.if.end253_crit_edge
  %__r228.0 = phi ptr [ null, %if.then245 ], [ %call242, %if.then239.if.end253_crit_edge ], [ null, %do.end250 ]
  %cmp255 = icmp eq ptr %__r228.0, null
  %cond257 = select i1 %cmp255, i32 -19, i32 0
  br label %sw.epilog

sw.bb258:                                         ; preds = %do.end
  %call261 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.177) #9
  %tobool262.not = icmp eq ptr %call261, null
  br i1 %tobool262.not, label %cond.end267, label %sw.bb258.if.then270_crit_edge

sw.bb258.if.then270_crit_edge:                    ; preds = %sw.bb258
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then270

cond.end267:                                      ; preds = %sw.bb258
  %call265 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.178) #9
  %call266 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.177) #9
  %tobool269.not = icmp eq ptr %call266, null
  br i1 %tobool269.not, label %do.end281, label %cond.end267.if.then270_crit_edge

cond.end267.if.then270_crit_edge:                 ; preds = %cond.end267
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then270

if.then270:                                       ; preds = %cond.end267.if.then270_crit_edge, %sw.bb258.if.then270_crit_edge
  %cond268424 = phi ptr [ %call266, %cond.end267.if.then270_crit_edge ], [ %call261, %sw.bb258.if.then270_crit_edge ]
  %fe271 = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 14
  %39 = ptrtoint ptr %fe271 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %fe271, align 8
  %call273 = tail call ptr %cond268424(ptr noundef %40, ptr noundef %call11, i8 noundef zeroext 96, ptr noundef nonnull @af9015_mxl5007t_config) #9
  %cmp274 = icmp eq ptr %call273, null
  br i1 %cmp274, label %if.then276, label %if.then270.if.end284_crit_edge

if.then270.if.end284_crit_edge:                   ; preds = %if.then270
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end284

if.then276:                                       ; preds = %if.then270
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__symbol_put(ptr noundef nonnull @.str.177) #9
  br label %if.end284

do.end281:                                        ; preds = %cond.end267
  call void @__sanitizer_cov_trace_pc() #11
  %call283 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.180) #13
  br label %if.end284

if.end284:                                        ; preds = %do.end281, %if.then276, %if.then270.if.end284_crit_edge
  %__r259.0 = phi ptr [ null, %if.then276 ], [ %call273, %if.then270.if.end284_crit_edge ], [ null, %do.end281 ]
  %cmp286 = icmp eq ptr %__r259.0, null
  %cond288 = select i1 %cmp286, i32 -19, i32 0
  br label %sw.epilog

do.end292:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %conv16 = zext i8 %17 to i32
  %dev293 = getelementptr inbounds %struct.usb_interface, ptr %5, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev293, ptr noundef nonnull @.str.183, i32 noundef %conv16) #13
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end292, %if.end284, %if.end253, %if.end222, %if.end191, %if.end160, %if.end129, %if.end98, %if.end67, %if.end36
  %ret.0 = phi i32 [ -19, %do.end292 ], [ %cond288, %if.end284 ], [ %cond257, %if.end253 ], [ %cond226, %if.end222 ], [ %cond195, %if.end191 ], [ %cond164, %if.end160 ], [ %cond133, %if.end129 ], [ %cond102, %if.end98 ], [ %cond71, %if.end67 ], [ %cond40, %if.end36 ]
  %fe300 = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 14
  %41 = ptrtoint ptr %fe300 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %fe300, align 8
  %init = getelementptr inbounds %struct.dvb_frontend, ptr %42, i32 0, i32 1, i32 32, i32 2
  %43 = ptrtoint ptr %init to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %init, align 4
  %tobool302.not = icmp eq ptr %44, null
  br i1 %tobool302.not, label %sw.epilog.if.end317_crit_edge, label %if.then303

sw.epilog.if.end317_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end317

if.then303:                                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  %45 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %id, align 4
  %idxprom310 = zext i8 %46 to i32
  %arrayidx311 = getelementptr %struct.af9015_state, ptr %3, i32 0, i32 21, i32 %idxprom310
  %47 = ptrtoint ptr %arrayidx311 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %44, ptr %arrayidx311, align 4
  %48 = ptrtoint ptr %fe300 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %fe300, align 8
  %init316 = getelementptr inbounds %struct.dvb_frontend, ptr %49, i32 0, i32 1, i32 32, i32 2
  %50 = ptrtoint ptr %init316 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr @af9015_tuner_init, ptr %init316, align 4
  br label %if.end317

if.end317:                                        ; preds = %if.then303, %sw.epilog.if.end317_crit_edge
  %51 = ptrtoint ptr %fe300 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %fe300, align 8
  %sleep = getelementptr inbounds %struct.dvb_frontend, ptr %52, i32 0, i32 1, i32 32, i32 3
  %53 = ptrtoint ptr %sleep to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %sleep, align 4
  %tobool322.not = icmp eq ptr %54, null
  br i1 %tobool322.not, label %if.end317.if.end337_crit_edge, label %if.then323

if.end317.if.end337_crit_edge:                    ; preds = %if.end317
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end337

if.then323:                                       ; preds = %if.end317
  call void @__sanitizer_cov_trace_pc() #11
  %55 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %id, align 4
  %idxprom330 = zext i8 %56 to i32
  %arrayidx331 = getelementptr %struct.af9015_state, ptr %3, i32 0, i32 22, i32 %idxprom330
  %57 = ptrtoint ptr %arrayidx331 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %54, ptr %arrayidx331, align 4
  %58 = ptrtoint ptr %fe300 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %fe300, align 8
  %sleep336 = getelementptr inbounds %struct.dvb_frontend, ptr %59, i32 0, i32 1, i32 32, i32 3
  %60 = ptrtoint ptr %sleep336 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr @af9015_tuner_sleep, ptr %sleep336, align 4
  br label %if.end337

if.end337:                                        ; preds = %if.then323, %if.end317.if.end337_crit_edge
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @af9015_streaming_ctrl(ptr nocapture noundef readonly %fe, i32 noundef %onoff) #2 align 64 {
entry:
  %buf = alloca [2 x i8], align 1
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
  %intf4 = getelementptr inbounds %struct.dvb_usb_device, ptr %add.ptr, i32 0, i32 4
  %8 = ptrtoint ptr %intf4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %intf4, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf) #9
  %10 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 -1, ptr %buf, align 1, !annotation !401
  %11 = getelementptr inbounds [2 x i8], ptr %buf, i32 0, i32 1
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 -1, ptr %11, align 1, !annotation !401
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @af9015_streaming_ctrl.__UNIQUE_ID_ddebug409, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@af9015_streaming_ctrl, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !400

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.usb_interface, ptr %9, i32 0, i32 7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @af9015_streaming_ctrl.__UNIQUE_ID_ddebug409, ptr noundef %dev, ptr noundef nonnull @.str.186, i32 noundef %conv, i32 noundef %onoff) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %arrayidx = getelementptr %struct.af9015_state, ptr %7, i32 0, i32 16, i32 %conv
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx, align 1, !range !402
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool12.not = icmp eq i8 %14, 0
  br i1 %tobool12.not, label %do.body14, label %do.end.if.end73_crit_edge

do.end.if.end73_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end73

do.body14:                                        ; preds = %do.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @af9015_streaming_ctrl.__UNIQUE_ID_ddebug410, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@af9015_streaming_ctrl, %if.then26)) #9
          to label %do.end30 [label %if.then26], !srcloc !400

if.then26:                                        ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #11
  %dev27 = getelementptr inbounds %struct.usb_interface, ptr %9, i32 0, i32 7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @af9015_streaming_ctrl.__UNIQUE_ID_ddebug410, ptr noundef %dev27, ptr noundef nonnull @.str.187) #9
  br label %do.end30

do.end30:                                         ; preds = %if.then26, %do.body14
  %udev = getelementptr inbounds %struct.dvb_usb_device, ptr %add.ptr, i32 0, i32 5
  %15 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %udev, align 4
  %speed = getelementptr inbounds %struct.usb_device, ptr %16, i32 0, i32 4
  %17 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %speed, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %18)
  %cmp = icmp eq i32 %18, 2
  %div = select i1 %cmp, i32 235, i32 4089
  %conv38 = trunc i32 %div to i8
  %19 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv38, ptr %buf, align 1
  %shr40 = lshr i32 %div, 8
  %conv42 = trunc i32 %shr40 to i8
  %20 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv42, ptr %11, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp44 = icmp eq i8 %5, 0
  %. = select i1 %cmp44, i32 56712, i32 56714
  %21 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %7, align 4
  %call48 = call i32 @regmap_bulk_write(ptr noundef %22, i32 noundef %., ptr noundef nonnull %buf, i32 noundef 2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %if.end51, label %do.end30.do.body160_crit_edge

do.end30.do.body160_crit_edge:                    ; preds = %do.end30
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body160

if.end51:                                         ; preds = %do.end30
  %.242 = select i1 %cmp44, i32 56588, i32 56589
  %div37 = select i1 %cmp, i32 16, i32 128
  %23 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %7, align 4
  %call53 = call i32 @regmap_write(ptr noundef %24, i32 noundef %.242, i32 noundef %div37) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %if.end56, label %if.end51.do.body160_crit_edge

if.end51.do.body160_crit_edge:                    ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body160

if.end56:                                         ; preds = %if.end51
  %dual_mode = getelementptr inbounds %struct.af9015_state, ptr %7, i32 0, i32 7
  %25 = ptrtoint ptr %dual_mode to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %dual_mode, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool57.not = icmp eq i8 %26, 0
  %not.tobool57.not = xor i1 %tobool57.not, true
  %.244 = zext i1 %not.tobool57.not to i32
  %27 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %7, align 4
  %call.i = call i32 @regmap_update_bits_base(ptr noundef %28, i32 noundef 54539, i32 noundef 1, i32 noundef %.244, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool63.not = icmp eq i32 %call.i, 0
  br i1 %tobool63.not, label %if.end65, label %if.end56.do.body160_crit_edge

if.end56.do.body160_crit_edge:                    ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body160

if.end65:                                         ; preds = %if.end56
  %.243 = select i1 %tobool57.not, i32 0, i32 16
  %29 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %7, align 4
  %call.i254 = call i32 @regmap_update_bits_base(ptr noundef %30, i32 noundef 54560, i32 noundef 16, i32 noundef %.243, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i254)
  %tobool68.not = icmp eq i32 %call.i254, 0
  br i1 %tobool68.not, label %if.end70, label %if.end65.do.body160_crit_edge

if.end65.do.body160_crit_edge:                    ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body160

if.end70:                                         ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #11
  %31 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 1, ptr %arrayidx, align 1
  br label %if.end73

if.end73:                                         ; preds = %if.end70, %do.end.if.end73_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp74 = icmp eq i8 %5, 0
  %cmp74.not = xor i1 %cmp74, true
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %onoff)
  %tobool76.not = icmp eq i32 %onoff, 0
  %or.cond = or i1 %tobool76.not, %cmp74.not
  br i1 %or.cond, label %if.else93, label %if.then77

if.then77:                                        ; preds = %if.end73
  %32 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %7, align 4
  %call.i255 = call i32 @regmap_update_bits_base(ptr noundef %33, i32 noundef 56595, i32 noundef 32, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i255)
  %tobool80.not = icmp eq i32 %call.i255, 0
  br i1 %tobool80.not, label %if.end82, label %if.then77.do.body160_crit_edge

if.then77.do.body160_crit_edge:                   ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body160

if.end82:                                         ; preds = %if.then77
  %34 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %7, align 4
  %call.i256 = call i32 @regmap_update_bits_base(ptr noundef %35, i32 noundef 56593, i32 noundef 32, i32 noundef 32, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i256)
  %tobool85.not = icmp eq i32 %call.i256, 0
  br i1 %tobool85.not, label %if.end87, label %if.end82.do.body160_crit_edge

if.end82.do.body160_crit_edge:                    ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body160

if.end87:                                         ; preds = %if.end82
  %36 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %7, align 4
  %call.i257 = call i32 @regmap_update_bits_base(ptr noundef %37, i32 noundef 54535, i32 noundef 4, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i257)
  %tobool90.not = icmp eq i32 %call.i257, 0
  br i1 %tobool90.not, label %if.end87.cleanup_crit_edge, label %if.end87.do.body160_crit_edge

if.end87.do.body160_crit_edge:                    ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body160

if.end87.cleanup_crit_edge:                       ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.else93:                                        ; preds = %if.end73
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %5)
  %cmp94 = icmp eq i8 %5, 1
  %cmp94.not = xor i1 %cmp94, true
  %or.cond245 = or i1 %tobool76.not, %cmp94.not
  br i1 %or.cond245, label %if.else114, label %if.then98

if.then98:                                        ; preds = %if.else93
  %38 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %7, align 4
  %call.i258 = call i32 @regmap_update_bits_base(ptr noundef %39, i32 noundef 56595, i32 noundef 64, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i258)
  %tobool101.not = icmp eq i32 %call.i258, 0
  br i1 %tobool101.not, label %if.end103, label %if.then98.do.body160_crit_edge

if.then98.do.body160_crit_edge:                   ; preds = %if.then98
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body160

if.end103:                                        ; preds = %if.then98
  %40 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %7, align 4
  %call.i259 = call i32 @regmap_update_bits_base(ptr noundef %41, i32 noundef 56593, i32 noundef 64, i32 noundef 64, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i259)
  %tobool106.not = icmp eq i32 %call.i259, 0
  br i1 %tobool106.not, label %if.end108, label %if.end103.do.body160_crit_edge

if.end103.do.body160_crit_edge:                   ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body160

if.end108:                                        ; preds = %if.end103
  %42 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %7, align 4
  %call.i260 = call i32 @regmap_update_bits_base(ptr noundef %43, i32 noundef 54539, i32 noundef 2, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i260)
  %tobool111.not = icmp eq i32 %call.i260, 0
  br i1 %tobool111.not, label %if.end108.cleanup_crit_edge, label %if.end108.do.body160_crit_edge

if.end108.do.body160_crit_edge:                   ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body160

if.end108.cleanup_crit_edge:                      ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.else114:                                       ; preds = %if.else93
  %or.cond246 = and i1 %tobool76.not, %cmp74
  br i1 %or.cond246, label %if.then119, label %if.else135

if.then119:                                       ; preds = %if.else114
  %44 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %7, align 4
  %call.i261 = call i32 @regmap_update_bits_base(ptr noundef %45, i32 noundef 54535, i32 noundef 4, i32 noundef 4, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i261)
  %tobool122.not = icmp eq i32 %call.i261, 0
  br i1 %tobool122.not, label %if.end124, label %if.then119.do.body160_crit_edge

if.then119.do.body160_crit_edge:                  ; preds = %if.then119
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body160

if.end124:                                        ; preds = %if.then119
  %46 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %7, align 4
  %call.i262 = call i32 @regmap_update_bits_base(ptr noundef %47, i32 noundef 56593, i32 noundef 32, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i262)
  %tobool127.not = icmp eq i32 %call.i262, 0
  br i1 %tobool127.not, label %if.end129, label %if.end124.do.body160_crit_edge

if.end124.do.body160_crit_edge:                   ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body160

if.end129:                                        ; preds = %if.end124
  %48 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %7, align 4
  %call.i263 = call i32 @regmap_update_bits_base(ptr noundef %49, i32 noundef 56595, i32 noundef 32, i32 noundef 32, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i263)
  %tobool132.not = icmp eq i32 %call.i263, 0
  br i1 %tobool132.not, label %if.end129.cleanup_crit_edge, label %if.end129.do.body160_crit_edge

if.end129.do.body160_crit_edge:                   ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body160

if.end129.cleanup_crit_edge:                      ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.else135:                                       ; preds = %if.else114
  %or.cond247 = and i1 %tobool76.not, %cmp94
  br i1 %or.cond247, label %if.then140, label %if.else135.cleanup_crit_edge

if.else135.cleanup_crit_edge:                     ; preds = %if.else135
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then140:                                       ; preds = %if.else135
  %50 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %7, align 4
  %call.i264 = call i32 @regmap_update_bits_base(ptr noundef %51, i32 noundef 54539, i32 noundef 2, i32 noundef 2, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i264)
  %tobool143.not = icmp eq i32 %call.i264, 0
  br i1 %tobool143.not, label %if.end145, label %if.then140.do.body160_crit_edge

if.then140.do.body160_crit_edge:                  ; preds = %if.then140
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body160

if.end145:                                        ; preds = %if.then140
  %52 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %7, align 4
  %call.i265 = call i32 @regmap_update_bits_base(ptr noundef %53, i32 noundef 56593, i32 noundef 64, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i265)
  %tobool148.not = icmp eq i32 %call.i265, 0
  br i1 %tobool148.not, label %if.end150, label %if.end145.do.body160_crit_edge

if.end145.do.body160_crit_edge:                   ; preds = %if.end145
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body160

if.end150:                                        ; preds = %if.end145
  %54 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %7, align 4
  %call.i266 = call i32 @regmap_update_bits_base(ptr noundef %55, i32 noundef 56595, i32 noundef 64, i32 noundef 64, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i266)
  %tobool153.not = icmp eq i32 %call.i266, 0
  br i1 %tobool153.not, label %if.end150.cleanup_crit_edge, label %if.end150.do.body160_crit_edge

if.end150.do.body160_crit_edge:                   ; preds = %if.end150
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body160

if.end150.cleanup_crit_edge:                      ; preds = %if.end150
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body160:                                       ; preds = %if.end150.do.body160_crit_edge, %if.end145.do.body160_crit_edge, %if.then140.do.body160_crit_edge, %if.end129.do.body160_crit_edge, %if.end124.do.body160_crit_edge, %if.then119.do.body160_crit_edge, %if.end108.do.body160_crit_edge, %if.end103.do.body160_crit_edge, %if.then98.do.body160_crit_edge, %if.end87.do.body160_crit_edge, %if.end82.do.body160_crit_edge, %if.then77.do.body160_crit_edge, %if.end65.do.body160_crit_edge, %if.end56.do.body160_crit_edge, %if.end51.do.body160_crit_edge, %do.end30.do.body160_crit_edge
  %ret.0 = phi i32 [ %call.i255, %if.then77.do.body160_crit_edge ], [ %call.i256, %if.end82.do.body160_crit_edge ], [ %call.i257, %if.end87.do.body160_crit_edge ], [ %call.i258, %if.then98.do.body160_crit_edge ], [ %call.i259, %if.end103.do.body160_crit_edge ], [ %call.i260, %if.end108.do.body160_crit_edge ], [ %call.i264, %if.then140.do.body160_crit_edge ], [ %call.i265, %if.end145.do.body160_crit_edge ], [ %call.i266, %if.end150.do.body160_crit_edge ], [ %call.i261, %if.then119.do.body160_crit_edge ], [ %call.i262, %if.end124.do.body160_crit_edge ], [ %call.i263, %if.end129.do.body160_crit_edge ], [ %call48, %do.end30.do.body160_crit_edge ], [ %call53, %if.end51.do.body160_crit_edge ], [ %call.i, %if.end56.do.body160_crit_edge ], [ %call.i254, %if.end65.do.body160_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @af9015_streaming_ctrl.__UNIQUE_ID_ddebug411, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@af9015_streaming_ctrl, %if.then172)) #9
          to label %cleanup [label %if.then172], !srcloc !400

if.then172:                                       ; preds = %do.body160
  call void @__sanitizer_cov_trace_pc() #11
  %dev173 = getelementptr inbounds %struct.usb_interface, ptr %9, i32 0, i32 7
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @af9015_streaming_ctrl.__UNIQUE_ID_ddebug411, ptr noundef %dev173, ptr noundef nonnull @.str.87, i32 noundef %ret.0) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then172, %do.body160, %if.end150.cleanup_crit_edge, %if.else135.cleanup_crit_edge, %if.end129.cleanup_crit_edge, %if.end108.cleanup_crit_edge, %if.end87.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end108.cleanup_crit_edge ], [ 0, %if.else135.cleanup_crit_edge ], [ 0, %if.end150.cleanup_crit_edge ], [ 0, %if.end129.cleanup_crit_edge ], [ 0, %if.end87.cleanup_crit_edge ], [ %ret.0, %if.then172 ], [ %ret.0, %do.body160 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @af9015_init(ptr nocapture noundef readonly %d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 15
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %intf1 = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 4
  %2 = ptrtoint ptr %intf1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %intf1, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @af9015_init.__UNIQUE_ID_ddebug421, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@af9015_init, %if.then)) #9
          to label %do.body4 [label %if.then], !srcloc !400

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.usb_interface, ptr %3, i32 0, i32 7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @af9015_init.__UNIQUE_ID_ddebug421, ptr noundef %dev, ptr noundef nonnull @.str.83) #9
  br label %do.body4

do.body4:                                         ; preds = %if.then, %entry
  %fe_mutex = getelementptr inbounds %struct.af9015_state, ptr %1, i32 0, i32 23
  tail call void @__mutex_init(ptr noundef %fe_mutex, ptr noundef nonnull @.str.189, ptr noundef nonnull @af9015_init.__key) #9
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %call7 = tail call i32 @regmap_write(ptr noundef %5, i32 noundef 39145, i32 noundef 255) #9
  ret i32 %call7
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @af9015_get_rc_config(ptr nocapture noundef readonly %d, ptr nocapture noundef %rc) #2 align 64 {
entry:
  %manufacturer = alloca [10 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 15
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %udev = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 5
  %2 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %udev, align 4
  %idVendor = getelementptr inbounds %struct.usb_device, ptr %3, i32 0, i32 16, i32 7
  %4 = ptrtoint ptr %idVendor to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %idVendor, align 8
  %ir_mode = getelementptr inbounds %struct.af9015_state, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %ir_mode to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %ir_mode, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %cmp = icmp eq i8 %7, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = ptrtoint ptr %rc to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rc, align 8
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %if.then2, label %if.end.if.end10_crit_edge

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

if.then2:                                         ; preds = %if.end
  %10 = load i32, ptr @dvb_usb_af9015_remote, align 4
  %switch.tableidx = add i32 %10, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %switch.tableidx)
  %11 = icmp ult i32 %switch.tableidx, 5
  br i1 %11, label %switch.lookup, label %if.then7

if.then7:                                         ; preds = %if.then2
  %12 = ptrtoint ptr %rc to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %rc, align 8
  %eeprom_sum = getelementptr inbounds %struct.af9015_state, ptr %1, i32 0, i32 12
  %13 = ptrtoint ptr %eeprom_sum to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %eeprom_sum, align 4
  %15 = zext i32 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.209)
  switch i32 %14, label %for.cond.i54.3 [
    i32 -1191266552, label %if.then7.if.end10.sink.split_crit_edge
    i32 -1552925440, label %af9015_rc_setup_match.exit59.fold.split
    i32 -1686256050, label %af9015_rc_setup_match.exit59.fold.split86
    i32 1565123547, label %af9015_rc_setup_match.exit59.fold.split87
  ]

if.then7.if.end10.sink.split_crit_edge:           ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10.sink.split

for.cond.i54.3:                                   ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10.sink.split

af9015_rc_setup_match.exit59.fold.split:          ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10.sink.split

af9015_rc_setup_match.exit59.fold.split86:        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10.sink.split

af9015_rc_setup_match.exit59.fold.split87:        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10.sink.split

switch.lookup:                                    ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #11
  %switch.gep = getelementptr inbounds [5 x ptr], ptr @switch.table.af9015_get_rc_config, i32 0, i32 %switch.tableidx
  %16 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %16)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %if.end10.sink.split

if.end10.sink.split:                              ; preds = %switch.lookup, %af9015_rc_setup_match.exit59.fold.split87, %af9015_rc_setup_match.exit59.fold.split86, %af9015_rc_setup_match.exit59.fold.split, %for.cond.i54.3, %if.then7.if.end10.sink.split_crit_edge
  %.lcssa.sink = phi ptr [ @.str.193, %if.then7.if.end10.sink.split_crit_edge ], [ null, %for.cond.i54.3 ], [ @.str.192, %af9015_rc_setup_match.exit59.fold.split ], [ @.str.194, %af9015_rc_setup_match.exit59.fold.split86 ], [ @.str.195, %af9015_rc_setup_match.exit59.fold.split87 ], [ %switch.load, %switch.lookup ]
  %17 = ptrtoint ptr %rc to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %.lcssa.sink, ptr %rc, align 8
  br label %if.end10

if.end10:                                         ; preds = %if.end10.sink.split, %if.end.if.end10_crit_edge
  %18 = ptrtoint ptr %rc to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %rc, align 8
  %tobool12.not = icmp eq ptr %19, null
  call void @__sanitizer_cov_trace_const_cmp2(i16 -23531, i16 %5)
  %cmp14 = icmp eq i16 %5, -23531
  %or.cond = select i1 %tobool12.not, i1 %cmp14, i1 false
  br i1 %or.cond, label %if.then16, label %if.end10.if.end30_crit_edge

if.end10.if.end30_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end30

if.then16:                                        ; preds = %if.end10
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %manufacturer) #9
  %20 = call ptr @memset(ptr %manufacturer, i32 0, i32 10)
  %21 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %udev, align 4
  %iManufacturer = getelementptr inbounds %struct.usb_device, ptr %22, i32 0, i32 16, i32 10
  %23 = ptrtoint ptr %iManufacturer to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %iManufacturer, align 2
  %conv20 = zext i8 %24 to i32
  %call22 = call i32 @usb_string(ptr noundef %22, i32 noundef %conv20, ptr noundef nonnull %manufacturer, i32 noundef 10) #9
  %bcmp = call i32 @bcmp(ptr noundef nonnull dereferenceable(4) @.str.190, ptr noundef nonnull dereferenceable(4) %manufacturer, i32 4) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool25.not = icmp eq i32 %bcmp, 0
  br i1 %tobool25.not, label %af9015_rc_setup_match.exit68, label %if.then16.if.end29_crit_edge

if.then16.if.end29_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end29

af9015_rc_setup_match.exit68:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #11
  %25 = ptrtoint ptr %rc to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @.str.193, ptr %rc, align 8
  br label %if.end29

if.end29:                                         ; preds = %af9015_rc_setup_match.exit68, %if.then16.if.end29_crit_edge
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %manufacturer) #9
  %26 = ptrtoint ptr %rc to i32
  call void @__asan_load4_noabort(i32 %26)
  %.pr = load ptr, ptr %rc, align 8
  br label %if.end30

if.end30:                                         ; preds = %if.end29, %if.end10.if.end30_crit_edge
  %27 = phi ptr [ %.pr, %if.end29 ], [ %19, %if.end10.if.end30_crit_edge ]
  %tobool32.not = icmp eq ptr %27, null
  br i1 %tobool32.not, label %if.then33, label %if.end30.if.end35_crit_edge

if.end30.if.end35_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end35

if.then33:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #11
  %28 = ptrtoint ptr %rc to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @.str.191, ptr %rc, align 8
  br label %if.end35

if.end35:                                         ; preds = %if.then33, %if.end30.if.end35_crit_edge
  %allowed_protos = getelementptr inbounds %struct.dvb_usb_rc, ptr %rc, i32 0, i32 1
  %29 = ptrtoint ptr %allowed_protos to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 3584, ptr %allowed_protos, align 8
  %query = getelementptr inbounds %struct.dvb_usb_rc, ptr %rc, i32 0, i32 3
  %30 = ptrtoint ptr %query to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @af9015_rc_query, ptr %query, align 4
  %interval = getelementptr inbounds %struct.dvb_usb_rc, ptr %rc, i32 0, i32 4
  %31 = ptrtoint ptr %interval to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 500, ptr %interval, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end35, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @af9015_get_stream_config(ptr nocapture noundef readonly %fe, ptr nocapture noundef readnone %ts_type, ptr nocapture noundef writeonly %stream) #2 align 64 {
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
  %id = getelementptr inbounds %struct.dvb_usb_adapter, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %id, align 4
  %conv = zext i8 %5 to i32
  %.neg = mul nsw i32 %conv, -2280
  %idx.neg = add nsw i32 %.neg, -1616
  %add.ptr = getelementptr i8, ptr %3, i32 %idx.neg
  %intf3 = getelementptr inbounds %struct.dvb_usb_device, ptr %add.ptr, i32 0, i32 4
  %6 = ptrtoint ptr %intf3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %intf3, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @af9015_get_stream_config.__UNIQUE_ID_ddebug408, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@af9015_get_stream_config, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !400

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.usb_interface, ptr %7, i32 0, i32 7
  %8 = ptrtoint ptr %dvb to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dvb, align 4
  %priv8 = getelementptr inbounds %struct.dvb_adapter, ptr %9, i32 0, i32 5
  %10 = ptrtoint ptr %priv8 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %priv8, align 4
  %id9 = getelementptr inbounds %struct.dvb_usb_adapter, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %id9 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %id9, align 4
  %conv10 = zext i8 %13 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @af9015_get_stream_config.__UNIQUE_ID_ddebug408, ptr noundef %dev, ptr noundef nonnull @.str.205, i32 noundef %conv10) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %udev = getelementptr inbounds %struct.dvb_usb_device, ptr %add.ptr, i32 0, i32 5
  %14 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %udev, align 4
  %speed = getelementptr inbounds %struct.usb_device, ptr %15, i32 0, i32 4
  %16 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %speed, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %17)
  %cmp = icmp eq i32 %17, 2
  br i1 %cmp, label %if.then12, label %do.end.if.end13_crit_edge

do.end.if.end13_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13

if.then12:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %u = getelementptr inbounds %struct.usb_data_stream_properties, ptr %stream, i32 0, i32 3
  %18 = ptrtoint ptr %u to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 940, ptr %u, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %do.end.if.end13_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @af9015_regmap_write(ptr noundef %context, ptr noundef %data, i32 noundef %count) #2 align 64 {
entry:
  %req = alloca %struct.req_t, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %intf1 = getelementptr inbounds %struct.dvb_usb_device, ptr %context, i32 0, i32 4
  %0 = ptrtoint ptr %intf1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %intf1, align 8
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %data, align 1
  %conv = zext i8 %3 to i16
  %shl = shl nuw i16 %conv, 8
  %arrayidx2 = getelementptr i8, ptr %data, i32 1
  %4 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx2, align 1
  %conv3 = zext i8 %5 to i16
  %or = or i16 %shl, %conv3
  %arrayidx6 = getelementptr i8, ptr %data, i32 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %req) #9
  %6 = getelementptr inbounds i8, ptr %req, i32 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %6, align 4
  %8 = ptrtoint ptr %req to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 33, ptr %req, align 4
  %i2c_addr = getelementptr inbounds %struct.req_t, ptr %req, i32 0, i32 1
  %9 = ptrtoint ptr %i2c_addr to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %i2c_addr, align 1
  %addr = getelementptr inbounds %struct.req_t, ptr %req, i32 0, i32 2
  %10 = ptrtoint ptr %addr to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %or, ptr %addr, align 2
  %mbox = getelementptr inbounds %struct.req_t, ptr %req, i32 0, i32 3
  %11 = ptrtoint ptr %mbox to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %mbox, align 4
  %addr_len = getelementptr inbounds %struct.req_t, ptr %req, i32 0, i32 4
  %12 = ptrtoint ptr %addr_len to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %addr_len, align 1
  %data_len = getelementptr inbounds %struct.req_t, ptr %req, i32 0, i32 5
  %13 = trunc i32 %count to i8
  %conv7 = add i8 %13, -2
  %14 = ptrtoint ptr %data_len to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv7, ptr %data_len, align 2
  %data8 = getelementptr inbounds %struct.req_t, ptr %req, i32 0, i32 6
  %15 = ptrtoint ptr %data8 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %arrayidx6, ptr %data8, align 4
  %call = call fastcc i32 @af9015_ctrl_msg(ptr noundef %context, ptr noundef nonnull %req)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @af9015_regmap_write.__UNIQUE_ID_ddebug426, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@af9015_regmap_write, %if.then13)) #9
          to label %cleanup [label %if.then13], !srcloc !400

if.then13:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.usb_interface, ptr %1, i32 0, i32 7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @af9015_regmap_write.__UNIQUE_ID_ddebug426, ptr noundef %dev, ptr noundef nonnull @.str.87, i32 noundef %call) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then13, %do.body, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %req) #9
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @af9015_regmap_read(ptr noundef %context, ptr nocapture noundef readonly %reg_buf, i32 noundef %reg_size, ptr noundef %val_buf, i32 noundef %val_size) #2 align 64 {
entry:
  %req = alloca %struct.req_t, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %intf1 = getelementptr inbounds %struct.dvb_usb_device, ptr %context, i32 0, i32 4
  %0 = ptrtoint ptr %intf1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %intf1, align 8
  %2 = ptrtoint ptr %reg_buf to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %reg_buf, align 1
  %conv = zext i8 %3 to i16
  %shl = shl nuw i16 %conv, 8
  %arrayidx2 = getelementptr i8, ptr %reg_buf, i32 1
  %4 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx2, align 1
  %conv3 = zext i8 %5 to i16
  %or = or i16 %shl, %conv3
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %req) #9
  %6 = getelementptr inbounds i8, ptr %req, i32 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %6, align 4
  %8 = ptrtoint ptr %req to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 32, ptr %req, align 4
  %i2c_addr = getelementptr inbounds %struct.req_t, ptr %req, i32 0, i32 1
  %9 = ptrtoint ptr %i2c_addr to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %i2c_addr, align 1
  %addr = getelementptr inbounds %struct.req_t, ptr %req, i32 0, i32 2
  %10 = ptrtoint ptr %addr to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %or, ptr %addr, align 2
  %mbox = getelementptr inbounds %struct.req_t, ptr %req, i32 0, i32 3
  %11 = ptrtoint ptr %mbox to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %mbox, align 4
  %addr_len = getelementptr inbounds %struct.req_t, ptr %req, i32 0, i32 4
  %12 = ptrtoint ptr %addr_len to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %addr_len, align 1
  %data_len = getelementptr inbounds %struct.req_t, ptr %req, i32 0, i32 5
  %conv7 = trunc i32 %val_size to i8
  %13 = ptrtoint ptr %data_len to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv7, ptr %data_len, align 2
  %data = getelementptr inbounds %struct.req_t, ptr %req, i32 0, i32 6
  %14 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %val_buf, ptr %data, align 4
  %call = call fastcc i32 @af9015_ctrl_msg(ptr noundef %context, ptr noundef nonnull %req)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @af9015_regmap_read.__UNIQUE_ID_ddebug427, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@af9015_regmap_read, %if.then12)) #9
          to label %cleanup [label %if.then12], !srcloc !400

if.then12:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.usb_interface, ptr %1, i32 0, i32 7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @af9015_regmap_read.__UNIQUE_ID_ddebug427, ptr noundef %dev, ptr noundef nonnull @.str.87, i32 noundef %call) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then12, %do.body, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %req) #9
  ret i32 %call
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_string(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__regmap_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @af9015_ctrl_msg(ptr noundef %d, ptr nocapture noundef readonly %req) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 15
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %intf1 = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 4
  %2 = ptrtoint ptr %intf1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %intf1, align 8
  %usb_mutex = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %usb_mutex, i32 noundef 0) #9
  %4 = ptrtoint ptr %req to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %req, align 4
  %buf = getelementptr inbounds %struct.af9015_state, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %5, ptr %buf, align 4
  %seq = getelementptr inbounds %struct.af9015_state, ptr %1, i32 0, i32 8
  %7 = ptrtoint ptr %seq to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %seq, align 2
  %inc = add i8 %8, 1
  store i8 %inc, ptr %seq, align 2
  %arrayidx3 = getelementptr %struct.af9015_state, ptr %1, i32 0, i32 1, i32 1
  %9 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %8, ptr %arrayidx3, align 1
  %i2c_addr = getelementptr inbounds %struct.req_t, ptr %req, i32 0, i32 1
  %10 = ptrtoint ptr %i2c_addr to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %i2c_addr, align 1
  %shl = shl i8 %11, 1
  %arrayidx6 = getelementptr %struct.af9015_state, ptr %1, i32 0, i32 1, i32 2
  %12 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %shl, ptr %arrayidx6, align 2
  %addr = getelementptr inbounds %struct.req_t, ptr %req, i32 0, i32 2
  %13 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %addr, align 2
  %15 = lshr i16 %14, 8
  %conv8 = trunc i16 %15 to i8
  %arrayidx10 = getelementptr %struct.af9015_state, ptr %1, i32 0, i32 1, i32 3
  %16 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv8, ptr %arrayidx10, align 1
  %17 = load i16, ptr %addr, align 2
  %conv13 = trunc i16 %17 to i8
  %arrayidx15 = getelementptr %struct.af9015_state, ptr %1, i32 0, i32 1, i32 4
  %18 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv13, ptr %arrayidx15, align 4
  %mbox = getelementptr inbounds %struct.req_t, ptr %req, i32 0, i32 3
  %19 = ptrtoint ptr %mbox to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %mbox, align 4
  %arrayidx17 = getelementptr %struct.af9015_state, ptr %1, i32 0, i32 1, i32 5
  %21 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %20, ptr %arrayidx17, align 1
  %addr_len = getelementptr inbounds %struct.req_t, ptr %req, i32 0, i32 4
  %22 = ptrtoint ptr %addr_len to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %addr_len, align 1
  %arrayidx19 = getelementptr %struct.af9015_state, ptr %1, i32 0, i32 1, i32 6
  %24 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %23, ptr %arrayidx19, align 2
  %data_len = getelementptr inbounds %struct.req_t, ptr %req, i32 0, i32 5
  %25 = ptrtoint ptr %data_len to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %data_len, align 2
  %arrayidx21 = getelementptr %struct.af9015_state, ptr %1, i32 0, i32 1, i32 7
  %27 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %26, ptr %arrayidx21, align 1
  %28 = load i8, ptr %req, align 4
  %29 = zext i8 %28 to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values.210)
  switch i8 %28, label %do.end [
    i8 16, label %entry.land.lhs.true54_crit_edge
    i8 32, label %entry.land.lhs.true54_crit_edge197
    i8 90, label %entry.land.lhs.true54_crit_edge198
    i8 40, label %sw.epilog.thread183
    i8 41, label %entry.land.lhs.true.sink.split_crit_edge
    i8 33, label %sw.bb32
    i8 38, label %entry.land.lhs.true_crit_edge
    i8 35, label %entry.land.lhs.true_crit_edge199
    i8 17, label %entry.land.lhs.true_crit_edge200
    i8 19, label %entry.land.lhs.true_crit_edge201
  ]

entry.land.lhs.true_crit_edge201:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true

entry.land.lhs.true_crit_edge200:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true

entry.land.lhs.true_crit_edge199:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true

entry.land.lhs.true_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true

entry.land.lhs.true.sink.split_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true.sink.split

entry.land.lhs.true54_crit_edge198:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true54

entry.land.lhs.true54_crit_edge197:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true54

entry.land.lhs.true54_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true54

sw.epilog.thread183:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %30 = or i8 %shl, 1
  %31 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %30, ptr %arrayidx6, align 2
  %32 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 34, ptr %buf, align 4
  br label %land.lhs.true54

sw.bb32:                                          ; preds = %entry
  %33 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %addr, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -257, i16 %34)
  %cmp = icmp ugt i16 %34, -257
  %35 = and i16 %34, -256
  call void @__sanitizer_cov_trace_const_cmp2(i16 -20992, i16 %35)
  %cmp40 = icmp eq i16 %35, -20992
  %or.cond = or i1 %cmp, %cmp40
  br i1 %or.cond, label %sw.bb32.land.lhs.true.sink.split_crit_edge, label %sw.bb32.land.lhs.true_crit_edge

sw.bb32.land.lhs.true_crit_edge:                  ; preds = %sw.bb32
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true

sw.bb32.land.lhs.true.sink.split_crit_edge:       ; preds = %sw.bb32
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true.sink.split

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %conv23 = zext i8 %28 to i32
  %dev = getelementptr inbounds %struct.usb_interface, ptr %3, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.89, i32 noundef %conv23) #13
  br label %error

land.lhs.true.sink.split:                         ; preds = %sw.bb32.land.lhs.true.sink.split_crit_edge, %entry.land.lhs.true.sink.split_crit_edge
  %.sink = phi i8 [ 38, %sw.bb32.land.lhs.true.sink.split_crit_edge ], [ 34, %entry.land.lhs.true.sink.split_crit_edge ]
  %36 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %.sink, ptr %buf, align 4
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %land.lhs.true.sink.split, %sw.bb32.land.lhs.true_crit_edge, %entry.land.lhs.true_crit_edge, %entry.land.lhs.true_crit_edge199, %entry.land.lhs.true_crit_edge200, %entry.land.lhs.true_crit_edge201
  %37 = ptrtoint ptr %data_len to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %data_len, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 55, i8 %38)
  %cmp50 = icmp ugt i8 %38, 55
  br i1 %cmp50, label %land.lhs.true.do.end62_crit_edge, label %if.then70.critedge

land.lhs.true.do.end62_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end62

land.lhs.true54:                                  ; preds = %sw.epilog.thread183, %entry.land.lhs.true54_crit_edge, %entry.land.lhs.true54_crit_edge197, %entry.land.lhs.true54_crit_edge198
  %39 = ptrtoint ptr %data_len to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %data_len, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 61, i8 %40)
  %cmp57 = icmp ugt i8 %40, 61
  br i1 %cmp57, label %land.lhs.true54.do.end62_crit_edge, label %if.else

land.lhs.true54.do.end62_crit_edge:               ; preds = %land.lhs.true54
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end62

do.end62:                                         ; preds = %land.lhs.true54.do.end62_crit_edge, %land.lhs.true.do.end62_crit_edge
  %dev63 = getelementptr inbounds %struct.usb_interface, ptr %3, i32 0, i32 7
  %41 = ptrtoint ptr %req to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %req, align 4
  %conv65 = zext i8 %42 to i32
  %43 = ptrtoint ptr %data_len to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %data_len, align 2
  %conv67 = zext i8 %44 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev63, ptr noundef nonnull @.str.94, i32 noundef %conv65, i32 noundef %conv67) #13
  br label %error

if.then70.critedge:                               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %45 = ptrtoint ptr %data_len to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %data_len, align 2
  %conv72 = zext i8 %46 to i32
  %arrayidx74 = getelementptr %struct.af9015_state, ptr %1, i32 0, i32 1, i32 8
  %data = getelementptr inbounds %struct.req_t, ptr %req, i32 0, i32 6
  %47 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %data, align 4
  %49 = call ptr @memcpy(ptr %arrayidx74, ptr %48, i32 %conv72)
  %50 = zext i8 %46 to i16
  %phi.cast = add nuw nsw i16 %50, 8
  br label %if.end80

if.else:                                          ; preds = %land.lhs.true54
  call void @__sanitizer_cov_trace_pc() #11
  %conv78 = zext i8 %40 to i16
  %add79 = add nuw nsw i16 %conv78, 2
  br label %if.end80

if.end80:                                         ; preds = %if.else, %if.then70.critedge
  %tobool.not179187 = phi i1 [ false, %if.then70.critedge ], [ true, %if.else ]
  %wlen.0 = phi i16 [ %phi.cast, %if.then70.critedge ], [ 8, %if.else ]
  %rlen.0 = phi i16 [ 2, %if.then70.critedge ], [ %add79, %if.else ]
  %51 = ptrtoint ptr %req to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %req, align 4
  %53 = zext i8 %52 to i64
  call void @__sanitizer_cov_trace_switch(i64 %53, ptr @__sancov_gen_cov_switch_values.211)
  switch i8 %52, label %if.end91 [
    i8 17, label %if.end80.if.end91.thread_crit_edge
    i8 90, label %if.end80.if.end91.thread_crit_edge202
  ]

if.end80.if.end91.thread_crit_edge202:            ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end91.thread

if.end80.if.end91.thread_crit_edge:               ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end91.thread

if.end91:                                         ; preds = %if.end80
  %call = tail call i32 @dvb_usbv2_generic_rw_locked(ptr noundef %d, ptr noundef %buf, i16 noundef zeroext %wlen.0, ptr noundef %buf, i16 noundef zeroext %rlen.0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool97.not = icmp eq i32 %call, 0
  br i1 %tobool97.not, label %land.lhs.true101, label %if.end91.error_crit_edge

if.end91.error_crit_edge:                         ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #11
  br label %error

if.end91.thread:                                  ; preds = %if.end80.if.end91.thread_crit_edge, %if.end80.if.end91.thread_crit_edge202
  %call191 = tail call i32 @dvb_usbv2_generic_rw_locked(ptr noundef %d, ptr noundef %buf, i16 noundef zeroext %wlen.0, ptr noundef %buf, i16 noundef zeroext 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call191)
  %tobool97.not192 = icmp eq i32 %call191, 0
  %54 = and i1 %tobool.not179187, %tobool97.not192
  br i1 %54, label %if.end91.thread.if.then116_crit_edge, label %if.end91.thread.error_crit_edge

if.end91.thread.error_crit_edge:                  ; preds = %if.end91.thread
  call void @__sanitizer_cov_trace_pc() #11
  br label %error

if.end91.thread.if.then116_crit_edge:             ; preds = %if.end91.thread
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then116

land.lhs.true101:                                 ; preds = %if.end91
  %55 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %arrayidx3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %tobool105.not = icmp eq i8 %56, 0
  br i1 %tobool105.not, label %if.end114, label %do.end109

do.end109:                                        ; preds = %land.lhs.true101
  call void @__sanitizer_cov_trace_pc() #11
  %conv104 = zext i8 %56 to i32
  %dev110 = getelementptr inbounds %struct.usb_interface, ptr %3, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev110, ptr noundef nonnull @.str.97, i32 noundef %conv104) #13
  br label %error

if.end114:                                        ; preds = %land.lhs.true101
  br i1 %tobool.not179187, label %if.end114.if.then116_crit_edge, label %if.end114.error_crit_edge

if.end114.error_crit_edge:                        ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #11
  br label %error

if.end114.if.then116_crit_edge:                   ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then116

if.then116:                                       ; preds = %if.end114.if.then116_crit_edge, %if.end91.thread.if.then116_crit_edge
  %data117 = getelementptr inbounds %struct.req_t, ptr %req, i32 0, i32 6
  %57 = ptrtoint ptr %data117 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %data117, align 4
  %59 = ptrtoint ptr %data_len to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %data_len, align 2
  %conv121 = zext i8 %60 to i32
  %61 = call ptr @memcpy(ptr %58, ptr %arrayidx6, i32 %conv121)
  br label %error

error:                                            ; preds = %if.then116, %if.end114.error_crit_edge, %do.end109, %if.end91.thread.error_crit_edge, %if.end91.error_crit_edge, %do.end62, %do.end
  %ret.0 = phi i32 [ -5, %do.end ], [ -22, %do.end62 ], [ %call, %if.end91.error_crit_edge ], [ -5, %do.end109 ], [ 0, %if.end114.error_crit_edge ], [ 0, %if.then116 ], [ %call191, %if.end91.thread.error_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %usb_mutex) #9
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_usbv2_generic_rw_locked(ptr noundef, ptr noundef, i16 noundef zeroext, ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @regmap_exit(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @af9015_i2c_xfer(ptr nocapture noundef readonly %adap, ptr nocapture noundef readonly %msg, i32 noundef %num) #2 align 64 {
entry:
  %req = alloca %struct.req_t, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %adap, i32 0, i32 9, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %priv = getelementptr inbounds %struct.dvb_usb_device, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 8
  %intf1 = getelementptr inbounds %struct.dvb_usb_device, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %intf1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %intf1, align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %req) #9
  %6 = call ptr @memset(ptr %req, i32 255, i32 12)
  %len = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 2
  %7 = ptrtoint ptr %len to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %cmp = icmp eq i16 %8, 0
  br i1 %cmp, label %entry.if.end48_crit_edge, label %lor.lhs.false

entry.if.end48_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end48

lor.lhs.false:                                    ; preds = %entry
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 1
  %9 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %flags, align 2
  %11 = and i16 %10, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %tobool.not = icmp eq i16 %11, 0
  br i1 %tobool.not, label %if.else, label %lor.lhs.false.if.end48_crit_edge

lor.lhs.false.if.end48_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end48

if.else:                                          ; preds = %lor.lhs.false
  %12 = zext i16 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.212)
  switch i16 %8, label %if.else31 [
    i16 1, label %if.then10
    i16 2, label %if.then20
  ]

if.then10:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %buf = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 3
  %13 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %buf, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %14, align 1
  %conv13 = zext i8 %16 to i16
  br label %if.end48

if.then20:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %buf22 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 3
  %17 = ptrtoint ptr %buf22 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %buf22, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %18, align 1
  %conv24 = zext i8 %20 to i16
  %shl = shl nuw i16 %conv24, 8
  %arrayidx27 = getelementptr i8, ptr %18, i32 1
  %21 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx27, align 1
  %conv28 = zext i8 %22 to i16
  %or = or i16 %shl, %conv28
  br label %if.end48

if.else31:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %buf33 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 3
  %23 = ptrtoint ptr %buf33 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %buf33, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %24, align 1
  %conv35 = zext i8 %26 to i16
  %shl36 = shl nuw i16 %conv35, 8
  %arrayidx39 = getelementptr i8, ptr %24, i32 1
  %27 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx39, align 1
  %conv40 = zext i8 %28 to i16
  %or42 = or i16 %shl36, %conv40
  %arrayidx46 = getelementptr i8, ptr %24, i32 2
  %29 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx46, align 1
  br label %if.end48

if.end48:                                         ; preds = %if.else31, %if.then20, %if.then10, %lor.lhs.false.if.end48_crit_edge, %entry.if.end48_crit_edge
  %addr.0 = phi i16 [ %conv13, %if.then10 ], [ %or, %if.then20 ], [ %or42, %if.else31 ], [ 0, %lor.lhs.false.if.end48_crit_edge ], [ 0, %entry.if.end48_crit_edge ]
  %mbox.0 = phi i8 [ 0, %if.then10 ], [ 0, %if.then20 ], [ %30, %if.else31 ], [ 0, %lor.lhs.false.if.end48_crit_edge ], [ 0, %entry.if.end48_crit_edge ]
  %addr_len.0 = phi i8 [ 1, %if.then10 ], [ 2, %if.then20 ], [ 3, %if.else31 ], [ 0, %lor.lhs.false.if.end48_crit_edge ], [ 0, %entry.if.end48_crit_edge ]
  %31 = zext i32 %num to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values.213)
  switch i32 %num, label %if.end48.if.else192_crit_edge [
    i32 1, label %land.lhs.true
    i32 2, label %land.lhs.true93
  ]

if.end48.if.else192_crit_edge:                    ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else192

land.lhs.true:                                    ; preds = %if.end48
  %flags52 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 1
  %32 = ptrtoint ptr %flags52 to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %flags52, align 2
  %34 = and i16 %33, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %34)
  %tobool55.not = icmp eq i16 %34, 0
  br i1 %tobool55.not, label %if.then56, label %land.lhs.true151

if.then56:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_const_cmp2(i16 21, i16 %8)
  %cmp60 = icmp ugt i16 %8, 21
  br i1 %cmp60, label %if.then56.do.body205_crit_edge, label %if.end63

if.then56.do.body205_crit_edge:                   ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body205

if.end63:                                         ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #11
  %35 = ptrtoint ptr %msg to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %msg, align 4
  %af9013_i2c_addr = getelementptr inbounds %struct.af9015_state, ptr %3, i32 0, i32 15
  %37 = ptrtoint ptr %af9013_i2c_addr to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %af9013_i2c_addr, align 4
  %39 = zext i8 %38 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %36, i16 %39)
  %cmp69 = icmp eq i16 %36, %39
  %. = select i1 %cmp69, i8 33, i8 41
  %40 = ptrtoint ptr %req to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %., ptr %req, align 4
  %conv77 = trunc i16 %36 to i8
  %i2c_addr = getelementptr inbounds %struct.req_t, ptr %req, i32 0, i32 1
  %41 = ptrtoint ptr %i2c_addr to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %conv77, ptr %i2c_addr, align 1
  %addr78 = getelementptr inbounds %struct.req_t, ptr %req, i32 0, i32 2
  %42 = ptrtoint ptr %addr78 to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 %addr.0, ptr %addr78, align 2
  %mbox79 = getelementptr inbounds %struct.req_t, ptr %req, i32 0, i32 3
  %43 = ptrtoint ptr %mbox79 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %mbox.0, ptr %mbox79, align 4
  %addr_len80 = getelementptr inbounds %struct.req_t, ptr %req, i32 0, i32 4
  %44 = ptrtoint ptr %addr_len80 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %addr_len.0, ptr %addr_len80, align 1
  %conv83 = trunc i16 %8 to i8
  %conv84 = zext i8 %addr_len.0 to i32
  %sub = sub nsw i8 %conv83, %addr_len.0
  %data_len = getelementptr inbounds %struct.req_t, ptr %req, i32 0, i32 5
  %45 = ptrtoint ptr %data_len to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %sub, ptr %data_len, align 2
  %buf87 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 3
  %46 = ptrtoint ptr %buf87 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %buf87, align 4
  %arrayidx88 = getelementptr i8, ptr %47, i32 %conv84
  br label %if.end201.sink.split

land.lhs.true93:                                  ; preds = %if.end48
  %flags95 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 1
  %48 = ptrtoint ptr %flags95 to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %flags95, align 2
  %50 = and i16 %49, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %50)
  %tobool98.not = icmp eq i16 %50, 0
  br i1 %tobool98.not, label %land.lhs.true99, label %land.lhs.true93.if.else192_crit_edge

land.lhs.true93.if.else192_crit_edge:             ; preds = %land.lhs.true93
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else192

land.lhs.true99:                                  ; preds = %land.lhs.true93
  %flags101 = getelementptr %struct.i2c_msg, ptr %msg, i32 1, i32 1
  %51 = ptrtoint ptr %flags101 to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %flags101, align 2
  %53 = and i16 %52, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %53)
  %tobool104.not = icmp eq i16 %53, 0
  br i1 %tobool104.not, label %land.lhs.true99.if.else192_crit_edge, label %if.then105

land.lhs.true99.if.else192_crit_edge:             ; preds = %land.lhs.true99
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else192

if.then105:                                       ; preds = %land.lhs.true99
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %8)
  %cmp109 = icmp ugt i16 %8, 3
  br i1 %cmp109, label %if.then105.do.body205_crit_edge, label %lor.lhs.false111

if.then105.do.body205_crit_edge:                  ; preds = %if.then105
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body205

lor.lhs.false111:                                 ; preds = %if.then105
  %len113 = getelementptr %struct.i2c_msg, ptr %msg, i32 1, i32 2
  %54 = ptrtoint ptr %len113 to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %len113, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 61, i16 %55)
  %cmp115 = icmp ugt i16 %55, 61
  br i1 %cmp115, label %lor.lhs.false111.do.body205_crit_edge, label %if.end118

lor.lhs.false111.do.body205_crit_edge:            ; preds = %lor.lhs.false111
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body205

if.end118:                                        ; preds = %lor.lhs.false111
  call void @__sanitizer_cov_trace_pc() #11
  %56 = ptrtoint ptr %msg to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %msg, align 4
  %af9013_i2c_addr122 = getelementptr inbounds %struct.af9015_state, ptr %3, i32 0, i32 15
  %58 = ptrtoint ptr %af9013_i2c_addr122 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %af9013_i2c_addr122, align 4
  %60 = zext i8 %59 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %57, i16 %60)
  %cmp125 = icmp eq i16 %57, %60
  %.280 = select i1 %cmp125, i8 32, i8 40
  %61 = ptrtoint ptr %req to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %.280, ptr %req, align 4
  %conv134 = trunc i16 %57 to i8
  %i2c_addr135 = getelementptr inbounds %struct.req_t, ptr %req, i32 0, i32 1
  %62 = ptrtoint ptr %i2c_addr135 to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %conv134, ptr %i2c_addr135, align 1
  %addr136 = getelementptr inbounds %struct.req_t, ptr %req, i32 0, i32 2
  %63 = ptrtoint ptr %addr136 to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 %addr.0, ptr %addr136, align 2
  %mbox137 = getelementptr inbounds %struct.req_t, ptr %req, i32 0, i32 3
  %64 = ptrtoint ptr %mbox137 to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %mbox.0, ptr %mbox137, align 4
  %addr_len138 = getelementptr inbounds %struct.req_t, ptr %req, i32 0, i32 4
  %65 = ptrtoint ptr %addr_len138 to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %addr_len.0, ptr %addr_len138, align 1
  %conv141 = trunc i16 %55 to i8
  %data_len142 = getelementptr inbounds %struct.req_t, ptr %req, i32 0, i32 5
  %66 = ptrtoint ptr %data_len142 to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 %conv141, ptr %data_len142, align 2
  %buf144 = getelementptr %struct.i2c_msg, ptr %msg, i32 1, i32 3
  %67 = ptrtoint ptr %buf144 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %buf144, align 4
  br label %if.end201.sink.split

land.lhs.true151:                                 ; preds = %land.lhs.true
  %69 = ptrtoint ptr %flags52 to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %flags52, align 2
  %71 = and i16 %70, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %71)
  %tobool156.not = icmp eq i16 %71, 0
  br i1 %tobool156.not, label %land.lhs.true151.if.else192_crit_edge, label %if.then157

land.lhs.true151.if.else192_crit_edge:            ; preds = %land.lhs.true151
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else192

if.then157:                                       ; preds = %land.lhs.true151
  call void @__sanitizer_cov_trace_const_cmp2(i16 61, i16 %8)
  %cmp161 = icmp ugt i16 %8, 61
  br i1 %cmp161, label %if.then157.do.body205_crit_edge, label %if.end164

if.then157.do.body205_crit_edge:                  ; preds = %if.then157
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body205

if.end164:                                        ; preds = %if.then157
  %72 = ptrtoint ptr %msg to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %msg, align 4
  %af9013_i2c_addr168 = getelementptr inbounds %struct.af9015_state, ptr %3, i32 0, i32 15
  %74 = ptrtoint ptr %af9013_i2c_addr168 to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %af9013_i2c_addr168, align 4
  %76 = zext i8 %75 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %73, i16 %76)
  %cmp171 = icmp eq i16 %73, %76
  br i1 %cmp171, label %if.end164.do.body205_crit_edge, label %if.end174

if.end164.do.body205_crit_edge:                   ; preds = %if.end164
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body205

if.end174:                                        ; preds = %if.end164
  call void @__sanitizer_cov_trace_pc() #11
  %77 = ptrtoint ptr %req to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 40, ptr %req, align 4
  %conv178 = trunc i16 %73 to i8
  %i2c_addr179 = getelementptr inbounds %struct.req_t, ptr %req, i32 0, i32 1
  %78 = ptrtoint ptr %i2c_addr179 to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 %conv178, ptr %i2c_addr179, align 1
  %addr180 = getelementptr inbounds %struct.req_t, ptr %req, i32 0, i32 2
  %79 = ptrtoint ptr %addr180 to i32
  call void @__asan_store2_noabort(i32 %79)
  store i16 %addr.0, ptr %addr180, align 2
  %mbox181 = getelementptr inbounds %struct.req_t, ptr %req, i32 0, i32 3
  %80 = ptrtoint ptr %mbox181 to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 %mbox.0, ptr %mbox181, align 4
  %addr_len182 = getelementptr inbounds %struct.req_t, ptr %req, i32 0, i32 4
  %81 = ptrtoint ptr %addr_len182 to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 %addr_len.0, ptr %addr_len182, align 1
  %conv185 = trunc i16 %8 to i8
  %data_len186 = getelementptr inbounds %struct.req_t, ptr %req, i32 0, i32 5
  %82 = ptrtoint ptr %data_len186 to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 %conv185, ptr %data_len186, align 2
  %buf188 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 3
  %83 = ptrtoint ptr %buf188 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %buf188, align 4
  br label %if.end201.sink.split

if.else192:                                       ; preds = %land.lhs.true151.if.else192_crit_edge, %land.lhs.true99.if.else192_crit_edge, %land.lhs.true93.if.else192_crit_edge, %if.end48.if.else192_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @af9015_i2c_xfer.__UNIQUE_ID_ddebug390, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@af9015_i2c_xfer, %if.end201.thread)) #9
          to label %if.end201 [label %if.end201.thread], !srcloc !400

if.end201.thread:                                 ; preds = %if.else192
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.usb_interface, ptr %5, i32 0, i32 7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @af9015_i2c_xfer.__UNIQUE_ID_ddebug390, ptr noundef %dev, ptr noundef nonnull @.str.109, i32 noundef %num) #9
  br label %do.body205

if.end201.sink.split:                             ; preds = %if.end174, %if.end118, %if.end63
  %.sink = phi ptr [ %68, %if.end118 ], [ %84, %if.end174 ], [ %arrayidx88, %if.end63 ]
  %data146 = getelementptr inbounds %struct.req_t, ptr %req, i32 0, i32 6
  %85 = ptrtoint ptr %data146 to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %.sink, ptr %data146, align 4
  %call147 = call fastcc i32 @af9015_ctrl_msg(ptr noundef %1, ptr noundef nonnull %req)
  br label %if.end201

if.end201:                                        ; preds = %if.end201.sink.split, %if.else192
  %ret.0 = phi i32 [ -95, %if.else192 ], [ %call147, %if.end201.sink.split ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool202.not = icmp eq i32 %ret.0, 0
  br i1 %tobool202.not, label %if.end201.cleanup_crit_edge, label %if.end201.do.body205_crit_edge

if.end201.do.body205_crit_edge:                   ; preds = %if.end201
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body205

if.end201.cleanup_crit_edge:                      ; preds = %if.end201
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body205:                                       ; preds = %if.end201.do.body205_crit_edge, %if.end201.thread, %if.end164.do.body205_crit_edge, %if.then157.do.body205_crit_edge, %lor.lhs.false111.do.body205_crit_edge, %if.then105.do.body205_crit_edge, %if.then56.do.body205_crit_edge
  %ret.1 = phi i32 [ %ret.0, %if.end201.do.body205_crit_edge ], [ -95, %if.then56.do.body205_crit_edge ], [ -95, %lor.lhs.false111.do.body205_crit_edge ], [ -95, %if.then105.do.body205_crit_edge ], [ -95, %if.then157.do.body205_crit_edge ], [ -22, %if.end164.do.body205_crit_edge ], [ -95, %if.end201.thread ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @af9015_i2c_xfer.__UNIQUE_ID_ddebug391, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@af9015_i2c_xfer, %if.then217)) #9
          to label %cleanup [label %if.then217], !srcloc !400

if.then217:                                       ; preds = %do.body205
  call void @__sanitizer_cov_trace_pc() #11
  %dev218 = getelementptr inbounds %struct.usb_interface, ptr %5, i32 0, i32 7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @af9015_i2c_xfer.__UNIQUE_ID_ddebug391, ptr noundef %dev218, ptr noundef nonnull @.str.87, i32 noundef %ret.1) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then217, %do.body205, %if.end201.cleanup_crit_edge
  %retval.0 = phi i32 [ %num, %if.end201.cleanup_crit_edge ], [ %ret.1, %if.then217 ], [ %ret.1, %do.body205 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %req) #9
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @af9015_i2c_func(ptr nocapture noundef readnone %adapter) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @af9015_eeprom_hash(ptr noundef %d) unnamed_addr #2 align 64 {
entry:
  %buf = alloca [256 x i8], align 1
  %req = alloca %struct.req_t, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 15
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %intf1 = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 4
  %2 = ptrtoint ptr %intf1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %intf1, align 8
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %buf) #9
  %4 = call ptr @memset(ptr %buf, i32 255, i32 256)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %req) #9
  %5 = ptrtoint ptr %req to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 2904821759654035712, ptr %req, align 8
  %addr = getelementptr inbounds %struct.req_t, ptr %req, i32 0, i32 2
  %data = getelementptr inbounds %struct.req_t, ptr %req, i32 0, i32 6
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %i.092, 1
  %exitcond.not = icmp eq i32 %inc, 256
  br i1 %exitcond.not, label %for.cond4.preheader, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.cond4.preheader:                              ; preds = %for.cond
  %eeprom_sum = getelementptr inbounds %struct.af9015_state, ptr %1, i32 0, i32 12
  br label %for.body7

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %entry
  %i.092 = phi i32 [ 0, %entry ], [ %inc, %for.cond.for.body_crit_edge ]
  %conv = trunc i32 %i.092 to i16
  %6 = ptrtoint ptr %addr to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %conv, ptr %addr, align 2
  %arrayidx = getelementptr [256 x i8], ptr %buf, i32 0, i32 %i.092
  %7 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %arrayidx, ptr %data, align 8
  %call = call fastcc i32 @af9015_ctrl_msg(ptr noundef %d, ptr noundef nonnull %req)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp2 = icmp slt i32 %call, 0
  br i1 %cmp2, label %do.body44, label %for.cond

for.cond13.preheader:                             ; preds = %for.body7
  %dev = getelementptr inbounds %struct.usb_interface, ptr %3, i32 0, i32 7
  br label %do.body

for.body7:                                        ; preds = %for.body7.for.body7_crit_edge, %for.cond4.preheader
  %i.193 = phi i32 [ 0, %for.cond4.preheader ], [ %inc11, %for.body7.for.body7_crit_edge ]
  %8 = ptrtoint ptr %eeprom_sum to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %eeprom_sum, align 4
  %mul = mul i32 %9, -1640562687
  %arrayidx8 = getelementptr i32, ptr %buf, i32 %i.193
  %10 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_loadN_noabort(i32 %10, i32 4)
  %11 = load i32, ptr %arrayidx8, align 1
  %12 = call i32 @llvm.bswap.i32(i32 %11)
  %add = add i32 %12, %mul
  %13 = ptrtoint ptr %eeprom_sum to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %add, ptr %eeprom_sum, align 4
  %inc11 = add nuw nsw i32 %i.193, 1
  %exitcond97.not = icmp eq i32 %inc11, 64
  br i1 %exitcond97.not, label %for.cond13.preheader, label %for.body7.for.body7_crit_edge

for.body7.for.body7_crit_edge:                    ; preds = %for.body7
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body7

do.body:                                          ; preds = %for.inc23.do.body_crit_edge, %for.cond13.preheader
  %i.294 = phi i32 [ 0, %for.cond13.preheader ], [ %add24, %for.inc23.do.body_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @af9015_eeprom_hash.__UNIQUE_ID_ddebug397, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@af9015_eeprom_hash, %if.then20)) #9
          to label %for.inc23 [label %if.then20], !srcloc !400

if.then20:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr = getelementptr i8, ptr %buf, i32 %i.294
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @af9015_eeprom_hash.__UNIQUE_ID_ddebug397, ptr noundef %dev, ptr noundef nonnull @.str.123, i32 noundef 16, ptr noundef %add.ptr) #9
  br label %for.inc23

for.inc23:                                        ; preds = %if.then20, %do.body
  %add24 = add nuw nsw i32 %i.294, 16
  %cmp14 = icmp ult i32 %i.294, 240
  br i1 %cmp14, label %for.inc23.do.body_crit_edge, label %do.body26

for.inc23.do.body_crit_edge:                      ; preds = %for.inc23
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

do.body26:                                        ; preds = %for.inc23
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @af9015_eeprom_hash.__UNIQUE_ID_ddebug398, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@af9015_eeprom_hash, %if.then38)) #9
          to label %cleanup [label %if.then38], !srcloc !400

if.then38:                                        ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #11
  %14 = ptrtoint ptr %eeprom_sum to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %eeprom_sum, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @af9015_eeprom_hash.__UNIQUE_ID_ddebug398, ptr noundef %dev, ptr noundef nonnull @.str.124, i32 noundef %15) #9
  br label %cleanup

do.body44:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @af9015_eeprom_hash.__UNIQUE_ID_ddebug399, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@af9015_eeprom_hash, %if.then56)) #9
          to label %cleanup [label %if.then56], !srcloc !400

if.then56:                                        ; preds = %do.body44
  call void @__sanitizer_cov_trace_pc() #11
  %dev57 = getelementptr inbounds %struct.usb_interface, ptr %3, i32 0, i32 7
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @af9015_eeprom_hash.__UNIQUE_ID_ddebug399, ptr noundef %dev57, ptr noundef nonnull @.str.87, i32 noundef %call) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then56, %do.body44, %if.then38, %do.body26
  %retval.0 = phi i32 [ 0, %if.then38 ], [ %call, %if.then56 ], [ 0, %do.body26 ], [ %call, %do.body44 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %req) #9
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %buf) #9
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @af9015_copy_firmware(ptr noundef %d) unnamed_addr #2 align 64 {
entry:
  %req.i224 = alloca %struct.req_t, align 4
  %val.addr.i = alloca i8, align 1
  %req.i209 = alloca %struct.req_t, align 4
  %req.i = alloca %struct.req_t, align 4
  %val = alloca i8, align 1
  %firmware_info = alloca [4 x i8], align 4
  %req = alloca %struct.req_t, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 15
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %intf1 = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 4
  %2 = ptrtoint ptr %intf1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %intf1, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val) #9
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %val, align 1, !annotation !401
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %firmware_info) #9
  %5 = getelementptr inbounds [4 x i8], ptr %firmware_info, i32 0, i32 1
  %6 = getelementptr inbounds [4 x i8], ptr %firmware_info, i32 0, i32 2
  %7 = getelementptr inbounds [4 x i8], ptr %firmware_info, i32 0, i32 3
  %8 = ptrtoint ptr %firmware_info to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %firmware_info, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %req) #9
  %9 = getelementptr inbounds i8, ptr %req, i32 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %9, align 4
  %11 = ptrtoint ptr %req to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 35, ptr %req, align 4
  %i2c_addr = getelementptr inbounds %struct.req_t, ptr %req, i32 0, i32 1
  %12 = ptrtoint ptr %i2c_addr to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %i2c_addr, align 1
  %addr = getelementptr inbounds %struct.req_t, ptr %req, i32 0, i32 2
  %13 = ptrtoint ptr %addr to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 20736, ptr %addr, align 2
  %mbox = getelementptr inbounds %struct.req_t, ptr %req, i32 0, i32 3
  %14 = ptrtoint ptr %mbox to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %mbox, align 4
  %addr_len = getelementptr inbounds %struct.req_t, ptr %req, i32 0, i32 4
  %15 = ptrtoint ptr %addr_len to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %addr_len, align 1
  %data_len = getelementptr inbounds %struct.req_t, ptr %req, i32 0, i32 5
  %16 = ptrtoint ptr %data_len to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 4, ptr %data_len, align 2
  %data = getelementptr inbounds %struct.req_t, ptr %req, i32 0, i32 6
  %17 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %firmware_info, ptr %data, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @af9015_copy_firmware.__UNIQUE_ID_ddebug412, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@af9015_copy_firmware, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !400

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.usb_interface, ptr %3, i32 0, i32 7
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @af9015_copy_firmware.__UNIQUE_ID_ddebug412, ptr noundef %dev, ptr noundef nonnull @.str.83) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %firmware_size = getelementptr inbounds %struct.af9015_state, ptr %1, i32 0, i32 10
  %18 = ptrtoint ptr %firmware_size to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %firmware_size, align 4
  %20 = lshr i16 %19, 8
  %conv4 = trunc i16 %20 to i8
  %21 = ptrtoint ptr %firmware_info to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv4, ptr %firmware_info, align 4
  %conv9 = trunc i16 %19 to i8
  %22 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv9, ptr %5, align 1
  %firmware_checksum = getelementptr inbounds %struct.af9015_state, ptr %1, i32 0, i32 11
  %23 = ptrtoint ptr %firmware_checksum to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %firmware_checksum, align 2
  %25 = lshr i16 %24, 8
  %conv14 = trunc i16 %25 to i8
  %26 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %conv14, ptr %6, align 2
  %conv20 = trunc i16 %24 to i8
  %27 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %conv20, ptr %7, align 1
  %arrayidx22 = getelementptr %struct.af9015_state, ptr %1, i32 0, i32 15, i32 1
  %28 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx22, align 1
  %30 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %priv, align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %req.i) #9
  %32 = getelementptr inbounds i8, ptr %req.i, i32 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 66047, ptr %32, align 4
  %34 = ptrtoint ptr %req.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 40, ptr %req.i, align 4
  %i2c_addr.i = getelementptr inbounds %struct.req_t, ptr %req.i, i32 0, i32 1
  %35 = ptrtoint ptr %i2c_addr.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %29, ptr %i2c_addr.i, align 1
  %addr1.i = getelementptr inbounds %struct.req_t, ptr %req.i, i32 0, i32 2
  %36 = ptrtoint ptr %addr1.i to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 -26434, ptr %addr1.i, align 2
  %addr_len.i = getelementptr inbounds %struct.req_t, ptr %req.i, i32 0, i32 4
  %data.i = getelementptr inbounds %struct.req_t, ptr %req.i, i32 0, i32 6
  %37 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %val, ptr %data.i, align 4
  %af9013_i2c_addr.i = getelementptr inbounds %struct.af9015_state, ptr %31, i32 0, i32 15
  %38 = ptrtoint ptr %af9013_i2c_addr.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %af9013_i2c_addr.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %39, i8 %29)
  %cmp.i = icmp eq i8 %39, %29
  br i1 %cmp.i, label %do.end.if.then.i_crit_edge, label %lor.lhs.false.i

do.end.if.then.i_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %do.end
  %arrayidx6.i = getelementptr %struct.af9015_state, ptr %31, i32 0, i32 15, i32 1
  %40 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx6.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %41, i8 %29)
  %cmp8.i = icmp eq i8 %41, %29
  br i1 %cmp8.i, label %lor.lhs.false.i.if.then.i_crit_edge, label %lor.lhs.false.i.af9015_read_reg_i2c.exit_crit_edge

lor.lhs.false.i.af9015_read_reg_i2c.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %af9015_read_reg_i2c.exit

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

if.then.i:                                        ; preds = %lor.lhs.false.i.if.then.i_crit_edge, %do.end.if.then.i_crit_edge
  %42 = ptrtoint ptr %addr_len.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 3, ptr %addr_len.i, align 1
  br label %af9015_read_reg_i2c.exit

af9015_read_reg_i2c.exit:                         ; preds = %if.then.i, %lor.lhs.false.i.af9015_read_reg_i2c.exit_crit_edge
  %call.i = call fastcc i32 @af9015_ctrl_msg(ptr noundef %d, ptr noundef nonnull %req.i) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %req.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool24.not = icmp eq i32 %call.i, 0
  br i1 %tobool24.not, label %do.body27, label %af9015_read_reg_i2c.exit.do.body144_crit_edge

af9015_read_reg_i2c.exit.do.body144_crit_edge:    ; preds = %af9015_read_reg_i2c.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body144

do.body27:                                        ; preds = %af9015_read_reg_i2c.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @af9015_copy_firmware.__UNIQUE_ID_ddebug413, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@af9015_copy_firmware, %if.then39)) #9
          to label %do.end44 [label %if.then39], !srcloc !400

if.then39:                                        ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #11
  %dev40 = getelementptr inbounds %struct.usb_interface, ptr %3, i32 0, i32 7
  %43 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %val, align 1
  %conv41 = zext i8 %44 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @af9015_copy_firmware.__UNIQUE_ID_ddebug413, ptr noundef %dev40, ptr noundef nonnull @.str.131, i32 noundef %conv41) #9
  br label %do.end44

do.end44:                                         ; preds = %if.then39, %do.body27
  %45 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %val, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 12, i8 %46)
  %cmp = icmp eq i8 %46, 12
  br i1 %cmp, label %do.end44.cleanup_crit_edge, label %if.end48

do.end44.cleanup_crit_edge:                       ; preds = %do.end44
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end48:                                         ; preds = %do.end44
  %47 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %1, align 4
  %call49 = call i32 @regmap_write(ptr noundef %48, i32 noundef 54294, i32 noundef 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %if.end52, label %if.end48.do.body144_crit_edge

if.end48.do.body144_crit_edge:                    ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body144

if.end52:                                         ; preds = %if.end48
  %call53 = call fastcc i32 @af9015_ctrl_msg(ptr noundef %d, ptr noundef nonnull %req)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %if.end60, label %do.end58

do.end58:                                         ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #11
  %dev59 = getelementptr inbounds %struct.usb_interface, ptr %3, i32 0, i32 7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev59, ptr noundef nonnull @.str.132, i32 noundef %call53) #13
  br label %do.body144

if.end60:                                         ; preds = %if.end52
  %49 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %1, align 4
  %call62 = call i32 @regmap_write(ptr noundef %50, i32 noundef 54294, i32 noundef 20) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62)
  %tobool63.not = icmp eq i32 %call62, 0
  br i1 %tobool63.not, label %if.end65, label %if.end60.do.body144_crit_edge

if.end60.do.body144_crit_edge:                    ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body144

if.end65:                                         ; preds = %if.end60
  %51 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %arrayidx22, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i)
  %53 = ptrtoint ptr %val.addr.i to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 1, ptr %val.addr.i, align 1
  %54 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %priv, align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %req.i209) #9
  %56 = getelementptr inbounds i8, ptr %req.i209, i32 4
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 16843263, ptr %56, align 4
  %58 = ptrtoint ptr %req.i209 to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 41, ptr %req.i209, align 4
  %i2c_addr.i211 = getelementptr inbounds %struct.req_t, ptr %req.i209, i32 0, i32 1
  %59 = ptrtoint ptr %i2c_addr.i211 to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %52, ptr %i2c_addr.i211, align 1
  %addr1.i212 = getelementptr inbounds %struct.req_t, ptr %req.i209, i32 0, i32 2
  %60 = ptrtoint ptr %addr1.i212 to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 -7675, ptr %addr1.i212, align 2
  %addr_len.i214 = getelementptr inbounds %struct.req_t, ptr %req.i209, i32 0, i32 4
  %data.i216 = getelementptr inbounds %struct.req_t, ptr %req.i209, i32 0, i32 6
  %61 = ptrtoint ptr %data.i216 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %val.addr.i, ptr %data.i216, align 4
  %af9013_i2c_addr.i217 = getelementptr inbounds %struct.af9015_state, ptr %55, i32 0, i32 15
  %62 = ptrtoint ptr %af9013_i2c_addr.i217 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %af9013_i2c_addr.i217, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %63, i8 %52)
  %cmp.i218 = icmp eq i8 %63, %52
  br i1 %cmp.i218, label %if.end65.if.then.i222_crit_edge, label %lor.lhs.false.i221

if.end65.if.then.i222_crit_edge:                  ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i222

lor.lhs.false.i221:                               ; preds = %if.end65
  %arrayidx6.i219 = getelementptr %struct.af9015_state, ptr %55, i32 0, i32 15, i32 1
  %64 = ptrtoint ptr %arrayidx6.i219 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %arrayidx6.i219, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %65, i8 %52)
  %cmp8.i220 = icmp eq i8 %65, %52
  br i1 %cmp8.i220, label %lor.lhs.false.i221.if.then.i222_crit_edge, label %lor.lhs.false.i221.af9015_write_reg_i2c.exit_crit_edge

lor.lhs.false.i221.af9015_write_reg_i2c.exit_crit_edge: ; preds = %lor.lhs.false.i221
  call void @__sanitizer_cov_trace_pc() #11
  br label %af9015_write_reg_i2c.exit

lor.lhs.false.i221.if.then.i222_crit_edge:        ; preds = %lor.lhs.false.i221
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i222

if.then.i222:                                     ; preds = %lor.lhs.false.i221.if.then.i222_crit_edge, %if.end65.if.then.i222_crit_edge
  %66 = ptrtoint ptr %addr_len.i214 to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 3, ptr %addr_len.i214, align 1
  br label %af9015_write_reg_i2c.exit

af9015_write_reg_i2c.exit:                        ; preds = %if.then.i222, %lor.lhs.false.i221.af9015_write_reg_i2c.exit_crit_edge
  %call.i223 = call fastcc i32 @af9015_ctrl_msg(ptr noundef %d, ptr noundef nonnull %req.i209) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %req.i209) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i223)
  %tobool69.not = icmp eq i32 %call.i223, 0
  br i1 %tobool69.not, label %if.end71, label %af9015_write_reg_i2c.exit.do.body144_crit_edge

af9015_write_reg_i2c.exit.do.body144_crit_edge:   ; preds = %af9015_write_reg_i2c.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body144

if.end71:                                         ; preds = %af9015_write_reg_i2c.exit
  %67 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 0, ptr %val, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %68 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %68, 100
  %69 = load volatile i32, ptr @jiffies, align 128
  %sub245 = sub i32 %add, %69
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub245)
  %cmp73246 = icmp slt i32 %sub245, 0
  br i1 %cmp73246, label %if.end71.do.body105_crit_edge, label %land.lhs.true.lr.ph

if.end71.do.body105_crit_edge:                    ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body105

land.lhs.true.lr.ph:                              ; preds = %if.end71
  %70 = getelementptr inbounds i8, ptr %req.i224, i32 4
  %i2c_addr.i226 = getelementptr inbounds %struct.req_t, ptr %req.i224, i32 0, i32 1
  %addr1.i227 = getelementptr inbounds %struct.req_t, ptr %req.i224, i32 0, i32 2
  %addr_len.i229 = getelementptr inbounds %struct.req_t, ptr %req.i224, i32 0, i32 4
  %data.i231 = getelementptr inbounds %struct.req_t, ptr %req.i224, i32 0, i32 6
  %dev100 = getelementptr inbounds %struct.usb_interface, ptr %3, i32 0, i32 7
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %do.end104.land.lhs.true_crit_edge, %land.lhs.true.lr.ph
  %71 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %val, align 1
  %73 = zext i8 %72 to i64
  call void @__sanitizer_cov_trace_switch(i64 %73, ptr @__sancov_gen_cov_switch_values.214)
  switch i8 %72, label %for.body [
    i8 12, label %land.lhs.true.do.body105_crit_edge
    i8 4, label %land.lhs.true.do.body105_crit_edge248
  ]

land.lhs.true.do.body105_crit_edge248:            ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body105

land.lhs.true.do.body105_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body105

for.body:                                         ; preds = %land.lhs.true
  call void @msleep(i32 noundef 20) #9
  %74 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %arrayidx22, align 1
  %76 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %priv, align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %req.i224) #9
  %78 = ptrtoint ptr %70 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 66047, ptr %70, align 4
  %79 = ptrtoint ptr %req.i224 to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 40, ptr %req.i224, align 4
  %80 = ptrtoint ptr %i2c_addr.i226 to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 %75, ptr %i2c_addr.i226, align 1
  %81 = ptrtoint ptr %addr1.i227 to i32
  call void @__asan_store2_noabort(i32 %81)
  store i16 -26434, ptr %addr1.i227, align 2
  %82 = ptrtoint ptr %data.i231 to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %val, ptr %data.i231, align 4
  %af9013_i2c_addr.i232 = getelementptr inbounds %struct.af9015_state, ptr %77, i32 0, i32 15
  %83 = ptrtoint ptr %af9013_i2c_addr.i232 to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %af9013_i2c_addr.i232, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %84, i8 %75)
  %cmp.i233 = icmp eq i8 %84, %75
  br i1 %cmp.i233, label %for.body.if.then.i237_crit_edge, label %lor.lhs.false.i236

for.body.if.then.i237_crit_edge:                  ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i237

lor.lhs.false.i236:                               ; preds = %for.body
  %arrayidx6.i234 = getelementptr %struct.af9015_state, ptr %77, i32 0, i32 15, i32 1
  %85 = ptrtoint ptr %arrayidx6.i234 to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %arrayidx6.i234, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %86, i8 %75)
  %cmp8.i235 = icmp eq i8 %86, %75
  br i1 %cmp8.i235, label %lor.lhs.false.i236.if.then.i237_crit_edge, label %lor.lhs.false.i236.af9015_read_reg_i2c.exit239_crit_edge

lor.lhs.false.i236.af9015_read_reg_i2c.exit239_crit_edge: ; preds = %lor.lhs.false.i236
  call void @__sanitizer_cov_trace_pc() #11
  br label %af9015_read_reg_i2c.exit239

lor.lhs.false.i236.if.then.i237_crit_edge:        ; preds = %lor.lhs.false.i236
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i237

if.then.i237:                                     ; preds = %lor.lhs.false.i236.if.then.i237_crit_edge, %for.body.if.then.i237_crit_edge
  %87 = ptrtoint ptr %addr_len.i229 to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 3, ptr %addr_len.i229, align 1
  br label %af9015_read_reg_i2c.exit239

af9015_read_reg_i2c.exit239:                      ; preds = %if.then.i237, %lor.lhs.false.i236.af9015_read_reg_i2c.exit239_crit_edge
  %call.i238 = call fastcc i32 @af9015_ctrl_msg(ptr noundef %d, ptr noundef nonnull %req.i224) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %req.i224) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i238)
  %tobool84.not = icmp eq i32 %call.i238, 0
  br i1 %tobool84.not, label %do.body87, label %af9015_read_reg_i2c.exit239.do.body144_crit_edge

af9015_read_reg_i2c.exit239.do.body144_crit_edge: ; preds = %af9015_read_reg_i2c.exit239
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body144

do.body87:                                        ; preds = %af9015_read_reg_i2c.exit239
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @af9015_copy_firmware.__UNIQUE_ID_ddebug414, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@af9015_copy_firmware, %if.then99)) #9
          to label %do.end104 [label %if.then99], !srcloc !400

if.then99:                                        ; preds = %do.body87
  call void @__sanitizer_cov_trace_pc() #11
  %88 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %val, align 1
  %conv101 = zext i8 %89 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @af9015_copy_firmware.__UNIQUE_ID_ddebug414, ptr noundef %dev100, ptr noundef nonnull @.str.131, i32 noundef %conv101) #9
  br label %do.end104

do.end104:                                        ; preds = %if.then99, %do.body87
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %90 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %add, %90
  %cmp73 = icmp slt i32 %sub, 0
  br i1 %cmp73, label %do.end104.do.body105_crit_edge, label %do.end104.land.lhs.true_crit_edge

do.end104.land.lhs.true_crit_edge:                ; preds = %do.end104
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true

do.end104.do.body105_crit_edge:                   ; preds = %do.end104
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body105

do.body105:                                       ; preds = %do.end104.do.body105_crit_edge, %land.lhs.true.do.body105_crit_edge, %land.lhs.true.do.body105_crit_edge248, %if.end71.do.body105_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @af9015_copy_firmware.__UNIQUE_ID_ddebug415, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@af9015_copy_firmware, %if.then117)) #9
          to label %do.end125 [label %if.then117], !srcloc !400

if.then117:                                       ; preds = %do.body105
  call void @__sanitizer_cov_trace_pc() #11
  %dev118 = getelementptr inbounds %struct.usb_interface, ptr %3, i32 0, i32 7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %91 = load volatile i32, ptr @jiffies, align 128
  %call119 = call i32 @jiffies_to_msecs(i32 noundef %91) #9
  %call120 = call i32 @jiffies_to_msecs(i32 noundef %add) #9
  %sub121.neg = add i32 %call119, 1000
  %sub122 = sub i32 %sub121.neg, %call120
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @af9015_copy_firmware.__UNIQUE_ID_ddebug415, ptr noundef %dev118, ptr noundef nonnull @.str.133, i32 noundef %sub122) #9
  br label %do.end125

do.end125:                                        ; preds = %if.then117, %do.body105
  %92 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %val, align 1
  %94 = zext i8 %93 to i64
  call void @__sanitizer_cov_trace_switch(i64 %94, ptr @__sancov_gen_cov_switch_values.215)
  switch i8 %93, label %if.then137 [
    i8 4, label %if.then129
    i8 12, label %do.end125.cleanup_crit_edge
  ]

do.end125.cleanup_crit_edge:                      ; preds = %do.end125
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then129:                                       ; preds = %do.end125
  call void @__sanitizer_cov_trace_pc() #11
  %dev133 = getelementptr inbounds %struct.usb_interface, ptr %3, i32 0, i32 7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev133, ptr noundef nonnull @.str.135) #13
  br label %do.body144

if.then137:                                       ; preds = %do.end125
  call void @__sanitizer_cov_trace_pc() #11
  %dev141 = getelementptr inbounds %struct.usb_interface, ptr %3, i32 0, i32 7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev141, ptr noundef nonnull @.str.138) #13
  br label %do.body144

do.body144:                                       ; preds = %if.then137, %if.then129, %af9015_read_reg_i2c.exit239.do.body144_crit_edge, %af9015_write_reg_i2c.exit.do.body144_crit_edge, %if.end60.do.body144_crit_edge, %do.end58, %if.end48.do.body144_crit_edge, %af9015_read_reg_i2c.exit.do.body144_crit_edge
  %ret.0 = phi i32 [ %call.i, %af9015_read_reg_i2c.exit.do.body144_crit_edge ], [ %call49, %if.end48.do.body144_crit_edge ], [ %call53, %do.end58 ], [ %call62, %if.end60.do.body144_crit_edge ], [ %call.i223, %af9015_write_reg_i2c.exit.do.body144_crit_edge ], [ -19, %if.then129 ], [ -110, %if.then137 ], [ %call.i238, %af9015_read_reg_i2c.exit239.do.body144_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @af9015_copy_firmware.__UNIQUE_ID_ddebug416, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@af9015_copy_firmware, %if.then156)) #9
          to label %cleanup [label %if.then156], !srcloc !400

if.then156:                                       ; preds = %do.body144
  call void @__sanitizer_cov_trace_pc() #11
  %dev157 = getelementptr inbounds %struct.usb_interface, ptr %3, i32 0, i32 7
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @af9015_copy_firmware.__UNIQUE_ID_ddebug416, ptr noundef %dev157, ptr noundef nonnull @.str.87, i32 noundef %ret.0) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then156, %do.body144, %do.end125.cleanup_crit_edge, %do.end44.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end44.cleanup_crit_edge ], [ 0, %do.end125.cleanup_crit_edge ], [ %ret.0, %if.then156 ], [ %ret.0, %do.body144 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %req) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %firmware_info) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dvb_module_probe(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @af9015_af9013_set_frontend(ptr noundef %fe) #2 align 64 {
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
  %fe_mutex = getelementptr inbounds %struct.af9015_state, ptr %7, i32 0, i32 23
  %call = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %fe_mutex, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %dvb to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dvb, align 4
  %priv5 = getelementptr inbounds %struct.dvb_adapter, ptr %9, i32 0, i32 5
  %10 = ptrtoint ptr %priv5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %priv5, align 4
  %id6 = getelementptr inbounds %struct.dvb_usb_adapter, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %id6 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %id6, align 4
  %idxprom = zext i8 %13 to i32
  %arrayidx = getelementptr %struct.af9015_state, ptr %7, i32 0, i32 17, i32 %idxprom
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx, align 4
  %call7 = tail call i32 %15(ptr noundef %fe) #9
  tail call void @mutex_unlock(ptr noundef %fe_mutex) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call7, %if.end ], [ -11, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @af9015_af9013_read_status(ptr noundef %fe, ptr noundef %status) #2 align 64 {
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
  %fe_mutex = getelementptr inbounds %struct.af9015_state, ptr %7, i32 0, i32 23
  %call = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %fe_mutex, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %dvb to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dvb, align 4
  %priv5 = getelementptr inbounds %struct.dvb_adapter, ptr %9, i32 0, i32 5
  %10 = ptrtoint ptr %priv5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %priv5, align 4
  %id6 = getelementptr inbounds %struct.dvb_usb_adapter, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %id6 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %id6, align 4
  %idxprom = zext i8 %13 to i32
  %arrayidx = getelementptr %struct.af9015_state, ptr %7, i32 0, i32 18, i32 %idxprom
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx, align 4
  %call7 = tail call i32 %15(ptr noundef %fe, ptr noundef %status) #9
  tail call void @mutex_unlock(ptr noundef %fe_mutex) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call7, %if.end ], [ -11, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @af9015_af9013_init(ptr noundef %fe) #2 align 64 {
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
  %fe_mutex = getelementptr inbounds %struct.af9015_state, ptr %7, i32 0, i32 23
  %call = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %fe_mutex, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %dvb to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dvb, align 4
  %priv5 = getelementptr inbounds %struct.dvb_adapter, ptr %9, i32 0, i32 5
  %10 = ptrtoint ptr %priv5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %priv5, align 4
  %id6 = getelementptr inbounds %struct.dvb_usb_adapter, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %id6 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %id6, align 4
  %idxprom = zext i8 %13 to i32
  %arrayidx = getelementptr %struct.af9015_state, ptr %7, i32 0, i32 19, i32 %idxprom
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx, align 4
  %call7 = tail call i32 %15(ptr noundef %fe) #9
  tail call void @mutex_unlock(ptr noundef %fe_mutex) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call7, %if.end ], [ -11, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @af9015_af9013_sleep(ptr noundef %fe) #2 align 64 {
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
  %fe_mutex = getelementptr inbounds %struct.af9015_state, ptr %7, i32 0, i32 23
  %call = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %fe_mutex, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %dvb to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dvb, align 4
  %priv5 = getelementptr inbounds %struct.dvb_adapter, ptr %9, i32 0, i32 5
  %10 = ptrtoint ptr %priv5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %priv5, align 4
  %id6 = getelementptr inbounds %struct.dvb_usb_adapter, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %id6 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %id6, align 4
  %idxprom = zext i8 %13 to i32
  %arrayidx = getelementptr %struct.af9015_state, ptr %7, i32 0, i32 20, i32 %idxprom
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx, align 4
  %call7 = tail call i32 %15(ptr noundef %fe) #9
  tail call void @mutex_unlock(ptr noundef %fe_mutex) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call7, %if.end ], [ -11, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_msecs(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dvb_module_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__symbol_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__request_module(i1 noundef zeroext, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__symbol_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @af9015_tuner_init(ptr noundef %fe) #2 align 64 {
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
  %fe_mutex = getelementptr inbounds %struct.af9015_state, ptr %7, i32 0, i32 23
  %call = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %fe_mutex, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %dvb to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dvb, align 4
  %priv5 = getelementptr inbounds %struct.dvb_adapter, ptr %9, i32 0, i32 5
  %10 = ptrtoint ptr %priv5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %priv5, align 4
  %id6 = getelementptr inbounds %struct.dvb_usb_adapter, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %id6 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %id6, align 4
  %idxprom = zext i8 %13 to i32
  %arrayidx = getelementptr %struct.af9015_state, ptr %7, i32 0, i32 21, i32 %idxprom
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx, align 4
  %call7 = tail call i32 %15(ptr noundef %fe) #9
  tail call void @mutex_unlock(ptr noundef %fe_mutex) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call7, %if.end ], [ -11, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @af9015_tuner_sleep(ptr noundef %fe) #2 align 64 {
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
  %fe_mutex = getelementptr inbounds %struct.af9015_state, ptr %7, i32 0, i32 23
  %call = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %fe_mutex, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %dvb to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dvb, align 4
  %priv5 = getelementptr inbounds %struct.dvb_adapter, ptr %9, i32 0, i32 5
  %10 = ptrtoint ptr %priv5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %priv5, align 4
  %id6 = getelementptr inbounds %struct.dvb_usb_adapter, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %id6 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %id6, align 4
  %idxprom = zext i8 %13 to i32
  %arrayidx = getelementptr %struct.af9015_state, ptr %7, i32 0, i32 22, i32 %idxprom
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx, align 4
  %call7 = tail call i32 %15(ptr noundef %fe) #9
  tail call void @mutex_unlock(ptr noundef %fe_mutex) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call7, %if.end ], [ -11, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_write(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @af9015_rc_query(ptr nocapture noundef readonly %d) #2 align 64 {
entry:
  %buf = alloca [17 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 15
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %intf1 = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 4
  %2 = ptrtoint ptr %intf1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %intf1, align 8
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %buf) #9
  %4 = getelementptr inbounds [17 x i8], ptr %buf, i32 0, i32 2
  %5 = getelementptr inbounds [17 x i8], ptr %buf, i32 0, i32 3
  %6 = getelementptr inbounds [17 x i8], ptr %buf, i32 0, i32 6
  %7 = getelementptr inbounds [17 x i8], ptr %buf, i32 0, i32 12
  %8 = getelementptr inbounds [17 x i8], ptr %buf, i32 0, i32 13
  %9 = getelementptr inbounds [17 x i8], ptr %buf, i32 0, i32 16
  %10 = call ptr @memset(ptr %buf, i32 255, i32 17)
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 4
  %call = call i32 @regmap_bulk_read(ptr noundef %12, i32 noundef 39129, ptr noundef nonnull %buf, i32 noundef 17) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.do.end171_crit_edge

entry.do.end171_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end171

if.end:                                           ; preds = %entry
  %13 = getelementptr inbounds [17 x i8], ptr %buf, i32 0, i32 1
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %13, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool2.not = icmp eq i8 %15, 0
  br i1 %tobool2.not, label %lor.lhs.false, label %if.end.do.body_crit_edge

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

lor.lhs.false:                                    ; preds = %if.end
  %16 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %4, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool5.not = icmp eq i8 %17, 0
  br i1 %tobool5.not, label %lor.lhs.false6, label %lor.lhs.false.do.body_crit_edge

lor.lhs.false.do.body_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

lor.lhs.false6:                                   ; preds = %lor.lhs.false
  %18 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %5, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool9.not = icmp eq i8 %19, 0
  br i1 %tobool9.not, label %if.end17, label %lor.lhs.false6.do.body_crit_edge

lor.lhs.false6.do.body_crit_edge:                 ; preds = %lor.lhs.false6
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

do.body:                                          ; preds = %lor.lhs.false6.do.body_crit_edge, %lor.lhs.false.do.body_crit_edge, %if.end.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @af9015_rc_query.__UNIQUE_ID_ddebug422, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@af9015_rc_query, %if.then15)) #9
          to label %cleanup179 [label %if.then15], !srcloc !400

if.then15:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.usb_interface, ptr %3, i32 0, i32 7
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @af9015_rc_query.__UNIQUE_ID_ddebug422, ptr noundef %dev, ptr noundef nonnull @.str.198) #9
  br label %cleanup179

if.end17:                                         ; preds = %lor.lhs.false6
  %rc_repeat = getelementptr inbounds %struct.af9015_state, ptr %1, i32 0, i32 3
  %20 = ptrtoint ptr %rc_repeat to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %rc_repeat, align 4
  %22 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %6, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %21, i8 %23)
  %cmp.not = icmp eq i8 %21, %23
  br i1 %cmp.not, label %lor.lhs.false22, label %if.end17.land.lhs.true_crit_edge

if.end17.land.lhs.true_crit_edge:                 ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true

lor.lhs.false22:                                  ; preds = %if.end17
  %24 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %buf, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool25.not = icmp eq i8 %25, 0
  br i1 %tobool25.not, label %lor.lhs.false22.if.end50_crit_edge, label %lor.lhs.false22.land.lhs.true_crit_edge

lor.lhs.false22.land.lhs.true_crit_edge:          ; preds = %lor.lhs.false22
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true

lor.lhs.false22.if.end50_crit_edge:               ; preds = %lor.lhs.false22
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end50

land.lhs.true:                                    ; preds = %lor.lhs.false22.land.lhs.true_crit_edge, %if.end17.land.lhs.true_crit_edge
  %rc_last = getelementptr inbounds %struct.af9015_state, ptr %1, i32 0, i32 5
  %bcmp = call i32 @bcmp(ptr noundef dereferenceable(4) %7, ptr noundef dereferenceable(4) %rc_last, i32 4) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool29.not = icmp eq i32 %bcmp, 0
  br i1 %tobool29.not, label %do.body31, label %land.lhs.true.if.end50_crit_edge

land.lhs.true.if.end50_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end50

do.body31:                                        ; preds = %land.lhs.true
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @af9015_rc_query.__UNIQUE_ID_ddebug423, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@af9015_rc_query, %if.then43)) #9
          to label %do.end47 [label %if.then43], !srcloc !400

if.then43:                                        ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #11
  %dev44 = getelementptr inbounds %struct.usb_interface, ptr %3, i32 0, i32 7
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @af9015_rc_query.__UNIQUE_ID_ddebug423, ptr noundef %dev44, ptr noundef nonnull @.str.199) #9
  br label %do.end47

do.end47:                                         ; preds = %if.then43, %do.body31
  %rc_dev = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 12
  %26 = ptrtoint ptr %rc_dev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %rc_dev, align 8
  call void @rc_repeat(ptr noundef %27) #9
  %28 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %6, align 1
  %30 = ptrtoint ptr %rc_repeat to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %29, ptr %rc_repeat, align 4
  br label %cleanup179

if.end50:                                         ; preds = %land.lhs.true.if.end50_crit_edge, %lor.lhs.false22.if.end50_crit_edge
  %31 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %9, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %32)
  %cmp53.not = icmp eq i8 %32, -1
  br i1 %cmp53.not, label %if.end50.do.body143_crit_edge, label %land.lhs.true55

if.end50.do.body143_crit_edge:                    ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body143

land.lhs.true55:                                  ; preds = %if.end50
  %33 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %buf, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %34)
  %cmp58.not = icmp eq i8 %34, 1
  br i1 %cmp58.not, label %land.lhs.true55.do.body143_crit_edge, label %if.then60

land.lhs.true55.do.body143_crit_edge:             ; preds = %land.lhs.true55
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body143

if.then60:                                        ; preds = %land.lhs.true55
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @af9015_rc_query.__UNIQUE_ID_ddebug424, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@af9015_rc_query, %if.then73)) #9
          to label %do.end78 [label %if.then73], !srcloc !400

if.then73:                                        ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #11
  %dev74 = getelementptr inbounds %struct.usb_interface, ptr %3, i32 0, i32 7
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @af9015_rc_query.__UNIQUE_ID_ddebug424, ptr noundef %dev74, ptr noundef nonnull @.str.200, i32 noundef 4, ptr noundef %7) #9
  br label %do.end78

do.end78:                                         ; preds = %if.then73, %if.then60
  %35 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %1, align 4
  %call80 = call i32 @regmap_write(ptr noundef %36, i32 noundef 39145, i32 noundef 255) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call80)
  %tobool81.not = icmp eq i32 %call80, 0
  br i1 %tobool81.not, label %if.end83, label %do.end78.do.end171_crit_edge

do.end78.do.end171_crit_edge:                     ; preds = %do.end78
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end171

if.end83:                                         ; preds = %do.end78
  %rc_last84 = getelementptr inbounds %struct.af9015_state, ptr %1, i32 0, i32 5
  %37 = ptrtoint ptr %7 to i32
  call void @__asan_loadN_noabort(i32 %37, i32 4)
  %38 = load i32, ptr %7, align 1
  %39 = ptrtoint ptr %rc_last84 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %rc_last84, align 4
  %40 = lshr i32 %38, 8
  %41 = trunc i32 %40 to i8
  %conv88 = and i32 %40, 255
  %42 = trunc i32 %38 to i8
  %neg = xor i8 %42, -1
  call void @__sanitizer_cov_trace_cmp1(i8 %41, i8 %neg)
  %cmp93 = icmp eq i8 %41, %neg
  br i1 %cmp93, label %if.then95, label %if.else122

if.then95:                                        ; preds = %if.end83
  %43 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %7, align 1
  %conv97 = zext i8 %44 to i32
  %45 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %8, align 1
  %neg100 = xor i8 %46, -1
  call void @__sanitizer_cov_trace_cmp1(i8 %44, i8 %neg100)
  %cmp103 = icmp eq i8 %44, %neg100
  br i1 %cmp103, label %if.then105, label %if.else

if.then105:                                       ; preds = %if.then95
  call void @__sanitizer_cov_trace_pc() #11
  %shl = shl nuw nsw i32 %conv97, 8
  %or = or i32 %shl, %conv88
  br label %cleanup.thread

if.else:                                          ; preds = %if.then95
  call void @__sanitizer_cov_trace_pc() #11
  %conv99 = zext i8 %46 to i32
  %47 = shl nuw nsw i32 %conv97, 16
  %48 = shl nuw nsw i32 %conv99, 8
  %shl116 = or i32 %47, %conv88
  %or119 = or i32 %shl116, %48
  br label %cleanup.thread

if.else122:                                       ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #11
  %conv90 = and i32 %38, 255
  %49 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %7, align 1
  %conv124 = zext i8 %50 to i32
  %shl125 = shl nuw i32 %conv124, 24
  %51 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %8, align 1
  %conv127 = zext i8 %52 to i32
  %shl128 = shl nuw nsw i32 %conv127, 16
  %shl132 = shl nuw nsw i32 %conv88, 8
  %or129 = or i32 %shl132, %conv90
  %or133 = or i32 %or129, %shl125
  %or136 = or i32 %or133, %shl128
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.else122, %if.else, %if.then105
  %or136.sink = phi i32 [ %or136, %if.else122 ], [ %or119, %if.else ], [ %or, %if.then105 ]
  %proto.0 = phi i32 [ 11, %if.else122 ], [ 10, %if.else ], [ 9, %if.then105 ]
  %rc_keycode137 = getelementptr inbounds %struct.af9015_state, ptr %1, i32 0, i32 4
  %53 = ptrtoint ptr %rc_keycode137 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %or136.sink, ptr %rc_keycode137, align 4
  %rc_dev139 = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 12
  %54 = ptrtoint ptr %rc_dev139 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %rc_dev139, align 8
  %conv141 = zext i32 %or136.sink to i64
  call void @rc_keydown(ptr noundef %55, i32 noundef %proto.0, i64 noundef %conv141, i8 noundef zeroext 0) #9
  br label %error

do.body143:                                       ; preds = %land.lhs.true55.do.body143_crit_edge, %if.end50.do.body143_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @af9015_rc_query.__UNIQUE_ID_ddebug425, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@af9015_rc_query, %if.then155)) #9
          to label %do.end159 [label %if.then155], !srcloc !400

if.then155:                                       ; preds = %do.body143
  call void @__sanitizer_cov_trace_pc() #11
  %dev156 = getelementptr inbounds %struct.usb_interface, ptr %3, i32 0, i32 7
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @af9015_rc_query.__UNIQUE_ID_ddebug425, ptr noundef %dev156, ptr noundef nonnull @.str.201) #9
  br label %do.end159

do.end159:                                        ; preds = %if.then155, %do.body143
  %arrayidx161 = getelementptr %struct.af9015_state, ptr %1, i32 0, i32 5, i32 3
  %56 = ptrtoint ptr %arrayidx161 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %arrayidx161, align 1
  %arrayidx163 = getelementptr %struct.af9015_state, ptr %1, i32 0, i32 5, i32 2
  %58 = ptrtoint ptr %arrayidx163 to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %57, ptr %arrayidx163, align 2
  br label %error

error:                                            ; preds = %do.end159, %cleanup.thread
  %59 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %6, align 1
  %61 = ptrtoint ptr %rc_repeat to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %60, ptr %rc_repeat, align 4
  %rc_failed = getelementptr inbounds %struct.af9015_state, ptr %1, i32 0, i32 6
  %62 = ptrtoint ptr %rc_failed to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 0, ptr %rc_failed, align 4
  br label %cleanup179

do.end171:                                        ; preds = %do.end78.do.end171_crit_edge, %entry.do.end171_crit_edge
  %ret.1.ph = phi i32 [ %call80, %do.end78.do.end171_crit_edge ], [ %call, %entry.do.end171_crit_edge ]
  %dev172 = getelementptr inbounds %struct.usb_interface, ptr %3, i32 0, i32 7
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev172, ptr noundef nonnull @.str.202, i32 noundef %ret.1.ph) #13
  %rc_failed173 = getelementptr inbounds %struct.af9015_state, ptr %1, i32 0, i32 6
  %63 = ptrtoint ptr %rc_failed173 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %rc_failed173, align 4, !range !402
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %64)
  %tobool174.not = icmp eq i8 %64, 0
  %spec.select = select i1 %tobool174.not, i32 0, i32 %ret.1.ph
  %65 = ptrtoint ptr %rc_failed173 to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 1, ptr %rc_failed173, align 4
  br label %cleanup179

cleanup179:                                       ; preds = %do.end171, %error, %do.end47, %if.then15, %do.body
  %retval.0 = phi i32 [ 0, %do.end47 ], [ 0, %if.then15 ], [ %spec.select, %do.end171 ], [ 0, %error ], [ 0, %do.body ]
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %buf) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rc_repeat(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rc_keydown(ptr noundef, i32 noundef, i64 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 217)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 217)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { argmemonly nofree nounwind readonly willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nobuiltin }
attributes #13 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !9, !11, !12, !14, !16, !18, !19, !21, !23, !24, !25, !26, !27, !28, !30, !32, !34, !35, !37, !39, !41, !42, !44, !46, !48, !50, !51, !53, !55, !56, !58, !60, !62, !64, !66, !68, !69, !71, !73, !75, !77, !79, !81, !83, !85, !86, !88, !90, !92, !94, !95, !97, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !117, !118, !119, !121, !123, !124, !126, !127, !129, !130, !132, !133, !135, !136, !137, !138, !139, !140, !142, !143, !144, !146, !147, !148, !150, !151, !153, !154, !156, !157, !158, !160, !161, !163, !164, !165, !167, !168, !169, !171, !173, !175, !176, !177, !179, !181, !182, !184, !185, !187, !188, !190, !191, !193, !194, !196, !197, !199, !200, !201, !203, !204, !206, !207, !208, !210, !211, !213, !214, !215, !217, !218, !220, !222, !223, !224, !226, !228, !229, !230, !232, !234, !236, !237, !239, !240, !242, !243, !244, !246, !248, !249, !251, !252, !253, !255, !256, !257, !259, !261, !262, !264, !265, !267, !268, !269, !270, !271, !273, !274, !275, !276, !277, !279, !280, !281, !282, !283, !285, !286, !287, !288, !289, !291, !292, !293, !294, !295, !297, !298, !300, !301, !302, !303, !304, !306, !307, !308, !309, !310, !312, !313, !314, !315, !316, !318, !319, !320, !322, !324, !326, !328, !330, !332, !334, !336, !338, !339, !340, !342, !343, !345, !347, !348, !350, !351, !353, !355, !357, !359, !361, !363, !365, !367, !369, !371, !372, !373, !375, !376, !378, !379, !381, !382, !384, !385, !386, !387, !389, !390}
!llvm.module.flags = !{!391, !392, !393, !394, !395, !396, !397, !398}
!llvm.ident = !{!399}

!0 = !{ptr @__param_remote, !1, !"__param_remote", i1 false, i1 false}
!1 = !{!"../drivers/media/usb/dvb-usb-v2/af9015.c", i32 13, i32 1}
!2 = !{ptr @__UNIQUE_ID_remotetype386, !1, !"__UNIQUE_ID_remotetype386", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_remote387, !4, !"__UNIQUE_ID_remote387", i1 false, i1 false}
!4 = !{!"../drivers/media/usb/dvb-usb-v2/af9015.c", i32 14, i32 1}
!5 = !{ptr @__param_adapter_nr, !6, !"__param_adapter_nr", i1 false, i1 false}
!6 = !{!"../drivers/media/usb/dvb-usb-v2/af9015.c", i32 15, i32 1}
!7 = !{ptr @__UNIQUE_ID_adapter_nrtype388, !6, !"__UNIQUE_ID_adapter_nrtype388", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_adapter_nr389, !6, !"__UNIQUE_ID_adapter_nr389", i1 false, i1 false}
!9 = !{ptr @__initcall__kmod_dvb_usb_af9015__432_1551_af9015_usb_driver_init6, !10, !"__initcall__kmod_dvb_usb_af9015__432_1551_af9015_usb_driver_init6", i1 false, i1 false}
!10 = !{!"../drivers/media/usb/dvb-usb-v2/af9015.c", i32 1551, i32 1}
!11 = !{ptr @__exitcall_af9015_usb_driver_exit, !10, !"__exitcall_af9015_usb_driver_exit", i1 false, i1 false}
!12 = !{ptr @__UNIQUE_ID_author433, !13, !"__UNIQUE_ID_author433", i1 false, i1 false}
!13 = !{!"../drivers/media/usb/dvb-usb-v2/af9015.c", i32 1553, i32 1}
!14 = !{ptr @__UNIQUE_ID_description434, !15, !"__UNIQUE_ID_description434", i1 false, i1 false}
!15 = !{!"../drivers/media/usb/dvb-usb-v2/af9015.c", i32 1554, i32 1}
!16 = !{ptr @__UNIQUE_ID_file435, !17, !"__UNIQUE_ID_file435", i1 false, i1 false}
!17 = !{!"../drivers/media/usb/dvb-usb-v2/af9015.c", i32 1555, i32 1}
!18 = !{ptr @__UNIQUE_ID_license436, !17, !"__UNIQUE_ID_license436", i1 false, i1 false}
!19 = !{ptr @__UNIQUE_ID_firmware437, !20, !"__UNIQUE_ID_firmware437", i1 false, i1 false}
!20 = !{!"../drivers/media/usb/dvb-usb-v2/af9015.c", i32 1556, i32 1}
!21 = !{ptr @dvb_usb_af9015_remote, !22, !"dvb_usb_af9015_remote", i1 false, i1 false}
!22 = !{!"../drivers/media/usb/dvb-usb-v2/af9015.c", i32 12, i32 12}
!23 = !{ptr @__param_str_remote, !1, !"__param_str_remote", i1 false, i1 false}
!24 = !{ptr @__param_str_adapter_nr, !6, !"__param_str_adapter_nr", i1 false, i1 false}
!25 = !{ptr @__param_arr_adapter_nr, !6, !"__param_arr_adapter_nr", i1 false, i1 false}
!26 = !{ptr @adapter_nr, !6, !"adapter_nr", i1 false, i1 false}
!27 = !{ptr @.str, !10, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @af9015_usb_driver, !29, !"af9015_usb_driver", i1 false, i1 false}
!29 = !{!"../drivers/media/usb/dvb-usb-v2/af9015.c", i32 1539, i32 26}
!30 = !{ptr @.str.1, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/media/usb/dvb-usb-v2/af9015.c", i32 1457, i32 4}
!32 = !{ptr @.str.3, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/media/usb/dvb-usb-v2/af9015.c", i32 1461, i32 4}
!34 = !{ptr @.str.4, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.6, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/media/usb/dvb-usb-v2/af9015.c", i32 1463, i32 4}
!37 = !{ptr @.str.8, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/media/usb/dvb-usb-v2/af9015.c", i32 1465, i32 4}
!39 = !{ptr @.str.10, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/media/usb/dvb-usb-v2/af9015.c", i32 1467, i32 4}
!41 = !{ptr @.str.11, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.13, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/media/usb/dvb-usb-v2/af9015.c", i32 1469, i32 4}
!44 = !{ptr @.str.15, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/media/usb/dvb-usb-v2/af9015.c", i32 1471, i32 4}
!46 = !{ptr @.str.17, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/media/usb/dvb-usb-v2/af9015.c", i32 1473, i32 4}
!48 = !{ptr @.str.19, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/media/usb/dvb-usb-v2/af9015.c", i32 1475, i32 4}
!50 = !{ptr @.str.20, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @.str.22, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/media/usb/dvb-usb-v2/af9015.c", i32 1477, i32 4}
!53 = !{ptr @.str.24, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/media/usb/dvb-usb-v2/af9015.c", i32 1479, i32 4}
!55 = !{ptr @.str.25, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @.str.27, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/media/usb/dvb-usb-v2/af9015.c", i32 1481, i32 4}
!58 = !{ptr @.str.29, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/media/usb/dvb-usb-v2/af9015.c", i32 1483, i32 4}
!60 = !{ptr @.str.31, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/media/usb/dvb-usb-v2/af9015.c", i32 1485, i32 4}
!62 = !{ptr @.str.33, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/media/usb/dvb-usb-v2/af9015.c", i32 1487, i32 4}
!64 = !{ptr @.str.35, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/media/usb/dvb-usb-v2/af9015.c", i32 1489, i32 4}
!66 = !{ptr @.str.39, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/media/usb/dvb-usb-v2/af9015.c", i32 1495, i32 4}
!68 = !{ptr @.str.40, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @.str.42, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/media/usb/dvb-usb-v2/af9015.c", i32 1497, i32 4}
!71 = !{ptr @.str.44, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/media/usb/dvb-usb-v2/af9015.c", i32 1499, i32 4}
!73 = !{ptr @.str.46, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/media/usb/dvb-usb-v2/af9015.c", i32 1501, i32 4}
!75 = !{ptr @.str.48, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/media/usb/dvb-usb-v2/af9015.c", i32 1503, i32 4}
!77 = !{ptr @.str.50, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/media/usb/dvb-usb-v2/af9015.c", i32 1505, i32 4}
!79 = !{ptr @.str.53, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/media/usb/dvb-usb-v2/af9015.c", i32 1509, i32 4}
!81 = !{ptr @.str.55, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/media/usb/dvb-usb-v2/af9015.c", i32 1511, i32 4}
!83 = !{ptr @.str.57, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/media/usb/dvb-usb-v2/af9015.c", i32 1513, i32 4}
!85 = !{ptr @.str.58, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @.str.60, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/media/usb/dvb-usb-v2/af9015.c", i32 1515, i32 4}
!88 = !{ptr @.str.62, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/media/usb/dvb-usb-v2/af9015.c", i32 1517, i32 4}
!90 = !{ptr @.str.65, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/media/usb/dvb-usb-v2/af9015.c", i32 1521, i32 4}
!92 = !{ptr @.str.67, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/media/usb/dvb-usb-v2/af9015.c", i32 1523, i32 4}
!94 = !{ptr @.str.68, !93, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @.str.70, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/media/usb/dvb-usb-v2/af9015.c", i32 1526, i32 4}
!97 = !{ptr @.str.71, !96, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @.str.73, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/media/usb/dvb-usb-v2/af9015.c", i32 1528, i32 4}
!100 = !{ptr @.str.75, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/media/usb/dvb-usb-v2/af9015.c", i32 1530, i32 4}
!102 = !{ptr @.str.77, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/media/usb/dvb-usb-v2/af9015.c", i32 1532, i32 4}
!104 = !{ptr @af9015_id_table, !105, !"af9015_id_table", i1 false, i1 false}
!105 = !{!"../drivers/media/usb/dvb-usb-v2/af9015.c", i32 1456, i32 35}
!106 = !{ptr @.str.79, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/media/usb/dvb-usb-v2/af9015.c", i32 1421, i32 14}
!108 = !{ptr @af9015_props, !109, !"af9015_props", i1 false, i1 false}
!109 = !{!"../drivers/media/usb/dvb-usb-v2/af9015.c", i32 1409, i32 47}
!110 = !{ptr @af9015_probe.regmap_config, !111, !"regmap_config", i1 false, i1 false}
!111 = !{!"../drivers/media/usb/dvb-usb-v2/af9015.c", i32 1343, i32 36}
!112 = !{ptr @af9015_probe.regmap_bus, !113, !"regmap_bus", i1 false, i1 false}
!113 = !{!"../drivers/media/usb/dvb-usb-v2/af9015.c", i32 1347, i32 33}
!114 = !{ptr @.str.81, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/media/usb/dvb-usb-v2/af9015.c", i32 1352, i32 2}
!116 = !{ptr @.str.82, !115, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @.str.83, !115, !"<string literal>", i1 false, i1 false}
!118 = !{ptr @af9015_probe.__UNIQUE_ID_ddebug428, !115, !"__UNIQUE_ID_ddebug428", i1 false, i1 false}
!119 = !{ptr @.str.84, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/media/usb/dvb-usb-v2/af9015.c", i32 1376, i32 15}
!121 = !{ptr @.str.85, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/media/usb/dvb-usb-v2/af9015.c", i32 1378, i32 4}
!123 = !{ptr @af9015_probe.__UNIQUE_ID_ddebug429, !122, !"__UNIQUE_ID_ddebug429", i1 false, i1 false}
!124 = !{ptr @af9015_probe._key, !125, !"_key", i1 false, i1 false}
!125 = !{!"../drivers/media/usb/dvb-usb-v2/af9015.c", i32 1383, i32 18}
!126 = !{ptr @.str.86, !125, !"<string literal>", i1 false, i1 false}
!127 = !{ptr @.str.87, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/media/usb/dvb-usb-v2/af9015.c", i32 1391, i32 2}
!129 = !{ptr @af9015_probe.__UNIQUE_ID_ddebug430, !128, !"__UNIQUE_ID_ddebug430", i1 false, i1 false}
!130 = !{ptr @.str.88, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/media/usb/dvb-usb-v2/af9015.c", i32 1311, i32 2}
!132 = !{ptr @af9015_regmap_write.__UNIQUE_ID_ddebug426, !131, !"__UNIQUE_ID_ddebug426", i1 false, i1 false}
!133 = !{ptr @.str.89, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/media/usb/dvb-usb-v2/af9015.c", i32 61, i32 3}
!135 = !{ptr @.str.90, !134, !"<string literal>", i1 false, i1 false}
!136 = !{ptr @.str.91, !134, !"<string literal>", i1 false, i1 false}
!137 = !{ptr @.str.92, !134, !"<string literal>", i1 false, i1 false}
!138 = !{ptr @af9015_ctrl_msg._entry, !134, !"_entry", i1 false, i1 false}
!139 = !{ptr @af9015_ctrl_msg._entry_ptr, !134, !"_entry_ptr", i1 false, i1 false}
!140 = !{ptr @.str.94, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/media/usb/dvb-usb-v2/af9015.c", i32 69, i32 3}
!142 = !{ptr @af9015_ctrl_msg._entry.93, !141, !"_entry", i1 false, i1 false}
!143 = !{ptr @af9015_ctrl_msg._entry_ptr.95, !141, !"_entry_ptr", i1 false, i1 false}
!144 = !{ptr @.str.97, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/media/usb/dvb-usb-v2/af9015.c", i32 99, i32 3}
!146 = !{ptr @af9015_ctrl_msg._entry.96, !145, !"_entry", i1 false, i1 false}
!147 = !{ptr @af9015_ctrl_msg._entry_ptr.98, !145, !"_entry_ptr", i1 false, i1 false}
!148 = !{ptr @.str.99, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/media/usb/dvb-usb-v2/af9015.c", i32 1332, i32 2}
!150 = !{ptr @af9015_regmap_read.__UNIQUE_ID_ddebug427, !149, !"__UNIQUE_ID_ddebug427", i1 false, i1 false}
!151 = !{ptr @.str.100, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/media/usb/dvb-usb-v2/af9015.c", i32 1400, i32 2}
!153 = !{ptr @af9015_disconnect.__UNIQUE_ID_ddebug431, !152, !"__UNIQUE_ID_ddebug431", i1 false, i1 false}
!154 = !{ptr @.str.101, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/media/usb/dvb-usb-v2/af9015.c", i32 279, i32 2}
!156 = !{ptr @.str.102, !155, !"<string literal>", i1 false, i1 false}
!157 = !{ptr @af9015_identify_state.__UNIQUE_ID_ddebug392, !155, !"__UNIQUE_ID_ddebug392", i1 false, i1 false}
!158 = !{ptr @.str.103, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/media/usb/dvb-usb-v2/af9015.c", i32 298, i32 2}
!160 = !{ptr @af9015_download_firmware.__UNIQUE_ID_ddebug393, !159, !"__UNIQUE_ID_ddebug393", i1 false, i1 false}
!161 = !{ptr @.str.104, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/media/usb/dvb-usb-v2/af9015.c", i32 314, i32 4}
!163 = !{ptr @af9015_download_firmware._entry, !162, !"_entry", i1 false, i1 false}
!164 = !{ptr @af9015_download_firmware._entry_ptr, !162, !"_entry_ptr", i1 false, i1 false}
!165 = !{ptr @.str.106, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/media/usb/dvb-usb-v2/af9015.c", i32 324, i32 3}
!167 = !{ptr @af9015_download_firmware._entry.105, !166, !"_entry", i1 false, i1 false}
!168 = !{ptr @af9015_download_firmware._entry_ptr.107, !166, !"_entry_ptr", i1 false, i1 false}
!169 = !{ptr @af9015_download_firmware.__UNIQUE_ID_ddebug396, !170, !"__UNIQUE_ID_ddebug396", i1 false, i1 false}
!170 = !{!"../drivers/media/usb/dvb-usb-v2/af9015.c", i32 330, i32 2}
!171 = !{ptr @af9015_i2c_algo, !172, !"af9015_i2c_algo", i1 false, i1 false}
!172 = !{!"../drivers/media/usb/dvb-usb-v2/af9015.c", i32 263, i32 29}
!173 = !{ptr @.str.108, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/media/usb/dvb-usb-v2/af9015.c", i32 247, i32 3}
!175 = !{ptr @.str.109, !174, !"<string literal>", i1 false, i1 false}
!176 = !{ptr @af9015_i2c_xfer.__UNIQUE_ID_ddebug390, !174, !"__UNIQUE_ID_ddebug390", i1 false, i1 false}
!177 = !{ptr @af9015_i2c_xfer.__UNIQUE_ID_ddebug391, !178, !"__UNIQUE_ID_ddebug391", i1 false, i1 false}
!178 = !{!"../drivers/media/usb/dvb-usb-v2/af9015.c", i32 254, i32 2}
!179 = !{ptr @.str.110, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/media/usb/dvb-usb-v2/af9015.c", i32 380, i32 2}
!181 = !{ptr @af9015_read_config.__UNIQUE_ID_ddebug400, !180, !"__UNIQUE_ID_ddebug400", i1 false, i1 false}
!182 = !{ptr @.str.111, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/media/usb/dvb-usb-v2/af9015.c", i32 398, i32 2}
!184 = !{ptr @af9015_read_config.__UNIQUE_ID_ddebug401, !183, !"__UNIQUE_ID_ddebug401", i1 false, i1 false}
!185 = !{ptr @.str.112, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/media/usb/dvb-usb-v2/af9015.c", i32 407, i32 2}
!187 = !{ptr @af9015_read_config.__UNIQUE_ID_ddebug402, !186, !"__UNIQUE_ID_ddebug402", i1 false, i1 false}
!188 = !{ptr @.str.113, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/media/usb/dvb-usb-v2/af9015.c", i32 443, i32 3}
!190 = !{ptr @af9015_read_config.__UNIQUE_ID_ddebug403, !189, !"__UNIQUE_ID_ddebug403", i1 false, i1 false}
!191 = !{ptr @.str.114, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/media/usb/dvb-usb-v2/af9015.c", i32 461, i32 3}
!193 = !{ptr @af9015_read_config.__UNIQUE_ID_ddebug404, !192, !"__UNIQUE_ID_ddebug404", i1 false, i1 false}
!194 = !{ptr @.str.115, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/media/usb/dvb-usb-v2/af9015.c", i32 475, i32 3}
!196 = !{ptr @af9015_read_config.__UNIQUE_ID_ddebug405, !195, !"__UNIQUE_ID_ddebug405", i1 false, i1 false}
!197 = !{ptr @.str.116, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/media/usb/dvb-usb-v2/af9015.c", i32 505, i32 4}
!199 = !{ptr @af9015_read_config._entry, !198, !"_entry", i1 false, i1 false}
!200 = !{ptr @af9015_read_config._entry_ptr, !198, !"_entry_ptr", i1 false, i1 false}
!201 = !{ptr @.str.117, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/media/usb/dvb-usb-v2/af9015.c", i32 512, i32 3}
!203 = !{ptr @af9015_read_config.__UNIQUE_ID_ddebug406, !202, !"__UNIQUE_ID_ddebug406", i1 false, i1 false}
!204 = !{ptr @.str.119, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/media/usb/dvb-usb-v2/af9015.c", i32 517, i32 3}
!206 = !{ptr @af9015_read_config._entry.118, !205, !"_entry", i1 false, i1 false}
!207 = !{ptr @af9015_read_config._entry_ptr.120, !205, !"_entry_ptr", i1 false, i1 false}
!208 = !{ptr @.str.121, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/media/usb/dvb-usb-v2/af9015.c", i32 527, i32 3}
!210 = !{ptr @af9015_read_config.__UNIQUE_ID_ddebug407, !209, !"__UNIQUE_ID_ddebug407", i1 false, i1 false}
!211 = !{ptr @.str.122, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../drivers/media/usb/dvb-usb-v2/af9015.c", i32 363, i32 3}
!213 = !{ptr @.str.123, !212, !"<string literal>", i1 false, i1 false}
!214 = !{ptr @af9015_eeprom_hash.__UNIQUE_ID_ddebug397, !212, !"__UNIQUE_ID_ddebug397", i1 false, i1 false}
!215 = !{ptr @.str.124, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../drivers/media/usb/dvb-usb-v2/af9015.c", i32 365, i32 2}
!217 = !{ptr @af9015_eeprom_hash.__UNIQUE_ID_ddebug398, !216, !"__UNIQUE_ID_ddebug398", i1 false, i1 false}
!218 = !{ptr @af9015_eeprom_hash.__UNIQUE_ID_ddebug399, !219, !"__UNIQUE_ID_ddebug399", i1 false, i1 false}
!219 = !{!"../drivers/media/usb/dvb-usb-v2/af9015.c", i32 368, i32 2}
!220 = !{ptr @.str.125, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/media/usb/dvb-usb-v2/af9015.c", i32 852, i32 2}
!222 = !{ptr @.str.126, !221, !"<string literal>", i1 false, i1 false}
!223 = !{ptr @af9015_af9013_frontend_attach.__UNIQUE_ID_ddebug417, !221, !"__UNIQUE_ID_ddebug417", i1 false, i1 false}
!224 = distinct !{null, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../drivers/media/usb/dvb-usb-v2/af9015.c", i32 856, i32 46}
!226 = !{ptr @.str.128, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../drivers/media/usb/dvb-usb-v2/af9015.c", i32 873, i32 5}
!228 = !{ptr @af9015_af9013_frontend_attach._entry, !227, !"_entry", i1 false, i1 false}
!229 = !{ptr @af9015_af9013_frontend_attach._entry_ptr, !227, !"_entry_ptr", i1 false, i1 false}
!230 = !{ptr @.str.129, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../drivers/media/usb/dvb-usb-v2/af9015.c", i32 885, i32 28}
!232 = !{ptr @af9015_af9013_frontend_attach.__UNIQUE_ID_ddebug418, !233, !"__UNIQUE_ID_ddebug418", i1 false, i1 false}
!233 = !{!"../drivers/media/usb/dvb-usb-v2/af9015.c", i32 915, i32 2}
!234 = !{ptr @.str.130, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../drivers/media/usb/dvb-usb-v2/af9015.c", i32 772, i32 2}
!236 = !{ptr @af9015_copy_firmware.__UNIQUE_ID_ddebug412, !235, !"__UNIQUE_ID_ddebug412", i1 false, i1 false}
!237 = !{ptr @.str.131, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../drivers/media/usb/dvb-usb-v2/af9015.c", i32 784, i32 2}
!239 = !{ptr @af9015_copy_firmware.__UNIQUE_ID_ddebug413, !238, !"__UNIQUE_ID_ddebug413", i1 false, i1 false}
!240 = !{ptr @.str.132, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../drivers/media/usb/dvb-usb-v2/af9015.c", i32 797, i32 3}
!242 = !{ptr @af9015_copy_firmware._entry, !241, !"_entry", i1 false, i1 false}
!243 = !{ptr @af9015_copy_firmware._entry_ptr, !241, !"_entry_ptr", i1 false, i1 false}
!244 = !{ptr @af9015_copy_firmware.__UNIQUE_ID_ddebug414, !245, !"__UNIQUE_ID_ddebug414", i1 false, i1 false}
!245 = !{!"../drivers/media/usb/dvb-usb-v2/af9015.c", i32 822, i32 3}
!246 = !{ptr @.str.133, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../drivers/media/usb/dvb-usb-v2/af9015.c", i32 825, i32 2}
!248 = !{ptr @af9015_copy_firmware.__UNIQUE_ID_ddebug415, !247, !"__UNIQUE_ID_ddebug415", i1 false, i1 false}
!249 = !{ptr @.str.135, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../drivers/media/usb/dvb-usb-v2/af9015.c", i32 830, i32 3}
!251 = !{ptr @af9015_copy_firmware._entry.134, !250, !"_entry", i1 false, i1 false}
!252 = !{ptr @af9015_copy_firmware._entry_ptr.136, !250, !"_entry_ptr", i1 false, i1 false}
!253 = !{ptr @.str.138, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../drivers/media/usb/dvb-usb-v2/af9015.c", i32 834, i32 3}
!255 = !{ptr @af9015_copy_firmware._entry.137, !254, !"_entry", i1 false, i1 false}
!256 = !{ptr @af9015_copy_firmware._entry_ptr.139, !254, !"_entry_ptr", i1 false, i1 false}
!257 = !{ptr @af9015_copy_firmware.__UNIQUE_ID_ddebug416, !258, !"__UNIQUE_ID_ddebug416", i1 false, i1 false}
!258 = !{!"../drivers/media/usb/dvb-usb-v2/af9015.c", i32 840, i32 2}
!259 = !{ptr @.str.140, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../drivers/media/usb/dvb-usb-v2/af9015.c", i32 926, i32 2}
!261 = !{ptr @af9015_frontend_detach.__UNIQUE_ID_ddebug419, !260, !"__UNIQUE_ID_ddebug419", i1 false, i1 false}
!262 = !{ptr @.str.141, !263, !"<string literal>", i1 false, i1 false}
!263 = !{!"../drivers/media/usb/dvb-usb-v2/af9015.c", i32 1007, i32 2}
!264 = !{ptr @af9015_tuner_attach.__UNIQUE_ID_ddebug420, !263, !"__UNIQUE_ID_ddebug420", i1 false, i1 false}
!265 = !{ptr @.str.142, !266, !"<string literal>", i1 false, i1 false}
!266 = !{!"../drivers/media/usb/dvb-usb-v2/af9015.c", i32 1015, i32 9}
!267 = !{ptr @.str.143, !266, !"<string literal>", i1 false, i1 false}
!268 = !{ptr @.str.144, !266, !"<string literal>", i1 false, i1 false}
!269 = !{ptr @af9015_tuner_attach._entry, !266, !"_entry", i1 false, i1 false}
!270 = !{ptr @af9015_tuner_attach._entry_ptr, !266, !"_entry_ptr", i1 false, i1 false}
!271 = !{ptr @.str.145, !272, !"<string literal>", i1 false, i1 false}
!272 = !{!"../drivers/media/usb/dvb-usb-v2/af9015.c", i32 1021, i32 9}
!273 = !{ptr @.str.146, !272, !"<string literal>", i1 false, i1 false}
!274 = !{ptr @.str.148, !272, !"<string literal>", i1 false, i1 false}
!275 = !{ptr @af9015_tuner_attach._entry.147, !272, !"_entry", i1 false, i1 false}
!276 = !{ptr @af9015_tuner_attach._entry_ptr.149, !272, !"_entry_ptr", i1 false, i1 false}
!277 = !{ptr @.str.150, !278, !"<string literal>", i1 false, i1 false}
!278 = !{!"../drivers/media/usb/dvb-usb-v2/af9015.c", i32 1025, i32 9}
!279 = !{ptr @.str.151, !278, !"<string literal>", i1 false, i1 false}
!280 = !{ptr @.str.153, !278, !"<string literal>", i1 false, i1 false}
!281 = !{ptr @af9015_tuner_attach._entry.152, !278, !"_entry", i1 false, i1 false}
!282 = !{ptr @af9015_tuner_attach._entry_ptr.154, !278, !"_entry_ptr", i1 false, i1 false}
!283 = !{ptr @.str.155, !284, !"<string literal>", i1 false, i1 false}
!284 = !{!"../drivers/media/usb/dvb-usb-v2/af9015.c", i32 1029, i32 9}
!285 = !{ptr @.str.156, !284, !"<string literal>", i1 false, i1 false}
!286 = !{ptr @.str.158, !284, !"<string literal>", i1 false, i1 false}
!287 = !{ptr @af9015_tuner_attach._entry.157, !284, !"_entry", i1 false, i1 false}
!288 = !{ptr @af9015_tuner_attach._entry_ptr.159, !284, !"_entry_ptr", i1 false, i1 false}
!289 = !{ptr @.str.160, !290, !"<string literal>", i1 false, i1 false}
!290 = !{!"../drivers/media/usb/dvb-usb-v2/af9015.c", i32 1033, i32 9}
!291 = !{ptr @.str.161, !290, !"<string literal>", i1 false, i1 false}
!292 = !{ptr @.str.163, !290, !"<string literal>", i1 false, i1 false}
!293 = !{ptr @af9015_tuner_attach._entry.162, !290, !"_entry", i1 false, i1 false}
!294 = !{ptr @af9015_tuner_attach._entry_ptr.164, !290, !"_entry_ptr", i1 false, i1 false}
!295 = !{ptr @af9015_tuner_attach._entry.165, !296, !"_entry", i1 false, i1 false}
!296 = !{!"../drivers/media/usb/dvb-usb-v2/af9015.c", i32 1038, i32 9}
!297 = !{ptr @af9015_tuner_attach._entry_ptr.166, !296, !"_entry_ptr", i1 false, i1 false}
!298 = !{ptr @.str.167, !299, !"<string literal>", i1 false, i1 false}
!299 = !{!"../drivers/media/usb/dvb-usb-v2/af9015.c", i32 1042, i32 9}
!300 = !{ptr @.str.168, !299, !"<string literal>", i1 false, i1 false}
!301 = !{ptr @.str.170, !299, !"<string literal>", i1 false, i1 false}
!302 = !{ptr @af9015_tuner_attach._entry.169, !299, !"_entry", i1 false, i1 false}
!303 = !{ptr @af9015_tuner_attach._entry_ptr.171, !299, !"_entry_ptr", i1 false, i1 false}
!304 = !{ptr @.str.172, !305, !"<string literal>", i1 false, i1 false}
!305 = !{!"../drivers/media/usb/dvb-usb-v2/af9015.c", i32 1046, i32 9}
!306 = !{ptr @.str.173, !305, !"<string literal>", i1 false, i1 false}
!307 = !{ptr @.str.175, !305, !"<string literal>", i1 false, i1 false}
!308 = !{ptr @af9015_tuner_attach._entry.174, !305, !"_entry", i1 false, i1 false}
!309 = !{ptr @af9015_tuner_attach._entry_ptr.176, !305, !"_entry_ptr", i1 false, i1 false}
!310 = !{ptr @.str.177, !311, !"<string literal>", i1 false, i1 false}
!311 = !{!"../drivers/media/usb/dvb-usb-v2/af9015.c", i32 1050, i32 9}
!312 = !{ptr @.str.178, !311, !"<string literal>", i1 false, i1 false}
!313 = !{ptr @.str.180, !311, !"<string literal>", i1 false, i1 false}
!314 = !{ptr @af9015_tuner_attach._entry.179, !311, !"_entry", i1 false, i1 false}
!315 = !{ptr @af9015_tuner_attach._entry_ptr.181, !311, !"_entry_ptr", i1 false, i1 false}
!316 = !{ptr @.str.183, !317, !"<string literal>", i1 false, i1 false}
!317 = !{!"../drivers/media/usb/dvb-usb-v2/af9015.c", i32 1055, i32 3}
!318 = !{ptr @af9015_tuner_attach._entry.182, !317, !"_entry", i1 false, i1 false}
!319 = !{ptr @af9015_tuner_attach._entry_ptr.184, !317, !"_entry_ptr", i1 false, i1 false}
!320 = !{ptr @af9015_mt2060_config, !321, !"af9015_mt2060_config", i1 false, i1 false}
!321 = !{!"../drivers/media/usb/dvb-usb-v2/af9015.c", i32 935, i32 29}
!322 = !{ptr @af9015_qt1010_config, !323, !"af9015_qt1010_config", i1 false, i1 false}
!323 = !{!"../drivers/media/usb/dvb-usb-v2/af9015.c", i32 940, i32 29}
!324 = !{ptr @af9015_tda18271_config, !325, !"af9015_tda18271_config", i1 false, i1 false}
!325 = !{!"../drivers/media/usb/dvb-usb-v2/af9015.c", i32 944, i32 31}
!326 = !{ptr @af9015_tda18218_config, !327, !"af9015_tda18218_config", i1 false, i1 false}
!327 = !{!"../drivers/media/usb/dvb-usb-v2/af9015.c", i32 988, i32 31}
!328 = !{ptr @af9015_mxl5003_config, !329, !"af9015_mxl5003_config", i1 false, i1 false}
!329 = !{!"../drivers/media/usb/dvb-usb-v2/af9015.c", i32 949, i32 31}
!330 = !{ptr @af9015_mxl5005_config, !331, !"af9015_mxl5005_config", i1 false, i1 false}
!331 = !{!"../drivers/media/usb/dvb-usb-v2/af9015.c", i32 966, i32 31}
!332 = !{ptr @af9015_mc44s803_config, !333, !"af9015_mc44s803_config", i1 false, i1 false}
!333 = !{!"../drivers/media/usb/dvb-usb-v2/af9015.c", i32 983, i32 31}
!334 = !{ptr @af9015_mxl5007t_config, !335, !"af9015_mxl5007t_config", i1 false, i1 false}
!335 = !{!"../drivers/media/usb/dvb-usb-v2/af9015.c", i32 993, i32 31}
!336 = !{ptr @.str.185, !337, !"<string literal>", i1 false, i1 false}
!337 = !{!"../drivers/media/usb/dvb-usb-v2/af9015.c", i32 562, i32 2}
!338 = !{ptr @.str.186, !337, !"<string literal>", i1 false, i1 false}
!339 = !{ptr @af9015_streaming_ctrl.__UNIQUE_ID_ddebug409, !337, !"__UNIQUE_ID_ddebug409", i1 false, i1 false}
!340 = !{ptr @.str.187, !341, !"<string literal>", i1 false, i1 false}
!341 = !{!"../drivers/media/usb/dvb-usb-v2/af9015.c", i32 565, i32 3}
!342 = !{ptr @af9015_streaming_ctrl.__UNIQUE_ID_ddebug410, !341, !"__UNIQUE_ID_ddebug410", i1 false, i1 false}
!343 = !{ptr @af9015_streaming_ctrl.__UNIQUE_ID_ddebug411, !344, !"__UNIQUE_ID_ddebug411", i1 false, i1 false}
!344 = !{!"../drivers/media/usb/dvb-usb-v2/af9015.c", i32 655, i32 2}
!345 = !{ptr @.str.188, !346, !"<string literal>", i1 false, i1 false}
!346 = !{!"../drivers/media/usb/dvb-usb-v2/af9015.c", i32 1108, i32 2}
!347 = !{ptr @af9015_init.__UNIQUE_ID_ddebug421, !346, !"__UNIQUE_ID_ddebug421", i1 false, i1 false}
!348 = !{ptr @af9015_init.__key, !349, !"__key", i1 false, i1 false}
!349 = !{!"../drivers/media/usb/dvb-usb-v2/af9015.c", i32 1110, i32 2}
!350 = !{ptr @.str.189, !349, !"<string literal>", i1 false, i1 false}
!351 = !{ptr @.str.190, !352, !"<string literal>", i1 false, i1 false}
!352 = !{!"../drivers/media/usb/dvb-usb-v2/af9015.c", i32 1270, i32 15}
!353 = !{ptr @.str.191, !354, !"<string literal>", i1 false, i1 false}
!354 = !{!"../drivers/media/usb/dvb-usb-v2/af9015.c", i32 1282, i32 18}
!355 = !{ptr @.str.192, !356, !"<string literal>", i1 false, i1 false}
!356 = !{!"../drivers/media/usb/dvb-usb-v2/af9015.c", i32 1137, i32 32}
!357 = !{ptr @.str.193, !358, !"<string literal>", i1 false, i1 false}
!358 = !{!"../drivers/media/usb/dvb-usb-v2/af9015.c", i32 1138, i32 42}
!359 = !{ptr @.str.194, !360, !"<string literal>", i1 false, i1 false}
!360 = !{!"../drivers/media/usb/dvb-usb-v2/af9015.c", i32 1139, i32 32}
!361 = !{ptr @.str.195, !362, !"<string literal>", i1 false, i1 false}
!362 = !{!"../drivers/media/usb/dvb-usb-v2/af9015.c", i32 1140, i32 36}
!363 = !{ptr @.str.196, !364, !"<string literal>", i1 false, i1 false}
!364 = !{!"../drivers/media/usb/dvb-usb-v2/af9015.c", i32 1141, i32 32}
!365 = distinct !{null, !366, !"af9015_rc_setup_modparam", i1 false, i1 false}
!366 = !{!"../drivers/media/usb/dvb-usb-v2/af9015.c", i32 1136, i32 37}
!367 = distinct !{null, !368, !"af9015_rc_setup_hashes", i1 false, i1 false}
!368 = !{!"../drivers/media/usb/dvb-usb-v2/af9015.c", i32 1145, i32 37}
!369 = !{ptr @.str.197, !370, !"<string literal>", i1 false, i1 false}
!370 = !{!"../drivers/media/usb/dvb-usb-v2/af9015.c", i32 1167, i32 3}
!371 = !{ptr @.str.198, !370, !"<string literal>", i1 false, i1 false}
!372 = !{ptr @af9015_rc_query.__UNIQUE_ID_ddebug422, !370, !"__UNIQUE_ID_ddebug422", i1 false, i1 false}
!373 = !{ptr @.str.199, !374, !"<string literal>", i1 false, i1 false}
!374 = !{!"../drivers/media/usb/dvb-usb-v2/af9015.c", i32 1174, i32 3}
!375 = !{ptr @af9015_rc_query.__UNIQUE_ID_ddebug423, !374, !"__UNIQUE_ID_ddebug423", i1 false, i1 false}
!376 = !{ptr @.str.200, !377, !"<string literal>", i1 false, i1 false}
!377 = !{!"../drivers/media/usb/dvb-usb-v2/af9015.c", i32 1184, i32 3}
!378 = !{ptr @af9015_rc_query.__UNIQUE_ID_ddebug424, !377, !"__UNIQUE_ID_ddebug424", i1 false, i1 false}
!379 = !{ptr @.str.201, !380, !"<string literal>", i1 false, i1 false}
!380 = !{!"../drivers/media/usb/dvb-usb-v2/af9015.c", i32 1216, i32 3}
!381 = !{ptr @af9015_rc_query.__UNIQUE_ID_ddebug425, !380, !"__UNIQUE_ID_ddebug425", i1 false, i1 false}
!382 = !{ptr @.str.202, !383, !"<string literal>", i1 false, i1 false}
!383 = !{!"../drivers/media/usb/dvb-usb-v2/af9015.c", i32 1227, i32 3}
!384 = !{ptr @.str.203, !383, !"<string literal>", i1 false, i1 false}
!385 = !{ptr @af9015_rc_query._entry, !383, !"_entry", i1 false, i1 false}
!386 = !{ptr @af9015_rc_query._entry_ptr, !383, !"_entry_ptr", i1 false, i1 false}
!387 = !{ptr @.str.204, !388, !"<string literal>", i1 false, i1 false}
!388 = !{!"../drivers/media/usb/dvb-usb-v2/af9015.c", i32 544, i32 2}
!389 = !{ptr @.str.205, !388, !"<string literal>", i1 false, i1 false}
!390 = !{ptr @af9015_get_stream_config.__UNIQUE_ID_ddebug408, !388, !"__UNIQUE_ID_ddebug408", i1 false, i1 false}
!391 = !{i32 1, !"wchar_size", i32 2}
!392 = !{i32 1, !"min_enum_size", i32 4}
!393 = !{i32 8, !"branch-target-enforcement", i32 0}
!394 = !{i32 8, !"sign-return-address", i32 0}
!395 = !{i32 8, !"sign-return-address-all", i32 0}
!396 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!397 = !{i32 7, !"uwtable", i32 1}
!398 = !{i32 7, !"frame-pointer", i32 2}
!399 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!400 = !{i64 2148910100, i64 2148910105, i64 2148910118, i64 2148910162, i64 2148910196, i64 2148910217}
!401 = !{!"auto-init"}
!402 = !{i8 0, i8 2}
