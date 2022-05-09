; ModuleID = '/llk/IR_all_yes/drivers/media/usb/dvb-usb-v2/af9035.c_pt.bc'
source_filename = "../drivers/media/usb/dvb-usb-v2/af9035.c"
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
%struct.atomic_t = type { i32 }
%struct.dvb_usb_driver_info = type { ptr, ptr, ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.127 = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.fc0011_config = type { i8 }
%struct.mxl5007t_config = type { i32, i32, i32, i32, i8 }
%struct.tda18218_config = type { i8, i8, i8 }
%struct.fc0012_config = type { i8, i32, i8, i8, i8 }
%struct.address_table = type { i8, i8, i8 }
%struct.usb_interface = type { ptr, ptr, i32, ptr, i32, i32, i8, %struct.device, ptr, %struct.work_struct }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.usb_req = type { i8, i8, i8, ptr, i8, ptr }
%struct.dvb_usb_device = type { ptr, ptr, ptr, i8, ptr, ptr, %struct.dvb_usb_rc, i32, %struct.mutex, %struct.mutex, %struct.i2c_adapter, [2 x %struct.dvb_usb_adapter], ptr, [64 x i8], %struct.delayed_work, ptr }
%struct.dvb_usb_rc = type { ptr, i64, ptr, ptr, i32, i32, i8, i32 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.dvb_usb_adapter = type { ptr, %struct.usb_data_stream, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dvb_adapter, %struct.dmxdev, %struct.dvb_demux, %struct.dvb_net, [3 x ptr], [3 x ptr], [3 x ptr] }
%struct.usb_data_stream = type { ptr, %struct.usb_data_stream_properties, i8, ptr, [10 x ptr], i32, i32, [10 x ptr], [10 x i32], i32, i32, ptr }
%struct.usb_data_stream_properties = type { i8, i8, i8, %union.anon.126 }
%union.anon.126 = type { %struct.anon.128 }
%struct.anon.128 = type { i32, i32, i32 }
%struct.dvb_adapter = type { i32, %struct.list_head, %struct.list_head, ptr, [6 x i8], ptr, ptr, ptr, i32, ptr, %struct.mutex, %struct.mutex, ptr, ptr, ptr }
%struct.dmxdev = type { ptr, ptr, ptr, ptr, i32, i32, i8, ptr, %struct.dvb_ringbuffer, %struct.dvb_vb2_ctx, %struct.mutex, %struct.spinlock }
%struct.dvb_ringbuffer = type { ptr, i32, i32, i32, i32, %struct.wait_queue_head, %struct.spinlock }
%struct.dvb_vb2_ctx = type { %struct.vb2_queue, %struct.mutex, %struct.spinlock, %struct.list_head, ptr, i32, i32, i32, i32, i32, i32, i32, i32, [21 x i8] }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.dvb_demux = type { %struct.dmx_demux, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, %struct.list_head, [20 x ptr], [20 x i16], %struct.list_head, [204 x i8], i32, %struct.mutex, %struct.spinlock, ptr, i64, i32, i32, i32 }
%struct.dmx_demux = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_net = type { ptr, [10 x ptr], [10 x i32], i8, ptr, %struct.mutex }
%struct.state = type { [64 x i8], i8, i8, i8, i16, [256 x i8], i8, i8, i8, i8, [2 x i8], i8, [2 x %struct.af9033_config], %struct.af9033_ops, [4 x ptr], ptr, [2 x ptr] }
%struct.af9033_config = type { i32, i8, i8, i8, i8, i8, ptr, ptr, ptr }
%struct.af9033_ops = type { ptr, ptr }
%struct.firmware = type { i32, ptr, ptr }
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
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, [3 x %struct.anon.142], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats }
%struct.anon.142 = type { i8, i32, i32, i8 }
%struct.dtv_fe_stats = type { i8, [4 x %struct.dtv_stats] }
%struct.dtv_stats = type <{ i8, %union.anon.143 }>
%union.anon.143 = type { i64 }
%struct.platform_device_info = type { ptr, ptr, i8, ptr, i32, ptr, i32, ptr, i32, i64, ptr }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.tua9001_platform_data = type { ptr }
%struct.fc2580_platform_data = type { i32, ptr, ptr }
%struct.it913x_platform_data = type { ptr, ptr, i8 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.reg_val_mask = type { i32, i8, i8 }
%struct.i2c_board_info = type { [20 x i8], i16, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32 }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
%struct.si2168_config = type { ptr, ptr, i8, i8 }
%struct.si2157_config = type { ptr, ptr, i8, i8 }

@__param_str_adapter_nr = internal constant [26 x i8] c"dvb_usb_af9035.adapter_nr\00", align 1
@param_array_ops = external dso_local constant %struct.kernel_param_ops, align 4
@__param_arr_adapter_nr = internal constant %struct.kparam_array { i32 16, i32 2, ptr null, ptr @param_ops_short, ptr @adapter_nr }, align 4
@__param_adapter_nr = internal constant %struct.kernel_param { ptr @__param_str_adapter_nr, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.101 { ptr @__param_arr_adapter_nr } }, section "__param", align 4
@__UNIQUE_ID_adapter_nrtype388 = internal constant [50 x i8] c"dvb_usb_af9035.parmtype=adapter_nr:array of short\00", section ".modinfo", align 1
@__UNIQUE_ID_adapter_nr389 = internal constant [51 x i8] c"dvb_usb_af9035.parm=adapter_nr:DVB adapter numbers\00", section ".modinfo", align 1
@__initcall__kmod_dvb_usb_af9035__437_2175_af9035_usb_driver_init6 = internal global ptr @af9035_usb_driver_init, section ".initcall6.init", align 4
@af9035_usb_driver = internal global { %struct.usb_driver, [44 x i8] } { %struct.usb_driver { ptr @.str, ptr @af9035_probe, ptr @dvb_usbv2_disconnect, ptr null, ptr @dvb_usbv2_suspend, ptr @dvb_usbv2_resume, ptr @dvb_usbv2_reset_resume, ptr null, ptr null, ptr @af9035_id_table, ptr null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 -112 }, [44 x i8] zeroinitializer }, align 32
@__exitcall_af9035_usb_driver_exit = internal global ptr @af9035_usb_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author438 = internal constant [53 x i8] c"dvb_usb_af9035.author=Antti Palosaari <crope@iki.fi>\00", section ".modinfo", align 1
@__UNIQUE_ID_description439 = internal constant [49 x i8] c"dvb_usb_af9035.description=Afatech AF9035 driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file440 = internal constant [64 x i8] c"dvb_usb_af9035.file=drivers/media/usb/dvb-usb-v2/dvb-usb-af9035\00", section ".modinfo", align 1
@__UNIQUE_ID_license441 = internal constant [27 x i8] c"dvb_usb_af9035.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware442 = internal constant [45 x i8] c"dvb_usb_af9035.firmware=dvb-usb-af9035-02.fw\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware443 = internal constant [45 x i8] c"dvb_usb_af9035.firmware=dvb-usb-it9135-01.fw\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware444 = internal constant [45 x i8] c"dvb_usb_af9035.firmware=dvb-usb-it9135-02.fw\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware445 = internal constant [45 x i8] c"dvb_usb_af9035.firmware=dvb-usb-it9303-01.fw\00", section ".modinfo", align 1
@param_ops_short = external dso_local constant %struct.kernel_param_ops, align 4
@adapter_nr = internal global { [16 x i16], [32 x i8] } { [16 x i16] [i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1], [32 x i8] zeroinitializer }, align 32
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"dvb_usb_af9035\00", [17 x i8] zeroinitializer }, align 32
@af9035_id_table = internal constant { [38 x %struct.usb_device_id], [240 x i8] } { [38 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 5540, i16 -28619, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral to i32) }, %struct.usb_device_id { i16 3, i16 5540, i16 4096, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.6 to i32) }, %struct.usb_device_id { i16 3, i16 5540, i16 4097, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.7 to i32) }, %struct.usb_device_id { i16 3, i16 5540, i16 4098, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.8 to i32) }, %struct.usb_device_id { i16 3, i16 5540, i16 4099, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.9 to i32) }, %struct.usb_device_id { i16 3, i16 3277, i16 147, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.11 to i32) }, %struct.usb_device_id { i16 3, i16 1994, i16 -22475, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.13 to i32) }, %struct.usb_device_id { i16 3, i16 1994, i16 -18379, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.14 to i32) }, %struct.usb_device_id { i16 3, i16 1994, i16 6247, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.16 to i32) }, %struct.usb_device_id { i16 3, i16 1994, i16 -22425, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.17 to i32) }, %struct.usb_device_id { i16 3, i16 1994, i16 2085, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.19 to i32) }, %struct.usb_device_id { i16 3, i16 2821, i16 6009, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.21 to i32) }, %struct.usb_device_id { i16 3, i16 3277, i16 170, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.23 to i32) }, %struct.usb_device_id { i16 3, i16 1994, i16 823, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.24 to i32) }, %struct.usb_device_id { i16 3, i16 8013, i16 -24299, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.26 to i32) }, %struct.usb_device_id { i16 3, i16 1165, i16 -28363, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.29 to i32) }, %struct.usb_device_id { i16 3, i16 1165, i16 -28667, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.32 to i32) }, %struct.usb_device_id { i16 3, i16 1165, i16 -28666, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.34 to i32) }, %struct.usb_device_id { i16 3, i16 1994, i16 6197, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.36 to i32) }, %struct.usb_device_id { i16 3, i16 1994, i16 10293, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.38 to i32) }, %struct.usb_device_id { i16 3, i16 1994, i16 14389, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.40 to i32) }, %struct.usb_device_id { i16 3, i16 1994, i16 18485, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.42 to i32) }, %struct.usb_device_id { i16 3, i16 1994, i16 -24304, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.45 to i32) }, %struct.usb_device_id { i16 3, i16 1994, i16 821, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.47 to i32) }, %struct.usb_device_id { i16 3, i16 7040, i16 -7159, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.49 to i32) }, %struct.usb_device_id { i16 3, i16 7040, i16 -7151, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.51 to i32) }, %struct.usb_device_id { i16 3, i16 7040, i16 -7152, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.53 to i32) }, %struct.usb_device_id { i16 3, i16 3277, i16 4270, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.55 to i32) }, %struct.usb_device_id { i16 3, i16 3277, i16 153, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.57 to i32) }, %struct.usb_device_id { i16 3, i16 1043, i16 27141, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.59 to i32) }, %struct.usb_device_id { i16 3, i16 8256, i16 -1792, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.61 to i32) }, %struct.usb_device_id { i16 3, i16 8211, i16 602, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.63 to i32) }, %struct.usb_device_id { i16 3, i16 8211, i16 610, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.65 to i32) }, %struct.usb_device_id { i16 3, i16 1165, i16 -27898, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.67 to i32) }, %struct.usb_device_id { i16 3, i16 1994, i16 6257, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.69 to i32) }, %struct.usb_device_id { i16 3, i16 7449, i16 256, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.71 to i32) }, %struct.usb_device_id { i16 3, i16 3277, i16 4274, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.73 to i32) }, %struct.usb_device_id zeroinitializer], [240 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Afatech\00", [24 x i8] zeroinitializer }, align 32
@af9035_probe.__UNIQUE_ID_ddebug436 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.2, ptr @.str.3, ptr @.str.4, i8 1, i8 -15, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"af9035_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/media/usb/dvb-usb-v2/af9035.c\00", [58 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"rejecting device\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Afatech AF9035 reference design\00", [32 x i8] zeroinitializer }, align 32
@.compoundliteral = internal constant { %struct.dvb_usb_driver_info, [20 x i8] } { %struct.dvb_usb_driver_info { ptr @.str.5, ptr null, ptr @af9035_props }, [20 x i8] zeroinitializer }, align 32
@.compoundliteral.6 = internal constant { %struct.dvb_usb_driver_info, [20 x i8] } { %struct.dvb_usb_driver_info { ptr @.str.5, ptr null, ptr @af9035_props }, [20 x i8] zeroinitializer }, align 32
@.compoundliteral.7 = internal constant { %struct.dvb_usb_driver_info, [20 x i8] } { %struct.dvb_usb_driver_info { ptr @.str.5, ptr null, ptr @af9035_props }, [20 x i8] zeroinitializer }, align 32
@.compoundliteral.8 = internal constant { %struct.dvb_usb_driver_info, [20 x i8] } { %struct.dvb_usb_driver_info { ptr @.str.5, ptr null, ptr @af9035_props }, [20 x i8] zeroinitializer }, align 32
@.compoundliteral.9 = internal constant { %struct.dvb_usb_driver_info, [20 x i8] } { %struct.dvb_usb_driver_info { ptr @.str.5, ptr null, ptr @af9035_props }, [20 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"TerraTec Cinergy T Stick\00", [39 x i8] zeroinitializer }, align 32
@.compoundliteral.11 = internal constant { %struct.dvb_usb_driver_info, [20 x i8] } { %struct.dvb_usb_driver_info { ptr @.str.10, ptr null, ptr @af9035_props }, [20 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"AVerMedia AVerTV Volar HD/PRO (A835)\00", [59 x i8] zeroinitializer }, align 32
@.compoundliteral.13 = internal constant { %struct.dvb_usb_driver_info, [20 x i8] } { %struct.dvb_usb_driver_info { ptr @.str.12, ptr null, ptr @af9035_props }, [20 x i8] zeroinitializer }, align 32
@.compoundliteral.14 = internal constant { %struct.dvb_usb_driver_info, [20 x i8] } { %struct.dvb_usb_driver_info { ptr @.str.12, ptr null, ptr @af9035_props }, [20 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"AVerMedia HD Volar (A867)\00", [38 x i8] zeroinitializer }, align 32
@.compoundliteral.16 = internal constant { %struct.dvb_usb_driver_info, [20 x i8] } { %struct.dvb_usb_driver_info { ptr @.str.15, ptr null, ptr @af9035_props }, [20 x i8] zeroinitializer }, align 32
@.compoundliteral.17 = internal constant { %struct.dvb_usb_driver_info, [20 x i8] } { %struct.dvb_usb_driver_info { ptr @.str.15, ptr null, ptr @af9035_props }, [20 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"AVerMedia Twinstar (A825)\00", [38 x i8] zeroinitializer }, align 32
@.compoundliteral.19 = internal constant { %struct.dvb_usb_driver_info, [20 x i8] } { %struct.dvb_usb_driver_info { ptr @.str.18, ptr null, ptr @af9035_props }, [20 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Asus U3100Mini Plus\00", [44 x i8] zeroinitializer }, align 32
@.compoundliteral.21 = internal constant { %struct.dvb_usb_driver_info, [20 x i8] } { %struct.dvb_usb_driver_info { ptr @.str.20, ptr null, ptr @af9035_props }, [20 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"TerraTec Cinergy T Stick (rev. 2)\00", [62 x i8] zeroinitializer }, align 32
@.compoundliteral.23 = internal constant { %struct.dvb_usb_driver_info, [20 x i8] } { %struct.dvb_usb_driver_info { ptr @.str.22, ptr null, ptr @af9035_props }, [20 x i8] zeroinitializer }, align 32
@.compoundliteral.24 = internal constant { %struct.dvb_usb_driver_info, [20 x i8] } { %struct.dvb_usb_driver_info { ptr @.str.15, ptr null, ptr @af9035_props }, [20 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"EVOLVEO XtraTV stick\00", [43 x i8] zeroinitializer }, align 32
@.compoundliteral.26 = internal constant { %struct.dvb_usb_driver_info, [20 x i8] } { %struct.dvb_usb_driver_info { ptr @.str.25, ptr null, ptr @af9035_props }, [20 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ITE 9135 Generic\00", [47 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"rc-it913x-v1\00", [19 x i8] zeroinitializer }, align 32
@.compoundliteral.29 = internal constant { %struct.dvb_usb_driver_info, [20 x i8] } { %struct.dvb_usb_driver_info { ptr @.str.27, ptr @.str.28, ptr @af9035_props }, [20 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ITE 9135(9005) Generic\00", [41 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"rc-it913x-v2\00", [19 x i8] zeroinitializer }, align 32
@.compoundliteral.32 = internal constant { %struct.dvb_usb_driver_info, [20 x i8] } { %struct.dvb_usb_driver_info { ptr @.str.30, ptr @.str.31, ptr @af9035_props }, [20 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ITE 9135(9006) Generic\00", [41 x i8] zeroinitializer }, align 32
@.compoundliteral.34 = internal constant { %struct.dvb_usb_driver_info, [20 x i8] } { %struct.dvb_usb_driver_info { ptr @.str.33, ptr @.str.28, ptr @af9035_props }, [20 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Avermedia A835B(1835)\00", [42 x i8] zeroinitializer }, align 32
@.compoundliteral.36 = internal constant { %struct.dvb_usb_driver_info, [20 x i8] } { %struct.dvb_usb_driver_info { ptr @.str.35, ptr @.str.31, ptr @af9035_props }, [20 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Avermedia A835B(2835)\00", [42 x i8] zeroinitializer }, align 32
@.compoundliteral.38 = internal constant { %struct.dvb_usb_driver_info, [20 x i8] } { %struct.dvb_usb_driver_info { ptr @.str.37, ptr @.str.31, ptr @af9035_props }, [20 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Avermedia A835B(3835)\00", [42 x i8] zeroinitializer }, align 32
@.compoundliteral.40 = internal constant { %struct.dvb_usb_driver_info, [20 x i8] } { %struct.dvb_usb_driver_info { ptr @.str.39, ptr @.str.31, ptr @af9035_props }, [20 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Avermedia A835B(4835)\00", [42 x i8] zeroinitializer }, align 32
@.compoundliteral.42 = internal constant { %struct.dvb_usb_driver_info, [20 x i8] } { %struct.dvb_usb_driver_info { ptr @.str.41, ptr @.str.31, ptr @af9035_props }, [20 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Avermedia AverTV Volar HD 2 (TD110)\00", [60 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"rc-avermedia-rm-ks\00", [45 x i8] zeroinitializer }, align 32
@.compoundliteral.45 = internal constant { %struct.dvb_usb_driver_info, [20 x i8] } { %struct.dvb_usb_driver_info { ptr @.str.43, ptr @.str.44, ptr @af9035_props }, [20 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Avermedia H335\00", [17 x i8] zeroinitializer }, align 32
@.compoundliteral.47 = internal constant { %struct.dvb_usb_driver_info, [20 x i8] } { %struct.dvb_usb_driver_info { ptr @.str.46, ptr @.str.31, ptr @af9035_props }, [20 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Kworld UB499-2T T09\00", [44 x i8] zeroinitializer }, align 32
@.compoundliteral.49 = internal constant { %struct.dvb_usb_driver_info, [20 x i8] } { %struct.dvb_usb_driver_info { ptr @.str.48, ptr @.str.28, ptr @af9035_props }, [20 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Sveon STV22 Dual DVB-T HDTV\00", [36 x i8] zeroinitializer }, align 32
@.compoundliteral.51 = internal constant { %struct.dvb_usb_driver_info, [20 x i8] } { %struct.dvb_usb_driver_info { ptr @.str.50, ptr @.str.28, ptr @af9035_props }, [20 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Digital Dual TV Receiver CTVDIGDUAL_V2\00", [57 x i8] zeroinitializer }, align 32
@.compoundliteral.53 = internal constant { %struct.dvb_usb_driver_info, [20 x i8] } { %struct.dvb_usb_driver_info { ptr @.str.52, ptr @.str.28, ptr @af9035_props }, [20 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"TerraTec T1\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.55 = internal constant { %struct.dvb_usb_driver_info, [20 x i8] } { %struct.dvb_usb_driver_info { ptr @.str.54, ptr @.str.28, ptr @af9035_props }, [20 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"TerraTec Cinergy T Stick Dual RC (rev. 2)\00", [54 x i8] zeroinitializer }, align 32
@.compoundliteral.57 = internal constant { %struct.dvb_usb_driver_info, [20 x i8] } { %struct.dvb_usb_driver_info { ptr @.str.56, ptr null, ptr @af9035_props }, [20 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Leadtek WinFast DTV Dongle Dual\00", [32 x i8] zeroinitializer }, align 32
@.compoundliteral.59 = internal constant { %struct.dvb_usb_driver_info, [20 x i8] } { %struct.dvb_usb_driver_info { ptr @.str.58, ptr null, ptr @af9035_props }, [20 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Hauppauge WinTV-MiniStick 2\00", [36 x i8] zeroinitializer }, align 32
@.compoundliteral.61 = internal constant { %struct.dvb_usb_driver_info, [20 x i8] } { %struct.dvb_usb_driver_info { ptr @.str.60, ptr null, ptr @af9035_props }, [20 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"PCTV AndroiDTV (78e)\00", [43 x i8] zeroinitializer }, align 32
@.compoundliteral.63 = internal constant { %struct.dvb_usb_driver_info, [20 x i8] } { %struct.dvb_usb_driver_info { ptr @.str.62, ptr @.str.28, ptr @af9035_props }, [20 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"PCTV microStick (79e)\00", [42 x i8] zeroinitializer }, align 32
@.compoundliteral.65 = internal constant { %struct.dvb_usb_driver_info, [20 x i8] } { %struct.dvb_usb_driver_info { ptr @.str.64, ptr @.str.31, ptr @af9035_props }, [20 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ITE 9303 Generic\00", [47 x i8] zeroinitializer }, align 32
@.compoundliteral.67 = internal constant { %struct.dvb_usb_driver_info, [20 x i8] } { %struct.dvb_usb_driver_info { ptr @.str.66, ptr null, ptr @it930x_props }, [20 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"AVerMedia TD310 DVB-T2\00", [41 x i8] zeroinitializer }, align 32
@.compoundliteral.69 = internal constant { %struct.dvb_usb_driver_info, [20 x i8] } { %struct.dvb_usb_driver_info { ptr @.str.68, ptr null, ptr @it930x_props }, [20 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Logilink VG0022A\00", [47 x i8] zeroinitializer }, align 32
@.compoundliteral.71 = internal constant { %struct.dvb_usb_driver_info, [20 x i8] } { %struct.dvb_usb_driver_info { ptr @.str.70, ptr null, ptr @it930x_props }, [20 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"TerraTec Cinergy TC2 Stick\00", [37 x i8] zeroinitializer }, align 32
@.compoundliteral.73 = internal constant { %struct.dvb_usb_driver_info, [20 x i8] } { %struct.dvb_usb_driver_info { ptr @.str.72, ptr null, ptr @it930x_props }, [20 x i8] zeroinitializer }, align 32
@af9035_i2c_algo = internal global { %struct.i2c_algorithm, [36 x i8] } { %struct.i2c_algorithm { ptr @af9035_i2c_master_xfer, ptr null, ptr null, ptr null, ptr @af9035_i2c_functionality, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@af9035_props = internal constant { { ptr, ptr, ptr, i8, i32, i8, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, [2 x { i8, i8, ptr, ptr, { i8, i8, i8, { %struct.anon.127, [8 x i8] } } }], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }, [56 x i8] } { { ptr, ptr, ptr, i8, i32, i8, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, [2 x { i8, i8, ptr, ptr, { i8, i8, i8, { %struct.anon.127, [8 x i8] } } }], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @.str, ptr null, ptr @adapter_nr, i8 0, i32 420, i8 2, i8 -127, i32 0, ptr null, ptr null, ptr @af9035_identify_state, ptr null, ptr @af9035_download_firmware, ptr @af9035_i2c_algo, i32 0, ptr @af9035_get_adapter_count, [2 x { i8, i8, ptr, ptr, { i8, i8, i8, { %struct.anon.127, [8 x i8] } } }] [{ i8, i8, ptr, ptr, { i8, i8, i8, { %struct.anon.127, [8 x i8] } } } { i8 3, i8 32, ptr @af9035_pid_filter_ctrl, ptr @af9035_pid_filter, { i8, i8, i8, { %struct.anon.127, [8 x i8] } } { i8 1, i8 6, i8 -124, { %struct.anon.127, [8 x i8] } { %struct.anon.127 { i32 16356 }, [8 x i8] undef } } }, { i8, i8, ptr, ptr, { i8, i8, i8, { %struct.anon.127, [8 x i8] } } } { i8 3, i8 32, ptr @af9035_pid_filter_ctrl, ptr @af9035_pid_filter, { i8, i8, i8, { %struct.anon.127, [8 x i8] } } { i8 1, i8 6, i8 -123, { %struct.anon.127, [8 x i8] } { %struct.anon.127 { i32 16356 }, [8 x i8] undef } } }], ptr null, ptr @af9035_read_config, ptr null, ptr @af9035_frontend_attach, ptr @af9035_frontend_detach, ptr @af9035_tuner_attach, ptr @af9035_tuner_detach, ptr null, ptr null, ptr @af9035_init, ptr null, ptr @af9035_get_rc_config, ptr @af9035_get_stream_config }, [56 x i8] zeroinitializer }, align 32
@af9035_identify_state._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.76, ptr @.str.3, i32 503, ptr @.str.77, ptr @.str.78 }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"prechip_version=%02x chip_version=%02x chip_type=%04x\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"af9035_identify_state\00", [42 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@af9035_identify_state._entry_ptr = internal global ptr @af9035_identify_state._entry, section ".printk_index", align 4
@.str.79 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"dvb-usb-it9135-02.fw\00", [43 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"dvb-usb-it9135-01.fw\00", [43 x i8] zeroinitializer }, align 32
@af9035_identify_state.__UNIQUE_ID_ddebug395 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.76, ptr @.str.3, ptr @.str.81, i8 0, i8 -126, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.81 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"no eeprom\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"dvb-usb-it9303-01.fw\00", [43 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"dvb-usb-af9035-02.fw\00", [43 x i8] zeroinitializer }, align 32
@af9035_identify_state.__UNIQUE_ID_ddebug396 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.76, ptr @.str.3, ptr @.str.84, i8 0, i8 -121, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.84 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"eeprom dump:\0A\00", [18 x i8] zeroinitializer }, align 32
@af9035_identify_state.__UNIQUE_ID_ddebug397 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.76, ptr @.str.3, ptr @.str.85, i8 0, i8 -120, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.85 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%*ph\0A\00", [26 x i8] zeroinitializer }, align 32
@af9035_identify_state.__UNIQUE_ID_ddebug398 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.76, ptr @.str.3, ptr @.str.86, i8 0, i8 -115, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.86 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ts mode=%d dual mode=%d\0A\00", [39 x i8] zeroinitializer }, align 32
@af9035_identify_state._entry.87 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.88, ptr @.str.76, ptr @.str.3, i32 569, ptr @.str.77, ptr @.str.78 }, [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"ts mode=%d not supported, defaulting to single tuner mode!\00", [37 x i8] zeroinitializer }, align 32
@af9035_identify_state._entry_ptr.89 = internal global ptr @af9035_identify_state._entry.87, section ".printk_index", align 4
@af9035_identify_state.__UNIQUE_ID_ddebug399 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.76, ptr @.str.3, ptr @.str.90, i8 0, i8 -112, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.90 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"reply=%*ph\0A\00", [20 x i8] zeroinitializer }, align 32
@af9035_identify_state.__UNIQUE_ID_ddebug400 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.76, ptr @.str.3, ptr @.str.91, i8 0, i8 -110, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.91 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"failed=%d\0A\00", [21 x i8] zeroinitializer }, align 32
@af9035_ctrl_msg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.92, ptr @.str.93, ptr @.str.3, i32 49, ptr @.str.94, ptr @.str.78 }, [40 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"too much data wlen=%d rlen=%d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"af9035_ctrl_msg\00", [16 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@af9035_ctrl_msg._entry_ptr = internal global ptr @af9035_ctrl_msg._entry, section ".printk_index", align 4
@af9035_ctrl_msg._entry.95 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.96, ptr @.str.93, ptr @.str.3, i32 86, ptr @.str.94, ptr @.str.78 }, [40 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"command=%02x checksum mismatch (%04x != %04x)\0A\00", [49 x i8] zeroinitializer }, align 32
@af9035_ctrl_msg._entry_ptr.97 = internal global ptr @af9035_ctrl_msg._entry.95, section ".printk_index", align 4
@af9035_ctrl_msg.__UNIQUE_ID_ddebug390 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.93, ptr @.str.3, ptr @.str.98, i8 0, i8 25, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.98 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"command=%02x failed fw error=%d\0A\00", [63 x i8] zeroinitializer }, align 32
@af9035_download_firmware.__UNIQUE_ID_ddebug407 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.99, ptr @.str.3, ptr @.str.100, i8 0, i8 -73, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.99 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"af9035_download_firmware\00", [39 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@af9035_download_firmware._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.101, ptr @.str.99, ptr @.str.3, i32 804, ptr @.str.94, ptr @.str.78 }, [40 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"firmware did not run\0A\00", [42 x i8] zeroinitializer }, align 32
@af9035_download_firmware._entry_ptr = internal global ptr @af9035_download_firmware._entry, section ".printk_index", align 4
@af9035_download_firmware._entry.102 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.103, ptr @.str.99, ptr @.str.3, i32 810, ptr @.str.77, ptr @.str.78 }, [40 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"firmware version=%d.%d.%d.%d\00", [35 x i8] zeroinitializer }, align 32
@af9035_download_firmware._entry_ptr.104 = internal global ptr @af9035_download_firmware._entry.102, section ".printk_index", align 4
@af9035_download_firmware.__UNIQUE_ID_ddebug408 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.99, ptr @.str.3, ptr @.str.91, i8 0, i8 -53, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@af9035_wr_regs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.105, ptr @.str.106, ptr @.str.3, i32 122, ptr @.str.107, ptr @.str.78 }, [40 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"i2c wr: len=%d is too big!\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"af9035_wr_regs\00", [17 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@af9035_wr_regs._entry_ptr = internal global ptr @af9035_wr_regs._entry, section ".printk_index", align 4
@af9035_download_firmware_old.__UNIQUE_ID_ddebug401 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.108, ptr @.str.3, ptr @.str.109, i8 0, i8 -100, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.108 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"af9035_download_firmware_old\00", [35 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"core=%d addr=%04x data_len=%d checksum=%04x\0A\00", [51 x i8] zeroinitializer }, align 32
@af9035_download_firmware_old.__UNIQUE_ID_ddebug402 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.108, ptr @.str.3, ptr @.str.110, i8 0, i8 -99, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.110 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"bad firmware\0A\00", [18 x i8] zeroinitializer }, align 32
@af9035_download_firmware_old.__UNIQUE_ID_ddebug403 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.108, ptr @.str.3, ptr @.str.111, i8 0, i8 -91, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.111 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"data uploaded=%zu\0A\00", [45 x i8] zeroinitializer }, align 32
@af9035_download_firmware_old._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.110, ptr @.str.108, ptr @.str.3, i32 665, ptr @.str.107, ptr @.str.78 }, [40 x i8] zeroinitializer }, align 32
@af9035_download_firmware_old._entry_ptr = internal global ptr @af9035_download_firmware_old._entry, section ".printk_index", align 4
@af9035_download_firmware_old.__UNIQUE_ID_ddebug404 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.108, ptr @.str.3, ptr @.str.91, i8 0, i8 -89, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@__const.af9035_download_firmware_new.req_fw_dl = private unnamed_addr constant { i8, i8, i8, [1 x i8], ptr, i8, [3 x i8], ptr } { i8 41, i8 0, i8 0, [1 x i8] zeroinitializer, ptr null, i8 0, [3 x i8] zeroinitializer, ptr null }, align 4
@af9035_download_firmware_new.__UNIQUE_ID_ddebug405 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.112, ptr @.str.3, ptr @.str.113, i8 0, i8 -79, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.112 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"af9035_download_firmware_new\00", [35 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"data uploaded=%d\0A\00", [46 x i8] zeroinitializer }, align 32
@af9035_download_firmware_new.__UNIQUE_ID_ddebug406 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.112, ptr @.str.3, ptr @.str.91, i8 0, i8 -78, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@af9035_read_config.__UNIQUE_ID_ddebug409 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.116, ptr @.str.3, ptr @.str.117, i8 0, i8 -36, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.116 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"af9035_read_config\00", [45 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"2nd demod I2C addr=%02x\0A\00", [39 x i8] zeroinitializer }, align 32
@af9035_read_config.__UNIQUE_ID_ddebug410 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.116, ptr @.str.3, ptr @.str.118, i8 0, i8 -34, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.118 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"[%d]tuner=%02x\0A\00", [16 x i8] zeroinitializer }, align 32
@af9035_read_config._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.119, ptr @.str.116, ptr @.str.3, i32 918, ptr @.str.77, ptr @.str.78 }, [40 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"[%d] overriding tuner from %02x to %02x\0A\00", [55 x i8] zeroinitializer }, align 32
@af9035_read_config._entry_ptr = internal global ptr @af9035_read_config._entry, section ".printk_index", align 4
@af9035_read_config._entry.120 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.121, ptr @.str.116, ptr @.str.3, i32 939, ptr @.str.107, ptr @.str.78 }, [40 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"tuner id=%02x not supported, please report!\00", [52 x i8] zeroinitializer }, align 32
@af9035_read_config._entry_ptr.122 = internal global ptr @af9035_read_config._entry.120, section ".printk_index", align 4
@af9035_read_config._entry.123 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.124, ptr @.str.116, ptr @.str.3, i32 956, ptr @.str.77, ptr @.str.78 }, [40 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"driver does not support 2nd tuner and will disable it\00", [42 x i8] zeroinitializer }, align 32
@af9035_read_config._entry_ptr.125 = internal global ptr @af9035_read_config._entry.123, section ".printk_index", align 4
@af9035_read_config.__UNIQUE_ID_ddebug411 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.116, ptr @.str.3, ptr @.str.126, i8 0, i8 -15, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.126 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"[%d]IF=%d\0A\00", [21 x i8] zeroinitializer }, align 32
@clock_lut_it9135 = internal constant { [10 x i32], [56 x i8] } { [10 x i32] [i32 12000000, i32 20480000, i32 36000000, i32 30000000, i32 26000000, i32 28000000, i32 32000000, i32 34000000, i32 24000000, i32 22000000], [56 x i8] zeroinitializer }, align 32
@clock_lut_af9035 = internal constant { [12 x i32], [48 x i8] } { [12 x i32] [i32 20480000, i32 16384000, i32 20480000, i32 36000000, i32 30000000, i32 26000000, i32 28000000, i32 32000000, i32 34000000, i32 24000000, i32 22000000, i32 12000000], [48 x i8] zeroinitializer }, align 32
@af9035_read_config._entry.127 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.128, ptr @.str.116, ptr @.str.3, i32 993, ptr @.str.77, ptr @.str.78 }, [40 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"Device may have issues with I2C read operations. Enabling fix.\0A\00", [32 x i8] zeroinitializer }, align 32
@af9035_read_config._entry_ptr.129 = internal global ptr @af9035_read_config._entry.127, section ".printk_index", align 4
@af9035_read_config.__UNIQUE_ID_ddebug412 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.116, ptr @.str.3, ptr @.str.91, i8 0, i8 -6, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@af9035_frontend_attach.__UNIQUE_ID_ddebug417 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.130, ptr @.str.3, ptr @.str.131, i8 1, i8 36, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.130 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"af9035_frontend_attach\00", [41 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"adap->id=%d\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"af9033\00", [25 x i8] zeroinitializer }, align 32
@af9035_frontend_attach.__UNIQUE_ID_ddebug418 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.130, ptr @.str.3, ptr @.str.91, i8 1, i8 43, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@af9035_add_i2c_dev.__UNIQUE_ID_ddebug391 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.133, ptr @.str.3, ptr @.str.134, i8 0, i8 50, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.133 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"af9035_add_i2c_dev\00", [45 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"num=%d\0A\00", [24 x i8] zeroinitializer }, align 32
@af9035_add_i2c_dev._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.135, ptr @.str.133, ptr @.str.3, i32 203, ptr @.str.94, ptr @.str.78 }, [40 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"I2C client out of index\0A\00", [39 x i8] zeroinitializer }, align 32
@af9035_add_i2c_dev._entry_ptr = internal global ptr @af9035_add_i2c_dev._entry, section ".printk_index", align 4
@.str.136 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@af9035_add_i2c_dev._entry.137 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.138, ptr @.str.133, ptr @.str.3, i32 213, ptr @.str.94, ptr @.str.78 }, [40 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"failed to bind i2c device to %s driver\0A\00", [56 x i8] zeroinitializer }, align 32
@af9035_add_i2c_dev._entry_ptr.139 = internal global ptr @af9035_add_i2c_dev._entry.137, section ".printk_index", align 4
@af9035_add_i2c_dev.__UNIQUE_ID_ddebug392 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.133, ptr @.str.3, ptr @.str.91, i8 0, i8 57, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@af9035_frontend_callback.__UNIQUE_ID_ddebug416 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.140, ptr @.str.3, ptr @.str.141, i8 1, i8 29, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.140 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"af9035_frontend_callback\00", [39 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"component=%d cmd=%d arg=%d\0A\00", [36 x i8] zeroinitializer }, align 32
@af9035_fc0011_tuner_callback.__UNIQUE_ID_ddebug415 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.142, ptr @.str.3, ptr @.str.91, i8 1, i8 22, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.142 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"af9035_fc0011_tuner_callback\00", [35 x i8] zeroinitializer }, align 32
@af9035_tua9001_tuner_callback.__UNIQUE_ID_ddebug413 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.143, ptr @.str.3, ptr @.str.144, i8 0, i8 -3, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.143 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"af9035_tua9001_tuner_callback\00", [34 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"cmd=%d arg=%d\0A\00", [17 x i8] zeroinitializer }, align 32
@af9035_tua9001_tuner_callback.__UNIQUE_ID_ddebug414 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.143, ptr @.str.3, ptr @.str.91, i8 1, i8 5, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@af9035_frontend_detach.__UNIQUE_ID_ddebug421 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.145, ptr @.str.3, ptr @.str.131, i8 1, i8 68, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.145 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"af9035_frontend_detach\00", [41 x i8] zeroinitializer }, align 32
@af9035_del_i2c_dev.__UNIQUE_ID_ddebug393 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.146, ptr @.str.3, ptr @.str.134, i8 0, i8 61, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.146 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"af9035_del_i2c_dev\00", [45 x i8] zeroinitializer }, align 32
@af9035_del_i2c_dev._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.135, ptr @.str.146, ptr @.str.3, i32 249, ptr @.str.94, ptr @.str.78 }, [40 x i8] zeroinitializer }, align 32
@af9035_del_i2c_dev._entry_ptr = internal global ptr @af9035_del_i2c_dev._entry, section ".printk_index", align 4
@af9035_del_i2c_dev.__UNIQUE_ID_ddebug394 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.146, ptr @.str.3, ptr @.str.147, i8 0, i8 66, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.147 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"failed\0A\00", [24 x i8] zeroinitializer }, align 32
@af9035_tuner_attach.__UNIQUE_ID_ddebug422 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.148, ptr @.str.3, ptr @.str.131, i8 1, i8 84, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.148 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"af9035_tuner_attach\00", [44 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"tua9001\00", [24 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"fc0011_attach\00", [18 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"symbol:fc0011_attach\00", [43 x i8] zeroinitializer }, align 32
@af9035_fc0011_config = internal constant { %struct.fc0011_config, [31 x i8] } { %struct.fc0011_config { i8 96 }, [31 x i8] zeroinitializer }, align 32
@af9035_tuner_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.152, ptr @.str.148, ptr @.str.3, i32 1406, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013DVB: Unable to find symbol fc0011_attach()\0A\00", [50 x i8] zeroinitializer }, align 32
@af9035_tuner_attach._entry_ptr = internal global ptr @af9035_tuner_attach._entry, section ".printk_index", align 4
@.str.153 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"mxl5007t_attach\00", [16 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"symbol:mxl5007t_attach\00", [41 x i8] zeroinitializer }, align 32
@af9035_mxl5007t_config = internal global { [2 x %struct.mxl5007t_config], [56 x i8] } { [2 x %struct.mxl5007t_config] [%struct.mxl5007t_config { i32 0, i32 0, i32 4, i32 2, i8 0 }, %struct.mxl5007t_config { i32 0, i32 0, i32 4, i32 2, i8 96 }], [56 x i8] zeroinitializer }, align 32
@af9035_tuner_attach._entry.155 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.156, ptr @.str.148, ptr @.str.3, i32 1461, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013DVB: Unable to find symbol mxl5007t_attach()\0A\00", [48 x i8] zeroinitializer }, align 32
@af9035_tuner_attach._entry_ptr.157 = internal global ptr @af9035_tuner_attach._entry.155, section ".printk_index", align 4
@.str.158 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"tda18218_attach\00", [16 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"symbol:tda18218_attach\00", [41 x i8] zeroinitializer }, align 32
@af9035_tda18218_config = internal global { %struct.tda18218_config, [29 x i8] } { %struct.tda18218_config { i8 96, i8 21, i8 0 }, [29 x i8] zeroinitializer }, align 32
@af9035_tuner_attach._entry.160 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.161, ptr @.str.148, ptr @.str.3, i32 1466, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013DVB: Unable to find symbol tda18218_attach()\0A\00", [48 x i8] zeroinitializer }, align 32
@af9035_tuner_attach._entry_ptr.162 = internal global ptr @af9035_tuner_attach._entry.160, section ".printk_index", align 4
@.str.163 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"fc2580\00", [25 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\0D\02\00", [29 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"fc0012_attach\00", [18 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"symbol:fc0012_attach\00", [43 x i8] zeroinitializer }, align 32
@af9035_fc0012_config = internal constant { [2 x %struct.fc0012_config], [40 x i8] } { [2 x %struct.fc0012_config] [%struct.fc0012_config { i8 99, i32 2, i8 1, i8 1, i8 1 }, %struct.fc0012_config { i8 -29, i32 2, i8 1, i8 0, i8 0 }], [40 x i8] zeroinitializer }, align 32
@af9035_tuner_attach._entry.167 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.168, ptr @.str.148, ptr @.str.3, i32 1534, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013DVB: Unable to find symbol fc0012_attach()\0A\00", [50 x i8] zeroinitializer }, align 32
@af9035_tuner_attach._entry_ptr.169 = internal global ptr @af9035_tuner_attach._entry.167, section ".printk_index", align 4
@.str.170 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"it9133ax-tuner\00", [17 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"it9133bx-tuner\00", [17 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"it913x\00", [25 x i8] zeroinitializer }, align 32
@af9035_tuner_attach.__UNIQUE_ID_ddebug423 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.148, ptr @.str.3, ptr @.str.91, i8 1, i8 -111, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@af9035_tuner_detach.__UNIQUE_ID_ddebug427 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.173, ptr @.str.3, ptr @.str.131, i8 1, i8 -91, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.173 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"af9035_tuner_detach\00", [44 x i8] zeroinitializer }, align 32
@af9035_init.__UNIQUE_ID_ddebug428 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.174, ptr @.str.3, ptr @.str.175, i8 1, i8 -75, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.174 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"af9035_init\00", [20 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"USB speed=%d frame_size=%04x packet_size=%02x\0A\00", [49 x i8] zeroinitializer }, align 32
@af9035_init.__UNIQUE_ID_ddebug429 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.174, ptr @.str.3, ptr @.str.91, i8 1, i8 -72, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@af9035_get_rc_config.__UNIQUE_ID_ddebug434 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.176, ptr @.str.3, ptr @.str.177, i8 1, i8 -37, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.176 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"af9035_get_rc_config\00", [43 x i8] zeroinitializer }, align 32
@.str.177 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"ir_mode=%02x ir_type=%02x\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.178 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"rc-empty\00", [23 x i8] zeroinitializer }, align 32
@af9035_rc_query.__UNIQUE_ID_ddebug432 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.179, ptr @.str.3, ptr @.str.85, i8 1, i8 -42, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.179 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"af9035_rc_query\00", [16 x i8] zeroinitializer }, align 32
@af9035_rc_query.__UNIQUE_ID_ddebug433 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.179, ptr @.str.3, ptr @.str.91, i8 1, i8 -40, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@af9035_get_stream_config.__UNIQUE_ID_ddebug435 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.180, ptr @.str.3, ptr @.str.181, i8 1, i8 -28, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.180 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"af9035_get_stream_config\00", [39 x i8] zeroinitializer }, align 32
@.str.181 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"adap=%d\0A\00", [23 x i8] zeroinitializer }, align 32
@it930x_props = internal constant { { ptr, ptr, ptr, i8, i32, i8, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, [2 x { i8, i8, ptr, ptr, { i8, i8, i8, { %struct.anon.127, [8 x i8] } } }], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }, [56 x i8] } { { ptr, ptr, ptr, i8, i32, i8, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, [2 x { i8, i8, ptr, ptr, { i8, i8, i8, { %struct.anon.127, [8 x i8] } } }], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @.str, ptr null, ptr @adapter_nr, i8 0, i32 420, i8 2, i8 -127, i32 0, ptr null, ptr null, ptr @af9035_identify_state, ptr null, ptr @af9035_download_firmware, ptr @af9035_i2c_algo, i32 0, ptr @af9035_get_adapter_count, [2 x { i8, i8, ptr, ptr, { i8, i8, i8, { %struct.anon.127, [8 x i8] } } }] [{ i8, i8, ptr, ptr, { i8, i8, i8, { %struct.anon.127, [8 x i8] } } } { i8 0, i8 0, ptr null, ptr null, { i8, i8, i8, { %struct.anon.127, [8 x i8] } } { i8 1, i8 4, i8 -124, { %struct.anon.127, [8 x i8] } { %struct.anon.127 { i32 153408 }, [8 x i8] undef } } }, { i8, i8, ptr, ptr, { i8, i8, i8, { %struct.anon.127, [8 x i8] } } } { i8 0, i8 0, ptr null, ptr null, { i8, i8, i8, { %struct.anon.127, [8 x i8] } } { i8 1, i8 4, i8 -123, { %struct.anon.127, [8 x i8] } { %struct.anon.127 { i32 153408 }, [8 x i8] undef } } }], ptr null, ptr @af9035_read_config, ptr null, ptr @it930x_frontend_attach, ptr @af9035_frontend_detach, ptr @it930x_tuner_attach, ptr @it930x_tuner_detach, ptr null, ptr null, ptr @it930x_init, ptr null, ptr null, ptr @af9035_get_stream_config }, [56 x i8] zeroinitializer }, align 32
@it930x_frontend_attach.__UNIQUE_ID_ddebug419 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.183, ptr @.str.3, ptr @.str.131, i8 1, i8 48, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.183 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"it930x_frontend_attach\00", [41 x i8] zeroinitializer }, align 32
@.str.184 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"si2168\00", [25 x i8] zeroinitializer }, align 32
@it930x_addresses_table = internal constant { [2 x %struct.address_table], [26 x i8] } { [2 x %struct.address_table] [%struct.address_table { i8 103, i8 99, i8 1 }, %struct.address_table { i8 100, i8 96, i8 0 }], [26 x i8] zeroinitializer }, align 32
@it930x_frontend_attach.__UNIQUE_ID_ddebug420 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.183, ptr @.str.3, ptr @.str.91, i8 1, i8 65, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@it930x_tuner_attach.__UNIQUE_ID_ddebug424 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.185, ptr @.str.3, ptr @.str.131, i8 1, i8 -108, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.185 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"it930x_tuner_attach\00", [44 x i8] zeroinitializer }, align 32
@.str.186 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"si2157\00", [25 x i8] zeroinitializer }, align 32
@it930x_tuner_attach.__UNIQUE_ID_ddebug425 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.185, ptr @.str.3, ptr @.str.91, i8 1, i8 -99, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@it930x_tuner_detach.__UNIQUE_ID_ddebug426 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.187, ptr @.str.3, ptr @.str.131, i8 1, i8 -96, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.187 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"it930x_tuner_detach\00", [44 x i8] zeroinitializer }, align 32
@it930x_init.__UNIQUE_ID_ddebug430 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.188, ptr @.str.3, ptr @.str.175, i8 1, i8 -55, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.188 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"it930x_init\00", [20 x i8] zeroinitializer }, align 32
@it930x_init.__UNIQUE_ID_ddebug431 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.188, ptr @.str.3, ptr @.str.91, i8 1, i8 -51, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 37173, i64 37638]
@__sancov_gen_cov_switch_values.189 = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 1, i64 3, i64 5]
@__sancov_gen_cov_switch_values.190 = internal global [4 x i64] [i64 2, i64 16, i64 37173, i64 37638]
@__sancov_gen_cov_switch_values.191 = internal global [4 x i64] [i64 2, i64 16, i64 37173, i64 37638]
@__sancov_gen_cov_switch_values.192 = internal global [4 x i64] [i64 2, i64 16, i64 37173, i64 37638]
@__sancov_gen_cov_switch_values.193 = internal global [5 x i64] [i64 3, i64 8, i64 56, i64 81, i64 82]
@__sancov_gen_cov_switch_values.194 = internal global [14 x i64] [i64 12, i64 8, i64 39, i64 40, i64 46, i64 50, i64 56, i64 81, i64 82, i64 96, i64 97, i64 98, i64 160, i64 161]
@__sancov_gen_cov_switch_values.195 = internal global [10 x i64] [i64 8, i64 8, i64 46, i64 56, i64 81, i64 82, i64 96, i64 97, i64 98, i64 160]
@__sancov_gen_cov_switch_values.196 = internal global [4 x i64] [i64 2, i64 16, i64 2085, i64 43111]
@__sancov_gen_cov_switch_values.197 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.198 = internal global [14 x i64] [i64 12, i64 8, i64 39, i64 40, i64 46, i64 50, i64 56, i64 81, i64 82, i64 96, i64 97, i64 98, i64 160, i64 161]
@__sancov_gen_cov_switch_values.199 = internal global [8 x i64] [i64 6, i64 8, i64 56, i64 81, i64 82, i64 96, i64 97, i64 98]
@__sancov_gen_cov_switch_values.200 = internal global [10 x i64] [i64 8, i64 8, i64 39, i64 50, i64 56, i64 81, i64 82, i64 96, i64 97, i64 98]
@__sancov_gen_cov_switch_values.201 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.202 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.203 = internal global [4 x i64] [i64 2, i64 16, i64 1, i64 2]
@__sancov_gen_cov_switch_values.204 = internal global [4 x i64] [i64 2, i64 8, i64 39, i64 40]
@__sancov_gen_cov_switch_values.205 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.206 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.207 = internal global [4 x i64] [i64 2, i64 16, i64 6429, i64 52492]
@__sancov_gen_cov_switch_values.208 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@___asan_gen_.209 = private unnamed_addr constant [18 x i8] c"af9035_usb_driver\00", align 1
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.727, i32 2163, i32 26 }
@___asan_gen_.212 = private unnamed_addr constant [11 x i8] c"adapter_nr\00", align 1
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.727, i32 14, i32 1 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.727, i32 2175, i32 1 }
@___asan_gen_.218 = private unnamed_addr constant [16 x i8] c"af9035_id_table\00", align 1
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.727, i32 2075, i32 35 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.727, i32 1987, i32 15 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.727, i32 1988, i32 4 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.727, i32 2077, i32 4 }
@___asan_gen_.236 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.237 = private unnamed_addr constant [19 x i8] c".compoundliteral.6\00", align 1
@___asan_gen_.238 = private unnamed_addr constant [19 x i8] c".compoundliteral.7\00", align 1
@___asan_gen_.239 = private unnamed_addr constant [19 x i8] c".compoundliteral.8\00", align 1
@___asan_gen_.240 = private unnamed_addr constant [19 x i8] c".compoundliteral.9\00", align 1
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.727, i32 2087, i32 4 }
@___asan_gen_.244 = private unnamed_addr constant [20 x i8] c".compoundliteral.11\00", align 1
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.727, i32 2089, i32 4 }
@___asan_gen_.248 = private unnamed_addr constant [20 x i8] c".compoundliteral.13\00", align 1
@___asan_gen_.249 = private unnamed_addr constant [20 x i8] c".compoundliteral.14\00", align 1
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.727, i32 2093, i32 4 }
@___asan_gen_.253 = private unnamed_addr constant [20 x i8] c".compoundliteral.16\00", align 1
@___asan_gen_.254 = private unnamed_addr constant [20 x i8] c".compoundliteral.17\00", align 1
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.727, i32 2097, i32 4 }
@___asan_gen_.258 = private unnamed_addr constant [20 x i8] c".compoundliteral.19\00", align 1
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.727, i32 2099, i32 4 }
@___asan_gen_.262 = private unnamed_addr constant [20 x i8] c".compoundliteral.21\00", align 1
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.727, i32 2101, i32 4 }
@___asan_gen_.266 = private unnamed_addr constant [20 x i8] c".compoundliteral.23\00", align 1
@___asan_gen_.267 = private unnamed_addr constant [20 x i8] c".compoundliteral.24\00", align 1
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.727, i32 2105, i32 10 }
@___asan_gen_.271 = private unnamed_addr constant [20 x i8] c".compoundliteral.26\00", align 1
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.727, i32 2109, i32 4 }
@___asan_gen_.278 = private unnamed_addr constant [20 x i8] c".compoundliteral.29\00", align 1
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.727, i32 2111, i32 4 }
@___asan_gen_.285 = private unnamed_addr constant [20 x i8] c".compoundliteral.32\00", align 1
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.727, i32 2113, i32 4 }
@___asan_gen_.289 = private unnamed_addr constant [20 x i8] c".compoundliteral.34\00", align 1
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.727, i32 2115, i32 4 }
@___asan_gen_.293 = private unnamed_addr constant [20 x i8] c".compoundliteral.36\00", align 1
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.727, i32 2117, i32 4 }
@___asan_gen_.297 = private unnamed_addr constant [20 x i8] c".compoundliteral.38\00", align 1
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.727, i32 2119, i32 4 }
@___asan_gen_.301 = private unnamed_addr constant [20 x i8] c".compoundliteral.40\00", align 1
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.727, i32 2121, i32 4 }
@___asan_gen_.305 = private unnamed_addr constant [20 x i8] c".compoundliteral.42\00", align 1
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.727, i32 2123, i32 4 }
@___asan_gen_.312 = private unnamed_addr constant [20 x i8] c".compoundliteral.45\00", align 1
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.727, i32 2125, i32 4 }
@___asan_gen_.316 = private unnamed_addr constant [20 x i8] c".compoundliteral.47\00", align 1
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.727, i32 2127, i32 4 }
@___asan_gen_.320 = private unnamed_addr constant [20 x i8] c".compoundliteral.49\00", align 1
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.727, i32 2129, i32 4 }
@___asan_gen_.324 = private unnamed_addr constant [20 x i8] c".compoundliteral.51\00", align 1
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.727, i32 2132, i32 4 }
@___asan_gen_.328 = private unnamed_addr constant [20 x i8] c".compoundliteral.53\00", align 1
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.727, i32 2135, i32 4 }
@___asan_gen_.332 = private unnamed_addr constant [20 x i8] c".compoundliteral.55\00", align 1
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.727, i32 2138, i32 4 }
@___asan_gen_.336 = private unnamed_addr constant [20 x i8] c".compoundliteral.57\00", align 1
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.727, i32 2141, i32 4 }
@___asan_gen_.340 = private unnamed_addr constant [20 x i8] c".compoundliteral.59\00", align 1
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.727, i32 2143, i32 4 }
@___asan_gen_.344 = private unnamed_addr constant [20 x i8] c".compoundliteral.61\00", align 1
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.727, i32 2145, i32 4 }
@___asan_gen_.348 = private unnamed_addr constant [20 x i8] c".compoundliteral.63\00", align 1
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.727, i32 2147, i32 4 }
@___asan_gen_.352 = private unnamed_addr constant [20 x i8] c".compoundliteral.65\00", align 1
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.727, i32 2151, i32 4 }
@___asan_gen_.356 = private unnamed_addr constant [20 x i8] c".compoundliteral.67\00", align 1
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.727, i32 2153, i32 4 }
@___asan_gen_.360 = private unnamed_addr constant [20 x i8] c".compoundliteral.69\00", align 1
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.727, i32 2155, i32 4 }
@___asan_gen_.364 = private unnamed_addr constant [20 x i8] c".compoundliteral.71\00", align 1
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.727, i32 2157, i32 4 }
@___asan_gen_.368 = private unnamed_addr constant [20 x i8] c".compoundliteral.73\00", align 1
@___asan_gen_.369 = private unnamed_addr constant [16 x i8] c"af9035_i2c_algo\00", align 1
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.727, i32 474, i32 29 }
@___asan_gen_.372 = private unnamed_addr constant [13 x i8] c"af9035_props\00", align 1
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.727, i32 1998, i32 47 }
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.727, i32 502, i32 2 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.727, i32 507, i32 12 }
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.727, i32 510, i32 12 }
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.727, i32 520, i32 4 }
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.727, i32 527, i32 11 }
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.727, i32 531, i32 11 }
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.727, i32 542, i32 2 }
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.727, i32 544, i32 3 }
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.727, i32 566, i32 2 }
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.727, i32 569, i32 3 }
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.727, i32 576, i32 2 }
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.727, i32 585, i32 2 }
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.727, i32 48, i32 3 }
@___asan_gen_.443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.727, i32 85, i32 3 }
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.727, i32 99, i32 3 }
@___asan_gen_.452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.727, i32 732, i32 2 }
@___asan_gen_.458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.727, i32 804, i32 3 }
@___asan_gen_.464 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.727, i32 809, i32 2 }
@___asan_gen_.476 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.727, i32 122, i32 3 }
@___asan_gen_.482 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.727, i32 624, i32 3 }
@___asan_gen_.485 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.727, i32 629, i32 4 }
@___asan_gen_.488 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.727, i32 660, i32 3 }
@___asan_gen_.491 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.727, i32 665, i32 3 }
@___asan_gen_.497 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.727, i32 708, i32 4 }
@___asan_gen_.503 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.727, i32 879, i32 3 }
@___asan_gen_.506 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.727, i32 888, i32 3 }
@___asan_gen_.512 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.727, i32 917, i32 4 }
@___asan_gen_.518 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.727, i32 938, i32 4 }
@___asan_gen_.524 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.727, i32 956, i32 5 }
@___asan_gen_.527 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.727, i32 964, i32 3 }
@___asan_gen_.528 = private unnamed_addr constant [17 x i8] c"clock_lut_it9135\00", align 1
@___asan_gen_.530 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 94, i32 18 }
@___asan_gen_.531 = private unnamed_addr constant [17 x i8] c"clock_lut_af9035\00", align 1
@___asan_gen_.533 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 79, i32 18 }
@___asan_gen_.539 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.727, i32 992, i32 4 }
@___asan_gen_.545 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.727, i32 1169, i32 2 }
@___asan_gen_.548 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.727, i32 1179, i32 30 }
@___asan_gen_.554 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.727, i32 200, i32 2 }
@___asan_gen_.560 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.727, i32 203, i32 3 }
@___asan_gen_.563 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.727, i32 208, i32 2 }
@___asan_gen_.569 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.727, i32 213, i32 3 }
@___asan_gen_.575 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.727, i32 1142, i32 2 }
@___asan_gen_.578 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.727, i32 1114, i32 2 }
@___asan_gen_.584 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.727, i32 1013, i32 2 }
@___asan_gen_.587 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.727, i32 1296, i32 2 }
@___asan_gen_.590 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.727, i32 246, i32 2 }
@___asan_gen_.593 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.727, i32 249, i32 3 }
@___asan_gen_.596 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.727, i32 264, i32 2 }
@___asan_gen_.599 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.727, i32 1360, i32 2 }
@___asan_gen_.602 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.727, i32 1396, i32 31 }
@___asan_gen_.609 = private unnamed_addr constant [21 x i8] c"af9035_fc0011_config\00", align 1
@___asan_gen_.611 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.727, i32 1309, i32 35 }
@___asan_gen_.617 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.727, i32 1405, i32 8 }
@___asan_gen_.624 = private unnamed_addr constant [23 x i8] c"af9035_mxl5007t_config\00", align 1
@___asan_gen_.626 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.727, i32 1313, i32 31 }
@___asan_gen_.632 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.727, i32 1460, i32 8 }
@___asan_gen_.639 = private unnamed_addr constant [23 x i8] c"af9035_tda18218_config\00", align 1
@___asan_gen_.641 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.727, i32 1331, i32 31 }
@___asan_gen_.647 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.727, i32 1465, i32 8 }
@___asan_gen_.650 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.727, i32 1488, i32 31 }
@___asan_gen_.653 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.727, i32 1525, i32 17 }
@___asan_gen_.660 = private unnamed_addr constant [21 x i8] c"af9035_fc0012_config\00", align 1
@___asan_gen_.662 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.727, i32 1336, i32 35 }
@___asan_gen_.663 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.668 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.727, i32 1533, i32 8 }
@___asan_gen_.671 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.727, i32 1554, i32 11 }
@___asan_gen_.674 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.727, i32 1559, i32 11 }
@___asan_gen_.677 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.727, i32 1575, i32 3 }
@___asan_gen_.680 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.727, i32 1686, i32 2 }
@___asan_gen_.686 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.727, i32 1748, i32 2 }
@___asan_gen_.692 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.727, i32 1900, i32 2 }
@___asan_gen_.695 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.727, i32 1921, i32 19 }
@___asan_gen_.698 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.727, i32 1883, i32 2 }
@___asan_gen_.704 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.727, i32 1936, i32 2 }
@___asan_gen_.705 = private unnamed_addr constant [13 x i8] c"it930x_props\00", align 1
@___asan_gen_.707 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.727, i32 2044, i32 47 }
@___asan_gen_.710 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.727, i32 1219, i32 2 }
@___asan_gen_.713 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.727, i32 1270, i32 30 }
@___asan_gen_.714 = private unnamed_addr constant [23 x i8] c"it930x_addresses_table\00", align 1
@___asan_gen_.715 = private unnamed_addr constant [41 x i8] c"../drivers/media/usb/dvb-usb-v2/af9035.h\00", align 1
@___asan_gen_.716 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 74, i32 35 }
@___asan_gen_.719 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.727, i32 1619, i32 2 }
@___asan_gen_.722 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.727, i32 1645, i32 30 }
@___asan_gen_.725 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.727, i32 1666, i32 2 }
@___asan_gen_.726 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.727 = private constant [41 x i8] c"../drivers/media/usb/dvb-usb-v2/af9035.c\00", align 1
@___asan_gen_.728 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.727, i32 1830, i32 2 }
@llvm.compiler.used = appending global [231 x ptr] [ptr @__UNIQUE_ID_adapter_nr389, ptr @__UNIQUE_ID_adapter_nrtype388, ptr @__UNIQUE_ID_author438, ptr @__UNIQUE_ID_description439, ptr @__UNIQUE_ID_file440, ptr @__UNIQUE_ID_firmware442, ptr @__UNIQUE_ID_firmware443, ptr @__UNIQUE_ID_firmware444, ptr @__UNIQUE_ID_firmware445, ptr @__UNIQUE_ID_license441, ptr @__exitcall_af9035_usb_driver_exit, ptr @__initcall__kmod_dvb_usb_af9035__437_2175_af9035_usb_driver_init6, ptr @__param_adapter_nr, ptr @af9035_add_i2c_dev._entry, ptr @af9035_add_i2c_dev._entry.137, ptr @af9035_add_i2c_dev._entry_ptr, ptr @af9035_add_i2c_dev._entry_ptr.139, ptr @af9035_ctrl_msg._entry, ptr @af9035_ctrl_msg._entry.95, ptr @af9035_ctrl_msg._entry_ptr, ptr @af9035_ctrl_msg._entry_ptr.97, ptr @af9035_del_i2c_dev._entry, ptr @af9035_del_i2c_dev._entry_ptr, ptr @af9035_download_firmware._entry, ptr @af9035_download_firmware._entry.102, ptr @af9035_download_firmware._entry_ptr, ptr @af9035_download_firmware._entry_ptr.104, ptr @af9035_download_firmware_old._entry, ptr @af9035_download_firmware_old._entry_ptr, ptr @af9035_identify_state._entry, ptr @af9035_identify_state._entry.87, ptr @af9035_identify_state._entry_ptr, ptr @af9035_identify_state._entry_ptr.89, ptr @af9035_read_config._entry, ptr @af9035_read_config._entry.120, ptr @af9035_read_config._entry.123, ptr @af9035_read_config._entry.127, ptr @af9035_read_config._entry_ptr, ptr @af9035_read_config._entry_ptr.122, ptr @af9035_read_config._entry_ptr.125, ptr @af9035_read_config._entry_ptr.129, ptr @af9035_tuner_attach._entry, ptr @af9035_tuner_attach._entry.155, ptr @af9035_tuner_attach._entry.160, ptr @af9035_tuner_attach._entry.167, ptr @af9035_tuner_attach._entry_ptr, ptr @af9035_tuner_attach._entry_ptr.157, ptr @af9035_tuner_attach._entry_ptr.162, ptr @af9035_tuner_attach._entry_ptr.169, ptr @af9035_usb_driver_exit, ptr @af9035_wr_regs._entry, ptr @af9035_wr_regs._entry_ptr, ptr @af9035_usb_driver, ptr @adapter_nr, ptr @.str, ptr @af9035_id_table, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.compoundliteral, ptr @.compoundliteral.6, ptr @.compoundliteral.7, ptr @.compoundliteral.8, ptr @.compoundliteral.9, ptr @.str.10, ptr @.compoundliteral.11, ptr @.str.12, ptr @.compoundliteral.13, ptr @.compoundliteral.14, ptr @.str.15, ptr @.compoundliteral.16, ptr @.compoundliteral.17, ptr @.str.18, ptr @.compoundliteral.19, ptr @.str.20, ptr @.compoundliteral.21, ptr @.str.22, ptr @.compoundliteral.23, ptr @.compoundliteral.24, ptr @.str.25, ptr @.compoundliteral.26, ptr @.str.27, ptr @.str.28, ptr @.compoundliteral.29, ptr @.str.30, ptr @.str.31, ptr @.compoundliteral.32, ptr @.str.33, ptr @.compoundliteral.34, ptr @.str.35, ptr @.compoundliteral.36, ptr @.str.37, ptr @.compoundliteral.38, ptr @.str.39, ptr @.compoundliteral.40, ptr @.str.41, ptr @.compoundliteral.42, ptr @.str.43, ptr @.str.44, ptr @.compoundliteral.45, ptr @.str.46, ptr @.compoundliteral.47, ptr @.str.48, ptr @.compoundliteral.49, ptr @.str.50, ptr @.compoundliteral.51, ptr @.str.52, ptr @.compoundliteral.53, ptr @.str.54, ptr @.compoundliteral.55, ptr @.str.56, ptr @.compoundliteral.57, ptr @.str.58, ptr @.compoundliteral.59, ptr @.str.60, ptr @.compoundliteral.61, ptr @.str.62, ptr @.compoundliteral.63, ptr @.str.64, ptr @.compoundliteral.65, ptr @.str.66, ptr @.compoundliteral.67, ptr @.str.68, ptr @.compoundliteral.69, ptr @.str.70, ptr @.compoundliteral.71, ptr @.str.72, ptr @.compoundliteral.73, ptr @af9035_i2c_algo, ptr @af9035_props, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.88, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.96, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.103, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.121, ptr @.str.124, ptr @.str.126, ptr @clock_lut_it9135, ptr @clock_lut_af9035, ptr @.str.128, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.138, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @af9035_fc0011_config, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @af9035_mxl5007t_config, ptr @.str.156, ptr @.str.158, ptr @.str.159, ptr @af9035_tda18218_config, ptr @.str.161, ptr @.str.163, ptr @.str.164, ptr @.str.165, ptr @.str.166, ptr @af9035_fc0012_config, ptr @.str.168, ptr @.str.170, ptr @.str.171, ptr @.str.172, ptr @.str.173, ptr @.str.174, ptr @.str.175, ptr @.str.176, ptr @.str.177, ptr @.str.178, ptr @.str.179, ptr @.str.180, ptr @.str.181, ptr @it930x_props, ptr @.str.183, ptr @.str.184, ptr @it930x_addresses_table, ptr @.str.185, ptr @.str.186, ptr @.str.187, ptr @.str.188], section "llvm.metadata"
@0 = internal global [198 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @af9035_usb_driver to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adapter_nr to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @af9035_id_table to i32), i32 912, i32 1152, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.6 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.7 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.8 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.9 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.11 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.13 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.14 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.16 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.17 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.19 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.21 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.23 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.24 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.26 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.29 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.32 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.34 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.36 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.38 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.40 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.42 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.45 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.47 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.49 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.51 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.53 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.55 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.57 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.59 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.61 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.63 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.65 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.67 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.69 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.71 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.73 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @af9035_i2c_algo to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @af9035_props to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @af9035_identify_state._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @af9035_identify_state._entry.87 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @af9035_ctrl_msg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @af9035_ctrl_msg._entry.95 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @af9035_download_firmware._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @af9035_download_firmware._entry.102 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @af9035_wr_regs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @af9035_download_firmware_old._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @af9035_read_config._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @af9035_read_config._entry.120 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @af9035_read_config._entry.123 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clock_lut_it9135 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clock_lut_af9035 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @af9035_read_config._entry.127 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @af9035_add_i2c_dev._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @af9035_add_i2c_dev._entry.137 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @af9035_del_i2c_dev._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @af9035_fc0011_config to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @af9035_tuner_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @af9035_mxl5007t_config to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @af9035_tuner_attach._entry.155 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @af9035_tda18218_config to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @af9035_tuner_attach._entry.160 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @af9035_fc0012_config to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @af9035_tuner_attach._entry.167 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @it930x_props to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.707 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @it930x_addresses_table to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.185 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.186 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.187 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.188 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @af9035_usb_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usb_register_driver(ptr noundef nonnull @af9035_usb_driver, ptr noundef null, ptr noundef nonnull @.str) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @af9035_usb_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @usb_deregister(ptr noundef nonnull @af9035_usb_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_deregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @af9035_probe(ptr noundef %intf, ptr noundef %id) #2 align 64 {
entry:
  %manufacturer = alloca [8 x i8], align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %parent.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 1
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 -128
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %manufacturer) #9
  %2 = ptrtoint ptr %manufacturer to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 0, ptr %manufacturer, align 8
  %iManufacturer = getelementptr i8, ptr %1, i32 942
  %3 = ptrtoint ptr %iManufacturer to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %iManufacturer, align 2
  %conv = zext i8 %4 to i32
  %call2 = call i32 @usb_string(ptr noundef %add.ptr.i, i32 noundef %conv, ptr noundef nonnull %manufacturer, i32 noundef 8) #9
  %idVendor = getelementptr i8, ptr %1, i32 936
  %5 = ptrtoint ptr %idVendor to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %idVendor, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -13044, i16 %6)
  %cmp = icmp eq i16 %6, -13044
  br i1 %cmp, label %land.lhs.true, label %entry.if.end19_crit_edge

entry.if.end19_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19

land.lhs.true:                                    ; preds = %entry
  %idProduct = getelementptr i8, ptr %1, i32 938
  %7 = ptrtoint ptr %idProduct to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %idProduct, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -26368, i16 %8)
  %cmp8 = icmp eq i16 %8, -26368
  br i1 %cmp8, label %if.then, label %land.lhs.true.if.end19_crit_edge

land.lhs.true.if.end19_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19

if.then:                                          ; preds = %land.lhs.true
  %bcmp = call i32 @bcmp(ptr noundef nonnull dereferenceable(8) @.str.1, ptr noundef nonnull dereferenceable(8) %manufacturer, i32 8) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool.not = icmp eq i32 %bcmp, 0
  br i1 %tobool.not, label %do.body, label %if.then.if.end19_crit_edge

if.then.if.end19_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19

do.body:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @af9035_probe.__UNIQUE_ID_ddebug436, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@af9035_probe, %if.then17)) #9
          to label %cleanup [label %if.then17], !srcloc !384

if.then17:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @af9035_probe.__UNIQUE_ID_ddebug436, ptr noundef %1, ptr noundef nonnull @.str.4) #9
  br label %cleanup

if.end19:                                         ; preds = %if.then.if.end19_crit_edge, %land.lhs.true.if.end19_crit_edge, %entry.if.end19_crit_edge
  %call20 = call i32 @dvb_usbv2_probe(ptr noundef %intf, ptr noundef %id) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %if.then17, %do.body
  %retval.0 = phi i32 [ %call20, %if.end19 ], [ -19, %if.then17 ], [ -19, %do.body ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %manufacturer) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dvb_usbv2_disconnect(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_usbv2_suspend(ptr noundef, [1 x i32]) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_usbv2_resume(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_usbv2_reset_resume(ptr noundef) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_string(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_usbv2_probe(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @af9035_identify_state(ptr noundef %d, ptr nocapture noundef writeonly %name) #2 align 64 {
entry:
  %wbuf.i292 = alloca [6 x i8], align 1
  %req.i293 = alloca %struct.usb_req, align 4
  %wbuf.i.i = alloca [6 x i8], align 1
  %req.i.i = alloca %struct.usb_req, align 4
  %wbuf.i = alloca [6 x i8], align 1
  %req.i = alloca %struct.usb_req, align 4
  %tmp = alloca i8, align 1
  %wbuf = alloca [1 x i8], align 1
  %rbuf = alloca [4 x i8], align 4
  %req = alloca %struct.usb_req, align 4
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
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp) #9
  %4 = ptrtoint ptr %tmp to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %tmp, align 1, !annotation !385
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %wbuf) #9
  %5 = ptrtoint ptr %wbuf to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %wbuf, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rbuf) #9
  %6 = getelementptr inbounds [4 x i8], ptr %rbuf, i32 0, i32 1
  %7 = getelementptr inbounds [4 x i8], ptr %rbuf, i32 0, i32 2
  %8 = getelementptr inbounds [4 x i8], ptr %rbuf, i32 0, i32 3
  %9 = ptrtoint ptr %rbuf to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %rbuf, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %req) #9
  %10 = call ptr @memset(ptr %req, i32 255, i32 12)
  %11 = ptrtoint ptr %req to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 34, ptr %req, align 4
  %mbox = getelementptr inbounds %struct.usb_req, ptr %req, i32 0, i32 1
  %12 = ptrtoint ptr %mbox to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %mbox, align 1
  %wlen = getelementptr inbounds %struct.usb_req, ptr %req, i32 0, i32 2
  %13 = ptrtoint ptr %wlen to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %wlen, align 2
  %wbuf2 = getelementptr inbounds %struct.usb_req, ptr %req, i32 0, i32 3
  %14 = ptrtoint ptr %wbuf2 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %wbuf, ptr %wbuf2, align 4
  %rlen = getelementptr inbounds %struct.usb_req, ptr %req, i32 0, i32 4
  %15 = ptrtoint ptr %rlen to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 4, ptr %rlen, align 4
  %rbuf3 = getelementptr inbounds %struct.usb_req, ptr %req, i32 0, i32 5
  %16 = ptrtoint ptr %rbuf3 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %rbuf, ptr %rbuf3, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %wbuf.i) #9
  %17 = getelementptr inbounds [6 x i8], ptr %wbuf.i, i32 0, i32 1
  %18 = getelementptr inbounds [6 x i8], ptr %wbuf.i, i32 0, i32 2
  %19 = getelementptr inbounds [6 x i8], ptr %wbuf.i, i32 0, i32 3
  %20 = getelementptr inbounds [6 x i8], ptr %wbuf.i, i32 0, i32 4
  %21 = getelementptr inbounds [6 x i8], ptr %wbuf.i, i32 0, i32 5
  %22 = ptrtoint ptr %wbuf.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 3, ptr %wbuf.i, align 1
  %23 = ptrtoint ptr %17 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 2, ptr %17, align 1
  %24 = ptrtoint ptr %18 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %18, align 1
  %25 = ptrtoint ptr %19 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %19, align 1
  %26 = ptrtoint ptr %20 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 18, ptr %20, align 1
  %27 = ptrtoint ptr %21 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 34, ptr %21, align 1
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %req.i) #9
  %28 = call ptr @memset(ptr %req.i, i32 255, i32 12)
  %29 = ptrtoint ptr %req.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 0, ptr %req.i, align 4
  %mbox11.i = getelementptr inbounds %struct.usb_req, ptr %req.i, i32 0, i32 1
  %30 = ptrtoint ptr %mbox11.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 0, ptr %mbox11.i, align 1
  %wlen.i = getelementptr inbounds %struct.usb_req, ptr %req.i, i32 0, i32 2
  %31 = ptrtoint ptr %wlen.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 6, ptr %wlen.i, align 2
  %wbuf12.i = getelementptr inbounds %struct.usb_req, ptr %req.i, i32 0, i32 3
  %32 = ptrtoint ptr %wbuf12.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %wbuf.i, ptr %wbuf12.i, align 4
  %rlen.i = getelementptr inbounds %struct.usb_req, ptr %req.i, i32 0, i32 4
  %33 = ptrtoint ptr %rlen.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 3, ptr %rlen.i, align 4
  %rbuf.i = getelementptr inbounds %struct.usb_req, ptr %req.i, i32 0, i32 5
  %34 = ptrtoint ptr %rbuf.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %rbuf, ptr %rbuf.i, align 4
  %call.i = call fastcc i32 @af9035_ctrl_msg(ptr noundef %d, ptr noundef nonnull %req.i) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %req.i) #9
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %wbuf.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.do.body203_crit_edge, label %if.end

entry.do.body203_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body203

if.end:                                           ; preds = %entry
  %35 = ptrtoint ptr %rbuf to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %rbuf, align 4
  %chip_version = getelementptr inbounds %struct.state, ptr %1, i32 0, i32 3
  %37 = ptrtoint ptr %chip_version to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %36, ptr %chip_version, align 2
  %38 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %7, align 2
  %conv = zext i8 %39 to i16
  %shl = shl nuw i16 %conv, 8
  %40 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %6, align 1
  %conv8 = zext i8 %41 to i16
  %or = or i16 %shl, %conv8
  %chip_type = getelementptr inbounds %struct.state, ptr %1, i32 0, i32 4
  %42 = ptrtoint ptr %chip_type to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 %or, ptr %chip_type, align 4
  %prechip_version = getelementptr inbounds %struct.state, ptr %1, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %wbuf.i.i) #9
  %43 = getelementptr inbounds [6 x i8], ptr %wbuf.i.i, i32 0, i32 1
  %44 = getelementptr inbounds [6 x i8], ptr %wbuf.i.i, i32 0, i32 2
  %45 = getelementptr inbounds [6 x i8], ptr %wbuf.i.i, i32 0, i32 3
  %46 = getelementptr inbounds [6 x i8], ptr %wbuf.i.i, i32 0, i32 4
  %47 = getelementptr inbounds [6 x i8], ptr %wbuf.i.i, i32 0, i32 5
  %48 = ptrtoint ptr %wbuf.i.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 1, ptr %wbuf.i.i, align 1
  %49 = ptrtoint ptr %43 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 2, ptr %43, align 1
  %50 = ptrtoint ptr %44 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 0, ptr %44, align 1
  %51 = ptrtoint ptr %45 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 0, ptr %45, align 1
  %52 = ptrtoint ptr %46 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 56, ptr %46, align 1
  %53 = ptrtoint ptr %47 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 79, ptr %47, align 1
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %req.i.i) #9
  %54 = call ptr @memset(ptr %req.i.i, i32 255, i32 12)
  %55 = ptrtoint ptr %req.i.i to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 0, ptr %req.i.i, align 4
  %mbox11.i.i = getelementptr inbounds %struct.usb_req, ptr %req.i.i, i32 0, i32 1
  %56 = ptrtoint ptr %mbox11.i.i to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 0, ptr %mbox11.i.i, align 1
  %wlen.i.i = getelementptr inbounds %struct.usb_req, ptr %req.i.i, i32 0, i32 2
  %57 = ptrtoint ptr %wlen.i.i to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 6, ptr %wlen.i.i, align 2
  %wbuf12.i.i = getelementptr inbounds %struct.usb_req, ptr %req.i.i, i32 0, i32 3
  %58 = ptrtoint ptr %wbuf12.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %wbuf.i.i, ptr %wbuf12.i.i, align 4
  %rlen.i.i = getelementptr inbounds %struct.usb_req, ptr %req.i.i, i32 0, i32 4
  %59 = ptrtoint ptr %rlen.i.i to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 1, ptr %rlen.i.i, align 4
  %rbuf.i.i = getelementptr inbounds %struct.usb_req, ptr %req.i.i, i32 0, i32 5
  %60 = ptrtoint ptr %rbuf.i.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %prechip_version, ptr %rbuf.i.i, align 4
  %call.i.i = call fastcc i32 @af9035_ctrl_msg(ptr noundef %d, ptr noundef nonnull %req.i.i) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %req.i.i) #9
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %wbuf.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp12 = icmp slt i32 %call.i.i, 0
  br i1 %cmp12, label %if.end.do.body203_crit_edge, label %do.end

if.end.do.body203_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body203

do.end:                                           ; preds = %if.end
  %dev = getelementptr inbounds %struct.usb_interface, ptr %3, i32 0, i32 7
  %61 = ptrtoint ptr %prechip_version to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %prechip_version, align 1
  %conv17 = zext i8 %62 to i32
  %63 = ptrtoint ptr %chip_version to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %chip_version, align 2
  %conv19 = zext i8 %64 to i32
  %65 = ptrtoint ptr %chip_type to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %chip_type, align 4
  %conv21 = zext i16 %66 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.75, i32 noundef %conv17, i32 noundef %conv19, i32 noundef %conv21) #13
  %67 = ptrtoint ptr %chip_type to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %chip_type, align 4
  %69 = zext i16 %68 to i64
  call void @__sanitizer_cov_trace_switch(i64 %69, ptr @__sancov_gen_cov_switch_values)
  switch i16 %68, label %if.else60 [
    i16 -28363, label %if.then26
    i16 -27898, label %if.then58
  ]

if.then26:                                        ; preds = %do.end
  %70 = ptrtoint ptr %chip_version to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %chip_version, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %71)
  %cmp29 = icmp eq i8 %71, 2
  %.str.79..str.80 = select i1 %cmp29, ptr @.str.79, ptr @.str.80
  %. = select i1 %cmp29, i32 17949, i32 17947
  %72 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %.str.79..str.80, ptr %name, align 4
  %call33 = call fastcc i32 @af9035_rd_reg(ptr noundef %d, i32 noundef %., ptr noundef nonnull %tmp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %cmp34 = icmp slt i32 %call33, 0
  br i1 %cmp34, label %if.then26.do.body203_crit_edge, label %if.end37

if.then26.do.body203_crit_edge:                   ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body203

if.end37:                                         ; preds = %if.then26
  %73 = ptrtoint ptr %tmp to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %tmp, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %74)
  %cmp39 = icmp eq i8 %74, 0
  br i1 %cmp39, label %do.body42, label %if.end37.if.end62_crit_edge

if.end37.if.end62_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end62

do.body42:                                        ; preds = %if.end37
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @af9035_identify_state.__UNIQUE_ID_ddebug395, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@af9035_identify_state, %if.then47)) #9
          to label %do.end51 [label %if.then47], !srcloc !384

if.then47:                                        ; preds = %do.body42
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @af9035_identify_state.__UNIQUE_ID_ddebug395, ptr noundef %dev, ptr noundef nonnull @.str.81) #9
  br label %do.end51

do.end51:                                         ; preds = %if.then47, %do.body42
  %no_eeprom = getelementptr inbounds %struct.state, ptr %1, i32 0, i32 6
  %75 = ptrtoint ptr %no_eeprom to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 1, ptr %no_eeprom, align 2
  br label %check_firmware_status

if.then58:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %76 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr @.str.82, ptr %name, align 4
  %no_eeprom59 = getelementptr inbounds %struct.state, ptr %1, i32 0, i32 6
  %77 = ptrtoint ptr %no_eeprom59 to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 1, ptr %no_eeprom59, align 2
  br label %check_firmware_status

if.else60:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %78 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr @.str.83, ptr %name, align 4
  br label %if.end62

if.end62:                                         ; preds = %if.else60, %if.end37.if.end62_crit_edge
  %eeprom_addr.0 = phi i32 [ 17141, %if.else60 ], [ 18836, %if.end37.if.end62_crit_edge ]
  %79 = getelementptr inbounds [6 x i8], ptr %wbuf.i292, i32 0, i32 1
  %80 = getelementptr inbounds [6 x i8], ptr %wbuf.i292, i32 0, i32 2
  %81 = getelementptr inbounds [6 x i8], ptr %wbuf.i292, i32 0, i32 3
  %82 = getelementptr inbounds [6 x i8], ptr %wbuf.i292, i32 0, i32 4
  %83 = getelementptr inbounds [6 x i8], ptr %wbuf.i292, i32 0, i32 5
  %mbox11.i294 = getelementptr inbounds %struct.usb_req, ptr %req.i293, i32 0, i32 1
  %wlen.i295 = getelementptr inbounds %struct.usb_req, ptr %req.i293, i32 0, i32 2
  %wbuf12.i296 = getelementptr inbounds %struct.usb_req, ptr %req.i293, i32 0, i32 3
  %rlen.i297 = getelementptr inbounds %struct.usb_req, ptr %req.i293, i32 0, i32 4
  %rbuf.i298 = getelementptr inbounds %struct.usb_req, ptr %req.i293, i32 0, i32 5
  br label %for.body

for.cond:                                         ; preds = %for.body
  %add71 = add nuw nsw i32 %i.0306, 32
  %cmp63 = icmp ult i32 %i.0306, 224
  br i1 %cmp63, label %for.cond.for.body_crit_edge, label %do.body72

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %if.end62
  %i.0306 = phi i32 [ 0, %if.end62 ], [ %add71, %for.cond.for.body_crit_edge ]
  %add = add nuw nsw i32 %i.0306, %eeprom_addr.0
  %arrayidx65 = getelementptr %struct.state, ptr %1, i32 0, i32 5, i32 %i.0306
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %wbuf.i292) #9
  %84 = ptrtoint ptr %wbuf.i292 to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 32, ptr %wbuf.i292, align 1
  %85 = ptrtoint ptr %79 to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 2, ptr %79, align 1
  %86 = ptrtoint ptr %80 to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 0, ptr %80, align 1
  %87 = ptrtoint ptr %81 to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 0, ptr %81, align 1
  %shr.i = lshr i32 %add, 8
  %conv4.i = trunc i32 %shr.i to i8
  %88 = ptrtoint ptr %82 to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 %conv4.i, ptr %82, align 1
  %conv7.i = trunc i32 %add to i8
  %89 = ptrtoint ptr %83 to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 %conv7.i, ptr %83, align 1
  %shr8.i = lshr i32 %add, 16
  %conv10.i = trunc i32 %shr8.i to i8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %req.i293) #9
  %90 = call ptr @memset(ptr %req.i293, i32 255, i32 12)
  %91 = ptrtoint ptr %req.i293 to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 0, ptr %req.i293, align 4
  %92 = ptrtoint ptr %mbox11.i294 to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 %conv10.i, ptr %mbox11.i294, align 1
  %93 = ptrtoint ptr %wlen.i295 to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 6, ptr %wlen.i295, align 2
  %94 = ptrtoint ptr %wbuf12.i296 to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr %wbuf.i292, ptr %wbuf12.i296, align 4
  %95 = ptrtoint ptr %rlen.i297 to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 32, ptr %rlen.i297, align 4
  %96 = ptrtoint ptr %rbuf.i298 to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr %arrayidx65, ptr %rbuf.i298, align 4
  %call.i299 = call fastcc i32 @af9035_ctrl_msg(ptr noundef %d, ptr noundef nonnull %req.i293) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %req.i293) #9
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %wbuf.i292) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i299)
  %cmp67 = icmp slt i32 %call.i299, 0
  br i1 %cmp67, label %for.body.do.body203_crit_edge, label %for.cond

for.body.do.body203_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body203

do.body72:                                        ; preds = %for.cond
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @af9035_identify_state.__UNIQUE_ID_ddebug396, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@af9035_identify_state, %if.then84)) #9
          to label %do.body93 [label %if.then84], !srcloc !384

if.then84:                                        ; preds = %do.body72
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @af9035_identify_state.__UNIQUE_ID_ddebug396, ptr noundef %dev, ptr noundef nonnull @.str.84) #9
  br label %do.body93

do.body93:                                        ; preds = %for.inc112.do.body93_crit_edge, %if.then84, %do.body72
  %i.1307 = phi i32 [ %add113, %for.inc112.do.body93_crit_edge ], [ 0, %do.body72 ], [ 0, %if.then84 ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @af9035_identify_state.__UNIQUE_ID_ddebug397, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@af9035_identify_state, %if.then105)) #9
          to label %for.inc112 [label %if.then105], !srcloc !384

if.then105:                                       ; preds = %do.body93
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx108 = getelementptr %struct.state, ptr %1, i32 0, i32 5, i32 %i.1307
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @af9035_identify_state.__UNIQUE_ID_ddebug397, ptr noundef %dev, ptr noundef nonnull @.str.85, i32 noundef 16, ptr noundef %arrayidx108) #9
  br label %for.inc112

for.inc112:                                       ; preds = %if.then105, %do.body93
  %add113 = add nuw nsw i32 %i.1307, 16
  %cmp90 = icmp ult i32 %i.1307, 240
  br i1 %cmp90, label %for.inc112.do.body93_crit_edge, label %for.end114

for.inc112.do.body93_crit_edge:                   ; preds = %for.inc112
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body93

for.end114:                                       ; preds = %for.inc112
  %arrayidx116 = getelementptr %struct.state, ptr %1, i32 0, i32 5, i32 49
  %97 = ptrtoint ptr %arrayidx116 to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %arrayidx116, align 1
  %99 = ptrtoint ptr %tmp to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 %98, ptr %tmp, align 1
  %100 = zext i8 %98 to i64
  call void @__sanitizer_cov_trace_switch(i64 %100, ptr @__sancov_gen_cov_switch_values.189)
  switch i8 %98, label %sw.default [
    i8 0, label %for.end114.do.body134_crit_edge
    i8 1, label %for.end114.sw.bb_crit_edge
    i8 3, label %for.end114.sw.bb_crit_edge314
    i8 5, label %sw.bb118
  ]

for.end114.sw.bb_crit_edge314:                    ; preds = %for.end114
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

for.end114.sw.bb_crit_edge:                       ; preds = %for.end114
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

for.end114.do.body134_crit_edge:                  ; preds = %for.end114
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body134

sw.bb:                                            ; preds = %for.end114.sw.bb_crit_edge, %for.end114.sw.bb_crit_edge314
  %dual_mode = getelementptr inbounds %struct.state, ptr %1, i32 0, i32 9
  %101 = ptrtoint ptr %dual_mode to i32
  call void @__asan_load1_noabort(i32 %101)
  %bf.load = load i8, ptr %dual_mode, align 1
  %bf.set = or i8 %bf.load, -128
  store i8 %bf.set, ptr %dual_mode, align 1
  br label %do.body134

sw.bb118:                                         ; preds = %for.end114
  %102 = ptrtoint ptr %chip_type to i32
  call void @__asan_load2_noabort(i32 %102)
  %103 = load i16, ptr %chip_type, align 4
  %104 = zext i16 %103 to i64
  call void @__sanitizer_cov_trace_switch(i64 %104, ptr @__sancov_gen_cov_switch_values.190)
  switch i16 %103, label %if.then127 [
    i16 -28363, label %sw.bb118.do.body134_crit_edge
    i16 -27898, label %sw.bb118.do.body134_crit_edge315
  ]

sw.bb118.do.body134_crit_edge315:                 ; preds = %sw.bb118
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body134

sw.bb118.do.body134_crit_edge:                    ; preds = %sw.bb118
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body134

if.then127:                                       ; preds = %sw.bb118
  call void @__sanitizer_cov_trace_pc() #11
  %dual_mode128 = getelementptr inbounds %struct.state, ptr %1, i32 0, i32 9
  %105 = ptrtoint ptr %dual_mode128 to i32
  call void @__asan_load1_noabort(i32 %105)
  %bf.load129 = load i8, ptr %dual_mode128, align 1
  %bf.set131 = or i8 %bf.load129, -128
  store i8 %bf.set131, ptr %dual_mode128, align 1
  br label %do.body134

sw.default:                                       ; preds = %for.end114
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body134

do.body134:                                       ; preds = %sw.default, %if.then127, %sw.bb118.do.body134_crit_edge, %sw.bb118.do.body134_crit_edge315, %sw.bb, %for.end114.do.body134_crit_edge
  %tobool155.not = phi i1 [ true, %for.end114.do.body134_crit_edge ], [ true, %sw.bb ], [ false, %sw.default ], [ true, %if.then127 ], [ false, %sw.bb118.do.body134_crit_edge ], [ false, %sw.bb118.do.body134_crit_edge315 ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @af9035_identify_state.__UNIQUE_ID_ddebug398, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@af9035_identify_state, %if.then146)) #9
          to label %do.end154 [label %if.then146], !srcloc !384

if.then146:                                       ; preds = %do.body134
  call void @__sanitizer_cov_trace_pc() #11
  %106 = ptrtoint ptr %tmp to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %tmp, align 1
  %conv148 = zext i8 %107 to i32
  %dual_mode149 = getelementptr inbounds %struct.state, ptr %1, i32 0, i32 9
  %108 = ptrtoint ptr %dual_mode149 to i32
  call void @__asan_load1_noabort(i32 %108)
  %bf.load150 = load i8, ptr %dual_mode149, align 1
  %bf.lshr = lshr i8 %bf.load150, 7
  %conv151 = zext i8 %bf.lshr to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @af9035_identify_state.__UNIQUE_ID_ddebug398, ptr noundef %dev, ptr noundef nonnull @.str.86, i32 noundef %conv148, i32 noundef %conv151) #9
  br label %do.end154

do.end154:                                        ; preds = %if.then146, %do.body134
  br i1 %tobool155.not, label %do.end154.check_firmware_status_crit_edge, label %do.end159

do.end154.check_firmware_status_crit_edge:        ; preds = %do.end154
  call void @__sanitizer_cov_trace_pc() #11
  br label %check_firmware_status

do.end159:                                        ; preds = %do.end154
  call void @__sanitizer_cov_trace_pc() #11
  %109 = ptrtoint ptr %tmp to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %tmp, align 1
  %conv161 = zext i8 %110 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.88, i32 noundef %conv161) #13
  br label %check_firmware_status

check_firmware_status:                            ; preds = %do.end159, %do.end154.check_firmware_status_crit_edge, %if.then58, %do.end51
  %call163 = call fastcc i32 @af9035_ctrl_msg(ptr noundef %d, ptr noundef nonnull %req)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call163)
  %cmp164 = icmp slt i32 %call163, 0
  br i1 %cmp164, label %check_firmware_status.do.body203_crit_edge, label %do.body168

check_firmware_status.do.body203_crit_edge:       ; preds = %check_firmware_status
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body203

do.body168:                                       ; preds = %check_firmware_status
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @af9035_identify_state.__UNIQUE_ID_ddebug399, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@af9035_identify_state, %if.then180)) #9
          to label %do.end185 [label %if.then180], !srcloc !384

if.then180:                                       ; preds = %do.body168
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @af9035_identify_state.__UNIQUE_ID_ddebug399, ptr noundef %dev, ptr noundef nonnull @.str.90, i32 noundef 4, ptr noundef nonnull %rbuf) #9
  br label %do.end185

do.end185:                                        ; preds = %if.then180, %do.body168
  %111 = ptrtoint ptr %rbuf to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %rbuf, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %112)
  %tobool188.not = icmp eq i8 %112, 0
  br i1 %tobool188.not, label %lor.lhs.false, label %do.end185.cleanup_crit_edge

do.end185.cleanup_crit_edge:                      ; preds = %do.end185
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %do.end185
  %113 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %6, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %114)
  %tobool191.not = icmp eq i8 %114, 0
  br i1 %tobool191.not, label %lor.lhs.false192, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false192:                                 ; preds = %lor.lhs.false
  %115 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %7, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %116)
  %tobool195.not = icmp eq i8 %116, 0
  br i1 %tobool195.not, label %lor.lhs.false196, label %lor.lhs.false192.cleanup_crit_edge

lor.lhs.false192.cleanup_crit_edge:               ; preds = %lor.lhs.false192
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false196:                                 ; preds = %lor.lhs.false192
  call void @__sanitizer_cov_trace_pc() #11
  %117 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %8, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %118)
  %tobool199.not = icmp eq i8 %118, 0
  %spec.select = zext i1 %tobool199.not to i32
  br label %cleanup

do.body203:                                       ; preds = %check_firmware_status.do.body203_crit_edge, %for.body.do.body203_crit_edge, %if.then26.do.body203_crit_edge, %if.end.do.body203_crit_edge, %entry.do.body203_crit_edge
  %ret.1 = phi i32 [ %call.i, %entry.do.body203_crit_edge ], [ %call.i.i, %if.end.do.body203_crit_edge ], [ %call33, %if.then26.do.body203_crit_edge ], [ %call163, %check_firmware_status.do.body203_crit_edge ], [ %call.i299, %for.body.do.body203_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @af9035_identify_state.__UNIQUE_ID_ddebug400, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@af9035_identify_state, %if.then215)) #9
          to label %cleanup [label %if.then215], !srcloc !384

if.then215:                                       ; preds = %do.body203
  call void @__sanitizer_cov_trace_pc() #11
  %dev216 = getelementptr inbounds %struct.usb_interface, ptr %3, i32 0, i32 7
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @af9035_identify_state.__UNIQUE_ID_ddebug400, ptr noundef %dev216, ptr noundef nonnull @.str.91, i32 noundef %ret.1) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then215, %do.body203, %lor.lhs.false196, %lor.lhs.false192.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %do.end185.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %lor.lhs.false192.cleanup_crit_edge ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %do.end185.cleanup_crit_edge ], [ %ret.1, %if.then215 ], [ %spec.select, %lor.lhs.false196 ], [ %ret.1, %do.body203 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %req) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rbuf) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %wbuf) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @af9035_download_firmware(ptr noundef %d, ptr nocapture noundef readonly %fw) #2 align 64 {
entry:
  %wbuf.i.i = alloca [64 x i8], align 1
  %req.i.i = alloca %struct.usb_req, align 4
  %wbuf = alloca [1 x i8], align 1
  %rbuf = alloca [4 x i8], align 4
  %req = alloca %struct.usb_req, align 4
  %req_fw_ver = alloca %struct.usb_req, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %intf1 = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 4
  %0 = ptrtoint ptr %intf1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %intf1, align 8
  %priv = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 15
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %wbuf) #9
  %4 = ptrtoint ptr %wbuf to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %wbuf, align 1, !annotation !385
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rbuf) #9
  %5 = getelementptr inbounds [4 x i8], ptr %rbuf, i32 0, i32 1
  %6 = getelementptr inbounds [4 x i8], ptr %rbuf, i32 0, i32 2
  %7 = getelementptr inbounds [4 x i8], ptr %rbuf, i32 0, i32 3
  %8 = ptrtoint ptr %rbuf to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %rbuf, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %req) #9
  %9 = call ptr @memset(ptr %req, i32 0, i32 16)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %req_fw_ver) #9
  %10 = call ptr @memset(ptr %req_fw_ver, i32 255, i32 12)
  %11 = ptrtoint ptr %req_fw_ver to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 34, ptr %req_fw_ver, align 4
  %mbox = getelementptr inbounds %struct.usb_req, ptr %req_fw_ver, i32 0, i32 1
  %12 = ptrtoint ptr %mbox to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %mbox, align 1
  %wlen = getelementptr inbounds %struct.usb_req, ptr %req_fw_ver, i32 0, i32 2
  %13 = ptrtoint ptr %wlen to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %wlen, align 2
  %wbuf2 = getelementptr inbounds %struct.usb_req, ptr %req_fw_ver, i32 0, i32 3
  %14 = ptrtoint ptr %wbuf2 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %wbuf, ptr %wbuf2, align 4
  %rlen = getelementptr inbounds %struct.usb_req, ptr %req_fw_ver, i32 0, i32 4
  %15 = ptrtoint ptr %rlen to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 4, ptr %rlen, align 4
  %rbuf3 = getelementptr inbounds %struct.usb_req, ptr %req_fw_ver, i32 0, i32 5
  %16 = ptrtoint ptr %rbuf3 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %rbuf, ptr %rbuf3, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @af9035_download_firmware.__UNIQUE_ID_ddebug407, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@af9035_download_firmware, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !384

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.usb_interface, ptr %1, i32 0, i32 7
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @af9035_download_firmware.__UNIQUE_ID_ddebug407, ptr noundef %dev, ptr noundef nonnull @.str.100) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %dual_mode = getelementptr inbounds %struct.state, ptr %3, i32 0, i32 9
  %17 = ptrtoint ptr %dual_mode to i32
  call void @__asan_load1_noabort(i32 %17)
  %bf.load = load i8, ptr %dual_mode, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool8.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool8.not, label %do.end.if.end51_crit_edge, label %if.then9

do.end.if.end51_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end51

if.then9:                                         ; preds = %do.end
  %call10 = call fastcc i32 @af9035_wr_reg_mask(ptr noundef %d, i32 noundef 55472, i8 noundef zeroext 1, i8 noundef zeroext 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp = icmp slt i32 %call10, 0
  br i1 %cmp, label %if.then9.do.body110_crit_edge, label %if.end12

if.then9.do.body110_crit_edge:                    ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body110

if.end12:                                         ; preds = %if.then9
  %call13 = call fastcc i32 @af9035_wr_reg_mask(ptr noundef %d, i32 noundef 55473, i8 noundef zeroext 1, i8 noundef zeroext 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp14 = icmp slt i32 %call13, 0
  br i1 %cmp14, label %if.end12.do.body110_crit_edge, label %if.end16

if.end12.do.body110_crit_edge:                    ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body110

if.end16:                                         ; preds = %if.end12
  %call17 = call fastcc i32 @af9035_wr_reg_mask(ptr noundef %d, i32 noundef 55471, i8 noundef zeroext 0, i8 noundef zeroext 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %cmp18 = icmp slt i32 %call17, 0
  br i1 %cmp18, label %if.end16.do.body110_crit_edge, label %if.end20

if.end16.do.body110_crit_edge:                    ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body110

if.end20:                                         ; preds = %if.end16
  call void @usleep_range_state(i32 noundef 10000, i32 noundef 50000, i32 noundef 2) #9
  %call21 = call fastcc i32 @af9035_wr_reg_mask(ptr noundef %d, i32 noundef 55471, i8 noundef zeroext 1, i8 noundef zeroext 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %cmp22 = icmp slt i32 %call21, 0
  br i1 %cmp22, label %if.end20.do.body110_crit_edge, label %if.end24

if.end20.do.body110_crit_edge:                    ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body110

if.end24:                                         ; preds = %if.end20
  %arrayidx = getelementptr %struct.state, ptr %3, i32 0, i32 5, i32 50
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool25.not = icmp eq i8 %19, 0
  %spec.store.select = select i1 %tobool25.not, i8 58, i8 %19
  %chip_type = getelementptr inbounds %struct.state, ptr %3, i32 0, i32 4
  %20 = ptrtoint ptr %chip_type to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %chip_type, align 4
  %22 = zext i16 %21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.191)
  switch i16 %21, label %if.else [
    i16 -28363, label %if.end24.if.then34_crit_edge
    i16 -27898, label %if.end24.if.then34_crit_edge172
  ]

if.end24.if.then34_crit_edge172:                  ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then34

if.end24.if.then34_crit_edge:                     ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then34

if.then34:                                        ; preds = %if.end24.if.then34_crit_edge, %if.end24.if.then34_crit_edge172
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %wbuf.i.i) #9
  %23 = getelementptr inbounds i8, ptr %wbuf.i.i, i32 7
  %24 = call ptr @memset(ptr %23, i32 255, i32 57)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %req.i.i) #9
  %25 = call ptr @memset(ptr %req.i.i, i32 255, i32 12)
  %26 = ptrtoint ptr %req.i.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 1, ptr %req.i.i, align 4
  %mbox2.i.i = getelementptr inbounds %struct.usb_req, ptr %req.i.i, i32 0, i32 1
  %27 = ptrtoint ptr %mbox2.i.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 0, ptr %mbox2.i.i, align 1
  %wlen.i.i = getelementptr inbounds %struct.usb_req, ptr %req.i.i, i32 0, i32 2
  %28 = ptrtoint ptr %wlen.i.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 7, ptr %wlen.i.i, align 2
  %wbuf4.i.i = getelementptr inbounds %struct.usb_req, ptr %req.i.i, i32 0, i32 3
  %29 = ptrtoint ptr %wbuf4.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %wbuf.i.i, ptr %wbuf4.i.i, align 4
  %rlen.i.i = getelementptr inbounds %struct.usb_req, ptr %req.i.i, i32 0, i32 4
  %30 = ptrtoint ptr %rlen.i.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 0, ptr %rlen.i.i, align 4
  %rbuf.i.i = getelementptr inbounds %struct.usb_req, ptr %req.i.i, i32 0, i32 5
  %31 = ptrtoint ptr %rbuf.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr null, ptr %rbuf.i.i, align 4
  %32 = ptrtoint ptr %wbuf.i.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 1, ptr %wbuf.i.i, align 1
  %arrayidx8.i.i = getelementptr inbounds [64 x i8], ptr %wbuf.i.i, i32 0, i32 1
  %33 = ptrtoint ptr %arrayidx8.i.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 2, ptr %arrayidx8.i.i, align 1
  %arrayidx9.i.i = getelementptr inbounds [64 x i8], ptr %wbuf.i.i, i32 0, i32 2
  %34 = ptrtoint ptr %arrayidx9.i.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 0, ptr %arrayidx9.i.i, align 1
  %arrayidx10.i.i = getelementptr inbounds [64 x i8], ptr %wbuf.i.i, i32 0, i32 3
  %35 = ptrtoint ptr %arrayidx10.i.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 0, ptr %arrayidx10.i.i, align 1
  %arrayidx14.i.i = getelementptr inbounds [64 x i8], ptr %wbuf.i.i, i32 0, i32 4
  %36 = ptrtoint ptr %arrayidx14.i.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 75, ptr %arrayidx14.i.i, align 1
  %arrayidx18.i.i = getelementptr inbounds [64 x i8], ptr %wbuf.i.i, i32 0, i32 5
  %37 = ptrtoint ptr %arrayidx18.i.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 -5, ptr %arrayidx18.i.i, align 1
  %arrayidx19.i.i = getelementptr inbounds [64 x i8], ptr %wbuf.i.i, i32 0, i32 6
  %38 = ptrtoint ptr %arrayidx19.i.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %spec.store.select, ptr %arrayidx19.i.i, align 1
  %call.i.i = call fastcc i32 @af9035_ctrl_msg(ptr noundef %d, ptr noundef nonnull %req.i.i) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %req.i.i) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %wbuf.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp36 = icmp slt i32 %call.i.i, 0
  br i1 %cmp36, label %if.then34.do.body110_crit_edge, label %if.then34.if.end51_crit_edge

if.then34.if.end51_crit_edge:                     ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end51

if.then34.do.body110_crit_edge:                   ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body110

if.else:                                          ; preds = %if.end24
  %call40 = call fastcc i32 @af9035_wr_reg(ptr noundef %d, i32 noundef 16767, i8 noundef zeroext %spec.store.select)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %cmp41 = icmp slt i32 %call40, 0
  br i1 %cmp41, label %if.else.do.body110_crit_edge, label %if.end44

if.else.do.body110_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body110

if.end44:                                         ; preds = %if.else
  %call45 = call fastcc i32 @af9035_wr_reg_mask(ptr noundef %d, i32 noundef 55322, i8 noundef zeroext 1, i8 noundef zeroext 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %cmp46 = icmp slt i32 %call45, 0
  br i1 %cmp46, label %if.end44.do.body110_crit_edge, label %if.end44.if.end51_crit_edge

if.end44.if.end51_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end51

if.end44.do.body110_crit_edge:                    ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body110

if.end51:                                         ; preds = %if.end44.if.end51_crit_edge, %if.then34.if.end51_crit_edge, %do.end.if.end51_crit_edge
  %data = getelementptr inbounds %struct.firmware, ptr %fw, i32 0, i32 1
  %39 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %data, align 4
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %40, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %42)
  %cmp54 = icmp eq i8 %42, 1
  br i1 %cmp54, label %if.then56, label %if.else58

if.then56:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #11
  %call57 = call fastcc i32 @af9035_download_firmware_old(ptr noundef %d, ptr noundef %fw)
  br label %if.end60

if.else58:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #11
  %call59 = call fastcc i32 @af9035_download_firmware_new(ptr noundef %d, ptr noundef %fw)
  br label %if.end60

if.end60:                                         ; preds = %if.else58, %if.then56
  %ret.0 = phi i32 [ %call57, %if.then56 ], [ %call59, %if.else58 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %cmp61 = icmp slt i32 %ret.0, 0
  br i1 %cmp61, label %if.end60.do.body110_crit_edge, label %if.end64

if.end60.do.body110_crit_edge:                    ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body110

if.end64:                                         ; preds = %if.end60
  %43 = ptrtoint ptr %req to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 35, ptr %req, align 4
  %call66 = call fastcc i32 @af9035_ctrl_msg(ptr noundef %d, ptr noundef nonnull %req)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66)
  %cmp67 = icmp slt i32 %call66, 0
  br i1 %cmp67, label %if.end64.do.body110_crit_edge, label %if.end70

if.end64.do.body110_crit_edge:                    ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body110

if.end70:                                         ; preds = %if.end64
  %44 = ptrtoint ptr %wbuf to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 1, ptr %wbuf, align 1
  %call72 = call fastcc i32 @af9035_ctrl_msg(ptr noundef %d, ptr noundef nonnull %req_fw_ver)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call72)
  %cmp73 = icmp slt i32 %call72, 0
  br i1 %cmp73, label %if.end70.do.body110_crit_edge, label %if.end76

if.end70.do.body110_crit_edge:                    ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body110

if.end76:                                         ; preds = %if.end70
  %45 = ptrtoint ptr %rbuf to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %rbuf, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %tobool79.not = icmp eq i8 %46, 0
  br i1 %tobool79.not, label %lor.lhs.false80, label %if.end76.do.end100_crit_edge

if.end76.do.end100_crit_edge:                     ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end100

lor.lhs.false80:                                  ; preds = %if.end76
  %47 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %5, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool83.not = icmp eq i8 %48, 0
  br i1 %tobool83.not, label %lor.lhs.false84, label %lor.lhs.false80.do.end100_crit_edge

lor.lhs.false80.do.end100_crit_edge:              ; preds = %lor.lhs.false80
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end100

lor.lhs.false84:                                  ; preds = %lor.lhs.false80
  %49 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %6, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool87.not = icmp eq i8 %50, 0
  br i1 %tobool87.not, label %lor.lhs.false88, label %lor.lhs.false84.do.end100_crit_edge

lor.lhs.false84.do.end100_crit_edge:              ; preds = %lor.lhs.false84
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end100

lor.lhs.false88:                                  ; preds = %lor.lhs.false84
  %51 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %7, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %tobool91.not = icmp eq i8 %52, 0
  br i1 %tobool91.not, label %do.end95, label %lor.lhs.false88.do.end100_crit_edge

lor.lhs.false88.do.end100_crit_edge:              ; preds = %lor.lhs.false88
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end100

do.end95:                                         ; preds = %lor.lhs.false88
  call void @__sanitizer_cov_trace_pc() #11
  %dev96 = getelementptr inbounds %struct.usb_interface, ptr %1, i32 0, i32 7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev96, ptr noundef nonnull @.str.101) #13
  br label %do.body110

do.end100:                                        ; preds = %lor.lhs.false88.do.end100_crit_edge, %lor.lhs.false84.do.end100_crit_edge, %lor.lhs.false80.do.end100_crit_edge, %if.end76.do.end100_crit_edge
  %dev101 = getelementptr inbounds %struct.usb_interface, ptr %1, i32 0, i32 7
  %conv103 = zext i8 %46 to i32
  %53 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %5, align 1
  %conv105 = zext i8 %54 to i32
  %55 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %6, align 2
  %conv107 = zext i8 %56 to i32
  %57 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %7, align 1
  %conv109 = zext i8 %58 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev101, ptr noundef nonnull @.str.103, i32 noundef %conv103, i32 noundef %conv105, i32 noundef %conv107, i32 noundef %conv109) #13
  br label %cleanup

do.body110:                                       ; preds = %do.end95, %if.end70.do.body110_crit_edge, %if.end64.do.body110_crit_edge, %if.end60.do.body110_crit_edge, %if.end44.do.body110_crit_edge, %if.else.do.body110_crit_edge, %if.then34.do.body110_crit_edge, %if.end20.do.body110_crit_edge, %if.end16.do.body110_crit_edge, %if.end12.do.body110_crit_edge, %if.then9.do.body110_crit_edge
  %ret.1 = phi i32 [ %call10, %if.then9.do.body110_crit_edge ], [ %call13, %if.end12.do.body110_crit_edge ], [ %call17, %if.end16.do.body110_crit_edge ], [ %call21, %if.end20.do.body110_crit_edge ], [ %call.i.i, %if.then34.do.body110_crit_edge ], [ %ret.0, %if.end60.do.body110_crit_edge ], [ %call66, %if.end64.do.body110_crit_edge ], [ %call72, %if.end70.do.body110_crit_edge ], [ -19, %do.end95 ], [ %call40, %if.else.do.body110_crit_edge ], [ %call45, %if.end44.do.body110_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @af9035_download_firmware.__UNIQUE_ID_ddebug408, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@af9035_download_firmware, %if.then122)) #9
          to label %cleanup [label %if.then122], !srcloc !384

if.then122:                                       ; preds = %do.body110
  call void @__sanitizer_cov_trace_pc() #11
  %dev123 = getelementptr inbounds %struct.usb_interface, ptr %1, i32 0, i32 7
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @af9035_download_firmware.__UNIQUE_ID_ddebug408, ptr noundef %dev123, ptr noundef nonnull @.str.91, i32 noundef %ret.1) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then122, %do.body110, %do.end100
  %retval.0 = phi i32 [ 0, %do.end100 ], [ %ret.1, %if.then122 ], [ %ret.1, %do.body110 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %req_fw_ver) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %req) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rbuf) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %wbuf) #9
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @af9035_get_adapter_count(ptr nocapture noundef readonly %d) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 15
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %dual_mode = getelementptr inbounds %struct.state, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %dual_mode to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %dual_mode, align 1
  %bf.lshr = lshr i8 %bf.load, 7
  %narrow = add nuw nsw i8 %bf.lshr, 1
  %add = zext i8 %narrow to i32
  ret i32 %add
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @af9035_pid_filter_ctrl(ptr nocapture noundef readonly %adap, i32 noundef %onoff) #2 align 64 {
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
  %ops = getelementptr inbounds %struct.state, ptr %3, i32 0, i32 13
  %4 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops, align 4
  %fe = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 14
  %6 = ptrtoint ptr %fe to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fe, align 8
  %call = tail call i32 %5(ptr noundef %7, i32 noundef %onoff) #9
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @af9035_pid_filter(ptr nocapture noundef readonly %adap, i32 noundef %index, i16 noundef zeroext %pid, i32 noundef %onoff) #2 align 64 {
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
  %pid_filter = getelementptr inbounds %struct.state, ptr %3, i32 0, i32 13, i32 1
  %4 = ptrtoint ptr %pid_filter to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pid_filter, align 4
  %fe = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 14
  %6 = ptrtoint ptr %fe to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fe, align 8
  %call = tail call i32 %5(ptr noundef %7, i32 noundef %index, i16 noundef zeroext %pid, i32 noundef %onoff) #9
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @af9035_read_config(ptr noundef %d) #2 align 64 {
entry:
  %wbuf.i.i = alloca [6 x i8], align 1
  %req.i.i = alloca %struct.usb_req, align 4
  %tmp = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %intf1 = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 4
  %0 = ptrtoint ptr %intf1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %intf1, align 8
  %priv = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 15
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp) #9
  %4 = ptrtoint ptr %tmp to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %tmp, align 1, !annotation !385
  %af9033_i2c_addr = getelementptr inbounds %struct.state, ptr %3, i32 0, i32 10
  %5 = ptrtoint ptr %af9033_i2c_addr to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 28, ptr %af9033_i2c_addr, align 2
  %arrayidx3 = getelementptr %struct.state, ptr %3, i32 0, i32 10, i32 1
  %6 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 29, ptr %arrayidx3, align 1
  %adc_multiplier = getelementptr inbounds %struct.state, ptr %3, i32 0, i32 12, i32 0, i32 1
  %7 = ptrtoint ptr %adc_multiplier to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %adc_multiplier, align 4
  %adc_multiplier7 = getelementptr %struct.state, ptr %3, i32 0, i32 12, i32 1, i32 1
  %8 = ptrtoint ptr %adc_multiplier7 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %adc_multiplier7, align 4
  %ts_mode = getelementptr inbounds %struct.state, ptr %3, i32 0, i32 12, i32 0, i32 3
  %9 = ptrtoint ptr %ts_mode to i32
  call void @__asan_load1_noabort(i32 %9)
  %bf.load = load i8, ptr %ts_mode, align 2
  %bf.clear = and i8 %bf.load, 63
  store i8 %bf.clear, ptr %ts_mode, align 2
  %ts_mode12 = getelementptr %struct.state, ptr %3, i32 0, i32 12, i32 1, i32 3
  %10 = ptrtoint ptr %ts_mode12 to i32
  call void @__asan_load1_noabort(i32 %10)
  %bf.load13 = load i8, ptr %ts_mode12, align 2
  %bf.clear14 = and i8 %bf.load13, 63
  %bf.set15 = or i8 %bf.clear14, -128
  store i8 %bf.set15, ptr %ts_mode12, align 2
  %it930x_addresses = getelementptr inbounds %struct.state, ptr %3, i32 0, i32 11
  %11 = ptrtoint ptr %it930x_addresses to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %it930x_addresses, align 4
  %chip_type = getelementptr inbounds %struct.state, ptr %3, i32 0, i32 4
  %12 = ptrtoint ptr %chip_type to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %chip_type, align 4
  %14 = zext i16 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.192)
  switch i16 %13, label %entry.if.end57_crit_edge [
    i16 -28363, label %if.then
    i16 -27898, label %if.then44
  ]

entry.if.end57_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end57

if.then:                                          ; preds = %entry
  %dyn0_clk = getelementptr inbounds %struct.state, ptr %3, i32 0, i32 12, i32 0, i32 5
  %15 = ptrtoint ptr %dyn0_clk to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %dyn0_clk, align 4
  %dyn0_clk21 = getelementptr %struct.state, ptr %3, i32 0, i32 12, i32 1, i32 5
  %16 = ptrtoint ptr %dyn0_clk21 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 1, ptr %dyn0_clk21, align 4
  %chip_version = getelementptr inbounds %struct.state, ptr %3, i32 0, i32 3
  %17 = ptrtoint ptr %chip_version to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %chip_version, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %18)
  %cmp23 = icmp eq i8 %18, 2
  %spec.select = select i1 %cmp23, i8 96, i8 56
  %19 = getelementptr inbounds %struct.state, ptr %3, i32 0, i32 12, i32 0, i32 2
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %spec.select, ptr %19, align 1
  %21 = getelementptr %struct.state, ptr %3, i32 0, i32 12, i32 1, i32 2
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %spec.select, ptr %21, align 1
  %no_eeprom = getelementptr inbounds %struct.state, ptr %3, i32 0, i32 6
  %23 = ptrtoint ptr %no_eeprom to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %no_eeprom, align 2, !range !386
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool.not = icmp eq i8 %24, 0
  br i1 %tobool.not, label %if.then.if.end57_crit_edge, label %if.then37

if.then.if.end57_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end57

if.then37:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %ir_mode = getelementptr inbounds %struct.state, ptr %3, i32 0, i32 7
  %25 = ptrtoint ptr %ir_mode to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 5, ptr %ir_mode, align 1
  %ir_type = getelementptr inbounds %struct.state, ptr %3, i32 0, i32 8
  %26 = ptrtoint ptr %ir_type to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %ir_type, align 4
  br label %skip_eeprom

if.then44:                                        ; preds = %entry
  %udev = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 5
  %27 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %udev, align 4
  %idVendor = getelementptr inbounds %struct.usb_device, ptr %28, i32 0, i32 16, i32 7
  %29 = ptrtoint ptr %idVendor to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %idVendor, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -13817, i16 %30)
  %cmp46 = icmp eq i16 %30, -13817
  br i1 %cmp46, label %land.lhs.true, label %if.then44.cleanup_crit_edge

if.then44.cleanup_crit_edge:                      ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true:                                    ; preds = %if.then44
  %idProduct = getelementptr inbounds %struct.usb_device, ptr %28, i32 0, i32 16, i32 8
  %31 = ptrtoint ptr %idProduct to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %idProduct, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 28952, i16 %32)
  %cmp51 = icmp eq i16 %32, 28952
  br i1 %cmp51, label %if.then53, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then53:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %33 = ptrtoint ptr %it930x_addresses to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 1, ptr %it930x_addresses, align 4
  br label %cleanup

if.end57:                                         ; preds = %if.then.if.end57_crit_edge, %entry.if.end57_crit_edge
  %arrayidx58 = getelementptr %struct.state, ptr %3, i32 0, i32 5, i32 24
  %34 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx58, align 2
  %ir_mode59 = getelementptr inbounds %struct.state, ptr %3, i32 0, i32 7
  %36 = ptrtoint ptr %ir_mode59 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %35, ptr %ir_mode59, align 1
  %arrayidx61 = getelementptr %struct.state, ptr %3, i32 0, i32 5, i32 52
  %37 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx61, align 2
  %ir_type62 = getelementptr inbounds %struct.state, ptr %3, i32 0, i32 8
  %39 = ptrtoint ptr %ir_type62 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %38, ptr %ir_type62, align 4
  %dual_mode = getelementptr inbounds %struct.state, ptr %3, i32 0, i32 9
  %40 = ptrtoint ptr %dual_mode to i32
  call void @__asan_load1_noabort(i32 %40)
  %bf.load63 = load i8, ptr %dual_mode, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load63)
  %tobool64.not = icmp sgt i8 %bf.load63, -1
  br i1 %tobool64.not, label %if.end57.if.end84_crit_edge, label %if.then65

if.end57.if.end84_crit_edge:                      ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end84

if.then65:                                        ; preds = %if.end57
  %arrayidx67 = getelementptr %struct.state, ptr %3, i32 0, i32 5, i32 50
  %41 = ptrtoint ptr %arrayidx67 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx67, align 2
  %43 = ptrtoint ptr %tmp to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %42, ptr %tmp, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool68.not = icmp eq i8 %42, 0
  br i1 %tobool68.not, label %if.then65.do.body_crit_edge, label %if.then69

if.then65.do.body_crit_edge:                      ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

if.then69:                                        ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #11
  %44 = lshr i8 %42, 1
  %45 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %44, ptr %arrayidx3, align 1
  br label %do.body

do.body:                                          ; preds = %if.then69, %if.then65.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @af9035_read_config.__UNIQUE_ID_ddebug409, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@af9035_read_config, %if.then79)) #9
          to label %if.end84 [label %if.then79], !srcloc !384

if.then79:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.usb_interface, ptr %1, i32 0, i32 7
  %46 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx3, align 1
  %conv82 = zext i8 %47 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @af9035_read_config.__UNIQUE_ID_ddebug409, ptr noundef %dev, ptr noundef nonnull @.str.117, i32 noundef %conv82) #9
  br label %if.end84

if.end84:                                         ; preds = %if.then79, %do.body, %if.end57.if.end84_crit_edge
  %arrayidx93 = getelementptr %struct.state, ptr %3, i32 0, i32 5, i32 60
  %dev107 = getelementptr inbounds %struct.usb_interface, ptr %1, i32 0, i32 7
  %chip_version117 = getelementptr inbounds %struct.state, ptr %3, i32 0, i32 3
  %arrayidx192 = getelementptr %struct.state, ptr %3, i32 0, i32 5, i32 56
  %arrayidx197 = getelementptr %struct.state, ptr %3, i32 0, i32 5, i32 57
  br label %for.body

for.body:                                         ; preds = %do.end219.for.body_crit_edge, %if.end84
  %i.0406 = phi i32 [ 0, %if.end84 ], [ %inc, %do.end219.for.body_crit_edge ]
  %48 = ptrtoint ptr %arrayidx93 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %arrayidx93, align 1
  %50 = ptrtoint ptr %tmp to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %49, ptr %tmp, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @af9035_read_config.__UNIQUE_ID_ddebug410, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@af9035_read_config, %if.then106)) #9
          to label %do.end111 [label %if.then106], !srcloc !384

if.then106:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %51 = ptrtoint ptr %tmp to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %tmp, align 1
  %conv108 = zext i8 %52 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @af9035_read_config.__UNIQUE_ID_ddebug410, ptr noundef %dev107, ptr noundef nonnull @.str.118, i32 noundef %i.0406, i32 noundef %conv108) #9
  br label %do.end111

do.end111:                                        ; preds = %if.then106, %for.body
  %53 = ptrtoint ptr %chip_type to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %chip_type, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -28363, i16 %54)
  %cmp114 = icmp eq i16 %54, -28363
  br i1 %cmp114, label %if.then116, label %if.else134

if.then116:                                       ; preds = %do.end111
  %55 = ptrtoint ptr %chip_version117 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %chip_version117, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %56)
  %cmp119 = icmp eq i8 %56, 2
  %57 = ptrtoint ptr %tmp to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %tmp, align 1
  br i1 %cmp119, label %if.then121, label %if.else126

if.then121:                                       ; preds = %if.then116
  %.off = add i8 %58, -96
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %.off)
  %switch = icmp ult i8 %.off, 3
  br i1 %switch, label %if.then121.if.end138.sink.split_crit_edge, label %if.then121.if.end138_crit_edge

if.then121.if.end138_crit_edge:                   ; preds = %if.then121
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end138

if.then121.if.end138.sink.split_crit_edge:        ; preds = %if.then121
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end138.sink.split

if.else126:                                       ; preds = %if.then116
  %59 = zext i8 %58 to i64
  call void @__sanitizer_cov_trace_switch(i64 %59, ptr @__sancov_gen_cov_switch_values.193)
  switch i8 %58, label %if.else126.if.end138_crit_edge [
    i8 56, label %if.else126.if.end138.sink.split_crit_edge
    i8 81, label %if.else126.if.end138.sink.split_crit_edge418
    i8 82, label %if.else126.if.end138.sink.split_crit_edge419
  ]

if.else126.if.end138.sink.split_crit_edge419:     ; preds = %if.else126
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end138.sink.split

if.else126.if.end138.sink.split_crit_edge418:     ; preds = %if.else126
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end138.sink.split

if.else126.if.end138.sink.split_crit_edge:        ; preds = %if.else126
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end138.sink.split

if.else126.if.end138_crit_edge:                   ; preds = %if.else126
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end138

if.else134:                                       ; preds = %do.end111
  call void @__sanitizer_cov_trace_pc() #11
  %60 = ptrtoint ptr %tmp to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %tmp, align 1
  br label %if.end138.sink.split

if.end138.sink.split:                             ; preds = %if.else134, %if.else126.if.end138.sink.split_crit_edge, %if.else126.if.end138.sink.split_crit_edge418, %if.else126.if.end138.sink.split_crit_edge419, %if.then121.if.end138.sink.split_crit_edge
  %.sink = phi i8 [ %61, %if.else134 ], [ %58, %if.then121.if.end138.sink.split_crit_edge ], [ %58, %if.else126.if.end138.sink.split_crit_edge ], [ %58, %if.else126.if.end138.sink.split_crit_edge418 ], [ %58, %if.else126.if.end138.sink.split_crit_edge419 ]
  %tuner125 = getelementptr %struct.state, ptr %3, i32 0, i32 12, i32 %i.0406, i32 2
  %62 = ptrtoint ptr %tuner125 to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %.sink, ptr %tuner125, align 1
  br label %if.end138

if.end138:                                        ; preds = %if.end138.sink.split, %if.else126.if.end138_crit_edge, %if.then121.if.end138_crit_edge
  %tuner141 = getelementptr %struct.state, ptr %3, i32 0, i32 12, i32 %i.0406, i32 2
  %63 = ptrtoint ptr %tuner141 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %tuner141, align 1
  %65 = ptrtoint ptr %tmp to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %tmp, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %64, i8 %66)
  %cmp144.not = icmp eq i8 %64, %66
  br i1 %cmp144.not, label %if.end138.if.end156_crit_edge, label %do.end149

if.end138.if.end156_crit_edge:                    ; preds = %if.end138
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end156

do.end149:                                        ; preds = %if.end138
  call void @__sanitizer_cov_trace_pc() #11
  %conv143 = zext i8 %66 to i32
  %conv142 = zext i8 %64 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev107, ptr noundef nonnull @.str.119, i32 noundef %i.0406, i32 noundef %conv143, i32 noundef %conv142) #13
  %67 = ptrtoint ptr %tuner141 to i32
  call void @__asan_load1_noabort(i32 %67)
  %.pr = load i8, ptr %tuner141, align 1
  br label %if.end156

if.end156:                                        ; preds = %do.end149, %if.end138.if.end156_crit_edge
  %68 = phi i8 [ %.pr, %do.end149 ], [ %64, %if.end138.if.end156_crit_edge ]
  %69 = zext i8 %68 to i64
  call void @__sanitizer_cov_trace_switch(i64 %69, ptr @__sancov_gen_cov_switch_values.194)
  switch i8 %68, label %do.end167 [
    i8 39, label %if.end156.sw.bb161_crit_edge
    i8 40, label %if.end156.sw.bb161_crit_edge420
    i8 -96, label %if.end156.sw.bb161_crit_edge421
    i8 -95, label %if.end156.sw.bb161_crit_edge422
    i8 50, label %if.end156.sw.bb161_crit_edge423
    i8 46, label %if.end156.sw.bb161_crit_edge424
    i8 56, label %if.end156.sw.epilog170_crit_edge
    i8 81, label %if.end156.sw.epilog170_crit_edge425
    i8 82, label %if.end156.sw.epilog170_crit_edge426
    i8 96, label %if.end156.sw.epilog170_crit_edge427
    i8 97, label %if.end156.sw.epilog170_crit_edge428
    i8 98, label %if.end156.sw.epilog170_crit_edge429
  ]

if.end156.sw.epilog170_crit_edge429:              ; preds = %if.end156
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog170

if.end156.sw.epilog170_crit_edge428:              ; preds = %if.end156
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog170

if.end156.sw.epilog170_crit_edge427:              ; preds = %if.end156
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog170

if.end156.sw.epilog170_crit_edge426:              ; preds = %if.end156
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog170

if.end156.sw.epilog170_crit_edge425:              ; preds = %if.end156
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog170

if.end156.sw.epilog170_crit_edge:                 ; preds = %if.end156
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog170

if.end156.sw.bb161_crit_edge424:                  ; preds = %if.end156
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb161

if.end156.sw.bb161_crit_edge423:                  ; preds = %if.end156
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb161

if.end156.sw.bb161_crit_edge422:                  ; preds = %if.end156
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb161

if.end156.sw.bb161_crit_edge421:                  ; preds = %if.end156
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb161

if.end156.sw.bb161_crit_edge420:                  ; preds = %if.end156
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb161

if.end156.sw.bb161_crit_edge:                     ; preds = %if.end156
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb161

sw.bb161:                                         ; preds = %if.end156.sw.bb161_crit_edge, %if.end156.sw.bb161_crit_edge420, %if.end156.sw.bb161_crit_edge421, %if.end156.sw.bb161_crit_edge422, %if.end156.sw.bb161_crit_edge423, %if.end156.sw.bb161_crit_edge424
  %spec_inv = getelementptr %struct.state, ptr %3, i32 0, i32 12, i32 %i.0406, i32 4
  %70 = ptrtoint ptr %spec_inv to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 1, ptr %spec_inv, align 1
  br label %sw.epilog170

do.end167:                                        ; preds = %if.end156
  call void @__sanitizer_cov_trace_pc() #11
  %71 = ptrtoint ptr %tmp to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %tmp, align 1
  %conv169 = zext i8 %72 to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev107, ptr noundef nonnull @.str.121, i32 noundef %conv169) #13
  br label %sw.epilog170

sw.epilog170:                                     ; preds = %do.end167, %sw.bb161, %if.end156.sw.epilog170_crit_edge, %if.end156.sw.epilog170_crit_edge425, %if.end156.sw.epilog170_crit_edge426, %if.end156.sw.epilog170_crit_edge427, %if.end156.sw.epilog170_crit_edge428, %if.end156.sw.epilog170_crit_edge429
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.0406)
  %cmp171 = icmp eq i32 %i.0406, 1
  br i1 %cmp171, label %if.then173, label %sw.epilog170.if.end189_crit_edge

sw.epilog170.if.end189_crit_edge:                 ; preds = %sw.epilog170
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end189

if.then173:                                       ; preds = %sw.epilog170
  %73 = ptrtoint ptr %tuner141 to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %tuner141, align 1
  %75 = zext i8 %74 to i64
  call void @__sanitizer_cov_trace_switch(i64 %75, ptr @__sancov_gen_cov_switch_values.195)
  switch i8 %74, label %sw.default179 [
    i8 46, label %if.then173.if.end189_crit_edge
    i8 56, label %if.then173.if.end189_crit_edge430
    i8 81, label %if.then173.if.end189_crit_edge431
    i8 82, label %if.then173.if.end189_crit_edge432
    i8 96, label %if.then173.if.end189_crit_edge433
    i8 97, label %if.then173.if.end189_crit_edge434
    i8 98, label %if.then173.if.end189_crit_edge435
    i8 -96, label %if.then173.if.end189_crit_edge436
  ]

if.then173.if.end189_crit_edge436:                ; preds = %if.then173
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end189

if.then173.if.end189_crit_edge435:                ; preds = %if.then173
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end189

if.then173.if.end189_crit_edge434:                ; preds = %if.then173
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end189

if.then173.if.end189_crit_edge433:                ; preds = %if.then173
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end189

if.then173.if.end189_crit_edge432:                ; preds = %if.then173
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end189

if.then173.if.end189_crit_edge431:                ; preds = %if.then173
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end189

if.then173.if.end189_crit_edge430:                ; preds = %if.then173
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end189

if.then173.if.end189_crit_edge:                   ; preds = %if.then173
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end189

sw.default179:                                    ; preds = %if.then173
  call void @__sanitizer_cov_trace_pc() #11
  %76 = ptrtoint ptr %dual_mode to i32
  call void @__asan_load1_noabort(i32 %76)
  %bf.load181 = load i8, ptr %dual_mode, align 1
  %bf.clear182 = and i8 %bf.load181, 127
  store i8 %bf.clear182, ptr %dual_mode, align 1
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev107, ptr noundef nonnull @.str.124) #13
  br label %if.end189

if.end189:                                        ; preds = %sw.default179, %if.then173.if.end189_crit_edge, %if.then173.if.end189_crit_edge430, %if.then173.if.end189_crit_edge431, %if.then173.if.end189_crit_edge432, %if.then173.if.end189_crit_edge433, %if.then173.if.end189_crit_edge434, %if.then173.if.end189_crit_edge435, %if.then173.if.end189_crit_edge436, %sw.epilog170.if.end189_crit_edge
  %77 = ptrtoint ptr %arrayidx192 to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %arrayidx192, align 1
  %79 = ptrtoint ptr %arrayidx197 to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %arrayidx197, align 1
  %81 = ptrtoint ptr %tmp to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 %80, ptr %tmp, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @af9035_read_config.__UNIQUE_ID_ddebug411, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@af9035_read_config, %if.then214)) #9
          to label %do.end219 [label %if.then214], !srcloc !384

if.then214:                                       ; preds = %if.end189
  call void @__sanitizer_cov_trace_pc() #11
  %conv198 = zext i8 %80 to i32
  %shl199 = shl nuw nsw i32 %conv198, 8
  %conv200 = zext i8 %78 to i32
  %or = or i32 %shl199, %conv200
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @af9035_read_config.__UNIQUE_ID_ddebug411, ptr noundef %dev107, ptr noundef nonnull @.str.126, i32 noundef %i.0406, i32 noundef %or) #9
  br label %do.end219

do.end219:                                        ; preds = %if.then214, %if.end189
  %inc = add nuw nsw i32 %i.0406, 1
  %82 = ptrtoint ptr %dual_mode to i32
  call void @__asan_load1_noabort(i32 %82)
  %bf.load86 = load i8, ptr %dual_mode, align 1
  %bf.lshr87 = lshr i8 %bf.load86, 7
  %narrow = add nuw nsw i8 %bf.lshr87, 1
  %add = zext i8 %narrow to i32
  %cmp89 = icmp ult i32 %inc, %add
  br i1 %cmp89, label %do.end219.for.body_crit_edge, label %do.end219.skip_eeprom_crit_edge

do.end219.skip_eeprom_crit_edge:                  ; preds = %do.end219
  call void @__sanitizer_cov_trace_pc() #11
  br label %skip_eeprom

do.end219.for.body_crit_edge:                     ; preds = %do.end219
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

skip_eeprom:                                      ; preds = %do.end219.skip_eeprom_crit_edge, %if.then37
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %wbuf.i.i) #9
  %83 = getelementptr inbounds [6 x i8], ptr %wbuf.i.i, i32 0, i32 1
  %84 = getelementptr inbounds [6 x i8], ptr %wbuf.i.i, i32 0, i32 2
  %85 = getelementptr inbounds [6 x i8], ptr %wbuf.i.i, i32 0, i32 3
  %86 = getelementptr inbounds [6 x i8], ptr %wbuf.i.i, i32 0, i32 4
  %87 = getelementptr inbounds [6 x i8], ptr %wbuf.i.i, i32 0, i32 5
  %88 = ptrtoint ptr %wbuf.i.i to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 1, ptr %wbuf.i.i, align 1
  %89 = ptrtoint ptr %83 to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 2, ptr %83, align 1
  %90 = ptrtoint ptr %84 to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 0, ptr %84, align 1
  %91 = ptrtoint ptr %85 to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 0, ptr %85, align 1
  %92 = ptrtoint ptr %86 to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 -40, ptr %86, align 1
  %93 = ptrtoint ptr %87 to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 0, ptr %87, align 1
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %req.i.i) #9
  %94 = call ptr @memset(ptr %req.i.i, i32 255, i32 12)
  %95 = ptrtoint ptr %req.i.i to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 0, ptr %req.i.i, align 4
  %mbox11.i.i = getelementptr inbounds %struct.usb_req, ptr %req.i.i, i32 0, i32 1
  %96 = ptrtoint ptr %mbox11.i.i to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 0, ptr %mbox11.i.i, align 1
  %wlen.i.i = getelementptr inbounds %struct.usb_req, ptr %req.i.i, i32 0, i32 2
  %97 = ptrtoint ptr %wlen.i.i to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 6, ptr %wlen.i.i, align 2
  %wbuf12.i.i = getelementptr inbounds %struct.usb_req, ptr %req.i.i, i32 0, i32 3
  %98 = ptrtoint ptr %wbuf12.i.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr %wbuf.i.i, ptr %wbuf12.i.i, align 4
  %rlen.i.i = getelementptr inbounds %struct.usb_req, ptr %req.i.i, i32 0, i32 4
  %99 = ptrtoint ptr %rlen.i.i to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 1, ptr %rlen.i.i, align 4
  %rbuf.i.i = getelementptr inbounds %struct.usb_req, ptr %req.i.i, i32 0, i32 5
  %100 = ptrtoint ptr %rbuf.i.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr %tmp, ptr %rbuf.i.i, align 4
  %call.i.i = call fastcc i32 @af9035_ctrl_msg(ptr noundef %d, ptr noundef nonnull %req.i.i) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %req.i.i) #9
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %wbuf.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp222 = icmp slt i32 %call.i.i, 0
  br i1 %cmp222, label %do.body283, label %if.end225

if.end225:                                        ; preds = %skip_eeprom
  %101 = ptrtoint ptr %tmp to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %tmp, align 1
  %103 = and i8 %102, 15
  store i8 %103, ptr %tmp, align 1
  %104 = ptrtoint ptr %chip_type to i32
  call void @__asan_load2_noabort(i32 %104)
  %105 = load i16, ptr %chip_type, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -28363, i16 %105)
  %cmp235 = icmp eq i16 %105, -28363
  %idxprom242 = zext i8 %103 to i32
  %arrayidx243 = getelementptr [12 x i32], ptr @clock_lut_af9035, i32 0, i32 %idxprom242
  %arrayidx238 = getelementptr [10 x i32], ptr @clock_lut_it9135, i32 0, i32 %idxprom242
  %arrayidx238.arrayidx243 = select i1 %cmp235, ptr %arrayidx238, ptr %arrayidx243
  %106 = ptrtoint ptr %arrayidx238.arrayidx243 to i32
  call void @__asan_load4_noabort(i32 %106)
  %.sink413416 = load i32, ptr %arrayidx238.arrayidx243, align 4
  %107 = getelementptr %struct.state, ptr %3, i32 0, i32 12, i32 0
  %108 = ptrtoint ptr %107 to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 %.sink413416, ptr %107, align 4
  %109 = getelementptr %struct.state, ptr %3, i32 0, i32 12, i32 1
  %110 = ptrtoint ptr %109 to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 %.sink413416, ptr %109, align 4
  %no_read = getelementptr inbounds %struct.state, ptr %3, i32 0, i32 9
  %111 = ptrtoint ptr %no_read to i32
  call void @__asan_load1_noabort(i32 %111)
  %bf.load251 = load i8, ptr %no_read, align 1
  %bf.clear252 = and i8 %bf.load251, -65
  store i8 %bf.clear252, ptr %no_read, align 1
  %tuner256 = getelementptr inbounds %struct.state, ptr %3, i32 0, i32 12, i32 0, i32 2
  %112 = ptrtoint ptr %tuner256 to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %tuner256, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -96, i8 %113)
  %cmp258 = icmp eq i8 %113, -96
  br i1 %cmp258, label %land.lhs.true260, label %if.end225.cleanup_crit_edge

if.end225.cleanup_crit_edge:                      ; preds = %if.end225
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true260:                                 ; preds = %if.end225
  %udev261 = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 5
  %114 = ptrtoint ptr %udev261 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %udev261, align 4
  %idVendor263 = getelementptr inbounds %struct.usb_device, ptr %115, i32 0, i32 16, i32 7
  %116 = ptrtoint ptr %idVendor263 to i32
  call void @__asan_load2_noabort(i32 %116)
  %117 = load i16, ptr %idVendor263, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -13817, i16 %117)
  %cmp265 = icmp eq i16 %117, -13817
  br i1 %cmp265, label %if.then267, label %land.lhs.true260.cleanup_crit_edge

land.lhs.true260.cleanup_crit_edge:               ; preds = %land.lhs.true260
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then267:                                       ; preds = %land.lhs.true260
  %idProduct270 = getelementptr inbounds %struct.usb_device, ptr %115, i32 0, i32 16, i32 8
  %118 = ptrtoint ptr %idProduct270 to i32
  call void @__asan_load2_noabort(i32 %118)
  %119 = load i16, ptr %idProduct270, align 2
  %120 = call i16 @llvm.bswap.i16(i16 %119)
  %121 = zext i16 %120 to i64
  call void @__sanitizer_cov_trace_switch(i64 %121, ptr @__sancov_gen_cov_switch_values.196)
  switch i16 %120, label %if.then267.cleanup_crit_edge [
    i16 -22425, label %if.then267.do.end275_crit_edge
    i16 2085, label %if.then267.do.end275_crit_edge437
  ]

if.then267.do.end275_crit_edge437:                ; preds = %if.then267
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end275

if.then267.do.end275_crit_edge:                   ; preds = %if.then267
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end275

if.then267.cleanup_crit_edge:                     ; preds = %if.then267
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end275:                                        ; preds = %if.then267.do.end275_crit_edge, %if.then267.do.end275_crit_edge437
  %dev276 = getelementptr inbounds %struct.usb_interface, ptr %1, i32 0, i32 7
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev276, ptr noundef nonnull @.str.128) #13
  %122 = ptrtoint ptr %no_read to i32
  call void @__asan_load1_noabort(i32 %122)
  %bf.load278 = load i8, ptr %no_read, align 1
  %bf.set280 = or i8 %bf.load278, 64
  store i8 %bf.set280, ptr %no_read, align 1
  br label %cleanup

do.body283:                                       ; preds = %skip_eeprom
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @af9035_read_config.__UNIQUE_ID_ddebug412, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@af9035_read_config, %if.then295)) #9
          to label %cleanup [label %if.then295], !srcloc !384

if.then295:                                       ; preds = %do.body283
  call void @__sanitizer_cov_trace_pc() #11
  %dev296 = getelementptr inbounds %struct.usb_interface, ptr %1, i32 0, i32 7
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @af9035_read_config.__UNIQUE_ID_ddebug412, ptr noundef %dev296, ptr noundef nonnull @.str.91, i32 noundef %call.i.i) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then295, %do.body283, %do.end275, %if.then267.cleanup_crit_edge, %land.lhs.true260.cleanup_crit_edge, %if.end225.cleanup_crit_edge, %if.then53, %land.lhs.true.cleanup_crit_edge, %if.then44.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then53 ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %if.then44.cleanup_crit_edge ], [ 0, %do.end275 ], [ 0, %if.then267.cleanup_crit_edge ], [ 0, %land.lhs.true260.cleanup_crit_edge ], [ 0, %if.end225.cleanup_crit_edge ], [ %call.i.i, %if.then295 ], [ %call.i.i, %do.body283 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @af9035_frontend_attach(ptr noundef %adap) #2 align 64 {
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
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @af9035_frontend_attach.__UNIQUE_ID_ddebug417, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@af9035_frontend_attach, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !384

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.usb_interface, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %id, align 4
  %conv12 = zext i8 %7 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @af9035_frontend_attach.__UNIQUE_ID_ddebug417, ptr noundef %dev, ptr noundef nonnull @.str.131, i32 noundef %conv12) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %8 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %id, align 4
  %idxprom = zext i8 %9 to i32
  %tuner = getelementptr %struct.state, ptr %3, i32 0, i32 12, i32 %idxprom, i32 2
  %10 = ptrtoint ptr %tuner to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %tuner, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool14.not = icmp eq i8 %11, 0
  br i1 %tobool14.not, label %do.end.do.body49_crit_edge, label %if.end16

do.end.do.body49_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body49

if.end16:                                         ; preds = %do.end
  %fe = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 14
  %fe22 = getelementptr %struct.state, ptr %3, i32 0, i32 12, i32 %idxprom, i32 7
  %12 = ptrtoint ptr %fe22 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %fe, ptr %fe22, align 4
  %ops = getelementptr inbounds %struct.state, ptr %3, i32 0, i32 13
  %13 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %id, align 4
  %idxprom25 = zext i8 %14 to i32
  %ops27 = getelementptr %struct.state, ptr %3, i32 0, i32 12, i32 %idxprom25, i32 6
  %15 = ptrtoint ptr %ops27 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %ops, ptr %ops27, align 4
  %16 = load i8, ptr %id, align 4
  %idxprom29 = zext i8 %16 to i32
  %arrayidx30 = getelementptr %struct.state, ptr %3, i32 0, i32 10, i32 %idxprom29
  %17 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx30, align 1
  %arrayidx34 = getelementptr %struct.state, ptr %3, i32 0, i32 12, i32 %idxprom29
  %i2c_adap = getelementptr inbounds %struct.dvb_usb_device, ptr %add.ptr, i32 0, i32 10
  %call35 = tail call fastcc i32 @af9035_add_i2c_dev(ptr noundef %add.ptr, ptr noundef nonnull @.str.132, i8 noundef zeroext %18, ptr noundef %arrayidx34, ptr noundef %i2c_adap)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.end38, label %if.end16.do.body49_crit_edge

if.end16.do.body49_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body49

if.end38:                                         ; preds = %if.end16
  %19 = ptrtoint ptr %fe to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %fe, align 8
  %cmp = icmp eq ptr %20, null
  br i1 %cmp, label %if.end38.do.body49_crit_edge, label %if.end43

if.end38.do.body49_crit_edge:                     ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body49

if.end43:                                         ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #11
  %i2c_gate_ctrl = getelementptr inbounds %struct.dvb_frontend, ptr %20, i32 0, i32 1, i32 28
  %21 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %i2c_gate_ctrl, align 4
  %22 = ptrtoint ptr %fe to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %fe, align 8
  %callback = getelementptr inbounds %struct.dvb_frontend, ptr %23, i32 0, i32 9
  %24 = ptrtoint ptr %callback to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @af9035_frontend_callback, ptr %callback, align 4
  br label %cleanup

do.body49:                                        ; preds = %if.end38.do.body49_crit_edge, %if.end16.do.body49_crit_edge, %do.end.do.body49_crit_edge
  %ret.0 = phi i32 [ %call35, %if.end16.do.body49_crit_edge ], [ -19, %do.end.do.body49_crit_edge ], [ -19, %if.end38.do.body49_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @af9035_frontend_attach.__UNIQUE_ID_ddebug418, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@af9035_frontend_attach, %if.then61)) #9
          to label %cleanup [label %if.then61], !srcloc !384

if.then61:                                        ; preds = %do.body49
  call void @__sanitizer_cov_trace_pc() #11
  %dev62 = getelementptr inbounds %struct.usb_interface, ptr %5, i32 0, i32 7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @af9035_frontend_attach.__UNIQUE_ID_ddebug418, ptr noundef %dev62, ptr noundef nonnull @.str.91, i32 noundef %ret.0) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then61, %do.body49, %if.end43
  %retval.0 = phi i32 [ 0, %if.end43 ], [ %ret.0, %if.then61 ], [ %ret.0, %do.body49 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @af9035_frontend_detach(ptr nocapture noundef readonly %adap) #2 align 64 {
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
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @af9035_frontend_detach.__UNIQUE_ID_ddebug421, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@af9035_frontend_detach, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !384

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.usb_interface, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %id, align 4
  %conv12 = zext i8 %7 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @af9035_frontend_detach.__UNIQUE_ID_ddebug421, ptr noundef %dev, ptr noundef nonnull @.str.131, i32 noundef %conv12) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %8 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %id, align 4
  %10 = zext i8 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.197)
  switch i8 %9, label %do.end.if.end31_crit_edge [
    i8 1, label %if.then16
    i8 0, label %if.then24
  ]

do.end.if.end31_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end31

if.then16:                                        ; preds = %do.end
  %arrayidx = getelementptr %struct.state, ptr %3, i32 0, i32 14, i32 1
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx, align 4
  %tobool17.not = icmp eq ptr %12, null
  br i1 %tobool17.not, label %if.then16.if.end31_crit_edge, label %if.then16.if.end31.sink.split_crit_edge

if.then16.if.end31.sink.split_crit_edge:          ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end31.sink.split

if.then16.if.end31_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end31

if.then24:                                        ; preds = %do.end
  %i2c_client25 = getelementptr inbounds %struct.state, ptr %3, i32 0, i32 14
  %13 = ptrtoint ptr %i2c_client25 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %i2c_client25, align 4
  %tobool27.not = icmp eq ptr %14, null
  br i1 %tobool27.not, label %if.then24.if.end31_crit_edge, label %if.then24.if.end31.sink.split_crit_edge

if.then24.if.end31.sink.split_crit_edge:          ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end31.sink.split

if.then24.if.end31_crit_edge:                     ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end31

if.end31.sink.split:                              ; preds = %if.then24.if.end31.sink.split_crit_edge, %if.then16.if.end31.sink.split_crit_edge
  tail call fastcc void @af9035_del_i2c_dev(ptr noundef %add.ptr)
  br label %if.end31

if.end31:                                         ; preds = %if.end31.sink.split, %if.then24.if.end31_crit_edge, %if.then16.if.end31_crit_edge, %do.end.if.end31_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @af9035_tuner_attach(ptr noundef %adap) #2 align 64 {
entry:
  %pdevinfo.i.i = alloca %struct.platform_device_info, align 8
  %wbuf.i.i = alloca [64 x i8], align 1
  %req.i.i = alloca %struct.usb_req, align 4
  %msg = alloca [1 x %struct.i2c_msg], align 4
  %tua9001_pdata = alloca %struct.tua9001_platform_data, align 4
  %fc2580_pdata = alloca %struct.fc2580_platform_data, align 4
  %it913x_pdata = alloca %struct.it913x_platform_data, align 4
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
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg) #9
  %6 = call ptr @memset(ptr %msg, i32 255, i32 12)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @af9035_tuner_attach.__UNIQUE_ID_ddebug422, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@af9035_tuner_attach, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !384

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.usb_interface, ptr %5, i32 0, i32 7
  %7 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %id, align 4
  %conv12 = zext i8 %8 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @af9035_tuner_attach.__UNIQUE_ID_ddebug422, ptr noundef %dev, ptr noundef nonnull @.str.131, i32 noundef %conv12) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %9 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %id, align 4
  %idxprom = zext i8 %10 to i32
  %tuner = getelementptr %struct.state, ptr %3, i32 0, i32 12, i32 %idxprom, i32 2
  %11 = ptrtoint ptr %tuner to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %tuner, align 1
  %13 = zext i8 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.198)
  switch i8 %12, label %do.end.do.body345_crit_edge [
    i8 39, label %sw.bb
    i8 40, label %sw.bb42
    i8 -96, label %sw.bb64
    i8 -95, label %sw.bb153
    i8 50, label %sw.bb182
    i8 46, label %sw.bb210
    i8 56, label %do.end.sw.bb274_crit_edge
    i8 81, label %do.end.sw.bb274_crit_edge509
    i8 82, label %do.end.sw.bb274_crit_edge510
    i8 96, label %do.end.sw.bb274_crit_edge511
    i8 97, label %do.end.sw.bb274_crit_edge512
    i8 98, label %do.end.sw.bb274_crit_edge513
  ]

do.end.sw.bb274_crit_edge513:                     ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb274

do.end.sw.bb274_crit_edge512:                     ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb274

do.end.sw.bb274_crit_edge511:                     ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb274

do.end.sw.bb274_crit_edge510:                     ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb274

do.end.sw.bb274_crit_edge509:                     ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb274

do.end.sw.bb274_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb274

do.end.do.body345_crit_edge:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body345

sw.bb:                                            ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tua9001_pdata) #9
  %fe15 = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 14
  %14 = ptrtoint ptr %fe15 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %fe15, align 8
  %16 = ptrtoint ptr %tua9001_pdata to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %15, ptr %tua9001_pdata, align 4
  %call17 = tail call fastcc i32 @af9035_wr_reg_mask(ptr noundef %add.ptr, i32 noundef 55532, i8 noundef zeroext 1, i8 noundef zeroext 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %cmp = icmp slt i32 %call17, 0
  br i1 %cmp, label %sw.bb.cleanup.thread_crit_edge, label %if.end20

sw.bb.cleanup.thread_crit_edge:                   ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.thread

if.end20:                                         ; preds = %sw.bb
  %call21 = tail call fastcc i32 @af9035_wr_reg_mask(ptr noundef %add.ptr, i32 noundef 55533, i8 noundef zeroext 1, i8 noundef zeroext 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %cmp22 = icmp slt i32 %call21, 0
  br i1 %cmp22, label %if.end20.cleanup.thread_crit_edge, label %if.end25

if.end20.cleanup.thread_crit_edge:                ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.thread

if.end25:                                         ; preds = %if.end20
  %call26 = tail call fastcc i32 @af9035_wr_reg_mask(ptr noundef %add.ptr, i32 noundef 55528, i8 noundef zeroext 1, i8 noundef zeroext 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %cmp27 = icmp slt i32 %call26, 0
  br i1 %cmp27, label %if.end25.cleanup.thread_crit_edge, label %if.end30

if.end25.cleanup.thread_crit_edge:                ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.thread

if.end30:                                         ; preds = %if.end25
  %call31 = tail call fastcc i32 @af9035_wr_reg_mask(ptr noundef %add.ptr, i32 noundef 55529, i8 noundef zeroext 1, i8 noundef zeroext 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %cmp32 = icmp slt i32 %call31, 0
  br i1 %cmp32, label %if.end30.cleanup.thread_crit_edge, label %if.end35

if.end30.cleanup.thread_crit_edge:                ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.thread

if.end35:                                         ; preds = %if.end30
  %i2c_adap = getelementptr inbounds %struct.dvb_usb_device, ptr %add.ptr, i32 0, i32 10
  %call36 = call fastcc i32 @af9035_add_i2c_dev(ptr noundef %add.ptr, ptr noundef nonnull @.str.149, i8 noundef zeroext 96, ptr noundef nonnull %tua9001_pdata, ptr noundef %i2c_adap)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %cleanup, label %if.end35.cleanup.thread_crit_edge

if.end35.cleanup.thread_crit_edge:                ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.end35.cleanup.thread_crit_edge, %if.end30.cleanup.thread_crit_edge, %if.end25.cleanup.thread_crit_edge, %if.end20.cleanup.thread_crit_edge, %sw.bb.cleanup.thread_crit_edge
  %ret.0.ph = phi i32 [ %call36, %if.end35.cleanup.thread_crit_edge ], [ %call31, %if.end30.cleanup.thread_crit_edge ], [ %call26, %if.end25.cleanup.thread_crit_edge ], [ %call21, %if.end20.cleanup.thread_crit_edge ], [ %call17, %sw.bb.cleanup.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tua9001_pdata) #9
  br label %do.body345

cleanup:                                          ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #11
  %17 = ptrtoint ptr %fe15 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %fe15, align 8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tua9001_pdata) #9
  br label %sw.epilog340

sw.bb42:                                          ; preds = %do.end
  %call43 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.150) #9
  %tobool44.not = icmp eq ptr %call43, null
  br i1 %tobool44.not, label %cond.end, label %sw.bb42.if.then48_crit_edge

sw.bb42.if.then48_crit_edge:                      ; preds = %sw.bb42
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then48

cond.end:                                         ; preds = %sw.bb42
  %call45 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.151) #9
  %call46 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.150) #9
  %tobool47.not = icmp eq ptr %call46, null
  br i1 %tobool47.not, label %do.end59, label %cond.end.if.then48_crit_edge

cond.end.if.then48_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then48

if.then48:                                        ; preds = %cond.end.if.then48_crit_edge, %sw.bb42.if.then48_crit_edge
  %cond482 = phi ptr [ %call46, %cond.end.if.then48_crit_edge ], [ %call43, %sw.bb42.if.then48_crit_edge ]
  %fe49 = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 14
  %19 = ptrtoint ptr %fe49 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %fe49, align 8
  %i2c_adap51 = getelementptr inbounds %struct.dvb_usb_device, ptr %add.ptr, i32 0, i32 10
  %call52 = tail call ptr %cond482(ptr noundef %20, ptr noundef %i2c_adap51, ptr noundef nonnull @af9035_fc0011_config) #9
  %cmp53 = icmp eq ptr %call52, null
  br i1 %cmp53, label %if.then55, label %if.then48.cleanup362_crit_edge

if.then48.cleanup362_crit_edge:                   ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup362

if.then55:                                        ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__symbol_put(ptr noundef nonnull @.str.150) #9
  br label %do.body345

do.end59:                                         ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  %call61 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.152) #13
  br label %do.body345

sw.bb64:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %cmp67 = icmp eq i8 %10, 0
  br i1 %cmp67, label %if.then69, label %sw.bb64.if.end121_crit_edge

sw.bb64.if.end121_crit_edge:                      ; preds = %sw.bb64
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end121

if.then69:                                        ; preds = %sw.bb64
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %wbuf.i.i) #9
  %21 = getelementptr inbounds i8, ptr %wbuf.i.i, i32 7
  %22 = call ptr @memset(ptr %21, i32 255, i32 57)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %req.i.i) #9
  %23 = call ptr @memset(ptr %req.i.i, i32 255, i32 12)
  %24 = ptrtoint ptr %req.i.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 1, ptr %req.i.i, align 4
  %mbox2.i.i = getelementptr inbounds %struct.usb_req, ptr %req.i.i, i32 0, i32 1
  %25 = ptrtoint ptr %mbox2.i.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %mbox2.i.i, align 1
  %wlen.i.i = getelementptr inbounds %struct.usb_req, ptr %req.i.i, i32 0, i32 2
  %26 = ptrtoint ptr %wlen.i.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 7, ptr %wlen.i.i, align 2
  %wbuf4.i.i = getelementptr inbounds %struct.usb_req, ptr %req.i.i, i32 0, i32 3
  %27 = ptrtoint ptr %wbuf4.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %wbuf.i.i, ptr %wbuf4.i.i, align 4
  %rlen.i.i = getelementptr inbounds %struct.usb_req, ptr %req.i.i, i32 0, i32 4
  %28 = ptrtoint ptr %rlen.i.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 0, ptr %rlen.i.i, align 4
  %rbuf.i.i = getelementptr inbounds %struct.usb_req, ptr %req.i.i, i32 0, i32 5
  %29 = ptrtoint ptr %rbuf.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %rbuf.i.i, align 4
  %30 = ptrtoint ptr %wbuf.i.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 1, ptr %wbuf.i.i, align 1
  %arrayidx8.i.i = getelementptr inbounds [64 x i8], ptr %wbuf.i.i, i32 0, i32 1
  %31 = ptrtoint ptr %arrayidx8.i.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 2, ptr %arrayidx8.i.i, align 1
  %arrayidx9.i.i = getelementptr inbounds [64 x i8], ptr %wbuf.i.i, i32 0, i32 2
  %32 = ptrtoint ptr %arrayidx9.i.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 0, ptr %arrayidx9.i.i, align 1
  %arrayidx10.i.i = getelementptr inbounds [64 x i8], ptr %wbuf.i.i, i32 0, i32 3
  %33 = ptrtoint ptr %arrayidx10.i.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 0, ptr %arrayidx10.i.i, align 1
  %arrayidx14.i.i = getelementptr inbounds [64 x i8], ptr %wbuf.i.i, i32 0, i32 4
  %34 = ptrtoint ptr %arrayidx14.i.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 -40, ptr %arrayidx14.i.i, align 1
  %arrayidx18.i.i = getelementptr inbounds [64 x i8], ptr %wbuf.i.i, i32 0, i32 5
  %35 = ptrtoint ptr %arrayidx18.i.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 -32, ptr %arrayidx18.i.i, align 1
  %arrayidx19.i.i = getelementptr inbounds [64 x i8], ptr %wbuf.i.i, i32 0, i32 6
  %36 = ptrtoint ptr %arrayidx19.i.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 1, ptr %arrayidx19.i.i, align 1
  %call.i.i = call fastcc i32 @af9035_ctrl_msg(ptr noundef %add.ptr, ptr noundef nonnull %req.i.i) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %req.i.i) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %wbuf.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp71 = icmp slt i32 %call.i.i, 0
  br i1 %cmp71, label %if.then69.do.body345_crit_edge, label %if.end74

if.then69.do.body345_crit_edge:                   ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body345

if.end74:                                         ; preds = %if.then69
  %call75 = call fastcc i32 @af9035_wr_reg(ptr noundef %add.ptr, i32 noundef 55521, i8 noundef zeroext 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call75)
  %cmp76 = icmp slt i32 %call75, 0
  br i1 %cmp76, label %if.end74.do.body345_crit_edge, label %if.end79

if.end74.do.body345_crit_edge:                    ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body345

if.end79:                                         ; preds = %if.end74
  %call80 = call fastcc i32 @af9035_wr_reg(ptr noundef %add.ptr, i32 noundef 55519, i8 noundef zeroext 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call80)
  %cmp81 = icmp slt i32 %call80, 0
  br i1 %cmp81, label %if.end79.do.body345_crit_edge, label %if.end84

if.end79.do.body345_crit_edge:                    ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body345

if.end84:                                         ; preds = %if.end79
  call void @msleep(i32 noundef 30) #9
  %call85 = call fastcc i32 @af9035_wr_reg(ptr noundef %add.ptr, i32 noundef 55519, i8 noundef zeroext 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call85)
  %cmp86 = icmp slt i32 %call85, 0
  br i1 %cmp86, label %if.end84.do.body345_crit_edge, label %if.end89

if.end84.do.body345_crit_edge:                    ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body345

if.end89:                                         ; preds = %if.end84
  call void @msleep(i32 noundef 300) #9
  %call90 = call fastcc i32 @af9035_wr_reg(ptr noundef %add.ptr, i32 noundef 55488, i8 noundef zeroext 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call90)
  %cmp91 = icmp slt i32 %call90, 0
  br i1 %cmp91, label %if.end89.do.body345_crit_edge, label %if.end94

if.end89.do.body345_crit_edge:                    ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body345

if.end94:                                         ; preds = %if.end89
  %call95 = call fastcc i32 @af9035_wr_reg(ptr noundef %add.ptr, i32 noundef 55489, i8 noundef zeroext 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call95)
  %cmp96 = icmp slt i32 %call95, 0
  br i1 %cmp96, label %if.end94.do.body345_crit_edge, label %if.end99

if.end94.do.body345_crit_edge:                    ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body345

if.end99:                                         ; preds = %if.end94
  %call100 = call fastcc i32 @af9035_wr_reg(ptr noundef %add.ptr, i32 noundef 55487, i8 noundef zeroext 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call100)
  %cmp101 = icmp slt i32 %call100, 0
  br i1 %cmp101, label %if.end99.do.body345_crit_edge, label %if.end104

if.end99.do.body345_crit_edge:                    ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body345

if.end104:                                        ; preds = %if.end99
  %call105 = call fastcc i32 @af9035_wr_reg(ptr noundef %add.ptr, i32 noundef 55476, i8 noundef zeroext 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call105)
  %cmp106 = icmp slt i32 %call105, 0
  br i1 %cmp106, label %if.end104.do.body345_crit_edge, label %if.end109

if.end104.do.body345_crit_edge:                   ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body345

if.end109:                                        ; preds = %if.end104
  %call110 = call fastcc i32 @af9035_wr_reg(ptr noundef %add.ptr, i32 noundef 55477, i8 noundef zeroext 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call110)
  %cmp111 = icmp slt i32 %call110, 0
  br i1 %cmp111, label %if.end109.do.body345_crit_edge, label %if.end114

if.end109.do.body345_crit_edge:                   ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body345

if.end114:                                        ; preds = %if.end109
  %call115 = call fastcc i32 @af9035_wr_reg(ptr noundef %add.ptr, i32 noundef 55475, i8 noundef zeroext 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call115)
  %cmp116 = icmp slt i32 %call115, 0
  br i1 %cmp116, label %if.end114.do.body345_crit_edge, label %if.end114.if.end121_crit_edge

if.end114.if.end121_crit_edge:                    ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end121

if.end114.do.body345_crit_edge:                   ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body345

if.end121:                                        ; preds = %if.end114.if.end121_crit_edge, %sw.bb64.if.end121_crit_edge
  %tuner_addr.0 = phi i8 [ 96, %if.end114.if.end121_crit_edge ], [ -32, %sw.bb64.if.end121_crit_edge ]
  %call124 = call ptr @__symbol_get(ptr noundef nonnull @.str.153) #9
  %tobool125.not = icmp eq ptr %call124, null
  br i1 %tobool125.not, label %cond.end130, label %if.end121.if.then133_crit_edge

if.end121.if.then133_crit_edge:                   ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then133

cond.end130:                                      ; preds = %if.end121
  %call128 = call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.154) #9
  %call129 = call ptr @__symbol_get(ptr noundef nonnull @.str.153) #9
  %tobool132.not = icmp eq ptr %call129, null
  br i1 %tobool132.not, label %do.end148, label %cond.end130.if.then133_crit_edge

cond.end130.if.then133_crit_edge:                 ; preds = %cond.end130
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then133

if.then133:                                       ; preds = %cond.end130.if.then133_crit_edge, %if.end121.if.then133_crit_edge
  %cond131485 = phi ptr [ %call129, %cond.end130.if.then133_crit_edge ], [ %call124, %if.end121.if.then133_crit_edge ]
  %fe134 = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 14
  %37 = ptrtoint ptr %fe134 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %fe134, align 8
  %i2c_adap136 = getelementptr inbounds %struct.dvb_usb_device, ptr %add.ptr, i32 0, i32 10
  %39 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %id, align 4
  %idxprom138 = zext i8 %40 to i32
  %arrayidx139 = getelementptr [2 x %struct.mxl5007t_config], ptr @af9035_mxl5007t_config, i32 0, i32 %idxprom138
  %call140 = call ptr %cond131485(ptr noundef %38, ptr noundef %i2c_adap136, i8 noundef zeroext %tuner_addr.0, ptr noundef %arrayidx139) #9
  %cmp141 = icmp eq ptr %call140, null
  br i1 %cmp141, label %if.then143, label %if.then133.cleanup362_crit_edge

if.then133.cleanup362_crit_edge:                  ; preds = %if.then133
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup362

if.then143:                                       ; preds = %if.then133
  call void @__sanitizer_cov_trace_pc() #11
  call void @__symbol_put(ptr noundef nonnull @.str.153) #9
  br label %do.body345

do.end148:                                        ; preds = %cond.end130
  call void @__sanitizer_cov_trace_pc() #11
  %call150 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.156) #13
  br label %do.body345

sw.bb153:                                         ; preds = %do.end
  %call156 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.158) #9
  %tobool157.not = icmp eq ptr %call156, null
  br i1 %tobool157.not, label %cond.end162, label %sw.bb153.if.then165_crit_edge

sw.bb153.if.then165_crit_edge:                    ; preds = %sw.bb153
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then165

cond.end162:                                      ; preds = %sw.bb153
  %call160 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.159) #9
  %call161 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.158) #9
  %tobool164.not = icmp eq ptr %call161, null
  br i1 %tobool164.not, label %do.end177, label %cond.end162.if.then165_crit_edge

cond.end162.if.then165_crit_edge:                 ; preds = %cond.end162
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then165

if.then165:                                       ; preds = %cond.end162.if.then165_crit_edge, %sw.bb153.if.then165_crit_edge
  %cond163488 = phi ptr [ %call161, %cond.end162.if.then165_crit_edge ], [ %call156, %sw.bb153.if.then165_crit_edge ]
  %fe166 = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 14
  %41 = ptrtoint ptr %fe166 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %fe166, align 8
  %i2c_adap168 = getelementptr inbounds %struct.dvb_usb_device, ptr %add.ptr, i32 0, i32 10
  %call169 = tail call ptr %cond163488(ptr noundef %42, ptr noundef %i2c_adap168, ptr noundef nonnull @af9035_tda18218_config) #9
  %cmp170 = icmp eq ptr %call169, null
  br i1 %cmp170, label %if.then172, label %if.then165.cleanup362_crit_edge

if.then165.cleanup362_crit_edge:                  ; preds = %if.then165
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup362

if.then172:                                       ; preds = %if.then165
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__symbol_put(ptr noundef nonnull @.str.158) #9
  br label %do.body345

do.end177:                                        ; preds = %cond.end162
  call void @__sanitizer_cov_trace_pc() #11
  %call179 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.161) #13
  br label %do.body345

sw.bb182:                                         ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %fc2580_pdata) #9
  %43 = getelementptr inbounds %struct.fc2580_platform_data, ptr %fc2580_pdata, i32 0, i32 1
  %44 = getelementptr inbounds %struct.fc2580_platform_data, ptr %fc2580_pdata, i32 0, i32 2
  %45 = ptrtoint ptr %fc2580_pdata to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 0, ptr %fc2580_pdata, align 4
  %fe184 = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 14
  %46 = ptrtoint ptr %fe184 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %fe184, align 8
  %48 = ptrtoint ptr %43 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %47, ptr %43, align 4
  %49 = ptrtoint ptr %44 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr null, ptr %44, align 4
  %call186 = tail call fastcc i32 @af9035_wr_reg_mask(ptr noundef %add.ptr, i32 noundef 55531, i8 noundef zeroext 1, i8 noundef zeroext 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call186)
  %cmp187 = icmp slt i32 %call186, 0
  br i1 %cmp187, label %sw.bb182.cleanup208.thread_crit_edge, label %if.end190

sw.bb182.cleanup208.thread_crit_edge:             ; preds = %sw.bb182
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup208.thread

if.end190:                                        ; preds = %sw.bb182
  %call191 = tail call fastcc i32 @af9035_wr_reg_mask(ptr noundef %add.ptr, i32 noundef 55532, i8 noundef zeroext 1, i8 noundef zeroext 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call191)
  %cmp192 = icmp slt i32 %call191, 0
  br i1 %cmp192, label %if.end190.cleanup208.thread_crit_edge, label %if.end195

if.end190.cleanup208.thread_crit_edge:            ; preds = %if.end190
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup208.thread

if.end195:                                        ; preds = %if.end190
  %call196 = tail call fastcc i32 @af9035_wr_reg_mask(ptr noundef %add.ptr, i32 noundef 55533, i8 noundef zeroext 1, i8 noundef zeroext 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call196)
  %cmp197 = icmp slt i32 %call196, 0
  br i1 %cmp197, label %if.end195.cleanup208.thread_crit_edge, label %if.end200

if.end195.cleanup208.thread_crit_edge:            ; preds = %if.end195
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup208.thread

if.end200:                                        ; preds = %if.end195
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 50000, i32 noundef 2) #9
  %i2c_adap201 = getelementptr inbounds %struct.dvb_usb_device, ptr %add.ptr, i32 0, i32 10
  %call202 = call fastcc i32 @af9035_add_i2c_dev(ptr noundef %add.ptr, ptr noundef nonnull @.str.163, i8 noundef zeroext 86, ptr noundef nonnull %fc2580_pdata, ptr noundef %i2c_adap201)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call202)
  %tobool203.not = icmp eq i32 %call202, 0
  br i1 %tobool203.not, label %cleanup208, label %if.end200.cleanup208.thread_crit_edge

if.end200.cleanup208.thread_crit_edge:            ; preds = %if.end200
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup208.thread

cleanup208.thread:                                ; preds = %if.end200.cleanup208.thread_crit_edge, %if.end195.cleanup208.thread_crit_edge, %if.end190.cleanup208.thread_crit_edge, %sw.bb182.cleanup208.thread_crit_edge
  %ret.1.ph = phi i32 [ %call202, %if.end200.cleanup208.thread_crit_edge ], [ %call196, %if.end195.cleanup208.thread_crit_edge ], [ %call191, %if.end190.cleanup208.thread_crit_edge ], [ %call186, %sw.bb182.cleanup208.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %fc2580_pdata) #9
  br label %do.body345

cleanup208:                                       ; preds = %if.end200
  call void @__sanitizer_cov_trace_pc() #11
  %50 = ptrtoint ptr %fe184 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %fe184, align 8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %fc2580_pdata) #9
  br label %sw.epilog340

sw.bb210:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %cmp213 = icmp eq i8 %10, 0
  br i1 %cmp213, label %if.then215, label %if.else231

if.then215:                                       ; preds = %sw.bb210
  %call216 = tail call fastcc i32 @af9035_wr_reg_mask(ptr noundef %add.ptr, i32 noundef 55531, i8 noundef zeroext 1, i8 noundef zeroext 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call216)
  %cmp217 = icmp slt i32 %call216, 0
  br i1 %cmp217, label %if.then215.do.body345_crit_edge, label %if.end220

if.then215.do.body345_crit_edge:                  ; preds = %if.then215
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body345

if.end220:                                        ; preds = %if.then215
  %call221 = tail call fastcc i32 @af9035_wr_reg_mask(ptr noundef %add.ptr, i32 noundef 55532, i8 noundef zeroext 1, i8 noundef zeroext 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call221)
  %cmp222 = icmp slt i32 %call221, 0
  br i1 %cmp222, label %if.end220.do.body345_crit_edge, label %if.end225

if.end220.do.body345_crit_edge:                   ; preds = %if.end220
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body345

if.end225:                                        ; preds = %if.end220
  %call226 = tail call fastcc i32 @af9035_wr_reg_mask(ptr noundef %add.ptr, i32 noundef 55533, i8 noundef zeroext 1, i8 noundef zeroext 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call226)
  %cmp227 = icmp slt i32 %call226, 0
  br i1 %cmp227, label %if.end225.do.body345_crit_edge, label %if.end225.if.end242_crit_edge

if.end225.if.end242_crit_edge:                    ; preds = %if.end225
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end242

if.end225.do.body345_crit_edge:                   ; preds = %if.end225
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body345

if.else231:                                       ; preds = %sw.bb210
  %52 = ptrtoint ptr %msg to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 99, ptr %msg, align 4
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 1
  %53 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 0, ptr %flags, align 2
  %len = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 2
  %54 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 2, ptr %len, align 4
  %buf = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 3
  %55 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr @.str.164, ptr %buf, align 4
  %i2c_adap236 = getelementptr inbounds %struct.dvb_usb_device, ptr %add.ptr, i32 0, i32 10
  %call237 = call i32 @i2c_transfer(ptr noundef %i2c_adap236, ptr noundef nonnull %msg, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call237)
  %cmp238 = icmp slt i32 %call237, 0
  br i1 %cmp238, label %if.else231.do.body345_crit_edge, label %if.else231.if.end242_crit_edge

if.else231.if.end242_crit_edge:                   ; preds = %if.else231
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end242

if.else231.do.body345_crit_edge:                  ; preds = %if.else231
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body345

if.end242:                                        ; preds = %if.else231.if.end242_crit_edge, %if.end225.if.end242_crit_edge
  call void @usleep_range_state(i32 noundef 10000, i32 noundef 50000, i32 noundef 2) #9
  %call245 = call ptr @__symbol_get(ptr noundef nonnull @.str.165) #9
  %tobool246.not = icmp eq ptr %call245, null
  br i1 %tobool246.not, label %cond.end251, label %if.end242.if.then254_crit_edge

if.end242.if.then254_crit_edge:                   ; preds = %if.end242
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then254

cond.end251:                                      ; preds = %if.end242
  %call249 = call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.166) #9
  %call250 = call ptr @__symbol_get(ptr noundef nonnull @.str.165) #9
  %tobool253.not = icmp eq ptr %call250, null
  br i1 %tobool253.not, label %do.end269, label %cond.end251.if.then254_crit_edge

cond.end251.if.then254_crit_edge:                 ; preds = %cond.end251
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then254

if.then254:                                       ; preds = %cond.end251.if.then254_crit_edge, %if.end242.if.then254_crit_edge
  %cond252496 = phi ptr [ %call250, %cond.end251.if.then254_crit_edge ], [ %call245, %if.end242.if.then254_crit_edge ]
  %fe255 = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 14
  %56 = ptrtoint ptr %fe255 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %fe255, align 8
  %i2c_adap257 = getelementptr inbounds %struct.dvb_usb_device, ptr %add.ptr, i32 0, i32 10
  %58 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %id, align 4
  %idxprom259 = zext i8 %59 to i32
  %arrayidx260 = getelementptr [2 x %struct.fc0012_config], ptr @af9035_fc0012_config, i32 0, i32 %idxprom259
  %call261 = call ptr %cond252496(ptr noundef %57, ptr noundef %i2c_adap257, ptr noundef %arrayidx260) #9
  %cmp262 = icmp eq ptr %call261, null
  br i1 %cmp262, label %if.then264, label %if.then254.cleanup362_crit_edge

if.then254.cleanup362_crit_edge:                  ; preds = %if.then254
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup362

if.then264:                                       ; preds = %if.then254
  call void @__sanitizer_cov_trace_pc() #11
  call void @__symbol_put(ptr noundef nonnull @.str.165) #9
  br label %do.body345

do.end269:                                        ; preds = %cond.end251
  call void @__sanitizer_cov_trace_pc() #11
  %call271 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.168) #13
  br label %do.body345

sw.bb274:                                         ; preds = %do.end.sw.bb274_crit_edge, %do.end.sw.bb274_crit_edge509, %do.end.sw.bb274_crit_edge510, %do.end.sw.bb274_crit_edge511, %do.end.sw.bb274_crit_edge512, %do.end.sw.bb274_crit_edge513
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %it913x_pdata) #9
  %60 = getelementptr inbounds i8, ptr %it913x_pdata, i32 8
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 -1, ptr %60, align 4
  %regmap279 = getelementptr %struct.state, ptr %3, i32 0, i32 12, i32 %idxprom, i32 8
  %62 = ptrtoint ptr %regmap279 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %regmap279, align 4
  %64 = ptrtoint ptr %it913x_pdata to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %63, ptr %it913x_pdata, align 4
  %fe280 = getelementptr inbounds %struct.it913x_platform_data, ptr %it913x_pdata, i32 0, i32 1
  %fe281 = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 14
  %65 = ptrtoint ptr %fe281 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %fe281, align 8
  %67 = ptrtoint ptr %fe280 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %66, ptr %fe280, align 4
  %role = getelementptr inbounds %struct.it913x_platform_data, ptr %it913x_pdata, i32 0, i32 2
  %68 = ptrtoint ptr %tuner to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %tuner, align 1
  %70 = zext i8 %69 to i64
  call void @__sanitizer_cov_trace_switch(i64 %70, ptr @__sancov_gen_cov_switch_values.199)
  switch i8 %69, label %sw.bb274.cleanup335.thread_crit_edge [
    i8 56, label %sw.bb274.sw.epilog_crit_edge
    i8 81, label %sw.bb274.sw.epilog_crit_edge514
    i8 82, label %sw.bb274.sw.epilog_crit_edge515
    i8 96, label %sw.bb274.sw.bb290_crit_edge
    i8 97, label %sw.bb274.sw.bb290_crit_edge516
    i8 98, label %sw.bb274.sw.bb290_crit_edge517
  ]

sw.bb274.sw.bb290_crit_edge517:                   ; preds = %sw.bb274
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb290

sw.bb274.sw.bb290_crit_edge516:                   ; preds = %sw.bb274
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb290

sw.bb274.sw.bb290_crit_edge:                      ; preds = %sw.bb274
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb290

sw.bb274.sw.epilog_crit_edge515:                  ; preds = %sw.bb274
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb274.sw.epilog_crit_edge514:                  ; preds = %sw.bb274
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb274.sw.epilog_crit_edge:                     ; preds = %sw.bb274
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb274.cleanup335.thread_crit_edge:             ; preds = %sw.bb274
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup335.thread

sw.bb290:                                         ; preds = %sw.bb274.sw.bb290_crit_edge, %sw.bb274.sw.bb290_crit_edge516, %sw.bb274.sw.bb290_crit_edge517
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb290, %sw.bb274.sw.epilog_crit_edge, %sw.bb274.sw.epilog_crit_edge514, %sw.bb274.sw.epilog_crit_edge515
  %name.0 = phi ptr [ @.str.171, %sw.bb290 ], [ @.str.170, %sw.bb274.sw.epilog_crit_edge ], [ @.str.170, %sw.bb274.sw.epilog_crit_edge514 ], [ @.str.170, %sw.bb274.sw.epilog_crit_edge515 ]
  %dual_mode = getelementptr inbounds %struct.state, ptr %3, i32 0, i32 9
  %71 = ptrtoint ptr %dual_mode to i32
  call void @__asan_load1_noabort(i32 %71)
  %bf.load291 = load i8, ptr %dual_mode, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load291)
  %tobool292.not = icmp sgt i8 %bf.load291, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %cmp296 = icmp eq i8 %10, 0
  %. = select i1 %cmp296, i8 127, i8 -65
  %.sink = select i1 %tobool292.not, i8 63, i8 %.
  %72 = ptrtoint ptr %role to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 %.sink, ptr %role, align 4
  %call315 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.136, ptr noundef nonnull @.str.172) #9
  %73 = ptrtoint ptr %intf7 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %intf7, align 8
  %dev317 = getelementptr inbounds %struct.usb_interface, ptr %74, i32 0, i32 7
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %pdevinfo.i.i) #9
  %75 = getelementptr inbounds i8, ptr %pdevinfo.i.i, i32 8
  %76 = call ptr @memset(ptr %75, i32 255, i32 48)
  %77 = ptrtoint ptr %pdevinfo.i.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %dev317, ptr %pdevinfo.i.i, align 8
  %fwnode.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 1
  %78 = ptrtoint ptr %fwnode.i.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr null, ptr %fwnode.i.i, align 4
  %79 = ptrtoint ptr %75 to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 0, ptr %75, align 8
  %name2.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 3
  %80 = ptrtoint ptr %name2.i.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %name.0, ptr %name2.i.i, align 4
  %id3.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 4
  %81 = ptrtoint ptr %id3.i.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 -2, ptr %id3.i.i, align 8
  %res4.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 5
  %82 = ptrtoint ptr %res4.i.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr null, ptr %res4.i.i, align 4
  %num_res.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 6
  %83 = ptrtoint ptr %num_res.i.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 0, ptr %num_res.i.i, align 8
  %data5.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 7
  %84 = ptrtoint ptr %data5.i.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %it913x_pdata, ptr %data5.i.i, align 4
  %size_data.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 8
  %85 = ptrtoint ptr %size_data.i.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 12, ptr %size_data.i.i, align 8
  %dma_mask.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 9
  %86 = ptrtoint ptr %dma_mask.i.i to i32
  call void @__asan_store8_noabort(i32 %86)
  store i64 0, ptr %dma_mask.i.i, align 8
  %properties.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 10
  %87 = ptrtoint ptr %properties.i.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr null, ptr %properties.i.i, align 8
  %call.i.i473 = call ptr @platform_device_register_full(ptr noundef nonnull %pdevinfo.i.i) #9
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %pdevinfo.i.i) #9
  %cmp.i = icmp ugt ptr %call.i.i473, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %sw.epilog.cleanup335.thread_crit_edge, label %lor.lhs.false

sw.epilog.cleanup335.thread_crit_edge:            ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup335.thread

lor.lhs.false:                                    ; preds = %sw.epilog
  %driver = getelementptr inbounds %struct.platform_device, ptr %call.i.i473, i32 0, i32 3, i32 6
  %88 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %driver, align 4
  %tobool322.not = icmp eq ptr %89, null
  br i1 %tobool322.not, label %lor.lhs.false.cleanup335.thread_crit_edge, label %if.end324

lor.lhs.false.cleanup335.thread_crit_edge:        ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup335.thread

if.end324:                                        ; preds = %lor.lhs.false
  %owner = getelementptr inbounds %struct.device_driver, ptr %89, i32 0, i32 2
  %90 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %owner, align 4
  %call327 = call zeroext i1 @try_module_get(ptr noundef %91) #9
  br i1 %call327, label %cleanup335, label %if.then328

if.then328:                                       ; preds = %if.end324
  call void @__sanitizer_cov_trace_pc() #11
  call void @platform_device_unregister(ptr noundef %call.i.i473) #9
  br label %cleanup335.thread

cleanup335.thread:                                ; preds = %if.then328, %lor.lhs.false.cleanup335.thread_crit_edge, %sw.epilog.cleanup335.thread_crit_edge, %sw.bb274.cleanup335.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %it913x_pdata) #9
  br label %do.body345

cleanup335:                                       ; preds = %if.end324
  call void @__sanitizer_cov_trace_pc() #11
  %92 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %id, align 4
  %idxprom331 = zext i8 %93 to i32
  %arrayidx332 = getelementptr %struct.state, ptr %3, i32 0, i32 16, i32 %idxprom331
  %94 = ptrtoint ptr %arrayidx332 to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr %call.i.i473, ptr %arrayidx332, align 4
  %95 = ptrtoint ptr %fe281 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %fe281, align 8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %it913x_pdata) #9
  br label %sw.epilog340

sw.epilog340:                                     ; preds = %cleanup335, %cleanup208, %cleanup
  %fe.3 = phi ptr [ %96, %cleanup335 ], [ %51, %cleanup208 ], [ %18, %cleanup ]
  %cmp341 = icmp eq ptr %fe.3, null
  br i1 %cmp341, label %sw.epilog340.do.body345_crit_edge, label %sw.epilog340.cleanup362_crit_edge

sw.epilog340.cleanup362_crit_edge:                ; preds = %sw.epilog340
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup362

sw.epilog340.do.body345_crit_edge:                ; preds = %sw.epilog340
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body345

do.body345:                                       ; preds = %sw.epilog340.do.body345_crit_edge, %cleanup335.thread, %do.end269, %if.then264, %if.else231.do.body345_crit_edge, %if.end225.do.body345_crit_edge, %if.end220.do.body345_crit_edge, %if.then215.do.body345_crit_edge, %cleanup208.thread, %do.end177, %if.then172, %do.end148, %if.then143, %if.end114.do.body345_crit_edge, %if.end109.do.body345_crit_edge, %if.end104.do.body345_crit_edge, %if.end99.do.body345_crit_edge, %if.end94.do.body345_crit_edge, %if.end89.do.body345_crit_edge, %if.end84.do.body345_crit_edge, %if.end79.do.body345_crit_edge, %if.end74.do.body345_crit_edge, %if.then69.do.body345_crit_edge, %do.end59, %if.then55, %cleanup.thread, %do.end.do.body345_crit_edge
  %ret.3 = phi i32 [ %call216, %if.then215.do.body345_crit_edge ], [ %call221, %if.end220.do.body345_crit_edge ], [ %call226, %if.end225.do.body345_crit_edge ], [ %call237, %if.else231.do.body345_crit_edge ], [ %call.i.i, %if.then69.do.body345_crit_edge ], [ %call75, %if.end74.do.body345_crit_edge ], [ %call80, %if.end79.do.body345_crit_edge ], [ %call85, %if.end84.do.body345_crit_edge ], [ %call90, %if.end89.do.body345_crit_edge ], [ %call95, %if.end94.do.body345_crit_edge ], [ %call100, %if.end99.do.body345_crit_edge ], [ %call105, %if.end104.do.body345_crit_edge ], [ %call110, %if.end109.do.body345_crit_edge ], [ %call115, %if.end114.do.body345_crit_edge ], [ -19, %sw.epilog340.do.body345_crit_edge ], [ %ret.0.ph, %cleanup.thread ], [ %ret.1.ph, %cleanup208.thread ], [ -19, %cleanup335.thread ], [ -19, %if.then55 ], [ -19, %do.end59 ], [ -19, %if.then143 ], [ -19, %do.end148 ], [ -19, %if.then172 ], [ -19, %do.end177 ], [ -19, %if.then264 ], [ -19, %do.end269 ], [ -19, %do.end.do.body345_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @af9035_tuner_attach.__UNIQUE_ID_ddebug423, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@af9035_tuner_attach, %if.then357)) #9
          to label %cleanup362 [label %if.then357], !srcloc !384

if.then357:                                       ; preds = %do.body345
  call void @__sanitizer_cov_trace_pc() #11
  %dev358 = getelementptr inbounds %struct.usb_interface, ptr %5, i32 0, i32 7
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @af9035_tuner_attach.__UNIQUE_ID_ddebug423, ptr noundef %dev358, ptr noundef nonnull @.str.91, i32 noundef %ret.3) #9
  br label %cleanup362

cleanup362:                                       ; preds = %if.then357, %do.body345, %sw.epilog340.cleanup362_crit_edge, %if.then254.cleanup362_crit_edge, %if.then165.cleanup362_crit_edge, %if.then133.cleanup362_crit_edge, %if.then48.cleanup362_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog340.cleanup362_crit_edge ], [ %ret.3, %if.then357 ], [ %ret.3, %do.body345 ], [ 0, %if.then48.cleanup362_crit_edge ], [ 0, %if.then133.cleanup362_crit_edge ], [ 0, %if.then165.cleanup362_crit_edge ], [ 0, %if.then254.cleanup362_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @af9035_tuner_detach(ptr nocapture noundef readonly %adap) #2 align 64 {
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
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @af9035_tuner_detach.__UNIQUE_ID_ddebug427, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@af9035_tuner_detach, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !384

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.usb_interface, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %id, align 4
  %conv12 = zext i8 %7 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @af9035_tuner_detach.__UNIQUE_ID_ddebug427, ptr noundef %dev, ptr noundef nonnull @.str.131, i32 noundef %conv12) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %8 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %id, align 4
  %idxprom = zext i8 %9 to i32
  %tuner = getelementptr %struct.state, ptr %3, i32 0, i32 12, i32 %idxprom, i32 2
  %10 = ptrtoint ptr %tuner to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %tuner, align 1
  %12 = zext i8 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.200)
  switch i8 %11, label %do.end.sw.epilog_crit_edge [
    i8 39, label %do.end.sw.bb_crit_edge
    i8 50, label %do.end.sw.bb_crit_edge59
    i8 56, label %do.end.sw.bb35_crit_edge
    i8 81, label %do.end.sw.bb35_crit_edge60
    i8 82, label %do.end.sw.bb35_crit_edge61
    i8 96, label %do.end.sw.bb35_crit_edge62
    i8 97, label %do.end.sw.bb35_crit_edge63
    i8 98, label %do.end.sw.bb35_crit_edge64
  ]

do.end.sw.bb35_crit_edge64:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb35

do.end.sw.bb35_crit_edge63:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb35

do.end.sw.bb35_crit_edge62:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb35

do.end.sw.bb35_crit_edge61:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb35

do.end.sw.bb35_crit_edge60:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb35

do.end.sw.bb35_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb35

do.end.sw.bb_crit_edge59:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

do.end.sw.bb_crit_edge:                           ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

do.end.sw.epilog_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb:                                            ; preds = %do.end.sw.bb_crit_edge, %do.end.sw.bb_crit_edge59
  %13 = zext i8 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.201)
  switch i8 %9, label %sw.bb.sw.epilog_crit_edge [
    i8 1, label %if.then18
    i8 0, label %if.then27
  ]

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.then18:                                        ; preds = %sw.bb
  %arrayidx19 = getelementptr %struct.state, ptr %3, i32 0, i32 14, i32 3
  %14 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx19, align 4
  %tobool20.not = icmp eq ptr %15, null
  br i1 %tobool20.not, label %if.then18.sw.epilog_crit_edge, label %if.then21

if.then18.sw.epilog_crit_edge:                    ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.then21:                                        ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @af9035_del_i2c_dev(ptr noundef %add.ptr)
  br label %sw.epilog

if.then27:                                        ; preds = %sw.bb
  %arrayidx29 = getelementptr %struct.state, ptr %3, i32 0, i32 14, i32 1
  %16 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx29, align 4
  %tobool30.not = icmp eq ptr %17, null
  br i1 %tobool30.not, label %if.then27.sw.epilog_crit_edge, label %if.then31

if.then27.sw.epilog_crit_edge:                    ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.then31:                                        ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @af9035_del_i2c_dev(ptr noundef %add.ptr)
  br label %sw.epilog

sw.bb35:                                          ; preds = %do.end.sw.bb35_crit_edge, %do.end.sw.bb35_crit_edge60, %do.end.sw.bb35_crit_edge61, %do.end.sw.bb35_crit_edge62, %do.end.sw.bb35_crit_edge63, %do.end.sw.bb35_crit_edge64
  %arrayidx38 = getelementptr %struct.state, ptr %3, i32 0, i32 16, i32 %idxprom
  %18 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx38, align 4
  %tobool39.not = icmp eq ptr %19, null
  br i1 %tobool39.not, label %sw.bb35.sw.epilog_crit_edge, label %if.then40

sw.bb35.sw.epilog_crit_edge:                      ; preds = %sw.bb35
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.then40:                                        ; preds = %sw.bb35
  call void @__sanitizer_cov_trace_pc() #11
  %driver = getelementptr inbounds %struct.platform_device, ptr %19, i32 0, i32 3, i32 6
  %20 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %driver, align 4
  %owner = getelementptr inbounds %struct.device_driver, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %owner, align 4
  tail call void @module_put(ptr noundef %23) #9
  tail call void @platform_device_unregister(ptr noundef nonnull %19) #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then40, %sw.bb35.sw.epilog_crit_edge, %if.then31, %if.then27.sw.epilog_crit_edge, %if.then21, %if.then18.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge, %do.end.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @af9035_init(ptr noundef %d) #2 align 64 {
entry:
  %tab = alloca [18 x %struct.reg_val_mask], align 4
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
  %udev = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 5
  %4 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %udev, align 4
  %speed = getelementptr inbounds %struct.usb_device, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %speed, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %cmp = icmp eq i32 %7, 2
  %conv8 = select i1 %cmp, i8 16, i8 -128
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %tab) #9
  %8 = getelementptr inbounds i8, ptr %tab, i32 4
  %9 = call ptr @memset(ptr %8, i32 255, i32 140)
  %10 = ptrtoint ptr %tab to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 8452509, ptr %tab, align 4
  %val = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 0, i32 1
  %11 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %val, align 4
  %mask = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 0, i32 2
  %12 = ptrtoint ptr %mask to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %mask, align 1
  %arrayinit.element = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 1
  %13 = ptrtoint ptr %arrayinit.element to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 8452516, ptr %arrayinit.element, align 4
  %val10 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 1, i32 1
  %14 = ptrtoint ptr %val10 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %val10, align 4
  %mask11 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 1, i32 2
  %15 = ptrtoint ptr %mask11 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %mask11, align 1
  %arrayinit.element12 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 2
  %16 = ptrtoint ptr %arrayinit.element12 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 56593, ptr %arrayinit.element12, align 4
  %val14 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 2, i32 1
  %17 = ptrtoint ptr %val14 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %val14, align 4
  %mask15 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 2, i32 2
  %18 = ptrtoint ptr %mask15 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 32, ptr %mask15, align 1
  %arrayinit.element16 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 3
  %19 = ptrtoint ptr %arrayinit.element16 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 56593, ptr %arrayinit.element16, align 4
  %val18 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 3, i32 1
  %20 = ptrtoint ptr %val18 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %val18, align 4
  %mask19 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 3, i32 2
  %21 = ptrtoint ptr %mask19 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 64, ptr %mask19, align 1
  %arrayinit.element20 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 4
  %22 = ptrtoint ptr %arrayinit.element20 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 56595, ptr %arrayinit.element20, align 4
  %val22 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 4, i32 1
  %23 = ptrtoint ptr %val22 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %val22, align 4
  %mask23 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 4, i32 2
  %24 = ptrtoint ptr %mask23 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 32, ptr %mask23, align 1
  %arrayinit.element24 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 5
  %25 = ptrtoint ptr %arrayinit.element24 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 56595, ptr %arrayinit.element24, align 4
  %val26 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 5, i32 1
  %26 = ptrtoint ptr %val26 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %val26, align 4
  %mask27 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 5, i32 2
  %27 = ptrtoint ptr %mask27 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 64, ptr %mask27, align 1
  %arrayinit.element28 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 6
  %28 = ptrtoint ptr %arrayinit.element28 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 56593, ptr %arrayinit.element28, align 4
  %val30 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 6, i32 1
  %29 = ptrtoint ptr %val30 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 32, ptr %val30, align 4
  %mask31 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 6, i32 2
  %30 = ptrtoint ptr %mask31 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 32, ptr %mask31, align 1
  %arrayinit.element32 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 7
  %31 = ptrtoint ptr %arrayinit.element32 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 56712, ptr %arrayinit.element32, align 4
  %val34 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 7, i32 1
  %conv35 = select i1 %cmp, i32 235, i32 4089
  %conv36 = trunc i32 %conv35 to i8
  %32 = ptrtoint ptr %val34 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %conv36, ptr %val34, align 4
  %arrayinit.element38 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 8
  %33 = ptrtoint ptr %arrayinit.element38 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 56713, ptr %arrayinit.element38, align 4
  %val40 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 8, i32 1
  %34 = lshr i32 %conv35, 8
  %conv44 = trunc i32 %34 to i8
  %35 = ptrtoint ptr %val40 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %conv44, ptr %val40, align 4
  %arrayinit.element46 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 9
  %36 = ptrtoint ptr %arrayinit.element46 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 56588, ptr %arrayinit.element46, align 4
  %val48 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 9, i32 1
  %37 = ptrtoint ptr %val48 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %conv8, ptr %val48, align 4
  %arrayinit.element50 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 10
  %38 = ptrtoint ptr %arrayinit.element50 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 56593, ptr %arrayinit.element50, align 4
  %val52 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 10, i32 1
  %dual_mode = getelementptr inbounds %struct.state, ptr %1, i32 0, i32 9
  %39 = ptrtoint ptr %dual_mode to i32
  call void @__asan_load1_noabort(i32 %39)
  %bf.load = load i8, ptr %dual_mode, align 1
  %40 = lshr i8 %bf.load, 1
  %41 = and i8 %40, 64
  %42 = ptrtoint ptr %val52 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %41, ptr %val52, align 4
  %mask55 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 10, i32 2
  %43 = ptrtoint ptr %mask55 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 64, ptr %mask55, align 1
  %arrayinit.element56 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 11
  %44 = ptrtoint ptr %arrayinit.element56 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 56714, ptr %arrayinit.element56, align 4
  %val58 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 11, i32 1
  %45 = ptrtoint ptr %val58 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %conv36, ptr %val58, align 4
  %arrayinit.element64 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 12
  %46 = ptrtoint ptr %arrayinit.element64 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 56715, ptr %arrayinit.element64, align 4
  %val66 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 12, i32 1
  %47 = ptrtoint ptr %val66 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %conv44, ptr %val66, align 4
  %arrayinit.element72 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 13
  %48 = ptrtoint ptr %arrayinit.element72 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 56589, ptr %arrayinit.element72, align 4
  %val74 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 13, i32 1
  %49 = ptrtoint ptr %val74 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %conv8, ptr %val74, align 4
  %arrayinit.element76 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 14
  %50 = ptrtoint ptr %arrayinit.element76 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 8452515, ptr %arrayinit.element76, align 4
  %val78 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 14, i32 1
  %bf.lshr81 = lshr i8 %bf.load, 7
  %51 = ptrtoint ptr %val78 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %bf.lshr81, ptr %val78, align 4
  %mask82 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 14, i32 2
  %52 = ptrtoint ptr %mask82 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 1, ptr %mask82, align 1
  %arrayinit.element83 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 15
  %53 = ptrtoint ptr %arrayinit.element83 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 8452557, ptr %arrayinit.element83, align 4
  %val85 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 15, i32 1
  %54 = ptrtoint ptr %val85 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %bf.lshr81, ptr %val85, align 4
  %mask89 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 15, i32 2
  %55 = ptrtoint ptr %mask89 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 1, ptr %mask89, align 1
  %arrayinit.element90 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 16
  %56 = ptrtoint ptr %arrayinit.element90 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 8452509, ptr %arrayinit.element90, align 4
  %val92 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 16, i32 1
  %57 = ptrtoint ptr %val92 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 0, ptr %val92, align 4
  %mask93 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 16, i32 2
  %58 = ptrtoint ptr %mask93 to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 1, ptr %mask93, align 1
  %arrayinit.element94 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 17
  %59 = ptrtoint ptr %arrayinit.element94 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 8452516, ptr %arrayinit.element94, align 4
  %val96 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 17, i32 1
  %60 = ptrtoint ptr %val96 to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 0, ptr %val96, align 4
  %mask97 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 17, i32 2
  %61 = ptrtoint ptr %mask97 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 1, ptr %mask97, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @af9035_init.__UNIQUE_ID_ddebug428, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@af9035_init, %if.then)) #9
          to label %for.body [label %if.then], !srcloc !384

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.usb_interface, ptr %3, i32 0, i32 7
  %62 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %udev, align 4
  %speed101 = getelementptr inbounds %struct.usb_device, ptr %63, i32 0, i32 4
  %64 = ptrtoint ptr %speed101 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %speed101, align 4
  %conv103 = zext i8 %conv8 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @af9035_init.__UNIQUE_ID_ddebug428, ptr noundef %dev, ptr noundef nonnull @.str.175, i32 noundef %65, i32 noundef %conv35, i32 noundef %conv103) #9
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %i.0164, 1
  %exitcond.not = icmp eq i32 %inc, 18
  br i1 %exitcond.not, label %for.cond.cleanup_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %if.then, %entry
  %i.0164 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %entry ], [ 0, %if.then ]
  %arrayidx = getelementptr [18 x %struct.reg_val_mask], ptr %tab, i32 0, i32 %i.0164
  %66 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %arrayidx, align 4
  %val108 = getelementptr [18 x %struct.reg_val_mask], ptr %tab, i32 0, i32 %i.0164, i32 1
  %68 = ptrtoint ptr %val108 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %val108, align 4
  %mask110 = getelementptr [18 x %struct.reg_val_mask], ptr %tab, i32 0, i32 %i.0164, i32 2
  %70 = ptrtoint ptr %mask110 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %mask110, align 1
  %call111 = tail call fastcc i32 @af9035_wr_reg_mask(ptr noundef %d, i32 noundef %67, i8 noundef zeroext %69, i8 noundef zeroext %71)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call111)
  %cmp112 = icmp slt i32 %call111, 0
  br i1 %cmp112, label %do.body116, label %for.cond

do.body116:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @af9035_init.__UNIQUE_ID_ddebug429, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@af9035_init, %if.then128)) #9
          to label %cleanup [label %if.then128], !srcloc !384

if.then128:                                       ; preds = %do.body116
  call void @__sanitizer_cov_trace_pc() #11
  %dev129 = getelementptr inbounds %struct.usb_interface, ptr %3, i32 0, i32 7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @af9035_init.__UNIQUE_ID_ddebug429, ptr noundef %dev129, ptr noundef nonnull @.str.91, i32 noundef %call111) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then128, %do.body116, %for.cond.cleanup_crit_edge
  %retval.0 = phi i32 [ %call111, %if.then128 ], [ %call111, %do.body116 ], [ 0, %for.cond.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %tab) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @af9035_get_rc_config(ptr nocapture noundef readonly %d, ptr nocapture noundef %rc) #2 align 64 {
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
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @af9035_get_rc_config.__UNIQUE_ID_ddebug434, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@af9035_get_rc_config, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !384

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.usb_interface, ptr %3, i32 0, i32 7
  %ir_mode = getelementptr inbounds %struct.state, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %ir_mode to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %ir_mode, align 1
  %conv = zext i8 %5 to i32
  %ir_type = getelementptr inbounds %struct.state, ptr %1, i32 0, i32 8
  %6 = ptrtoint ptr %ir_type to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %ir_type, align 4
  %conv4 = zext i8 %7 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @af9035_get_rc_config.__UNIQUE_ID_ddebug434, ptr noundef %dev, ptr noundef nonnull @.str.177, i32 noundef %conv, i32 noundef %conv4) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %ir_mode5 = getelementptr inbounds %struct.state, ptr %1, i32 0, i32 7
  %8 = ptrtoint ptr %ir_mode5 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %ir_mode5, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %9)
  %cmp = icmp eq i8 %9, 5
  br i1 %cmp, label %if.then8, label %do.end.if.end17_crit_edge

do.end.if.end17_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

if.then8:                                         ; preds = %do.end
  %ir_type9 = getelementptr inbounds %struct.state, ptr %1, i32 0, i32 8
  %10 = ptrtoint ptr %ir_type9 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %ir_type9, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %11)
  %cond = icmp eq i8 %11, 1
  %spec.select = select i1 %cond, i64 524288, i64 3584
  %12 = getelementptr inbounds %struct.dvb_usb_rc, ptr %rc, i32 0, i32 1
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %spec.select, ptr %12, align 8
  %query = getelementptr inbounds %struct.dvb_usb_rc, ptr %rc, i32 0, i32 3
  %14 = ptrtoint ptr %query to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @af9035_rc_query, ptr %query, align 4
  %interval = getelementptr inbounds %struct.dvb_usb_rc, ptr %rc, i32 0, i32 4
  %15 = ptrtoint ptr %interval to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 500, ptr %interval, align 8
  %16 = ptrtoint ptr %rc to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %rc, align 8
  %tobool13.not = icmp eq ptr %17, null
  br i1 %tobool13.not, label %if.then14, label %if.then8.if.end17_crit_edge

if.then8.if.end17_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

if.then14:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #11
  %18 = ptrtoint ptr %rc to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @.str.178, ptr %rc, align 8
  br label %if.end17

if.end17:                                         ; preds = %if.then14, %if.then8.if.end17_crit_edge, %do.end.if.end17_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @af9035_get_stream_config(ptr nocapture noundef readonly %fe, ptr nocapture noundef readnone %ts_type, ptr nocapture noundef writeonly %stream) #2 align 64 {
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
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @af9035_get_stream_config.__UNIQUE_ID_ddebug435, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@af9035_get_stream_config, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !384

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
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @af9035_get_stream_config.__UNIQUE_ID_ddebug435, ptr noundef %dev, ptr noundef nonnull @.str.181, i32 noundef %conv10) #9
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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @af9035_rd_regs(ptr noundef %d, i32 noundef %reg, ptr noundef %val, i32 noundef %len) unnamed_addr #2 align 64 {
entry:
  %wbuf = alloca [6 x i8], align 1
  %req = alloca %struct.usb_req, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %wbuf) #9
  %0 = getelementptr inbounds [6 x i8], ptr %wbuf, i32 0, i32 1
  %1 = getelementptr inbounds [6 x i8], ptr %wbuf, i32 0, i32 2
  %2 = getelementptr inbounds [6 x i8], ptr %wbuf, i32 0, i32 3
  %3 = getelementptr inbounds [6 x i8], ptr %wbuf, i32 0, i32 4
  %4 = getelementptr inbounds [6 x i8], ptr %wbuf, i32 0, i32 5
  %conv = trunc i32 %len to i8
  %5 = ptrtoint ptr %wbuf to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv, ptr %wbuf, align 1
  %6 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 2, ptr %0, align 1
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %1, align 1
  %8 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %2, align 1
  %shr = lshr i32 %reg, 8
  %conv4 = trunc i32 %shr to i8
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv4, ptr %3, align 1
  %conv7 = trunc i32 %reg to i8
  %10 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv7, ptr %4, align 1
  %shr8 = lshr i32 %reg, 16
  %conv10 = trunc i32 %shr8 to i8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %req) #9
  %11 = call ptr @memset(ptr %req, i32 255, i32 12)
  %12 = ptrtoint ptr %req to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %req, align 4
  %mbox11 = getelementptr inbounds %struct.usb_req, ptr %req, i32 0, i32 1
  %13 = ptrtoint ptr %mbox11 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv10, ptr %mbox11, align 1
  %wlen = getelementptr inbounds %struct.usb_req, ptr %req, i32 0, i32 2
  %14 = ptrtoint ptr %wlen to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 6, ptr %wlen, align 2
  %wbuf12 = getelementptr inbounds %struct.usb_req, ptr %req, i32 0, i32 3
  %15 = ptrtoint ptr %wbuf12 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %wbuf, ptr %wbuf12, align 4
  %rlen = getelementptr inbounds %struct.usb_req, ptr %req, i32 0, i32 4
  %16 = ptrtoint ptr %rlen to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv, ptr %rlen, align 4
  %rbuf = getelementptr inbounds %struct.usb_req, ptr %req, i32 0, i32 5
  %17 = ptrtoint ptr %rbuf to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %val, ptr %rbuf, align 4
  %call = call fastcc i32 @af9035_ctrl_msg(ptr noundef %d, ptr noundef nonnull %req)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %req) #9
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %wbuf) #9
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @af9035_rd_reg(ptr noundef %d, i32 noundef %reg, ptr noundef %val) unnamed_addr #2 align 64 {
entry:
  %wbuf.i = alloca [6 x i8], align 1
  %req.i = alloca %struct.usb_req, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %wbuf.i) #9
  %0 = getelementptr inbounds [6 x i8], ptr %wbuf.i, i32 0, i32 1
  %1 = getelementptr inbounds [6 x i8], ptr %wbuf.i, i32 0, i32 2
  %2 = getelementptr inbounds [6 x i8], ptr %wbuf.i, i32 0, i32 3
  %3 = getelementptr inbounds [6 x i8], ptr %wbuf.i, i32 0, i32 4
  %4 = getelementptr inbounds [6 x i8], ptr %wbuf.i, i32 0, i32 5
  %5 = ptrtoint ptr %wbuf.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %wbuf.i, align 1
  %6 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 2, ptr %0, align 1
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %1, align 1
  %8 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %2, align 1
  %shr.i = lshr i32 %reg, 8
  %conv4.i = trunc i32 %shr.i to i8
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv4.i, ptr %3, align 1
  %conv7.i = trunc i32 %reg to i8
  %10 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv7.i, ptr %4, align 1
  %shr8.i = lshr i32 %reg, 16
  %conv10.i = trunc i32 %shr8.i to i8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %req.i) #9
  %11 = call ptr @memset(ptr %req.i, i32 255, i32 12)
  %12 = ptrtoint ptr %req.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %req.i, align 4
  %mbox11.i = getelementptr inbounds %struct.usb_req, ptr %req.i, i32 0, i32 1
  %13 = ptrtoint ptr %mbox11.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv10.i, ptr %mbox11.i, align 1
  %wlen.i = getelementptr inbounds %struct.usb_req, ptr %req.i, i32 0, i32 2
  %14 = ptrtoint ptr %wlen.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 6, ptr %wlen.i, align 2
  %wbuf12.i = getelementptr inbounds %struct.usb_req, ptr %req.i, i32 0, i32 3
  %15 = ptrtoint ptr %wbuf12.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %wbuf.i, ptr %wbuf12.i, align 4
  %rlen.i = getelementptr inbounds %struct.usb_req, ptr %req.i, i32 0, i32 4
  %16 = ptrtoint ptr %rlen.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 1, ptr %rlen.i, align 4
  %rbuf.i = getelementptr inbounds %struct.usb_req, ptr %req.i, i32 0, i32 5
  %17 = ptrtoint ptr %rbuf.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %val, ptr %rbuf.i, align 4
  %call.i = call fastcc i32 @af9035_ctrl_msg(ptr noundef %d, ptr noundef nonnull %req.i) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %req.i) #9
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %wbuf.i) #9
  ret i32 %call.i
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @af9035_ctrl_msg(ptr noundef %d, ptr nocapture noundef readonly %req) unnamed_addr #2 align 64 {
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
  %wlen2 = getelementptr inbounds %struct.usb_req, ptr %req, i32 0, i32 2
  %4 = ptrtoint ptr %wlen2 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %wlen2, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 58, i8 %5)
  %cmp = icmp ugt i8 %5, 58
  br i1 %cmp, label %entry.do.end_crit_edge, label %lor.lhs.false

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

lor.lhs.false:                                    ; preds = %entry
  %rlen4 = getelementptr inbounds %struct.usb_req, ptr %req, i32 0, i32 4
  %6 = ptrtoint ptr %rlen4 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %rlen4, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 59, i8 %7)
  %cmp6 = icmp ugt i8 %7, 59
  br i1 %cmp6, label %lor.lhs.false.do.end_crit_edge, label %if.end

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %entry.do.end_crit_edge
  %dev = getelementptr inbounds %struct.usb_interface, ptr %3, i32 0, i32 7
  %conv9 = zext i8 %5 to i32
  %rlen10 = getelementptr inbounds %struct.usb_req, ptr %req, i32 0, i32 4
  %8 = ptrtoint ptr %rlen10 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %rlen10, align 4
  %conv11 = zext i8 %9 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.92, i32 noundef %conv9, i32 noundef %conv11) #13
  br label %exit

if.end:                                           ; preds = %lor.lhs.false
  %sub = add nuw nsw i8 %5, 5
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %sub, ptr %1, align 4
  %mbox = getelementptr inbounds %struct.usb_req, ptr %req, i32 0, i32 1
  %11 = ptrtoint ptr %mbox to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %mbox, align 1
  %arrayidx17 = getelementptr [64 x i8], ptr %1, i32 0, i32 1
  %13 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %12, ptr %arrayidx17, align 1
  %14 = ptrtoint ptr %req to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %req, align 4
  %arrayidx19 = getelementptr [64 x i8], ptr %1, i32 0, i32 2
  %16 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %15, ptr %arrayidx19, align 2
  %seq = getelementptr inbounds %struct.state, ptr %1, i32 0, i32 1
  %17 = ptrtoint ptr %seq to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %seq, align 4
  %inc = add i8 %18, 1
  store i8 %inc, ptr %seq, align 4
  %arrayidx21 = getelementptr [64 x i8], ptr %1, i32 0, i32 3
  %19 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %18, ptr %arrayidx21, align 1
  %arrayidx23 = getelementptr [64 x i8], ptr %1, i32 0, i32 4
  %wbuf = getelementptr inbounds %struct.usb_req, ptr %req, i32 0, i32 3
  %20 = ptrtoint ptr %wbuf to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %wbuf, align 4
  %22 = ptrtoint ptr %wlen2 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %wlen2, align 2
  %conv25 = zext i8 %23 to i32
  %24 = call ptr @memcpy(ptr %arrayidx23, ptr %21, i32 %conv25)
  %25 = load i8, ptr %wlen2, align 2
  %conv27 = zext i8 %25 to i16
  %26 = ptrtoint ptr %rlen4 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %rlen4, align 4
  %conv31 = zext i8 %27 to i32
  %28 = add nuw nsw i8 %5, 4
  %sub38 = zext i8 %28 to i32
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end
  %checksum.021.i = phi i16 [ %checksum.1.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end ]
  %i.019.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 1, %if.end ]
  %rem.i = and i32 %i.019.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %tobool.not.i = icmp eq i32 %rem.i, 0
  %arrayidx3.i = getelementptr i8, ptr %1, i32 %i.019.i
  %29 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx3.i, align 1
  %conv4.i = zext i8 %30 to i16
  %shl.i = shl nuw i16 %conv4.i, 8
  %shl.pn.i = select i1 %tobool.not.i, i16 %conv4.i, i16 %shl.i
  %checksum.1.i = add i16 %shl.pn.i, %checksum.021.i
  %inc.i = add nuw nsw i32 %i.019.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %sub38
  br i1 %exitcond.not.i, label %for.end.loopexit.i, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.end.loopexit.i:                               ; preds = %for.body.i
  %add29 = add nuw nsw i16 %conv27, 6
  %add33 = add nuw nsw i32 %conv31, 5
  %phi.bo.i = xor i16 %checksum.1.i, -1
  %31 = lshr i16 %phi.bo.i, 8
  %conv40 = trunc i16 %31 to i8
  %arrayidx46 = getelementptr [64 x i8], ptr %1, i32 0, i32 %sub38
  %32 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %conv40, ptr %arrayidx46, align 1
  %conv48 = trunc i16 %phi.bo.i to i8
  %33 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %1, align 4
  %conv52 = zext i8 %34 to i32
  %arrayidx54 = getelementptr [64 x i8], ptr %1, i32 0, i32 %conv52
  %35 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %conv48, ptr %arrayidx54, align 1
  %36 = ptrtoint ptr %req to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %req, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 33, i8 %37)
  %cmp57 = icmp eq i8 %37, 33
  %spec.select = select i1 %cmp57, i32 0, i32 %add33
  %conv66 = trunc i32 %spec.select to i16
  %call67 = tail call i32 @dvb_usbv2_generic_rw_locked(ptr noundef %d, ptr noundef %1, i16 noundef zeroext %add29, ptr noundef %1, i16 noundef zeroext %conv66) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67)
  %tobool.not = icmp eq i32 %call67, 0
  br i1 %tobool.not, label %if.end69, label %for.end.loopexit.i.exit_crit_edge

for.end.loopexit.i.exit_crit_edge:                ; preds = %for.end.loopexit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit

if.end69:                                         ; preds = %for.end.loopexit.i
  %38 = ptrtoint ptr %req to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %req, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 33, i8 %39)
  %cmp72 = icmp eq i8 %39, 33
  br i1 %cmp72, label %if.end69.exit_crit_edge, label %for.body.i209.preheader

if.end69.exit_crit_edge:                          ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit

for.body.i209.preheader:                          ; preds = %if.end69
  %sub78 = add nsw i32 %spec.select, -2
  br label %for.body.i209

for.body.i209:                                    ; preds = %for.body.i209.for.body.i209_crit_edge, %for.body.i209.preheader
  %checksum.021.i198 = phi i16 [ %checksum.1.i206, %for.body.i209.for.body.i209_crit_edge ], [ 0, %for.body.i209.preheader ]
  %i.019.i199 = phi i32 [ %inc.i207, %for.body.i209.for.body.i209_crit_edge ], [ 1, %for.body.i209.preheader ]
  %rem.i200 = and i32 %i.019.i199, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i200)
  %tobool.not.i201 = icmp eq i32 %rem.i200, 0
  %arrayidx3.i202 = getelementptr i8, ptr %1, i32 %i.019.i199
  %40 = ptrtoint ptr %arrayidx3.i202 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx3.i202, align 1
  %conv4.i203 = zext i8 %41 to i16
  %shl.i204 = shl nuw i16 %conv4.i203, 8
  %shl.pn.i205 = select i1 %tobool.not.i201, i16 %conv4.i203, i16 %shl.i204
  %checksum.1.i206 = add i16 %shl.pn.i205, %checksum.021.i198
  %inc.i207 = add nuw i32 %i.019.i199, 1
  %exitcond.not.i208 = icmp eq i32 %inc.i207, %sub78
  br i1 %exitcond.not.i208, label %af9035_checksum.exit213, label %for.body.i209.for.body.i209_crit_edge

for.body.i209.for.body.i209_crit_edge:            ; preds = %for.body.i209
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i209

af9035_checksum.exit213:                          ; preds = %for.body.i209
  %phi.bo.i210 = xor i16 %checksum.1.i206, -1
  %phi.cast = zext i16 %phi.bo.i210 to i32
  %arrayidx82 = getelementptr [64 x i8], ptr %1, i32 0, i32 %sub78
  %42 = ptrtoint ptr %arrayidx82 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx82, align 1
  %conv83 = zext i8 %43 to i32
  %shl = shl nuw nsw i32 %conv83, 8
  %sub85 = add nsw i32 %spec.select, -1
  %arrayidx86 = getelementptr [64 x i8], ptr %1, i32 0, i32 %sub85
  %44 = ptrtoint ptr %arrayidx86 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %arrayidx86, align 1
  %conv87 = zext i8 %45 to i32
  %or = or i32 %shl, %conv87
  call void @__sanitizer_cov_trace_cmp4(i32 %or, i32 %phi.cast)
  %cmp91.not = icmp eq i32 %or, %phi.cast
  br i1 %cmp91.not, label %if.end102, label %do.end96

do.end96:                                         ; preds = %af9035_checksum.exit213
  call void @__sanitizer_cov_trace_pc() #11
  %dev97 = getelementptr inbounds %struct.usb_interface, ptr %3, i32 0, i32 7
  %conv99 = zext i8 %39 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev97, ptr noundef nonnull @.str.96, i32 noundef %conv99, i32 noundef %or, i32 noundef %phi.cast) #13
  br label %exit

if.end102:                                        ; preds = %af9035_checksum.exit213
  %46 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx19, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool105.not = icmp eq i8 %47, 0
  br i1 %tobool105.not, label %if.end134, label %if.then106

if.then106:                                       ; preds = %if.end102
  call void @__sanitizer_cov_trace_const_cmp1(i8 24, i8 %39)
  %cmp109 = icmp eq i8 %39, 24
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %47)
  %cmp115 = icmp eq i8 %47, 1
  %or.cond = select i1 %cmp109, i1 true, i1 %cmp115
  br i1 %or.cond, label %if.then106.exit_crit_edge, label %do.body119

if.then106.exit_crit_edge:                        ; preds = %if.then106
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit

do.body119:                                       ; preds = %if.then106
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @af9035_ctrl_msg.__UNIQUE_ID_ddebug390, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@af9035_ctrl_msg, %if.then124)) #9
          to label %exit [label %if.then124], !srcloc !384

if.then124:                                       ; preds = %do.body119
  call void @__sanitizer_cov_trace_pc() #11
  %dev125 = getelementptr inbounds %struct.usb_interface, ptr %3, i32 0, i32 7
  %48 = ptrtoint ptr %req to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %req, align 4
  %conv127 = zext i8 %49 to i32
  %50 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %arrayidx19, align 2
  %conv130 = zext i8 %51 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @af9035_ctrl_msg.__UNIQUE_ID_ddebug390, ptr noundef %dev125, ptr noundef nonnull @.str.98, i32 noundef %conv127, i32 noundef %conv130) #9
  br label %exit

if.end134:                                        ; preds = %if.end102
  %52 = ptrtoint ptr %rlen4 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %rlen4, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %tobool136.not = icmp eq i8 %53, 0
  br i1 %tobool136.not, label %if.end134.exit_crit_edge, label %if.then137

if.end134.exit_crit_edge:                         ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit

if.then137:                                       ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #11
  %rbuf = getelementptr inbounds %struct.usb_req, ptr %req, i32 0, i32 5
  %54 = ptrtoint ptr %rbuf to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %rbuf, align 4
  %conv141 = zext i8 %53 to i32
  %56 = call ptr @memcpy(ptr %55, ptr %arrayidx21, i32 %conv141)
  br label %exit

exit:                                             ; preds = %if.then137, %if.end134.exit_crit_edge, %if.then124, %do.body119, %if.then106.exit_crit_edge, %do.end96, %if.end69.exit_crit_edge, %for.end.loopexit.i.exit_crit_edge, %do.end
  %ret.0 = phi i32 [ -22, %do.end ], [ %call67, %for.end.loopexit.i.exit_crit_edge ], [ 0, %if.end69.exit_crit_edge ], [ -5, %do.end96 ], [ 0, %if.then137 ], [ 0, %if.end134.exit_crit_edge ], [ 1, %if.then106.exit_crit_edge ], [ -5, %if.then124 ], [ -5, %do.body119 ]
  tail call void @mutex_unlock(ptr noundef %usb_mutex) #9
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_usbv2_generic_rw_locked(ptr noundef, ptr noundef, i16 noundef zeroext, ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @af9035_wr_reg_mask(ptr noundef %d, i32 noundef %reg, i8 noundef zeroext %val, i8 noundef zeroext %mask) unnamed_addr #2 align 64 {
entry:
  %wbuf.i23 = alloca [64 x i8], align 1
  %req.i24 = alloca %struct.usb_req, align 4
  %wbuf.i = alloca [6 x i8], align 1
  %req.i = alloca %struct.usb_req, align 4
  %tmp = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp) #9
  %0 = ptrtoint ptr %tmp to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %tmp, align 1, !annotation !385
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %mask)
  %cmp.not = icmp eq i8 %mask, -1
  br i1 %cmp.not, label %entry.if.end13_crit_edge, label %if.then

entry.if.end13_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %.pre = lshr i32 %reg, 16
  %.pre30 = trunc i32 %.pre to i8
  %.pre31 = lshr i32 %reg, 8
  %.pre32 = trunc i32 %.pre31 to i8
  %.pre33 = trunc i32 %reg to i8
  br label %if.end13

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %wbuf.i) #9
  %1 = getelementptr inbounds [6 x i8], ptr %wbuf.i, i32 0, i32 1
  %2 = getelementptr inbounds [6 x i8], ptr %wbuf.i, i32 0, i32 2
  %3 = getelementptr inbounds [6 x i8], ptr %wbuf.i, i32 0, i32 3
  %4 = getelementptr inbounds [6 x i8], ptr %wbuf.i, i32 0, i32 4
  %5 = getelementptr inbounds [6 x i8], ptr %wbuf.i, i32 0, i32 5
  %6 = ptrtoint ptr %wbuf.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %wbuf.i, align 1
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 2, ptr %1, align 1
  %8 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %2, align 1
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %3, align 1
  %shr.i = lshr i32 %reg, 8
  %conv4.i = trunc i32 %shr.i to i8
  %10 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv4.i, ptr %4, align 1
  %conv7.i = trunc i32 %reg to i8
  %11 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv7.i, ptr %5, align 1
  %shr8.i = lshr i32 %reg, 16
  %conv10.i = trunc i32 %shr8.i to i8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %req.i) #9
  %12 = call ptr @memset(ptr %req.i, i32 255, i32 12)
  %13 = ptrtoint ptr %req.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %req.i, align 4
  %mbox11.i = getelementptr inbounds %struct.usb_req, ptr %req.i, i32 0, i32 1
  %14 = ptrtoint ptr %mbox11.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv10.i, ptr %mbox11.i, align 1
  %wlen.i = getelementptr inbounds %struct.usb_req, ptr %req.i, i32 0, i32 2
  %15 = ptrtoint ptr %wlen.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 6, ptr %wlen.i, align 2
  %wbuf12.i = getelementptr inbounds %struct.usb_req, ptr %req.i, i32 0, i32 3
  %16 = ptrtoint ptr %wbuf12.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %wbuf.i, ptr %wbuf12.i, align 4
  %rlen.i = getelementptr inbounds %struct.usb_req, ptr %req.i, i32 0, i32 4
  %17 = ptrtoint ptr %rlen.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 1, ptr %rlen.i, align 4
  %rbuf.i = getelementptr inbounds %struct.usb_req, ptr %req.i, i32 0, i32 5
  %18 = ptrtoint ptr %rbuf.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %tmp, ptr %rbuf.i, align 4
  %call.i = call fastcc i32 @af9035_ctrl_msg(ptr noundef %d, ptr noundef nonnull %req.i) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %req.i) #9
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %wbuf.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %and21 = and i8 %mask, %val
  %neg = xor i8 %mask, -1
  %19 = ptrtoint ptr %tmp to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %tmp, align 1
  %and8 = and i8 %20, %neg
  store i8 %and8, ptr %tmp, align 1
  %or22 = or i8 %and8, %and21
  br label %if.end13

if.end13:                                         ; preds = %if.end, %entry.if.end13_crit_edge
  %conv17.i.pre-phi = phi i8 [ %.pre33, %entry.if.end13_crit_edge ], [ %conv7.i, %if.end ]
  %conv13.i.pre-phi = phi i8 [ %.pre32, %entry.if.end13_crit_edge ], [ %conv4.i, %if.end ]
  %conv.i.pre-phi = phi i8 [ %.pre30, %entry.if.end13_crit_edge ], [ %conv10.i, %if.end ]
  %val.addr.0 = phi i8 [ %val, %entry.if.end13_crit_edge ], [ %or22, %if.end ]
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %wbuf.i23) #9
  %21 = getelementptr inbounds i8, ptr %wbuf.i23, i32 7
  %22 = call ptr @memset(ptr %21, i32 255, i32 57)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %req.i24) #9
  %23 = call ptr @memset(ptr %req.i24, i32 255, i32 12)
  %24 = ptrtoint ptr %req.i24 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 1, ptr %req.i24, align 4
  %mbox2.i = getelementptr inbounds %struct.usb_req, ptr %req.i24, i32 0, i32 1
  %25 = ptrtoint ptr %mbox2.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv.i.pre-phi, ptr %mbox2.i, align 1
  %wlen.i26 = getelementptr inbounds %struct.usb_req, ptr %req.i24, i32 0, i32 2
  %26 = ptrtoint ptr %wlen.i26 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 7, ptr %wlen.i26, align 2
  %wbuf4.i = getelementptr inbounds %struct.usb_req, ptr %req.i24, i32 0, i32 3
  %27 = ptrtoint ptr %wbuf4.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %wbuf.i23, ptr %wbuf4.i, align 4
  %rlen.i27 = getelementptr inbounds %struct.usb_req, ptr %req.i24, i32 0, i32 4
  %28 = ptrtoint ptr %rlen.i27 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 0, ptr %rlen.i27, align 4
  %rbuf.i28 = getelementptr inbounds %struct.usb_req, ptr %req.i24, i32 0, i32 5
  %29 = ptrtoint ptr %rbuf.i28 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %rbuf.i28, align 4
  %30 = ptrtoint ptr %wbuf.i23 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 1, ptr %wbuf.i23, align 1
  %arrayidx8.i = getelementptr inbounds [64 x i8], ptr %wbuf.i23, i32 0, i32 1
  %31 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 2, ptr %arrayidx8.i, align 1
  %arrayidx9.i = getelementptr inbounds [64 x i8], ptr %wbuf.i23, i32 0, i32 2
  %32 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 0, ptr %arrayidx9.i, align 1
  %arrayidx10.i = getelementptr inbounds [64 x i8], ptr %wbuf.i23, i32 0, i32 3
  %33 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 0, ptr %arrayidx10.i, align 1
  %arrayidx14.i = getelementptr inbounds [64 x i8], ptr %wbuf.i23, i32 0, i32 4
  %34 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %conv13.i.pre-phi, ptr %arrayidx14.i, align 1
  %arrayidx18.i = getelementptr inbounds [64 x i8], ptr %wbuf.i23, i32 0, i32 5
  %35 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %conv17.i.pre-phi, ptr %arrayidx18.i, align 1
  %arrayidx19.i = getelementptr inbounds [64 x i8], ptr %wbuf.i23, i32 0, i32 6
  %36 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %val.addr.0, ptr %arrayidx19.i, align 1
  %call.i29 = call fastcc i32 @af9035_ctrl_msg(ptr noundef %d, ptr noundef nonnull %req.i24) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %req.i24) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %wbuf.i23) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i29, %if.end13 ], [ %call.i, %if.then.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @af9035_wr_reg(ptr noundef %d, i32 noundef %reg, i8 noundef zeroext %val) unnamed_addr #2 align 64 {
entry:
  %wbuf.i = alloca [64 x i8], align 1
  %req.i = alloca %struct.usb_req, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %wbuf.i) #9
  %0 = getelementptr inbounds i8, ptr %wbuf.i, i32 7
  %1 = call ptr @memset(ptr %0, i32 255, i32 57)
  %shr.i = lshr i32 %reg, 16
  %conv.i = trunc i32 %shr.i to i8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %req.i) #9
  %2 = call ptr @memset(ptr %req.i, i32 255, i32 12)
  %3 = ptrtoint ptr %req.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %req.i, align 4
  %mbox2.i = getelementptr inbounds %struct.usb_req, ptr %req.i, i32 0, i32 1
  %4 = ptrtoint ptr %mbox2.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv.i, ptr %mbox2.i, align 1
  %wlen.i = getelementptr inbounds %struct.usb_req, ptr %req.i, i32 0, i32 2
  %5 = ptrtoint ptr %wlen.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 7, ptr %wlen.i, align 2
  %wbuf4.i = getelementptr inbounds %struct.usb_req, ptr %req.i, i32 0, i32 3
  %6 = ptrtoint ptr %wbuf4.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %wbuf.i, ptr %wbuf4.i, align 4
  %rlen.i = getelementptr inbounds %struct.usb_req, ptr %req.i, i32 0, i32 4
  %7 = ptrtoint ptr %rlen.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %rlen.i, align 4
  %rbuf.i = getelementptr inbounds %struct.usb_req, ptr %req.i, i32 0, i32 5
  %8 = ptrtoint ptr %rbuf.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %rbuf.i, align 4
  %9 = ptrtoint ptr %wbuf.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %wbuf.i, align 1
  %arrayidx8.i = getelementptr inbounds [64 x i8], ptr %wbuf.i, i32 0, i32 1
  %10 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 2, ptr %arrayidx8.i, align 1
  %arrayidx9.i = getelementptr inbounds [64 x i8], ptr %wbuf.i, i32 0, i32 2
  %11 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %arrayidx9.i, align 1
  %arrayidx10.i = getelementptr inbounds [64 x i8], ptr %wbuf.i, i32 0, i32 3
  %12 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %arrayidx10.i, align 1
  %shr11.i = lshr i32 %reg, 8
  %conv13.i = trunc i32 %shr11.i to i8
  %arrayidx14.i = getelementptr inbounds [64 x i8], ptr %wbuf.i, i32 0, i32 4
  %13 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv13.i, ptr %arrayidx14.i, align 1
  %conv17.i = trunc i32 %reg to i8
  %arrayidx18.i = getelementptr inbounds [64 x i8], ptr %wbuf.i, i32 0, i32 5
  %14 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv17.i, ptr %arrayidx18.i, align 1
  %arrayidx19.i = getelementptr inbounds [64 x i8], ptr %wbuf.i, i32 0, i32 6
  %15 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %val, ptr %arrayidx19.i, align 1
  %call.i = call fastcc i32 @af9035_ctrl_msg(ptr noundef %d, ptr noundef nonnull %req.i) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %req.i) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %wbuf.i) #9
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @af9035_download_firmware_old(ptr noundef %d, ptr nocapture noundef readonly %fw) unnamed_addr #2 align 64 {
entry:
  %req = alloca %struct.usb_req, align 4
  %req_fw_dl = alloca %struct.usb_req, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %intf1 = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 4
  %0 = ptrtoint ptr %intf1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %intf1, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %req) #9
  %2 = call ptr @memset(ptr %req, i32 0, i32 16)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %req_fw_dl) #9
  %3 = call ptr @memset(ptr %req_fw_dl, i32 255, i32 12)
  %4 = ptrtoint ptr %req_fw_dl to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 33, ptr %req_fw_dl, align 4
  %mbox = getelementptr inbounds %struct.usb_req, ptr %req_fw_dl, i32 0, i32 1
  %5 = ptrtoint ptr %mbox to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %mbox, align 1
  %wlen = getelementptr inbounds %struct.usb_req, ptr %req_fw_dl, i32 0, i32 2
  %wbuf2 = getelementptr inbounds %struct.usb_req, ptr %req_fw_dl, i32 0, i32 3
  %rlen = getelementptr inbounds %struct.usb_req, ptr %req_fw_dl, i32 0, i32 4
  %6 = ptrtoint ptr %rlen to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %rlen, align 4
  %rbuf = getelementptr inbounds %struct.usb_req, ptr %req_fw_dl, i32 0, i32 5
  %7 = ptrtoint ptr %rbuf to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %rbuf, align 4
  %8 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %fw, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %9)
  %cmp259 = icmp sgt i32 %9, 7
  br i1 %cmp259, label %for.body.lr.ph, label %entry.for.end150_crit_edge

entry.for.end150_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end150

for.body.lr.ph:                                   ; preds = %entry
  %data = getelementptr inbounds %struct.firmware, ptr %fw, i32 0, i32 1
  %dev = getelementptr inbounds %struct.usb_interface, ptr %1, i32 0, i32 7
  br label %for.body

for.body:                                         ; preds = %do.end149.for.body_crit_edge, %for.body.lr.ph
  %i.0260 = phi i32 [ %9, %for.body.lr.ph ], [ %sub130, %do.end149.for.body_crit_edge ]
  %10 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data, align 4
  %12 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %fw, align 4
  %sub = sub i32 %13, %i.0260
  %arrayidx = getelementptr i8, ptr %11, i32 %sub
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx, align 1
  %add7 = add i32 %sub, 1
  %arrayidx8 = getelementptr i8, ptr %11, i32 %add7
  %16 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx8, align 1
  %add13 = add i32 %sub, 2
  %arrayidx14 = getelementptr i8, ptr %11, i32 %add13
  %18 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx14, align 1
  %add22 = add i32 %sub, 3
  %arrayidx23 = getelementptr i8, ptr %11, i32 %add22
  %20 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx23, align 1
  %conv24 = zext i8 %21 to i16
  %shl25 = shl nuw i16 %conv24, 8
  %add30 = add i32 %sub, 4
  %arrayidx31 = getelementptr i8, ptr %11, i32 %add30
  %22 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx31, align 1
  %conv32 = zext i8 %23 to i16
  %or35 = or i16 %shl25, %conv32
  %add40 = add i32 %sub, 5
  %arrayidx41 = getelementptr i8, ptr %11, i32 %add40
  %24 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx41, align 1
  %add48 = add i32 %sub, 6
  %arrayidx49 = getelementptr i8, ptr %11, i32 %add48
  %26 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx49, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @af9035_download_firmware_old.__UNIQUE_ID_ddebug401, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@af9035_download_firmware_old, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !384

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %conv42 = zext i8 %25 to i32
  %shl43 = shl nuw nsw i32 %conv42, 8
  %conv50 = zext i8 %27 to i32
  %or53 = or i32 %shl43, %conv50
  %conv = zext i8 %17 to i32
  %shl = shl nuw nsw i32 %conv, 8
  %conv15 = zext i8 %19 to i32
  %or = or i32 %shl, %conv15
  %conv57 = zext i8 %15 to i32
  %conv59 = zext i16 %or35 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @af9035_download_firmware_old.__UNIQUE_ID_ddebug401, ptr noundef %dev, ptr noundef nonnull @.str.109, i32 noundef %conv57, i32 noundef %or, i32 noundef %conv59, i32 noundef %or53) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %for.body
  %.off = add i8 %15, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %.off)
  %switch = icmp ult i8 %.off, 2
  br i1 %switch, label %lor.lhs.false, label %do.end.do.body71_crit_edge

do.end.do.body71_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body71

lor.lhs.false:                                    ; preds = %do.end
  %conv67 = zext i16 %or35 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0260, i32 %conv67)
  %cmp68 = icmp ult i32 %i.0260, %conv67
  br i1 %cmp68, label %lor.lhs.false.do.body71_crit_edge, label %if.end88

lor.lhs.false.do.body71_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body71

do.body71:                                        ; preds = %lor.lhs.false.do.body71_crit_edge, %do.end.do.body71_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @af9035_download_firmware_old.__UNIQUE_ID_ddebug402, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@af9035_download_firmware_old, %for.end150.thread)) #9
          to label %for.end150 [label %for.end150.thread], !srcloc !384

for.end150.thread:                                ; preds = %do.body71
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @af9035_download_firmware_old.__UNIQUE_ID_ddebug402, ptr noundef %dev, ptr noundef nonnull @.str.110) #9
  br label %do.end155

if.end88:                                         ; preds = %lor.lhs.false
  %28 = ptrtoint ptr %req to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 36, ptr %req, align 4
  %call90 = call fastcc i32 @af9035_ctrl_msg(ptr noundef %d, ptr noundef nonnull %req)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call90)
  %cmp91 = icmp slt i32 %call90, 0
  br i1 %cmp91, label %if.end88.do.body158_crit_edge, label %if.end94

if.end88.do.body158_crit_edge:                    ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body158

if.end94:                                         ; preds = %if.end88
  %add96 = add nuw nsw i32 %conv67, 7
  br label %for.body100

for.cond97:                                       ; preds = %for.body100
  %sub121 = add nsw i32 %j.0258, -58
  %cmp98 = icmp sgt i32 %j.0258, 58
  br i1 %cmp98, label %for.cond97.for.body100_crit_edge, label %for.end

for.cond97.for.body100_crit_edge:                 ; preds = %for.cond97
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body100

for.body100:                                      ; preds = %for.cond97.for.body100_crit_edge, %if.end94
  %j.0258 = phi i32 [ %add96, %if.end94 ], [ %sub121, %for.cond97.for.body100_crit_edge ]
  %29 = call i32 @llvm.smin.i32(i32 %j.0258, i32 58)
  %conv105 = trunc i32 %29 to i8
  %30 = ptrtoint ptr %wlen to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %conv105, ptr %wlen, align 2
  %31 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %data, align 4
  %33 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %fw, align 4
  %35 = add i32 %i.0260, %j.0258
  %add112 = sub i32 %add96, %35
  %sub113 = add i32 %add112, %34
  %arrayidx114 = getelementptr i8, ptr %32, i32 %sub113
  %36 = ptrtoint ptr %wbuf2 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %arrayidx114, ptr %wbuf2, align 4
  %call116 = call fastcc i32 @af9035_ctrl_msg(ptr noundef %d, ptr noundef nonnull %req_fw_dl)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call116)
  %cmp117 = icmp slt i32 %call116, 0
  br i1 %cmp117, label %for.body100.do.body158_crit_edge, label %for.cond97

for.body100.do.body158_crit_edge:                 ; preds = %for.body100
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body158

for.end:                                          ; preds = %for.cond97
  %37 = ptrtoint ptr %req to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 37, ptr %req, align 4
  %call123 = call fastcc i32 @af9035_ctrl_msg(ptr noundef %d, ptr noundef nonnull %req)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call123)
  %cmp124 = icmp slt i32 %call123, 0
  br i1 %cmp124, label %for.end.do.body158_crit_edge, label %if.end127

for.end.do.body158_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body158

if.end127:                                        ; preds = %for.end
  %sub130 = sub i32 %i.0260, %add96
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @af9035_download_firmware_old.__UNIQUE_ID_ddebug403, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@af9035_download_firmware_old, %if.then143)) #9
          to label %do.end149 [label %if.then143], !srcloc !384

if.then143:                                       ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #11
  %38 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %fw, align 4
  %sub146 = sub i32 %39, %sub130
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @af9035_download_firmware_old.__UNIQUE_ID_ddebug403, ptr noundef %dev, ptr noundef nonnull @.str.111, i32 noundef %sub146) #9
  br label %do.end149

do.end149:                                        ; preds = %if.then143, %if.end127
  %cmp = icmp sgt i32 %sub130, 7
  br i1 %cmp, label %do.end149.for.body_crit_edge, label %do.end149.for.end150_crit_edge

do.end149.for.end150_crit_edge:                   ; preds = %do.end149
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end150

do.end149.for.body_crit_edge:                     ; preds = %do.end149
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end150:                                       ; preds = %do.end149.for.end150_crit_edge, %do.body71, %entry.for.end150_crit_edge
  %i.0257 = phi i32 [ %i.0260, %do.body71 ], [ %9, %entry.for.end150_crit_edge ], [ %sub130, %do.end149.for.end150_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0257)
  %tobool151.not = icmp eq i32 %i.0257, 0
  br i1 %tobool151.not, label %for.end150.cleanup_crit_edge, label %for.end150.do.end155_crit_edge

for.end150.do.end155_crit_edge:                   ; preds = %for.end150
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end155

for.end150.cleanup_crit_edge:                     ; preds = %for.end150
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end155:                                        ; preds = %for.end150.do.end155_crit_edge, %for.end150.thread
  %dev156 = getelementptr inbounds %struct.usb_interface, ptr %1, i32 0, i32 7
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev156, ptr noundef nonnull @.str.110) #13
  br label %cleanup

do.body158:                                       ; preds = %for.end.do.body158_crit_edge, %for.body100.do.body158_crit_edge, %if.end88.do.body158_crit_edge
  %ret.0 = phi i32 [ %call116, %for.body100.do.body158_crit_edge ], [ %call123, %for.end.do.body158_crit_edge ], [ %call90, %if.end88.do.body158_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @af9035_download_firmware_old.__UNIQUE_ID_ddebug404, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@af9035_download_firmware_old, %if.then170)) #9
          to label %cleanup [label %if.then170], !srcloc !384

if.then170:                                       ; preds = %do.body158
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @af9035_download_firmware_old.__UNIQUE_ID_ddebug404, ptr noundef %dev, ptr noundef nonnull @.str.91, i32 noundef %ret.0) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then170, %do.body158, %do.end155, %for.end150.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end155 ], [ 0, %for.end150.cleanup_crit_edge ], [ %ret.0, %if.then170 ], [ %ret.0, %do.body158 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %req_fw_dl) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %req) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @af9035_download_firmware_new(ptr noundef %d, ptr nocapture noundef readonly %fw) unnamed_addr #2 align 64 {
entry:
  %req_fw_dl = alloca %struct.usb_req, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %intf1 = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 4
  %0 = ptrtoint ptr %intf1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %intf1, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %req_fw_dl) #9
  %2 = call ptr @memcpy(ptr %req_fw_dl, ptr @__const.af9035_download_firmware_new.req_fw_dl, i32 16)
  %3 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %fw, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %4)
  %cmp.not84 = icmp ult i32 %4, 7
  br i1 %cmp.not84, label %entry.cleanup_crit_edge, label %for.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %data = getelementptr inbounds %struct.firmware, ptr %fw, i32 0, i32 1
  %wlen = getelementptr inbounds %struct.usb_req, ptr %req_fw_dl, i32 0, i32 2
  %wbuf = getelementptr inbounds %struct.usb_req, ptr %req_fw_dl, i32 0, i32 3
  %dev = getelementptr inbounds %struct.usb_interface, ptr %1, i32 0, i32 7
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %5 = phi i32 [ %4, %for.body.lr.ph ], [ %19, %for.inc.for.body_crit_edge ]
  %i.087 = phi i32 [ 7, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %i_prev.085 = phi i32 [ 0, %for.body.lr.ph ], [ %i_prev.1, %for.inc.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.087, i32 %5)
  %cmp3 = icmp eq i32 %i.087, %5
  br i1 %cmp3, label %for.body.if.then_crit_edge, label %lor.lhs.false

for.body.if.then_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

lor.lhs.false:                                    ; preds = %for.body
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data, align 4
  %arrayidx = getelementptr i8, ptr %7, i32 %i.087
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %9)
  %cmp4 = icmp eq i8 %9, 3
  br i1 %cmp4, label %land.lhs.true, label %lor.lhs.false.for.inc_crit_edge

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

land.lhs.true:                                    ; preds = %lor.lhs.false
  %add7 = add i32 %i.087, 1
  %arrayidx8 = getelementptr i8, ptr %7, i32 %add7
  %10 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx8, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %11)
  %switch = icmp ult i8 %11, 2
  br i1 %switch, label %land.lhs.true19, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

land.lhs.true19:                                  ; preds = %land.lhs.true
  %add21 = add i32 %i.087, 2
  %arrayidx22 = getelementptr i8, ptr %7, i32 %add21
  %12 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx22, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %cmp24 = icmp eq i8 %13, 0
  br i1 %cmp24, label %land.lhs.true19.if.then_crit_edge, label %land.lhs.true19.for.inc_crit_edge

land.lhs.true19.for.inc_crit_edge:                ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

land.lhs.true19.if.then_crit_edge:                ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.then:                                          ; preds = %land.lhs.true19.if.then_crit_edge, %for.body.if.then_crit_edge
  %sub = sub i32 %i.087, %i_prev.085
  %conv26 = trunc i32 %sub to i8
  %14 = ptrtoint ptr %wlen to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv26, ptr %wlen, align 2
  %15 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %data, align 4
  %arrayidx28 = getelementptr i8, ptr %16, i32 %i_prev.085
  %17 = ptrtoint ptr %wbuf to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %arrayidx28, ptr %wbuf, align 4
  %call = call fastcc i32 @af9035_ctrl_msg(ptr noundef %d, ptr noundef nonnull %req_fw_dl)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp29 = icmp slt i32 %call, 0
  br i1 %cmp29, label %do.body38, label %do.body

do.body:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @af9035_download_firmware_new.__UNIQUE_ID_ddebug405, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@af9035_download_firmware_new, %if.then35)) #9
          to label %for.inc [label %if.then35], !srcloc !384

if.then35:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @af9035_download_firmware_new.__UNIQUE_ID_ddebug405, ptr noundef %dev, ptr noundef nonnull @.str.113, i32 noundef %i.087) #9
  br label %for.inc

for.inc:                                          ; preds = %if.then35, %do.body, %land.lhs.true19.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge, %lor.lhs.false.for.inc_crit_edge
  %i_prev.1 = phi i32 [ %i.087, %if.then35 ], [ %i_prev.085, %land.lhs.true19.for.inc_crit_edge ], [ %i_prev.085, %lor.lhs.false.for.inc_crit_edge ], [ %i_prev.085, %land.lhs.true.for.inc_crit_edge ], [ %i.087, %do.body ]
  %inc = add i32 %i.087, 1
  %18 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %fw, align 4
  %cmp.not = icmp ugt i32 %inc, %19
  br i1 %cmp.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body38:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @af9035_download_firmware_new.__UNIQUE_ID_ddebug406, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@af9035_download_firmware_new, %if.then50)) #9
          to label %cleanup [label %if.then50], !srcloc !384

if.then50:                                        ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @af9035_download_firmware_new.__UNIQUE_ID_ddebug406, ptr noundef %dev, ptr noundef nonnull @.str.91, i32 noundef %call) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then50, %do.body38, %for.inc.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.then50 ], [ %call, %do.body38 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %req_fw_dl) #9
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @af9035_i2c_master_xfer(ptr nocapture noundef readonly %adap, ptr noundef readonly %msg, i32 noundef %num) #2 align 64 {
entry:
  %wbuf.i = alloca [64 x i8], align 1
  %req.i = alloca %struct.usb_req, align 4
  %buf76 = alloca [64 x i8], align 1
  %req = alloca %struct.usb_req, align 4
  %buf265 = alloca [64 x i8], align 1
  %req266 = alloca %struct.usb_req, align 4
  %buf372 = alloca [5 x i8], align 1
  %req373 = alloca %struct.usb_req, align 4
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
  %i2c_mutex = getelementptr inbounds %struct.dvb_usb_device, ptr %1, i32 0, i32 9
  %call1 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %i2c_mutex, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = zext i32 %num to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.202)
  switch i32 %num, label %if.end.if.end436.thread_crit_edge [
    i32 2, label %land.lhs.true
    i32 1, label %land.lhs.true192
  ]

if.end.if.end436.thread_crit_edge:                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end436.thread

land.lhs.true:                                    ; preds = %if.end
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 1
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %flags, align 2
  %7 = and i16 %6, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool.not = icmp eq i16 %7, 0
  br i1 %tobool.not, label %land.lhs.true3, label %land.lhs.true.if.end436.thread_crit_edge

land.lhs.true.if.end436.thread_crit_edge:         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end436.thread

land.lhs.true3:                                   ; preds = %land.lhs.true
  %flags5 = getelementptr %struct.i2c_msg, ptr %msg, i32 1, i32 1
  %8 = ptrtoint ptr %flags5 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %flags5, align 2
  %10 = and i16 %9, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %tobool8.not = icmp eq i16 %10, 0
  br i1 %tobool8.not, label %land.lhs.true3.if.end436.thread_crit_edge, label %if.then9

land.lhs.true3.if.end436.thread_crit_edge:        ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end436.thread

if.then9:                                         ; preds = %land.lhs.true3
  %len = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 2
  %11 = ptrtoint ptr %len to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 40, i16 %12)
  %cmp12 = icmp ugt i16 %12, 40
  br i1 %cmp12, label %if.then9.if.end436.thread_crit_edge, label %lor.lhs.false

if.then9.if.end436.thread_crit_edge:              ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end436.thread

lor.lhs.false:                                    ; preds = %if.then9
  %len15 = getelementptr %struct.i2c_msg, ptr %msg, i32 1, i32 2
  %13 = ptrtoint ptr %len15 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %len15, align 4
  %conv16 = zext i16 %14 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 40, i16 %14)
  %cmp17 = icmp ugt i16 %14, 40
  br i1 %cmp17, label %lor.lhs.false.if.end436.thread_crit_edge, label %if.else

lor.lhs.false.if.end436.thread_crit_edge:         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end436.thread

if.else:                                          ; preds = %lor.lhs.false
  %15 = ptrtoint ptr %msg to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %msg, align 4
  %af9033_i2c_addr = getelementptr inbounds %struct.state, ptr %3, i32 0, i32 10
  %17 = ptrtoint ptr %af9033_i2c_addr to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %af9033_i2c_addr, align 2
  %19 = zext i8 %18 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %16, i16 %19)
  %cmp24 = icmp eq i16 %16, %19
  br i1 %cmp24, label %if.else.if.then35_crit_edge, label %lor.lhs.false26

if.else.if.then35_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then35

lor.lhs.false26:                                  ; preds = %if.else
  %arrayidx31 = getelementptr %struct.state, ptr %3, i32 0, i32 10, i32 1
  %20 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx31, align 1
  %22 = zext i8 %21 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %16, i16 %22)
  %cmp33 = icmp eq i16 %16, %22
  br i1 %cmp33, label %lor.lhs.false26.if.then35_crit_edge, label %if.else67

lor.lhs.false26.if.then35_crit_edge:              ; preds = %lor.lhs.false26
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then35

if.then35:                                        ; preds = %lor.lhs.false26.if.then35_crit_edge, %if.else.if.then35_crit_edge
  %buf = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 3
  %23 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %buf, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %24, align 1
  %conv38 = zext i8 %26 to i32
  %shl = shl nuw nsw i32 %conv38, 16
  %arrayidx41 = getelementptr i8, ptr %24, i32 1
  %27 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx41, align 1
  %conv42 = zext i8 %28 to i32
  %shl43 = shl nuw nsw i32 %conv42, 8
  %or = or i32 %shl43, %shl
  %arrayidx46 = getelementptr i8, ptr %24, i32 2
  %29 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx46, align 1
  %conv47 = zext i8 %30 to i32
  %or48 = or i32 %or, %conv47
  %arrayidx53 = getelementptr %struct.state, ptr %3, i32 0, i32 10, i32 1
  %31 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx53, align 1
  %33 = zext i8 %32 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %16, i16 %33)
  %cmp55 = icmp eq i16 %16, %33
  %or58 = or i32 %or48, 1048576
  %spec.select = select i1 %cmp55, i32 %or58, i32 %or48
  %buf61 = getelementptr %struct.i2c_msg, ptr %msg, i32 1, i32 3
  %34 = ptrtoint ptr %buf61 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %buf61, align 4
  %call66 = tail call fastcc i32 @af9035_rd_regs(ptr noundef %1, i32 noundef %spec.select, ptr noundef %35, i32 noundef %conv16)
  br label %if.end436

if.else67:                                        ; preds = %lor.lhs.false26
  %no_read = getelementptr inbounds %struct.state, ptr %3, i32 0, i32 9
  %36 = ptrtoint ptr %no_read to i32
  call void @__asan_load1_noabort(i32 %36)
  %bf.load = load i8, ptr %no_read, align 1
  %37 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool68.not = icmp eq i8 %37, 0
  br i1 %tobool68.not, label %if.else75, label %if.else67.if.end436.thread538_crit_edge

if.else67.if.end436.thread538_crit_edge:          ; preds = %if.else67
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end436.thread538

if.else75:                                        ; preds = %if.else67
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %buf76) #9
  %38 = call ptr @memset(ptr %buf76, i32 255, i32 64)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %req) #9
  %39 = call ptr @memset(ptr %req, i32 255, i32 12)
  %40 = ptrtoint ptr %req to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 2, ptr %req, align 4
  %mbox = getelementptr inbounds %struct.usb_req, ptr %req, i32 0, i32 1
  %wlen = getelementptr inbounds %struct.usb_req, ptr %req, i32 0, i32 2
  %conv79 = trunc i16 %12 to i8
  %add = add nuw nsw i8 %conv79, 5
  %41 = ptrtoint ptr %wlen to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %add, ptr %wlen, align 2
  %wbuf = getelementptr inbounds %struct.usb_req, ptr %req, i32 0, i32 3
  %42 = ptrtoint ptr %wbuf to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %buf76, ptr %wbuf, align 4
  %rlen = getelementptr inbounds %struct.usb_req, ptr %req, i32 0, i32 4
  %conv83 = trunc i16 %14 to i8
  %43 = ptrtoint ptr %rlen to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %conv83, ptr %rlen, align 4
  %rbuf = getelementptr inbounds %struct.usb_req, ptr %req, i32 0, i32 5
  %buf85 = getelementptr %struct.i2c_msg, ptr %msg, i32 1, i32 3
  %44 = ptrtoint ptr %buf85 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %buf85, align 4
  %46 = ptrtoint ptr %rbuf to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %45, ptr %rbuf, align 4
  %chip_type = getelementptr inbounds %struct.state, ptr %3, i32 0, i32 4
  %47 = ptrtoint ptr %chip_type to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %chip_type, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -27898, i16 %48)
  %cmp87 = icmp eq i16 %48, -27898
  br i1 %cmp87, label %if.then114, label %if.else128

if.then114:                                       ; preds = %if.else75
  call void @__sanitizer_cov_trace_pc() #11
  %49 = ptrtoint ptr %req to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 42, ptr %req, align 4
  %add94 = add nuw nsw i8 %conv79, 3
  %50 = ptrtoint ptr %wlen to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %add94, ptr %wlen, align 2
  %51 = trunc i16 %16 to i8
  %52 = lshr i8 %51, 3
  %53 = and i8 %52, 16
  %54 = ptrtoint ptr %mbox to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %53, ptr %mbox, align 1
  %55 = ptrtoint ptr %buf76 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %conv83, ptr %buf76, align 1
  %arrayidx115 = getelementptr inbounds [64 x i8], ptr %buf76, i32 0, i32 1
  %56 = ptrtoint ptr %arrayidx115 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 3, ptr %arrayidx115, align 1
  %shl119 = shl i8 %51, 1
  %arrayidx121 = getelementptr inbounds [64 x i8], ptr %buf76, i32 0, i32 2
  %57 = ptrtoint ptr %arrayidx121 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %shl119, ptr %arrayidx121, align 1
  %arrayidx122 = getelementptr inbounds [64 x i8], ptr %buf76, i32 0, i32 3
  %buf124 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 3
  %58 = ptrtoint ptr %buf124 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %buf124, align 4
  %conv127 = zext i16 %12 to i32
  %60 = call ptr @memcpy(ptr %arrayidx122, ptr %59, i32 %conv127)
  br label %if.end184

if.else128:                                       ; preds = %if.else75
  %61 = trunc i16 %16 to i8
  %62 = lshr i8 %61, 3
  %63 = and i8 %62, 16
  %64 = ptrtoint ptr %mbox to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %63, ptr %mbox, align 1
  %65 = ptrtoint ptr %buf76 to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %conv83, ptr %buf76, align 1
  %shl132 = shl i8 %61, 1
  %arrayidx134 = getelementptr inbounds [64 x i8], ptr %buf76, i32 0, i32 1
  %66 = ptrtoint ptr %arrayidx134 to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 %shl132, ptr %arrayidx134, align 1
  %arrayidx135 = getelementptr inbounds [64 x i8], ptr %buf76, i32 0, i32 3
  %67 = ptrtoint ptr %arrayidx135 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 0, ptr %arrayidx135, align 1
  %arrayidx136 = getelementptr inbounds [64 x i8], ptr %buf76, i32 0, i32 4
  %68 = ptrtoint ptr %arrayidx136 to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 0, ptr %arrayidx136, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %12)
  %cmp140 = icmp ugt i16 %12, 2
  br i1 %cmp140, label %if.then142, label %if.else150

if.then142:                                       ; preds = %if.else128
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx143 = getelementptr inbounds [64 x i8], ptr %buf76, i32 0, i32 2
  %69 = ptrtoint ptr %arrayidx143 to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 0, ptr %arrayidx143, align 1
  %arrayidx144 = getelementptr inbounds [64 x i8], ptr %buf76, i32 0, i32 5
  %buf146 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 3
  %70 = ptrtoint ptr %buf146 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %buf146, align 4
  %conv149 = zext i16 %12 to i32
  %72 = call ptr @memcpy(ptr %arrayidx144, ptr %71, i32 %conv149)
  br label %if.end184

if.else150:                                       ; preds = %if.else128
  %73 = ptrtoint ptr %wlen to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 5, ptr %wlen, align 2
  %arrayidx155 = getelementptr inbounds [64 x i8], ptr %buf76, i32 0, i32 2
  %74 = ptrtoint ptr %arrayidx155 to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 %conv79, ptr %arrayidx155, align 1
  %75 = zext i16 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %75, ptr @__sancov_gen_cov_switch_values.203)
  switch i16 %12, label %if.else150.if.end184_crit_edge [
    i16 2, label %if.then161
    i16 1, label %if.then176
  ]

if.else150.if.end184_crit_edge:                   ; preds = %if.else150
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end184

if.then161:                                       ; preds = %if.else150
  call void @__sanitizer_cov_trace_pc() #11
  %buf163 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 3
  %76 = ptrtoint ptr %buf163 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %buf163, align 4
  %78 = ptrtoint ptr %77 to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %77, align 1
  %80 = ptrtoint ptr %arrayidx135 to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 %79, ptr %arrayidx135, align 1
  %arrayidx168 = getelementptr i8, ptr %77, i32 1
  %81 = ptrtoint ptr %arrayidx168 to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %arrayidx168, align 1
  %83 = ptrtoint ptr %arrayidx136 to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 %82, ptr %arrayidx136, align 1
  br label %if.end184

if.then176:                                       ; preds = %if.else150
  call void @__sanitizer_cov_trace_pc() #11
  %buf178 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 3
  %84 = ptrtoint ptr %buf178 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %buf178, align 4
  %86 = ptrtoint ptr %85 to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %85, align 1
  %88 = ptrtoint ptr %arrayidx136 to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 %87, ptr %arrayidx136, align 1
  br label %if.end184

if.end184:                                        ; preds = %if.then176, %if.then161, %if.else150.if.end184_crit_edge, %if.then142, %if.then114
  %call185 = call fastcc i32 @af9035_ctrl_msg(ptr noundef %1, ptr noundef nonnull %req)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %req) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %buf76) #9
  br label %if.end436

land.lhs.true192:                                 ; preds = %if.end
  %flags194 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 1
  %89 = ptrtoint ptr %flags194 to i32
  call void @__asan_load2_noabort(i32 %89)
  %90 = load i16, ptr %flags194, align 2
  %91 = and i16 %90, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %91)
  %tobool197.not = icmp eq i16 %91, 0
  %len200 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 2
  %92 = ptrtoint ptr %len200 to i32
  call void @__asan_load2_noabort(i32 %92)
  %93 = load i16, ptr %len200, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 40, i16 %93)
  %cmp202 = icmp ugt i16 %93, 40
  br i1 %tobool197.not, label %if.then198, label %if.then352

if.then198:                                       ; preds = %land.lhs.true192
  br i1 %cmp202, label %if.then198.if.end436.thread_crit_edge, label %if.else205

if.then198.if.end436.thread_crit_edge:            ; preds = %if.then198
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end436.thread

if.else205:                                       ; preds = %if.then198
  %94 = ptrtoint ptr %msg to i32
  call void @__asan_load2_noabort(i32 %94)
  %95 = load i16, ptr %msg, align 4
  %af9033_i2c_addr209 = getelementptr inbounds %struct.state, ptr %3, i32 0, i32 10
  %96 = ptrtoint ptr %af9033_i2c_addr209 to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %af9033_i2c_addr209, align 2
  %98 = zext i8 %97 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %95, i16 %98)
  %cmp212 = icmp eq i16 %95, %98
  br i1 %cmp212, label %if.else205.if.then223_crit_edge, label %lor.lhs.false214

if.else205.if.then223_crit_edge:                  ; preds = %if.else205
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then223

lor.lhs.false214:                                 ; preds = %if.else205
  %arrayidx219 = getelementptr %struct.state, ptr %3, i32 0, i32 10, i32 1
  %99 = ptrtoint ptr %arrayidx219 to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %arrayidx219, align 1
  %101 = zext i8 %100 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %95, i16 %101)
  %cmp221 = icmp eq i16 %95, %101
  br i1 %cmp221, label %lor.lhs.false214.if.then223_crit_edge, label %if.else264

lor.lhs.false214.if.then223_crit_edge:            ; preds = %lor.lhs.false214
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then223

if.then223:                                       ; preds = %lor.lhs.false214.if.then223_crit_edge, %if.else205.if.then223_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %93)
  %cmp255 = icmp ugt i16 %93, 2
  br i1 %cmp255, label %cond.true, label %if.then223.if.end436.thread_crit_edge

if.then223.if.end436.thread_crit_edge:            ; preds = %if.then223
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end436.thread

cond.true:                                        ; preds = %if.then223
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx245 = getelementptr %struct.state, ptr %3, i32 0, i32 10, i32 1
  %102 = ptrtoint ptr %arrayidx245 to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %arrayidx245, align 1
  %104 = zext i8 %103 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %95, i16 %104)
  %cmp247 = icmp eq i16 %95, %104
  %buf226 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 3
  %105 = ptrtoint ptr %buf226 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %buf226, align 4
  %107 = ptrtoint ptr %106 to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %106, align 1
  %conv228 = zext i8 %108 to i32
  %shl229 = shl nuw nsw i32 %conv228, 16
  %arrayidx232 = getelementptr i8, ptr %106, i32 1
  %109 = ptrtoint ptr %arrayidx232 to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %arrayidx232, align 1
  %conv233 = zext i8 %110 to i32
  %shl234 = shl nuw nsw i32 %conv233, 8
  %or235 = or i32 %shl234, %shl229
  %arrayidx238 = getelementptr i8, ptr %106, i32 2
  %111 = ptrtoint ptr %arrayidx238 to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %arrayidx238, align 1
  %conv239 = zext i8 %112 to i32
  %or240 = or i32 %or235, %conv239
  %or250 = or i32 %or240, 1048576
  %spec.select533 = select i1 %cmp247, i32 %or250, i32 %or240
  %conv254 = zext i16 %93 to i32
  %arrayidx259 = getelementptr i8, ptr %106, i32 3
  %sub = add nsw i32 %conv254, -3
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %wbuf.i) #9
  %113 = getelementptr inbounds i8, ptr %wbuf.i, i32 6
  %114 = call ptr @memset(ptr %113, i32 255, i32 58)
  %shr.i = lshr i32 %spec.select533, 16
  %conv.i = trunc i32 %shr.i to i8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %req.i) #9
  %115 = call ptr @memset(ptr %req.i, i32 255, i32 12)
  %116 = ptrtoint ptr %req.i to i32
  call void @__asan_store1_noabort(i32 %116)
  store i8 1, ptr %req.i, align 4
  %mbox2.i = getelementptr inbounds %struct.usb_req, ptr %req.i, i32 0, i32 1
  %117 = ptrtoint ptr %mbox2.i to i32
  call void @__asan_store1_noabort(i32 %117)
  store i8 %conv.i, ptr %mbox2.i, align 1
  %wlen.i = getelementptr inbounds %struct.usb_req, ptr %req.i, i32 0, i32 2
  %118 = trunc i16 %93 to i8
  %conv3.i = add nuw nsw i8 %118, 3
  %119 = ptrtoint ptr %wlen.i to i32
  call void @__asan_store1_noabort(i32 %119)
  store i8 %conv3.i, ptr %wlen.i, align 2
  %wbuf4.i = getelementptr inbounds %struct.usb_req, ptr %req.i, i32 0, i32 3
  %120 = ptrtoint ptr %wbuf4.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr %wbuf.i, ptr %wbuf4.i, align 4
  %rlen.i = getelementptr inbounds %struct.usb_req, ptr %req.i, i32 0, i32 4
  %121 = ptrtoint ptr %rlen.i to i32
  call void @__asan_store1_noabort(i32 %121)
  store i8 0, ptr %rlen.i, align 4
  %rbuf.i = getelementptr inbounds %struct.usb_req, ptr %req.i, i32 0, i32 5
  %122 = ptrtoint ptr %rbuf.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store ptr null, ptr %rbuf.i, align 4
  %conv7.i = trunc i32 %sub to i8
  %123 = ptrtoint ptr %wbuf.i to i32
  call void @__asan_store1_noabort(i32 %123)
  store i8 %conv7.i, ptr %wbuf.i, align 1
  %arrayidx8.i = getelementptr inbounds [64 x i8], ptr %wbuf.i, i32 0, i32 1
  %124 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_store1_noabort(i32 %124)
  store i8 2, ptr %arrayidx8.i, align 1
  %arrayidx9.i = getelementptr inbounds [64 x i8], ptr %wbuf.i, i32 0, i32 2
  %125 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_store1_noabort(i32 %125)
  store i8 0, ptr %arrayidx9.i, align 1
  %arrayidx10.i = getelementptr inbounds [64 x i8], ptr %wbuf.i, i32 0, i32 3
  %126 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_store1_noabort(i32 %126)
  store i8 0, ptr %arrayidx10.i, align 1
  %shr11.i = lshr i32 %spec.select533, 8
  %conv13.i = trunc i32 %shr11.i to i8
  %arrayidx14.i = getelementptr inbounds [64 x i8], ptr %wbuf.i, i32 0, i32 4
  %127 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_store1_noabort(i32 %127)
  store i8 %conv13.i, ptr %arrayidx14.i, align 1
  %conv17.i = trunc i32 %spec.select533 to i8
  %arrayidx18.i = getelementptr inbounds [64 x i8], ptr %wbuf.i, i32 0, i32 5
  %128 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_store1_noabort(i32 %128)
  store i8 %conv17.i, ptr %arrayidx18.i, align 1
  %arrayidx19.i = getelementptr inbounds [64 x i8], ptr %wbuf.i, i32 0, i32 6
  %129 = call ptr @memcpy(ptr %arrayidx19.i, ptr %arrayidx259, i32 %sub)
  %call.i = call fastcc i32 @af9035_ctrl_msg(ptr noundef %1, ptr noundef nonnull %req.i) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %req.i) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %wbuf.i) #9
  br label %if.end436

if.else264:                                       ; preds = %lor.lhs.false214
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %buf265) #9
  %130 = call ptr @memset(ptr %buf265, i32 255, i32 64)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %req266) #9
  %131 = call ptr @memset(ptr %req266, i32 255, i32 12)
  %132 = ptrtoint ptr %req266 to i32
  call void @__asan_store1_noabort(i32 %132)
  store i8 3, ptr %req266, align 4
  %mbox268 = getelementptr inbounds %struct.usb_req, ptr %req266, i32 0, i32 1
  %wlen269 = getelementptr inbounds %struct.usb_req, ptr %req266, i32 0, i32 2
  %conv272 = trunc i16 %93 to i8
  %add273 = add nuw nsw i8 %conv272, 5
  %133 = ptrtoint ptr %wlen269 to i32
  call void @__asan_store1_noabort(i32 %133)
  store i8 %add273, ptr %wlen269, align 2
  %wbuf275 = getelementptr inbounds %struct.usb_req, ptr %req266, i32 0, i32 3
  %134 = ptrtoint ptr %wbuf275 to i32
  call void @__asan_store4_noabort(i32 %134)
  store ptr %buf265, ptr %wbuf275, align 4
  %rlen277 = getelementptr inbounds %struct.usb_req, ptr %req266, i32 0, i32 4
  %135 = ptrtoint ptr %rlen277 to i32
  call void @__asan_store1_noabort(i32 %135)
  store i8 0, ptr %rlen277, align 4
  %rbuf278 = getelementptr inbounds %struct.usb_req, ptr %req266, i32 0, i32 5
  %136 = ptrtoint ptr %rbuf278 to i32
  call void @__asan_store4_noabort(i32 %136)
  store ptr null, ptr %rbuf278, align 4
  %chip_type279 = getelementptr inbounds %struct.state, ptr %3, i32 0, i32 4
  %137 = ptrtoint ptr %chip_type279 to i32
  call void @__asan_load2_noabort(i32 %137)
  %138 = load i16, ptr %chip_type279, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -27898, i16 %138)
  %cmp281 = icmp eq i16 %138, -27898
  br i1 %cmp281, label %if.then309, label %if.else323

if.then309:                                       ; preds = %if.else264
  call void @__sanitizer_cov_trace_pc() #11
  %139 = ptrtoint ptr %req266 to i32
  call void @__asan_store1_noabort(i32 %139)
  store i8 43, ptr %req266, align 4
  %add288 = add nuw nsw i8 %conv272, 3
  %140 = ptrtoint ptr %wlen269 to i32
  call void @__asan_store1_noabort(i32 %140)
  store i8 %add288, ptr %wlen269, align 2
  %141 = trunc i16 %95 to i8
  %142 = lshr i8 %141, 3
  %143 = and i8 %142, 16
  %144 = ptrtoint ptr %mbox268 to i32
  call void @__asan_store1_noabort(i32 %144)
  store i8 %143, ptr %mbox268, align 1
  %145 = ptrtoint ptr %buf265 to i32
  call void @__asan_store1_noabort(i32 %145)
  store i8 %conv272, ptr %buf265, align 1
  %arrayidx310 = getelementptr inbounds [64 x i8], ptr %buf265, i32 0, i32 1
  %146 = ptrtoint ptr %arrayidx310 to i32
  call void @__asan_store1_noabort(i32 %146)
  store i8 3, ptr %arrayidx310, align 1
  %shl314 = shl i8 %141, 1
  br label %if.end339

if.else323:                                       ; preds = %if.else264
  call void @__sanitizer_cov_trace_pc() #11
  %147 = trunc i16 %95 to i8
  %148 = lshr i8 %147, 3
  %149 = and i8 %148, 16
  %150 = ptrtoint ptr %mbox268 to i32
  call void @__asan_store1_noabort(i32 %150)
  store i8 %149, ptr %mbox268, align 1
  %151 = ptrtoint ptr %buf265 to i32
  call void @__asan_store1_noabort(i32 %151)
  store i8 %conv272, ptr %buf265, align 1
  %shl327 = shl i8 %147, 1
  %arrayidx329 = getelementptr inbounds [64 x i8], ptr %buf265, i32 0, i32 1
  %152 = ptrtoint ptr %arrayidx329 to i32
  call void @__asan_store1_noabort(i32 %152)
  store i8 %shl327, ptr %arrayidx329, align 1
  %arrayidx330 = getelementptr inbounds [64 x i8], ptr %buf265, i32 0, i32 2
  %153 = ptrtoint ptr %arrayidx330 to i32
  call void @__asan_store1_noabort(i32 %153)
  store i8 0, ptr %arrayidx330, align 1
  %arrayidx331 = getelementptr inbounds [64 x i8], ptr %buf265, i32 0, i32 3
  %154 = ptrtoint ptr %arrayidx331 to i32
  call void @__asan_store1_noabort(i32 %154)
  store i8 0, ptr %arrayidx331, align 1
  br label %if.end339

if.end339:                                        ; preds = %if.else323, %if.then309
  %.sink542 = phi i32 [ 4, %if.else323 ], [ 2, %if.then309 ]
  %.sink541 = phi i8 [ 0, %if.else323 ], [ %shl314, %if.then309 ]
  %.sink = phi i32 [ 5, %if.else323 ], [ 3, %if.then309 ]
  %arrayidx332 = getelementptr inbounds [64 x i8], ptr %buf265, i32 0, i32 %.sink542
  %155 = ptrtoint ptr %arrayidx332 to i32
  call void @__asan_store1_noabort(i32 %155)
  store i8 %.sink541, ptr %arrayidx332, align 1
  %arrayidx333 = getelementptr inbounds [64 x i8], ptr %buf265, i32 0, i32 %.sink
  %buf335 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 3
  %156 = ptrtoint ptr %buf335 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %buf335, align 4
  %conv338 = zext i16 %93 to i32
  %158 = call ptr @memcpy(ptr %arrayidx333, ptr %157, i32 %conv338)
  %call340 = call fastcc i32 @af9035_ctrl_msg(ptr noundef %1, ptr noundef nonnull %req266)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %req266) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %buf265) #9
  br label %if.end436

if.then352:                                       ; preds = %land.lhs.true192
  br i1 %cmp202, label %if.then352.if.end436.thread_crit_edge, label %if.else359

if.then352.if.end436.thread_crit_edge:            ; preds = %if.then352
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end436.thread

if.else359:                                       ; preds = %if.then352
  %conv355 = zext i16 %93 to i32
  %no_read360 = getelementptr inbounds %struct.state, ptr %3, i32 0, i32 9
  %159 = ptrtoint ptr %no_read360 to i32
  call void @__asan_load1_noabort(i32 %159)
  %bf.load361 = load i8, ptr %no_read360, align 1
  %160 = and i8 %bf.load361, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %160)
  %tobool364.not = icmp eq i8 %160, 0
  br i1 %tobool364.not, label %if.else371, label %if.else359.if.end436.thread538_crit_edge

if.else359.if.end436.thread538_crit_edge:         ; preds = %if.else359
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end436.thread538

if.else371:                                       ; preds = %if.else359
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %buf372) #9
  %161 = getelementptr inbounds [5 x i8], ptr %buf372, i32 0, i32 1
  %162 = getelementptr inbounds [5 x i8], ptr %buf372, i32 0, i32 2
  %163 = call ptr @memset(ptr %buf372, i32 255, i32 5)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %req373) #9
  %164 = call ptr @memset(ptr %req373, i32 255, i32 12)
  %165 = ptrtoint ptr %req373 to i32
  call void @__asan_store1_noabort(i32 %165)
  store i8 2, ptr %req373, align 4
  %mbox375 = getelementptr inbounds %struct.usb_req, ptr %req373, i32 0, i32 1
  %wlen376 = getelementptr inbounds %struct.usb_req, ptr %req373, i32 0, i32 2
  %166 = ptrtoint ptr %wlen376 to i32
  call void @__asan_store1_noabort(i32 %166)
  store i8 5, ptr %wlen376, align 2
  %wbuf377 = getelementptr inbounds %struct.usb_req, ptr %req373, i32 0, i32 3
  %167 = ptrtoint ptr %wbuf377 to i32
  call void @__asan_store4_noabort(i32 %167)
  store ptr %buf372, ptr %wbuf377, align 4
  %rlen379 = getelementptr inbounds %struct.usb_req, ptr %req373, i32 0, i32 4
  %conv382 = trunc i16 %93 to i8
  %168 = ptrtoint ptr %rlen379 to i32
  call void @__asan_store1_noabort(i32 %168)
  store i8 %conv382, ptr %rlen379, align 4
  %rbuf383 = getelementptr inbounds %struct.usb_req, ptr %req373, i32 0, i32 5
  %buf385 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 3
  %169 = ptrtoint ptr %buf385 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %buf385, align 4
  %171 = ptrtoint ptr %rbuf383 to i32
  call void @__asan_store4_noabort(i32 %171)
  store ptr %170, ptr %rbuf383, align 4
  %chip_type386 = getelementptr inbounds %struct.state, ptr %3, i32 0, i32 4
  %172 = ptrtoint ptr %chip_type386 to i32
  call void @__asan_load2_noabort(i32 %172)
  %173 = load i16, ptr %chip_type386, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -27898, i16 %173)
  %cmp388 = icmp eq i16 %173, -27898
  br i1 %cmp388, label %if.then411, label %if.else419

if.then411:                                       ; preds = %if.else371
  call void @__sanitizer_cov_trace_pc() #11
  %174 = ptrtoint ptr %req373 to i32
  call void @__asan_store1_noabort(i32 %174)
  store i8 42, ptr %req373, align 4
  %175 = ptrtoint ptr %wlen376 to i32
  call void @__asan_store1_noabort(i32 %175)
  store i8 3, ptr %wlen376, align 2
  %176 = ptrtoint ptr %msg to i32
  call void @__asan_load2_noabort(i32 %176)
  %177 = load i16, ptr %msg, align 4
  %178 = trunc i16 %177 to i8
  %179 = lshr i8 %178, 3
  %180 = and i8 %179, 16
  %181 = ptrtoint ptr %mbox375 to i32
  call void @__asan_store1_noabort(i32 %181)
  store i8 %180, ptr %mbox375, align 1
  %182 = ptrtoint ptr %buf372 to i32
  call void @__asan_store1_noabort(i32 %182)
  store i8 %conv382, ptr %buf372, align 1
  %183 = ptrtoint ptr %161 to i32
  call void @__asan_store1_noabort(i32 %183)
  store i8 3, ptr %161, align 1
  %shl416 = shl i8 %178, 1
  %184 = ptrtoint ptr %162 to i32
  call void @__asan_store1_noabort(i32 %184)
  store i8 %shl416, ptr %162, align 1
  br label %if.end429

if.else419:                                       ; preds = %if.else371
  call void @__sanitizer_cov_trace_pc() #11
  %185 = getelementptr inbounds [5 x i8], ptr %buf372, i32 0, i32 4
  %186 = getelementptr inbounds [5 x i8], ptr %buf372, i32 0, i32 3
  %187 = ptrtoint ptr %msg to i32
  call void @__asan_load2_noabort(i32 %187)
  %188 = load i16, ptr %msg, align 4
  %189 = trunc i16 %188 to i8
  %190 = lshr i8 %189, 3
  %191 = and i8 %190, 16
  %192 = ptrtoint ptr %mbox375 to i32
  call void @__asan_store1_noabort(i32 %192)
  store i8 %191, ptr %mbox375, align 1
  %193 = ptrtoint ptr %buf372 to i32
  call void @__asan_store1_noabort(i32 %193)
  store i8 %conv382, ptr %buf372, align 1
  %shl423 = shl i8 %189, 1
  %194 = ptrtoint ptr %161 to i32
  call void @__asan_store1_noabort(i32 %194)
  store i8 %shl423, ptr %161, align 1
  %195 = ptrtoint ptr %162 to i32
  call void @__asan_store1_noabort(i32 %195)
  store i8 0, ptr %162, align 1
  %196 = ptrtoint ptr %186 to i32
  call void @__asan_store1_noabort(i32 %196)
  store i8 0, ptr %186, align 1
  %197 = ptrtoint ptr %185 to i32
  call void @__asan_store1_noabort(i32 %197)
  store i8 0, ptr %185, align 1
  br label %if.end429

if.end429:                                        ; preds = %if.else419, %if.then411
  %call430 = call fastcc i32 @af9035_ctrl_msg(ptr noundef %1, ptr noundef nonnull %req373)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %req373) #9
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %buf372) #9
  br label %if.end436

if.end436.thread:                                 ; preds = %if.then352.if.end436.thread_crit_edge, %if.then223.if.end436.thread_crit_edge, %if.then198.if.end436.thread_crit_edge, %lor.lhs.false.if.end436.thread_crit_edge, %if.then9.if.end436.thread_crit_edge, %land.lhs.true3.if.end436.thread_crit_edge, %land.lhs.true.if.end436.thread_crit_edge, %if.end.if.end436.thread_crit_edge
  tail call void @mutex_unlock(ptr noundef %i2c_mutex) #9
  br label %201

if.end436.thread538:                              ; preds = %if.else359.if.end436.thread538_crit_edge, %if.else67.if.end436.thread538_crit_edge
  %.sink544 = phi i32 [ 1, %if.else67.if.end436.thread538_crit_edge ], [ 0, %if.else359.if.end436.thread538_crit_edge ]
  %conv355.sink = phi i32 [ %conv16, %if.else67.if.end436.thread538_crit_edge ], [ %conv355, %if.else359.if.end436.thread538_crit_edge ]
  %buf367 = getelementptr %struct.i2c_msg, ptr %msg, i32 %.sink544, i32 3
  %198 = ptrtoint ptr %buf367 to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %buf367, align 4
  %200 = call ptr @memset(ptr %199, i32 0, i32 %conv355.sink)
  tail call void @mutex_unlock(ptr noundef %i2c_mutex) #9
  br label %cleanup

if.end436:                                        ; preds = %if.end429, %if.end339, %cond.true, %if.end184, %if.then35
  %ret.0 = phi i32 [ %call430, %if.end429 ], [ %call340, %if.end339 ], [ %call66, %if.then35 ], [ %call185, %if.end184 ], [ %call.i, %cond.true ]
  call void @mutex_unlock(ptr noundef %i2c_mutex) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %cmp438 = icmp slt i32 %ret.0, 0
  br i1 %cmp438, label %if.end436._crit_edge, label %if.end436.cleanup_crit_edge

if.end436.cleanup_crit_edge:                      ; preds = %if.end436
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end436._crit_edge:                             ; preds = %if.end436
  call void @__sanitizer_cov_trace_pc() #11
  br label %201

201:                                              ; preds = %if.end436._crit_edge, %if.end436.thread
  %ret.0536 = phi i32 [ -95, %if.end436.thread ], [ %ret.0, %if.end436._crit_edge ]
  br label %cleanup

cleanup:                                          ; preds = %201, %if.end436.cleanup_crit_edge, %if.end436.thread538, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -11, %entry.cleanup_crit_edge ], [ %ret.0536, %201 ], [ %num, %if.end436.cleanup_crit_edge ], [ %num, %if.end436.thread538 ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @af9035_i2c_functionality(ptr nocapture noundef readnone %adapter) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @af9035_add_i2c_dev(ptr nocapture noundef readonly %d, ptr noundef %type, i8 noundef zeroext %addr, ptr noundef %platform_data, ptr noundef %adapter) unnamed_addr #2 align 64 {
entry:
  %board_info = alloca %struct.i2c_board_info, align 4
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
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %board_info) #9
  %4 = call ptr @memset(ptr %board_info, i32 0, i32 56)
  %addr3 = getelementptr inbounds %struct.i2c_board_info, ptr %board_info, i32 0, i32 2
  %conv = zext i8 %addr to i16
  %5 = ptrtoint ptr %addr3 to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %conv, ptr %addr3, align 2
  %platform_data4 = getelementptr inbounds %struct.i2c_board_info, ptr %board_info, i32 0, i32 4
  %6 = ptrtoint ptr %platform_data4 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %platform_data, ptr %platform_data4, align 4
  %call = call i32 @strscpy(ptr noundef nonnull %board_info, ptr noundef %type, i32 noundef 20) #9
  %arrayidx = getelementptr %struct.state, ptr %1, i32 0, i32 14, i32 0
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx, align 4
  %cmp7 = icmp eq ptr %8, null
  br i1 %cmp7, label %entry.do.body_crit_edge, label %for.inc

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

for.inc:                                          ; preds = %entry
  %arrayidx.1 = getelementptr %struct.state, ptr %1, i32 0, i32 14, i32 1
  %9 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx.1, align 4
  %cmp7.1 = icmp eq ptr %10, null
  br i1 %cmp7.1, label %for.inc.do.body_crit_edge, label %for.inc.1

for.inc.do.body_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

for.inc.1:                                        ; preds = %for.inc
  %arrayidx.2 = getelementptr %struct.state, ptr %1, i32 0, i32 14, i32 2
  %11 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx.2, align 4
  %cmp7.2 = icmp eq ptr %12, null
  br i1 %cmp7.2, label %for.inc.1.do.body_crit_edge, label %for.inc.2

for.inc.1.do.body_crit_edge:                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

for.inc.2:                                        ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.3 = getelementptr %struct.state, ptr %1, i32 0, i32 14, i32 3
  %13 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx.3, align 4
  %cmp7.3 = icmp eq ptr %14, null
  %not.cmp7.3 = xor i1 %cmp7.3, true
  %spec.select82 = select i1 %cmp7.3, i32 3, i32 4
  br label %do.body

do.body:                                          ; preds = %for.inc.2, %for.inc.1.do.body_crit_edge, %for.inc.do.body_crit_edge, %entry.do.body_crit_edge
  %cmp14 = phi i1 [ false, %for.inc.1.do.body_crit_edge ], [ false, %for.inc.do.body_crit_edge ], [ false, %entry.do.body_crit_edge ], [ %not.cmp7.3, %for.inc.2 ]
  %num.0.lcssa = phi i32 [ 2, %for.inc.1.do.body_crit_edge ], [ 1, %for.inc.do.body_crit_edge ], [ 0, %entry.do.body_crit_edge ], [ %spec.select82, %for.inc.2 ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @af9035_add_i2c_dev.__UNIQUE_ID_ddebug391, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@af9035_add_i2c_dev, %if.then12)) #9
          to label %do.end [label %if.then12], !srcloc !384

if.then12:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.usb_interface, ptr %3, i32 0, i32 7
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @af9035_add_i2c_dev.__UNIQUE_ID_ddebug391, ptr noundef %dev, ptr noundef nonnull @.str.134, i32 noundef %num.0.lcssa) #9
  br label %do.end

do.end:                                           ; preds = %if.then12, %do.body
  br i1 %cmp14, label %do.end19, label %if.end21

do.end19:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %dev20 = getelementptr inbounds %struct.usb_interface, ptr %3, i32 0, i32 7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev20, ptr noundef nonnull @.str.135) #13
  br label %do.body39

if.end21:                                         ; preds = %do.end
  %call24 = call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.136, ptr noundef nonnull %board_info) #9
  %call25 = call ptr @i2c_new_client_device(ptr noundef %adapter, ptr noundef nonnull %board_info) #9
  %tobool.not.i.i = icmp eq ptr %call25, null
  %cmp.i.i = icmp ugt ptr %call25, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i = or i1 %tobool.not.i.i, %cmp.i.i
  br i1 %spec.select.i.i, label %if.end21.do.end30_crit_edge, label %i2c_client_has_driver.exit

if.end21.do.end30_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end30

i2c_client_has_driver.exit:                       ; preds = %if.end21
  %driver.i = getelementptr inbounds %struct.i2c_client, ptr %call25, i32 0, i32 4, i32 6
  %15 = ptrtoint ptr %driver.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %driver.i, align 4
  %tobool.i.not = icmp eq ptr %16, null
  br i1 %tobool.i.not, label %i2c_client_has_driver.exit.do.end30_crit_edge, label %if.end32

i2c_client_has_driver.exit.do.end30_crit_edge:    ; preds = %i2c_client_has_driver.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end30

do.end30:                                         ; preds = %i2c_client_has_driver.exit.do.end30_crit_edge, %if.end21.do.end30_crit_edge
  %dev31 = getelementptr inbounds %struct.usb_interface, ptr %3, i32 0, i32 7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev31, ptr noundef nonnull @.str.138, ptr noundef %type) #13
  br label %do.body39

if.end32:                                         ; preds = %i2c_client_has_driver.exit
  %17 = ptrtoint ptr %driver.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %driver.i, align 4
  %owner = getelementptr inbounds %struct.device_driver, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %owner, align 4
  %call34 = call zeroext i1 @try_module_get(ptr noundef %20) #9
  br i1 %call34, label %if.end36, label %if.then35

if.then35:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #11
  call void @i2c_unregister_device(ptr noundef nonnull %call25) #9
  br label %do.body39

if.end36:                                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx38 = getelementptr %struct.state, ptr %1, i32 0, i32 14, i32 %num.0.lcssa
  %21 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call25, ptr %arrayidx38, align 4
  br label %cleanup

do.body39:                                        ; preds = %if.then35, %do.end30, %do.end19
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @af9035_add_i2c_dev.__UNIQUE_ID_ddebug392, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@af9035_add_i2c_dev, %if.then51)) #9
          to label %cleanup [label %if.then51], !srcloc !384

if.then51:                                        ; preds = %do.body39
  call void @__sanitizer_cov_trace_pc() #11
  %dev52 = getelementptr inbounds %struct.usb_interface, ptr %3, i32 0, i32 7
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @af9035_add_i2c_dev.__UNIQUE_ID_ddebug392, ptr noundef %dev52, ptr noundef nonnull @.str.91, i32 noundef -19) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then51, %do.body39, %if.end36
  %retval.0 = phi i32 [ 0, %if.end36 ], [ -19, %if.then51 ], [ -19, %do.body39 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %board_info) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @af9035_frontend_callback(ptr nocapture noundef readonly %adapter_priv, i32 noundef %component, i32 noundef %cmd, i32 noundef %arg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %adapter_priv, i32 0, i32 9, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %intf1 = getelementptr inbounds %struct.dvb_usb_device, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %intf1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %intf1, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @af9035_frontend_callback.__UNIQUE_ID_ddebug416, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@af9035_frontend_callback, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !384

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.usb_interface, ptr %3, i32 0, i32 7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @af9035_frontend_callback.__UNIQUE_ID_ddebug416, ptr noundef %dev, ptr noundef nonnull @.str.141, i32 noundef %component, i32 noundef %cmd, i32 noundef %arg) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %component)
  %cond = icmp eq i32 %component, 0
  br i1 %cond, label %sw.bb, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb:                                            ; preds = %do.end
  %priv.i = getelementptr inbounds %struct.dvb_usb_device, ptr %1, i32 0, i32 15
  %4 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv.i, align 8
  %tuner.i = getelementptr inbounds %struct.state, ptr %5, i32 0, i32 12, i32 0, i32 2
  %6 = ptrtoint ptr %tuner.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %tuner.i, align 1
  %8 = zext i8 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.204)
  switch i8 %7, label %sw.bb.cleanup_crit_edge [
    i8 40, label %sw.bb.i
    i8 39, label %sw.bb1.i
  ]

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb.i:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %call.i = tail call fastcc i32 @af9035_fc0011_tuner_callback(ptr noundef %1, i32 noundef %cmd) #9
  br label %cleanup

sw.bb1.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %call2.i = tail call fastcc i32 @af9035_tua9001_tuner_callback(ptr noundef %1, i32 noundef %cmd, i32 noundef %arg) #9
  br label %cleanup

cleanup:                                          ; preds = %sw.bb1.i, %sw.bb.i, %sw.bb.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end.cleanup_crit_edge ], [ %call2.i, %sw.bb1.i ], [ %call.i, %sw.bb.i ], [ 0, %sw.bb.cleanup_crit_edge ]
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
define internal fastcc i32 @af9035_fc0011_tuner_callback(ptr noundef %d, i32 noundef %cmd) unnamed_addr #2 align 64 {
entry:
  %wbuf.i.i29 = alloca [64 x i8], align 1
  %req.i.i30 = alloca %struct.usb_req, align 4
  %wbuf.i.i15 = alloca [64 x i8], align 1
  %req.i.i16 = alloca %struct.usb_req, align 4
  %wbuf.i.i1 = alloca [64 x i8], align 1
  %req.i.i2 = alloca %struct.usb_req, align 4
  %wbuf.i.i = alloca [64 x i8], align 1
  %req.i.i = alloca %struct.usb_req, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %intf1 = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 4
  %0 = ptrtoint ptr %intf1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %intf1, align 8
  %2 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.205)
  switch i32 %cmd, label %entry.do.body_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb18
  ]

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

sw.bb:                                            ; preds = %entry
  %call = tail call fastcc i32 @af9035_wr_reg_mask(ptr noundef %d, i32 noundef 55531, i8 noundef zeroext 1, i8 noundef zeroext 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %sw.bb.do.body_crit_edge, label %if.end

sw.bb.do.body_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

if.end:                                           ; preds = %sw.bb
  %call2 = tail call fastcc i32 @af9035_wr_reg_mask(ptr noundef %d, i32 noundef 55532, i8 noundef zeroext 1, i8 noundef zeroext 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %if.end.do.body_crit_edge, label %if.end5

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

if.end5:                                          ; preds = %if.end
  %call6 = tail call fastcc i32 @af9035_wr_reg_mask(ptr noundef %d, i32 noundef 55533, i8 noundef zeroext 1, i8 noundef zeroext 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7 = icmp slt i32 %call6, 0
  br i1 %cmp7, label %if.end5.do.body_crit_edge, label %if.end9

if.end5.do.body_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

if.end9:                                          ; preds = %if.end5
  %call10 = tail call fastcc i32 @af9035_wr_reg_mask(ptr noundef %d, i32 noundef 55504, i8 noundef zeroext 1, i8 noundef zeroext 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp11 = icmp slt i32 %call10, 0
  br i1 %cmp11, label %if.end9.do.body_crit_edge, label %if.end13

if.end9.do.body_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

if.end13:                                         ; preds = %if.end9
  %call14 = tail call fastcc i32 @af9035_wr_reg_mask(ptr noundef %d, i32 noundef 55505, i8 noundef zeroext 1, i8 noundef zeroext 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp15 = icmp slt i32 %call14, 0
  br i1 %cmp15, label %if.end13.do.body_crit_edge, label %if.end17

if.end13.do.body_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

if.end17:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 50000, i32 noundef 2) #9
  br label %cleanup

sw.bb18:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %wbuf.i.i) #9
  %3 = getelementptr inbounds i8, ptr %wbuf.i.i, i32 7
  %4 = call ptr @memset(ptr %3, i32 255, i32 57)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %req.i.i) #9
  %5 = call ptr @memset(ptr %req.i.i, i32 255, i32 12)
  %6 = ptrtoint ptr %req.i.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %req.i.i, align 4
  %mbox2.i.i = getelementptr inbounds %struct.usb_req, ptr %req.i.i, i32 0, i32 1
  %7 = ptrtoint ptr %mbox2.i.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %mbox2.i.i, align 1
  %wlen.i.i = getelementptr inbounds %struct.usb_req, ptr %req.i.i, i32 0, i32 2
  %8 = ptrtoint ptr %wlen.i.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 7, ptr %wlen.i.i, align 2
  %wbuf4.i.i = getelementptr inbounds %struct.usb_req, ptr %req.i.i, i32 0, i32 3
  %9 = ptrtoint ptr %wbuf4.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %wbuf.i.i, ptr %wbuf4.i.i, align 4
  %rlen.i.i = getelementptr inbounds %struct.usb_req, ptr %req.i.i, i32 0, i32 4
  %10 = ptrtoint ptr %rlen.i.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %rlen.i.i, align 4
  %rbuf.i.i = getelementptr inbounds %struct.usb_req, ptr %req.i.i, i32 0, i32 5
  %11 = ptrtoint ptr %rbuf.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %rbuf.i.i, align 4
  %12 = ptrtoint ptr %wbuf.i.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %wbuf.i.i, align 1
  %arrayidx8.i.i = getelementptr inbounds [64 x i8], ptr %wbuf.i.i, i32 0, i32 1
  %13 = ptrtoint ptr %arrayidx8.i.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 2, ptr %arrayidx8.i.i, align 1
  %arrayidx9.i.i = getelementptr inbounds [64 x i8], ptr %wbuf.i.i, i32 0, i32 2
  %14 = ptrtoint ptr %arrayidx9.i.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %arrayidx9.i.i, align 1
  %arrayidx10.i.i = getelementptr inbounds [64 x i8], ptr %wbuf.i.i, i32 0, i32 3
  %15 = ptrtoint ptr %arrayidx10.i.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %arrayidx10.i.i, align 1
  %arrayidx14.i.i = getelementptr inbounds [64 x i8], ptr %wbuf.i.i, i32 0, i32 4
  %16 = ptrtoint ptr %arrayidx14.i.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 -40, ptr %arrayidx14.i.i, align 1
  %arrayidx18.i.i = getelementptr inbounds [64 x i8], ptr %wbuf.i.i, i32 0, i32 5
  %17 = ptrtoint ptr %arrayidx18.i.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 -23, ptr %arrayidx18.i.i, align 1
  %arrayidx19.i.i = getelementptr inbounds [64 x i8], ptr %wbuf.i.i, i32 0, i32 6
  %18 = ptrtoint ptr %arrayidx19.i.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 1, ptr %arrayidx19.i.i, align 1
  %call.i.i = call fastcc i32 @af9035_ctrl_msg(ptr noundef %d, ptr noundef nonnull %req.i.i) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %req.i.i) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %wbuf.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp20 = icmp slt i32 %call.i.i, 0
  br i1 %cmp20, label %sw.bb18.do.body_crit_edge, label %if.end22

sw.bb18.do.body_crit_edge:                        ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

if.end22:                                         ; preds = %sw.bb18
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %wbuf.i.i1) #9
  %19 = getelementptr inbounds i8, ptr %wbuf.i.i1, i32 7
  %20 = call ptr @memset(ptr %19, i32 255, i32 57)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %req.i.i2) #9
  %21 = call ptr @memset(ptr %req.i.i2, i32 255, i32 12)
  %22 = ptrtoint ptr %req.i.i2 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 1, ptr %req.i.i2, align 4
  %mbox2.i.i3 = getelementptr inbounds %struct.usb_req, ptr %req.i.i2, i32 0, i32 1
  %23 = ptrtoint ptr %mbox2.i.i3 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %mbox2.i.i3, align 1
  %wlen.i.i4 = getelementptr inbounds %struct.usb_req, ptr %req.i.i2, i32 0, i32 2
  %24 = ptrtoint ptr %wlen.i.i4 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 7, ptr %wlen.i.i4, align 2
  %wbuf4.i.i5 = getelementptr inbounds %struct.usb_req, ptr %req.i.i2, i32 0, i32 3
  %25 = ptrtoint ptr %wbuf4.i.i5 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %wbuf.i.i1, ptr %wbuf4.i.i5, align 4
  %rlen.i.i6 = getelementptr inbounds %struct.usb_req, ptr %req.i.i2, i32 0, i32 4
  %26 = ptrtoint ptr %rlen.i.i6 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %rlen.i.i6, align 4
  %rbuf.i.i7 = getelementptr inbounds %struct.usb_req, ptr %req.i.i2, i32 0, i32 5
  %27 = ptrtoint ptr %rbuf.i.i7 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %rbuf.i.i7, align 4
  %28 = ptrtoint ptr %wbuf.i.i1 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 1, ptr %wbuf.i.i1, align 1
  %arrayidx8.i.i8 = getelementptr inbounds [64 x i8], ptr %wbuf.i.i1, i32 0, i32 1
  %29 = ptrtoint ptr %arrayidx8.i.i8 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 2, ptr %arrayidx8.i.i8, align 1
  %arrayidx9.i.i9 = getelementptr inbounds [64 x i8], ptr %wbuf.i.i1, i32 0, i32 2
  %30 = ptrtoint ptr %arrayidx9.i.i9 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 0, ptr %arrayidx9.i.i9, align 1
  %arrayidx10.i.i10 = getelementptr inbounds [64 x i8], ptr %wbuf.i.i1, i32 0, i32 3
  %31 = ptrtoint ptr %arrayidx10.i.i10 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 0, ptr %arrayidx10.i.i10, align 1
  %arrayidx14.i.i11 = getelementptr inbounds [64 x i8], ptr %wbuf.i.i1, i32 0, i32 4
  %32 = ptrtoint ptr %arrayidx14.i.i11 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 -40, ptr %arrayidx14.i.i11, align 1
  %arrayidx18.i.i12 = getelementptr inbounds [64 x i8], ptr %wbuf.i.i1, i32 0, i32 5
  %33 = ptrtoint ptr %arrayidx18.i.i12 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 -24, ptr %arrayidx18.i.i12, align 1
  %arrayidx19.i.i13 = getelementptr inbounds [64 x i8], ptr %wbuf.i.i1, i32 0, i32 6
  %34 = ptrtoint ptr %arrayidx19.i.i13 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 1, ptr %arrayidx19.i.i13, align 1
  %call.i.i14 = call fastcc i32 @af9035_ctrl_msg(ptr noundef %d, ptr noundef nonnull %req.i.i2) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %req.i.i2) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %wbuf.i.i1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i14)
  %cmp24 = icmp slt i32 %call.i.i14, 0
  br i1 %cmp24, label %if.end22.do.body_crit_edge, label %if.end26

if.end22.do.body_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

if.end26:                                         ; preds = %if.end22
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %wbuf.i.i15) #9
  %35 = getelementptr inbounds i8, ptr %wbuf.i.i15, i32 7
  %36 = call ptr @memset(ptr %35, i32 255, i32 57)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %req.i.i16) #9
  %37 = call ptr @memset(ptr %req.i.i16, i32 255, i32 12)
  %38 = ptrtoint ptr %req.i.i16 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 1, ptr %req.i.i16, align 4
  %mbox2.i.i17 = getelementptr inbounds %struct.usb_req, ptr %req.i.i16, i32 0, i32 1
  %39 = ptrtoint ptr %mbox2.i.i17 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 0, ptr %mbox2.i.i17, align 1
  %wlen.i.i18 = getelementptr inbounds %struct.usb_req, ptr %req.i.i16, i32 0, i32 2
  %40 = ptrtoint ptr %wlen.i.i18 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 7, ptr %wlen.i.i18, align 2
  %wbuf4.i.i19 = getelementptr inbounds %struct.usb_req, ptr %req.i.i16, i32 0, i32 3
  %41 = ptrtoint ptr %wbuf4.i.i19 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %wbuf.i.i15, ptr %wbuf4.i.i19, align 4
  %rlen.i.i20 = getelementptr inbounds %struct.usb_req, ptr %req.i.i16, i32 0, i32 4
  %42 = ptrtoint ptr %rlen.i.i20 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 0, ptr %rlen.i.i20, align 4
  %rbuf.i.i21 = getelementptr inbounds %struct.usb_req, ptr %req.i.i16, i32 0, i32 5
  %43 = ptrtoint ptr %rbuf.i.i21 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr null, ptr %rbuf.i.i21, align 4
  %44 = ptrtoint ptr %wbuf.i.i15 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 1, ptr %wbuf.i.i15, align 1
  %arrayidx8.i.i22 = getelementptr inbounds [64 x i8], ptr %wbuf.i.i15, i32 0, i32 1
  %45 = ptrtoint ptr %arrayidx8.i.i22 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 2, ptr %arrayidx8.i.i22, align 1
  %arrayidx9.i.i23 = getelementptr inbounds [64 x i8], ptr %wbuf.i.i15, i32 0, i32 2
  %46 = ptrtoint ptr %arrayidx9.i.i23 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 0, ptr %arrayidx9.i.i23, align 1
  %arrayidx10.i.i24 = getelementptr inbounds [64 x i8], ptr %wbuf.i.i15, i32 0, i32 3
  %47 = ptrtoint ptr %arrayidx10.i.i24 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 0, ptr %arrayidx10.i.i24, align 1
  %arrayidx14.i.i25 = getelementptr inbounds [64 x i8], ptr %wbuf.i.i15, i32 0, i32 4
  %48 = ptrtoint ptr %arrayidx14.i.i25 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 -40, ptr %arrayidx14.i.i25, align 1
  %arrayidx18.i.i26 = getelementptr inbounds [64 x i8], ptr %wbuf.i.i15, i32 0, i32 5
  %49 = ptrtoint ptr %arrayidx18.i.i26 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 -25, ptr %arrayidx18.i.i26, align 1
  %arrayidx19.i.i27 = getelementptr inbounds [64 x i8], ptr %wbuf.i.i15, i32 0, i32 6
  %50 = ptrtoint ptr %arrayidx19.i.i27 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 1, ptr %arrayidx19.i.i27, align 1
  %call.i.i28 = call fastcc i32 @af9035_ctrl_msg(ptr noundef %d, ptr noundef nonnull %req.i.i16) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %req.i.i16) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %wbuf.i.i15) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i28)
  %cmp28 = icmp slt i32 %call.i.i28, 0
  br i1 %cmp28, label %if.end26.do.body_crit_edge, label %if.end30

if.end26.do.body_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

if.end30:                                         ; preds = %if.end26
  call void @usleep_range_state(i32 noundef 10000, i32 noundef 20000, i32 noundef 2) #9
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %wbuf.i.i29) #9
  %51 = getelementptr inbounds i8, ptr %wbuf.i.i29, i32 7
  %52 = call ptr @memset(ptr %51, i32 255, i32 57)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %req.i.i30) #9
  %53 = call ptr @memset(ptr %req.i.i30, i32 255, i32 12)
  %54 = ptrtoint ptr %req.i.i30 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 1, ptr %req.i.i30, align 4
  %mbox2.i.i31 = getelementptr inbounds %struct.usb_req, ptr %req.i.i30, i32 0, i32 1
  %55 = ptrtoint ptr %mbox2.i.i31 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 0, ptr %mbox2.i.i31, align 1
  %wlen.i.i32 = getelementptr inbounds %struct.usb_req, ptr %req.i.i30, i32 0, i32 2
  %56 = ptrtoint ptr %wlen.i.i32 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 7, ptr %wlen.i.i32, align 2
  %wbuf4.i.i33 = getelementptr inbounds %struct.usb_req, ptr %req.i.i30, i32 0, i32 3
  %57 = ptrtoint ptr %wbuf4.i.i33 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %wbuf.i.i29, ptr %wbuf4.i.i33, align 4
  %rlen.i.i34 = getelementptr inbounds %struct.usb_req, ptr %req.i.i30, i32 0, i32 4
  %58 = ptrtoint ptr %rlen.i.i34 to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 0, ptr %rlen.i.i34, align 4
  %rbuf.i.i35 = getelementptr inbounds %struct.usb_req, ptr %req.i.i30, i32 0, i32 5
  %59 = ptrtoint ptr %rbuf.i.i35 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr null, ptr %rbuf.i.i35, align 4
  %60 = ptrtoint ptr %wbuf.i.i29 to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 1, ptr %wbuf.i.i29, align 1
  %arrayidx8.i.i36 = getelementptr inbounds [64 x i8], ptr %wbuf.i.i29, i32 0, i32 1
  %61 = ptrtoint ptr %arrayidx8.i.i36 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 2, ptr %arrayidx8.i.i36, align 1
  %arrayidx9.i.i37 = getelementptr inbounds [64 x i8], ptr %wbuf.i.i29, i32 0, i32 2
  %62 = ptrtoint ptr %arrayidx9.i.i37 to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 0, ptr %arrayidx9.i.i37, align 1
  %arrayidx10.i.i38 = getelementptr inbounds [64 x i8], ptr %wbuf.i.i29, i32 0, i32 3
  %63 = ptrtoint ptr %arrayidx10.i.i38 to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 0, ptr %arrayidx10.i.i38, align 1
  %arrayidx14.i.i39 = getelementptr inbounds [64 x i8], ptr %wbuf.i.i29, i32 0, i32 4
  %64 = ptrtoint ptr %arrayidx14.i.i39 to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 -40, ptr %arrayidx14.i.i39, align 1
  %arrayidx18.i.i40 = getelementptr inbounds [64 x i8], ptr %wbuf.i.i29, i32 0, i32 5
  %65 = ptrtoint ptr %arrayidx18.i.i40 to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 -25, ptr %arrayidx18.i.i40, align 1
  %arrayidx19.i.i41 = getelementptr inbounds [64 x i8], ptr %wbuf.i.i29, i32 0, i32 6
  %66 = ptrtoint ptr %arrayidx19.i.i41 to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 0, ptr %arrayidx19.i.i41, align 1
  %call.i.i42 = call fastcc i32 @af9035_ctrl_msg(ptr noundef %d, ptr noundef nonnull %req.i.i30) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %req.i.i30) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %wbuf.i.i29) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i42)
  %cmp32 = icmp slt i32 %call.i.i42, 0
  br i1 %cmp32, label %if.end30.do.body_crit_edge, label %if.end34

if.end30.do.body_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

if.end34:                                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #11
  call void @usleep_range_state(i32 noundef 10000, i32 noundef 20000, i32 noundef 2) #9
  br label %cleanup

do.body:                                          ; preds = %if.end30.do.body_crit_edge, %if.end26.do.body_crit_edge, %if.end22.do.body_crit_edge, %sw.bb18.do.body_crit_edge, %if.end13.do.body_crit_edge, %if.end9.do.body_crit_edge, %if.end5.do.body_crit_edge, %if.end.do.body_crit_edge, %sw.bb.do.body_crit_edge, %entry.do.body_crit_edge
  %ret.0 = phi i32 [ %call.i.i, %sw.bb18.do.body_crit_edge ], [ %call.i.i14, %if.end22.do.body_crit_edge ], [ %call.i.i28, %if.end26.do.body_crit_edge ], [ %call.i.i42, %if.end30.do.body_crit_edge ], [ %call, %sw.bb.do.body_crit_edge ], [ %call2, %if.end.do.body_crit_edge ], [ %call6, %if.end5.do.body_crit_edge ], [ %call10, %if.end9.do.body_crit_edge ], [ %call14, %if.end13.do.body_crit_edge ], [ -22, %entry.do.body_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @af9035_fc0011_tuner_callback.__UNIQUE_ID_ddebug415, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@af9035_fc0011_tuner_callback, %if.then38)) #9
          to label %cleanup [label %if.then38], !srcloc !384

if.then38:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.usb_interface, ptr %1, i32 0, i32 7
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @af9035_fc0011_tuner_callback.__UNIQUE_ID_ddebug415, ptr noundef %dev, ptr noundef nonnull @.str.91, i32 noundef %ret.0) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then38, %do.body, %if.end34, %if.end17
  %retval.0 = phi i32 [ 0, %if.end34 ], [ 0, %if.end17 ], [ %ret.0, %if.then38 ], [ %ret.0, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @af9035_tua9001_tuner_callback(ptr noundef %d, i32 noundef %cmd, i32 noundef %arg) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %intf1 = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 4
  %0 = ptrtoint ptr %intf1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %intf1, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @af9035_tua9001_tuner_callback.__UNIQUE_ID_ddebug413, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@af9035_tua9001_tuner_callback, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !384

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.usb_interface, ptr %1, i32 0, i32 7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @af9035_tua9001_tuner_callback.__UNIQUE_ID_ddebug413, ptr noundef %dev, ptr noundef nonnull @.str.144, i32 noundef %cmd, i32 noundef %arg) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %2 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.206)
  switch i32 %cmd, label %do.end.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb10
  ]

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb:                                            ; preds = %do.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %arg)
  %tobool4.not = icmp eq i32 %arg, 0
  %. = zext i1 %tobool4.not to i8
  %call7 = tail call fastcc i32 @af9035_wr_reg_mask(ptr noundef %d, i32 noundef 55527, i8 noundef zeroext %., i8 noundef zeroext 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp = icmp slt i32 %call7, 0
  br i1 %cmp, label %sw.bb.do.body19_crit_edge, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb.do.body19_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body19

sw.bb10:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %arg)
  %tobool11.not = icmp ne i32 %arg, 0
  %.48 = zext i1 %tobool11.not to i8
  %call15 = tail call fastcc i32 @af9035_wr_reg_mask(ptr noundef %d, i32 noundef 55531, i8 noundef zeroext %.48, i8 noundef zeroext 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp16 = icmp slt i32 %call15, 0
  br i1 %cmp16, label %sw.bb10.do.body19_crit_edge, label %sw.bb10.cleanup_crit_edge

sw.bb10.cleanup_crit_edge:                        ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb10.do.body19_crit_edge:                      ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body19

do.body19:                                        ; preds = %sw.bb10.do.body19_crit_edge, %sw.bb.do.body19_crit_edge
  %ret.0 = phi i32 [ %call15, %sw.bb10.do.body19_crit_edge ], [ %call7, %sw.bb.do.body19_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @af9035_tua9001_tuner_callback.__UNIQUE_ID_ddebug414, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@af9035_tua9001_tuner_callback, %if.then31)) #9
          to label %cleanup [label %if.then31], !srcloc !384

if.then31:                                        ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #11
  %dev32 = getelementptr inbounds %struct.usb_interface, ptr %1, i32 0, i32 7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @af9035_tua9001_tuner_callback.__UNIQUE_ID_ddebug414, ptr noundef %dev32, ptr noundef nonnull @.str.91, i32 noundef %ret.0) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then31, %do.body19, %sw.bb10.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.bb10.cleanup_crit_edge ], [ 0, %sw.bb.cleanup_crit_edge ], [ 0, %do.end.cleanup_crit_edge ], [ %ret.0, %if.then31 ], [ %ret.0, %do.body19 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @af9035_del_i2c_dev(ptr nocapture noundef readonly %d) unnamed_addr #2 align 64 {
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
  %arrayidx = getelementptr %struct.state, ptr %1, i32 0, i32 14, i32 3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %cmp.not = icmp eq ptr %5, null
  br i1 %cmp.not, label %while.cond.1, label %entry.do.body_crit_edge

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

while.cond.1:                                     ; preds = %entry
  %arrayidx.1 = getelementptr %struct.state, ptr %1, i32 0, i32 14, i32 2
  %6 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.1, align 4
  %cmp.not.1 = icmp eq ptr %7, null
  br i1 %cmp.not.1, label %while.cond.2, label %while.cond.1.do.body_crit_edge

while.cond.1.do.body_crit_edge:                   ; preds = %while.cond.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

while.cond.2:                                     ; preds = %while.cond.1
  %arrayidx.2 = getelementptr %struct.state, ptr %1, i32 0, i32 14, i32 1
  %8 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.2, align 4
  %cmp.not.2 = icmp eq ptr %9, null
  br i1 %cmp.not.2, label %while.cond.3, label %while.cond.2.do.body_crit_edge

while.cond.2.do.body_crit_edge:                   ; preds = %while.cond.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

while.cond.3:                                     ; preds = %while.cond.2
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.3 = getelementptr %struct.state, ptr %1, i32 0, i32 14, i32 0
  %10 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.3, align 4
  %cmp.not.3 = icmp eq ptr %11, null
  %spec.select = sext i1 %cmp.not.3 to i32
  br label %do.body

do.body:                                          ; preds = %while.cond.3, %while.cond.2.do.body_crit_edge, %while.cond.1.do.body_crit_edge, %entry.do.body_crit_edge
  %dec.lcssa = phi i32 [ 3, %entry.do.body_crit_edge ], [ 2, %while.cond.1.do.body_crit_edge ], [ 1, %while.cond.2.do.body_crit_edge ], [ %spec.select, %while.cond.3 ]
  %tobool.not.lcssa = phi i1 [ false, %entry.do.body_crit_edge ], [ false, %while.cond.1.do.body_crit_edge ], [ false, %while.cond.2.do.body_crit_edge ], [ %cmp.not.3, %while.cond.3 ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @af9035_del_i2c_dev.__UNIQUE_ID_ddebug393, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@af9035_del_i2c_dev, %if.then5)) #9
          to label %do.end [label %if.then5], !srcloc !384

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.usb_interface, ptr %3, i32 0, i32 7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @af9035_del_i2c_dev.__UNIQUE_ID_ddebug393, ptr noundef %dev, ptr noundef nonnull @.str.134, i32 noundef %dec.lcssa) #9
  br label %do.end

do.end:                                           ; preds = %if.then5, %do.body
  br i1 %tobool.not.lcssa, label %do.end11, label %if.end13

do.end11:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %dev12 = getelementptr inbounds %struct.usb_interface, ptr %3, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev12, ptr noundef nonnull @.str.135) #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @af9035_del_i2c_dev.__UNIQUE_ID_ddebug394, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@af9035_del_i2c_dev, %if.then31)) #9
          to label %cleanup [label %if.then31], !srcloc !384

if.end13:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx15 = getelementptr %struct.state, ptr %1, i32 0, i32 14, i32 %dec.lcssa
  %12 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx15, align 4
  %driver = getelementptr inbounds %struct.i2c_client, ptr %13, i32 0, i32 4, i32 6
  %14 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %driver, align 4
  %owner = getelementptr inbounds %struct.device_driver, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %owner, align 4
  tail call void @module_put(ptr noundef %17) #9
  tail call void @i2c_unregister_device(ptr noundef %13) #9
  %18 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %arrayidx15, align 4
  br label %cleanup

if.then31:                                        ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @af9035_del_i2c_dev.__UNIQUE_ID_ddebug394, ptr noundef %dev12, ptr noundef nonnull @.str.147) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then31, %if.end13, %do.end11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__symbol_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__symbol_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_device_register_full(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @af9035_rc_query(ptr noundef %d) #2 align 64 {
entry:
  %buf = alloca [4 x i8], align 4
  %req = alloca %struct.usb_req, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %intf1 = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 4
  %0 = ptrtoint ptr %intf1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %intf1, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf) #9
  %2 = getelementptr inbounds [4 x i8], ptr %buf, i32 0, i32 1
  %3 = getelementptr inbounds [4 x i8], ptr %buf, i32 0, i32 2
  %4 = getelementptr inbounds [4 x i8], ptr %buf, i32 0, i32 3
  %5 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %buf, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %req) #9
  %6 = call ptr @memset(ptr %req, i32 255, i32 12)
  %7 = ptrtoint ptr %req to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 24, ptr %req, align 4
  %mbox = getelementptr inbounds %struct.usb_req, ptr %req, i32 0, i32 1
  %8 = ptrtoint ptr %mbox to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %mbox, align 1
  %wlen = getelementptr inbounds %struct.usb_req, ptr %req, i32 0, i32 2
  %9 = ptrtoint ptr %wlen to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %wlen, align 2
  %wbuf = getelementptr inbounds %struct.usb_req, ptr %req, i32 0, i32 3
  %10 = ptrtoint ptr %wbuf to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %wbuf, align 4
  %rlen = getelementptr inbounds %struct.usb_req, ptr %req, i32 0, i32 4
  %11 = ptrtoint ptr %rlen to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 4, ptr %rlen, align 4
  %rbuf = getelementptr inbounds %struct.usb_req, ptr %req, i32 0, i32 5
  %12 = ptrtoint ptr %rbuf to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %buf, ptr %rbuf, align 4
  %call = call fastcc i32 @af9035_ctrl_msg(ptr noundef %d, ptr noundef nonnull %req)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp = icmp eq i32 %call, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.else

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp2 = icmp slt i32 %call, 0
  br i1 %cmp2, label %do.body57, label %if.end4

if.end4:                                          ; preds = %if.else
  %13 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %3, align 2
  %conv = zext i8 %14 to i32
  %15 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %4, align 1
  %conv6 = zext i8 %16 to i32
  %add = add nuw nsw i32 %conv6, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %add)
  %cmp7 = icmp eq i32 %add, 255
  %17 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %buf, align 4
  %conv11 = zext i8 %18 to i32
  br i1 %cmp7, label %if.then9, label %if.else34

if.then9:                                         ; preds = %if.end4
  %19 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %2, align 1
  %conv13 = zext i8 %20 to i32
  %add14 = add nuw nsw i32 %conv13, %conv11
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %add14)
  %cmp15 = icmp eq i32 %add14, 255
  br i1 %cmp15, label %if.then17, label %if.else22

if.then17:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #11
  %shl = shl nuw nsw i32 %conv11, 8
  %or = or i32 %shl, %conv
  br label %do.body

if.else22:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #11
  %21 = shl nuw nsw i32 %conv11, 16
  %22 = shl nuw nsw i32 %conv13, 8
  %shl29 = or i32 %21, %conv
  %or32 = or i32 %shl29, %22
  br label %do.body

if.else34:                                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  %shl37 = shl nuw i32 %conv11, 24
  %23 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %2, align 1
  %conv39 = zext i8 %24 to i32
  %shl40 = shl nuw nsw i32 %conv39, 16
  %shl44 = shl nuw nsw i32 %conv, 8
  %or41 = or i32 %shl44, %conv6
  %or45 = or i32 %or41, %shl37
  %or48 = or i32 %or45, %shl40
  br label %do.body

do.body:                                          ; preds = %if.else34, %if.else22, %if.then17
  %key.0 = phi i32 [ %or, %if.then17 ], [ %or32, %if.else22 ], [ %or48, %if.else34 ]
  %proto.0 = phi i32 [ 9, %if.then17 ], [ 10, %if.else22 ], [ 11, %if.else34 ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @af9035_rc_query.__UNIQUE_ID_ddebug432, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@af9035_rc_query, %if.then53)) #9
          to label %do.end [label %if.then53], !srcloc !384

if.then53:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.usb_interface, ptr %1, i32 0, i32 7
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @af9035_rc_query.__UNIQUE_ID_ddebug432, ptr noundef %dev, ptr noundef nonnull @.str.85, i32 noundef 4, ptr noundef nonnull %buf) #9
  br label %do.end

do.end:                                           ; preds = %if.then53, %do.body
  %rc_dev = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 12
  %25 = ptrtoint ptr %rc_dev to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %rc_dev, align 8
  %conv56 = zext i32 %key.0 to i64
  call void @rc_keydown(ptr noundef %26, i32 noundef %proto.0, i64 noundef %conv56, i8 noundef zeroext 0) #9
  br label %cleanup

do.body57:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @af9035_rc_query.__UNIQUE_ID_ddebug433, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@af9035_rc_query, %if.then69)) #9
          to label %cleanup [label %if.then69], !srcloc !384

if.then69:                                        ; preds = %do.body57
  call void @__sanitizer_cov_trace_pc() #11
  %dev70 = getelementptr inbounds %struct.usb_interface, ptr %1, i32 0, i32 7
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @af9035_rc_query.__UNIQUE_ID_ddebug433, ptr noundef %dev70, ptr noundef nonnull @.str.91, i32 noundef %call) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then69, %do.body57, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end ], [ 0, %entry.cleanup_crit_edge ], [ %call, %if.then69 ], [ %call, %do.body57 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %req) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rc_keydown(ptr noundef, i32 noundef, i64 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @it930x_frontend_attach(ptr noundef %adap) #2 align 64 {
entry:
  %wbuf.i.i141 = alloca [64 x i8], align 1
  %req.i.i142 = alloca %struct.usb_req, align 4
  %wbuf.i.i = alloca [64 x i8], align 1
  %req.i.i = alloca %struct.usb_req, align 4
  %si2168_config = alloca %struct.si2168_config, align 4
  %adapter = alloca ptr, align 4
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
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %si2168_config) #9
  %6 = call ptr @memset(ptr %si2168_config, i32 255, i32 12)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %adapter) #9
  %7 = ptrtoint ptr %adapter to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 -1 to ptr), ptr %adapter, align 4, !annotation !385
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @it930x_frontend_attach.__UNIQUE_ID_ddebug419, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@it930x_frontend_attach, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !384

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.usb_interface, ptr %5, i32 0, i32 7
  %8 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %id, align 4
  %conv12 = zext i8 %9 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @it930x_frontend_attach.__UNIQUE_ID_ddebug419, ptr noundef %dev, ptr noundef nonnull @.str.131, i32 noundef %conv12) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %wbuf.i.i) #9
  %10 = getelementptr inbounds i8, ptr %wbuf.i.i, i32 7
  %11 = call ptr @memset(ptr %10, i32 255, i32 57)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %req.i.i) #9
  %12 = call ptr @memset(ptr %req.i.i, i32 255, i32 12)
  %13 = ptrtoint ptr %req.i.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %req.i.i, align 4
  %mbox2.i.i = getelementptr inbounds %struct.usb_req, ptr %req.i.i, i32 0, i32 1
  %14 = ptrtoint ptr %mbox2.i.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %mbox2.i.i, align 1
  %wlen.i.i = getelementptr inbounds %struct.usb_req, ptr %req.i.i, i32 0, i32 2
  %15 = ptrtoint ptr %wlen.i.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 7, ptr %wlen.i.i, align 2
  %wbuf4.i.i = getelementptr inbounds %struct.usb_req, ptr %req.i.i, i32 0, i32 3
  %16 = ptrtoint ptr %wbuf4.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %wbuf.i.i, ptr %wbuf4.i.i, align 4
  %rlen.i.i = getelementptr inbounds %struct.usb_req, ptr %req.i.i, i32 0, i32 4
  %17 = ptrtoint ptr %rlen.i.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %rlen.i.i, align 4
  %rbuf.i.i = getelementptr inbounds %struct.usb_req, ptr %req.i.i, i32 0, i32 5
  %18 = ptrtoint ptr %rbuf.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %rbuf.i.i, align 4
  %19 = ptrtoint ptr %wbuf.i.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 1, ptr %wbuf.i.i, align 1
  %arrayidx8.i.i = getelementptr inbounds [64 x i8], ptr %wbuf.i.i, i32 0, i32 1
  %20 = ptrtoint ptr %arrayidx8.i.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 2, ptr %arrayidx8.i.i, align 1
  %arrayidx9.i.i = getelementptr inbounds [64 x i8], ptr %wbuf.i.i, i32 0, i32 2
  %21 = ptrtoint ptr %arrayidx9.i.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %arrayidx9.i.i, align 1
  %arrayidx10.i.i = getelementptr inbounds [64 x i8], ptr %wbuf.i.i, i32 0, i32 3
  %22 = ptrtoint ptr %arrayidx10.i.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %arrayidx10.i.i, align 1
  %arrayidx14.i.i = getelementptr inbounds [64 x i8], ptr %wbuf.i.i, i32 0, i32 4
  %23 = ptrtoint ptr %arrayidx14.i.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 -10, ptr %arrayidx14.i.i, align 1
  %arrayidx18.i.i = getelementptr inbounds [64 x i8], ptr %wbuf.i.i, i32 0, i32 5
  %24 = ptrtoint ptr %arrayidx18.i.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 -89, ptr %arrayidx18.i.i, align 1
  %arrayidx19.i.i = getelementptr inbounds [64 x i8], ptr %wbuf.i.i, i32 0, i32 6
  %25 = ptrtoint ptr %arrayidx19.i.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 7, ptr %arrayidx19.i.i, align 1
  %call.i.i = call fastcc i32 @af9035_ctrl_msg(ptr noundef %add.ptr, ptr noundef nonnull %req.i.i) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %req.i.i) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %wbuf.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp = icmp slt i32 %call.i.i, 0
  br i1 %cmp, label %do.end.do.body80_crit_edge, label %if.end16

do.end.do.body80_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body80

if.end16:                                         ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %wbuf.i.i141) #9
  %26 = getelementptr inbounds i8, ptr %wbuf.i.i141, i32 7
  %27 = call ptr @memset(ptr %26, i32 255, i32 57)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %req.i.i142) #9
  %28 = call ptr @memset(ptr %req.i.i142, i32 255, i32 12)
  %29 = ptrtoint ptr %req.i.i142 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 1, ptr %req.i.i142, align 4
  %mbox2.i.i143 = getelementptr inbounds %struct.usb_req, ptr %req.i.i142, i32 0, i32 1
  %30 = ptrtoint ptr %mbox2.i.i143 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 0, ptr %mbox2.i.i143, align 1
  %wlen.i.i144 = getelementptr inbounds %struct.usb_req, ptr %req.i.i142, i32 0, i32 2
  %31 = ptrtoint ptr %wlen.i.i144 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 7, ptr %wlen.i.i144, align 2
  %wbuf4.i.i145 = getelementptr inbounds %struct.usb_req, ptr %req.i.i142, i32 0, i32 3
  %32 = ptrtoint ptr %wbuf4.i.i145 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %wbuf.i.i141, ptr %wbuf4.i.i145, align 4
  %rlen.i.i146 = getelementptr inbounds %struct.usb_req, ptr %req.i.i142, i32 0, i32 4
  %33 = ptrtoint ptr %rlen.i.i146 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 0, ptr %rlen.i.i146, align 4
  %rbuf.i.i147 = getelementptr inbounds %struct.usb_req, ptr %req.i.i142, i32 0, i32 5
  %34 = ptrtoint ptr %rbuf.i.i147 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr null, ptr %rbuf.i.i147, align 4
  %35 = ptrtoint ptr %wbuf.i.i141 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 1, ptr %wbuf.i.i141, align 1
  %arrayidx8.i.i148 = getelementptr inbounds [64 x i8], ptr %wbuf.i.i141, i32 0, i32 1
  %36 = ptrtoint ptr %arrayidx8.i.i148 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 2, ptr %arrayidx8.i.i148, align 1
  %arrayidx9.i.i149 = getelementptr inbounds [64 x i8], ptr %wbuf.i.i141, i32 0, i32 2
  %37 = ptrtoint ptr %arrayidx9.i.i149 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 0, ptr %arrayidx9.i.i149, align 1
  %arrayidx10.i.i150 = getelementptr inbounds [64 x i8], ptr %wbuf.i.i141, i32 0, i32 3
  %38 = ptrtoint ptr %arrayidx10.i.i150 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 0, ptr %arrayidx10.i.i150, align 1
  %arrayidx14.i.i151 = getelementptr inbounds [64 x i8], ptr %wbuf.i.i141, i32 0, i32 4
  %39 = ptrtoint ptr %arrayidx14.i.i151 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 -15, ptr %arrayidx14.i.i151, align 1
  %arrayidx18.i.i152 = getelementptr inbounds [64 x i8], ptr %wbuf.i.i141, i32 0, i32 5
  %40 = ptrtoint ptr %arrayidx18.i.i152 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 3, ptr %arrayidx18.i.i152, align 1
  %arrayidx19.i.i153 = getelementptr inbounds [64 x i8], ptr %wbuf.i.i141, i32 0, i32 6
  %41 = ptrtoint ptr %arrayidx19.i.i153 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 7, ptr %arrayidx19.i.i153, align 1
  %call.i.i154 = call fastcc i32 @af9035_ctrl_msg(ptr noundef %add.ptr, ptr noundef nonnull %req.i.i142) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %req.i.i142) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %wbuf.i.i141) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i154)
  %cmp18 = icmp slt i32 %call.i.i154, 0
  br i1 %cmp18, label %if.end16.do.body80_crit_edge, label %if.end21

if.end16.do.body80_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body80

if.end21:                                         ; preds = %if.end16
  %call22 = call fastcc i32 @af9035_wr_reg_mask(ptr noundef %add.ptr, i32 noundef 55508, i8 noundef zeroext 1, i8 noundef zeroext 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %cmp23 = icmp slt i32 %call22, 0
  br i1 %cmp23, label %if.end21.do.body80_crit_edge, label %if.end26

if.end21.do.body80_crit_edge:                     ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body80

if.end26:                                         ; preds = %if.end21
  %call27 = call fastcc i32 @af9035_wr_reg_mask(ptr noundef %add.ptr, i32 noundef 55509, i8 noundef zeroext 1, i8 noundef zeroext 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %cmp28 = icmp slt i32 %call27, 0
  br i1 %cmp28, label %if.end26.do.body80_crit_edge, label %if.end31

if.end26.do.body80_crit_edge:                     ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body80

if.end31:                                         ; preds = %if.end26
  %call32 = call fastcc i32 @af9035_wr_reg_mask(ptr noundef %add.ptr, i32 noundef 55507, i8 noundef zeroext 1, i8 noundef zeroext 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %cmp33 = icmp slt i32 %call32, 0
  br i1 %cmp33, label %if.end31.do.body80_crit_edge, label %if.end36

if.end31.do.body80_crit_edge:                     ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body80

if.end36:                                         ; preds = %if.end31
  %call37 = call fastcc i32 @af9035_wr_reg_mask(ptr noundef %add.ptr, i32 noundef 55480, i8 noundef zeroext 1, i8 noundef zeroext 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %cmp38 = icmp slt i32 %call37, 0
  br i1 %cmp38, label %if.end36.do.body80_crit_edge, label %if.end41

if.end36.do.body80_crit_edge:                     ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body80

if.end41:                                         ; preds = %if.end36
  %call42 = call fastcc i32 @af9035_wr_reg_mask(ptr noundef %add.ptr, i32 noundef 55481, i8 noundef zeroext 1, i8 noundef zeroext 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %cmp43 = icmp slt i32 %call42, 0
  br i1 %cmp43, label %if.end41.do.body80_crit_edge, label %if.end46

if.end41.do.body80_crit_edge:                     ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body80

if.end46:                                         ; preds = %if.end41
  %call47 = call fastcc i32 @af9035_wr_reg_mask(ptr noundef %add.ptr, i32 noundef 55479, i8 noundef zeroext 0, i8 noundef zeroext 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %cmp48 = icmp slt i32 %call47, 0
  br i1 %cmp48, label %if.end46.do.body80_crit_edge, label %if.end51

if.end46.do.body80_crit_edge:                     ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body80

if.end51:                                         ; preds = %if.end46
  call void @msleep(i32 noundef 200) #9
  %call52 = call fastcc i32 @af9035_wr_reg_mask(ptr noundef %add.ptr, i32 noundef 55479, i8 noundef zeroext 1, i8 noundef zeroext 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %cmp53 = icmp slt i32 %call52, 0
  br i1 %cmp53, label %if.end51.do.body80_crit_edge, label %if.end56

if.end51.do.body80_crit_edge:                     ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body80

if.end56:                                         ; preds = %if.end51
  %42 = getelementptr inbounds i8, ptr %si2168_config, i32 8
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 0, ptr %42, align 4
  %i2c_adapter = getelementptr inbounds %struct.si2168_config, ptr %si2168_config, i32 0, i32 1
  %44 = ptrtoint ptr %i2c_adapter to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %adapter, ptr %i2c_adapter, align 4
  %fe = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 14
  %45 = ptrtoint ptr %si2168_config to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %fe, ptr %si2168_config, align 4
  %ts_mode = getelementptr inbounds %struct.si2168_config, ptr %si2168_config, i32 0, i32 2
  %46 = ptrtoint ptr %ts_mode to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 3, ptr %ts_mode, align 4
  %47 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %id, align 4
  %idxprom = zext i8 %48 to i32
  %fe62 = getelementptr %struct.state, ptr %3, i32 0, i32 12, i32 %idxprom, i32 7
  %49 = ptrtoint ptr %fe62 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %fe, ptr %fe62, align 4
  %ops = getelementptr inbounds %struct.state, ptr %3, i32 0, i32 13
  %50 = load i8, ptr %id, align 4
  %idxprom65 = zext i8 %50 to i32
  %ops67 = getelementptr %struct.state, ptr %3, i32 0, i32 12, i32 %idxprom65, i32 6
  %51 = ptrtoint ptr %ops67 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %ops, ptr %ops67, align 4
  %it930x_addresses = getelementptr inbounds %struct.state, ptr %3, i32 0, i32 11
  %52 = ptrtoint ptr %it930x_addresses to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %it930x_addresses, align 4
  %idxprom68 = zext i8 %53 to i32
  %arrayidx69 = getelementptr [2 x %struct.address_table], ptr @it930x_addresses_table, i32 0, i32 %idxprom68
  %54 = ptrtoint ptr %arrayidx69 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %arrayidx69, align 1
  %i2c_adap = getelementptr inbounds %struct.dvb_usb_device, ptr %add.ptr, i32 0, i32 10
  %call70 = call fastcc i32 @af9035_add_i2c_dev(ptr noundef %add.ptr, ptr noundef nonnull @.str.184, i8 noundef zeroext %55, ptr noundef nonnull %si2168_config, ptr noundef %i2c_adap)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call70)
  %tobool71.not = icmp eq i32 %call70, 0
  br i1 %tobool71.not, label %if.end73, label %if.end56.do.body80_crit_edge

if.end56.do.body80_crit_edge:                     ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body80

if.end73:                                         ; preds = %if.end56
  %56 = ptrtoint ptr %fe to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %fe, align 8
  %cmp76 = icmp eq ptr %57, null
  br i1 %cmp76, label %if.end73.do.body80_crit_edge, label %if.end79

if.end73.do.body80_crit_edge:                     ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body80

if.end79:                                         ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #11
  %58 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %adapter, align 4
  %i2c_adapter_demod = getelementptr inbounds %struct.state, ptr %3, i32 0, i32 15
  %60 = ptrtoint ptr %i2c_adapter_demod to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %59, ptr %i2c_adapter_demod, align 4
  br label %cleanup

do.body80:                                        ; preds = %if.end73.do.body80_crit_edge, %if.end56.do.body80_crit_edge, %if.end51.do.body80_crit_edge, %if.end46.do.body80_crit_edge, %if.end41.do.body80_crit_edge, %if.end36.do.body80_crit_edge, %if.end31.do.body80_crit_edge, %if.end26.do.body80_crit_edge, %if.end21.do.body80_crit_edge, %if.end16.do.body80_crit_edge, %do.end.do.body80_crit_edge
  %ret.0 = phi i32 [ %call.i.i, %do.end.do.body80_crit_edge ], [ %call.i.i154, %if.end16.do.body80_crit_edge ], [ %call22, %if.end21.do.body80_crit_edge ], [ %call27, %if.end26.do.body80_crit_edge ], [ %call32, %if.end31.do.body80_crit_edge ], [ %call37, %if.end36.do.body80_crit_edge ], [ %call42, %if.end41.do.body80_crit_edge ], [ %call47, %if.end46.do.body80_crit_edge ], [ %call52, %if.end51.do.body80_crit_edge ], [ %call70, %if.end56.do.body80_crit_edge ], [ -19, %if.end73.do.body80_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @it930x_frontend_attach.__UNIQUE_ID_ddebug420, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@it930x_frontend_attach, %if.then92)) #9
          to label %cleanup [label %if.then92], !srcloc !384

if.then92:                                        ; preds = %do.body80
  call void @__sanitizer_cov_trace_pc() #11
  %dev93 = getelementptr inbounds %struct.usb_interface, ptr %5, i32 0, i32 7
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @it930x_frontend_attach.__UNIQUE_ID_ddebug420, ptr noundef %dev93, ptr noundef nonnull @.str.91, i32 noundef %ret.0) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then92, %do.body80, %if.end79
  %retval.0 = phi i32 [ 0, %if.end79 ], [ %ret.0, %if.then92 ], [ %ret.0, %do.body80 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %adapter) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %si2168_config) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @it930x_tuner_attach(ptr nocapture noundef readonly %adap) #2 align 64 {
entry:
  %si2157_config = alloca %struct.si2157_config, align 4
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
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %si2157_config) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @it930x_tuner_attach.__UNIQUE_ID_ddebug424, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@it930x_tuner_attach, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !384

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.usb_interface, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %id, align 4
  %conv12 = zext i8 %7 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @it930x_tuner_attach.__UNIQUE_ID_ddebug424, ptr noundef %dev, ptr noundef nonnull @.str.131, i32 noundef %conv12) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %8 = getelementptr inbounds i8, ptr %si2157_config, i32 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_storeN_noabort(i32 %9, i32 8)
  store i64 0, ptr %8, align 4
  %fe = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 14
  %10 = ptrtoint ptr %fe to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %fe, align 8
  %12 = ptrtoint ptr %si2157_config to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %11, ptr %si2157_config, align 4
  %udev = getelementptr inbounds %struct.dvb_usb_device, ptr %add.ptr, i32 0, i32 5
  %13 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %udev, align 4
  %idVendor = getelementptr inbounds %struct.usb_device, ptr %14, i32 0, i32 16, i32 7
  %15 = ptrtoint ptr %idVendor to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %idVendor, align 8
  %17 = zext i16 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.207)
  switch i16 %16, label %do.end.if.end35_crit_edge [
    i16 6429, label %land.lhs.true
    i16 -13044, label %land.lhs.true27
  ]

do.end.if.end35_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end35

land.lhs.true:                                    ; preds = %do.end
  %idProduct = getelementptr inbounds %struct.usb_device, ptr %14, i32 0, i32 16, i32 8
  %18 = ptrtoint ptr %idProduct to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %idProduct, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %19)
  %cmp19 = icmp eq i16 %19, 1
  br i1 %cmp19, label %land.lhs.true.if.then34_crit_edge, label %land.lhs.true.if.end35_crit_edge

land.lhs.true.if.end35_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end35

land.lhs.true.if.then34_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then34

land.lhs.true27:                                  ; preds = %do.end
  %idProduct30 = getelementptr inbounds %struct.usb_device, ptr %14, i32 0, i32 16, i32 8
  %20 = ptrtoint ptr %idProduct30 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %idProduct30, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -19952, i16 %21)
  %cmp32 = icmp eq i16 %21, -19952
  br i1 %cmp32, label %land.lhs.true27.if.then34_crit_edge, label %land.lhs.true27.if.end35_crit_edge

land.lhs.true27.if.end35_crit_edge:               ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end35

land.lhs.true27.if.then34_crit_edge:              ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then34

if.then34:                                        ; preds = %land.lhs.true27.if.then34_crit_edge, %land.lhs.true.if.then34_crit_edge
  %dont_load_firmware = getelementptr inbounds %struct.si2157_config, ptr %si2157_config, i32 0, i32 2
  %22 = ptrtoint ptr %dont_load_firmware to i32
  call void @__asan_load1_noabort(i32 %22)
  %bf.load = load i8, ptr %dont_load_firmware, align 4
  %bf.set = or i8 %bf.load, 64
  store i8 %bf.set, ptr %dont_load_firmware, align 4
  br label %if.end35

if.end35:                                         ; preds = %if.then34, %land.lhs.true27.if.end35_crit_edge, %land.lhs.true.if.end35_crit_edge, %do.end.if.end35_crit_edge
  %it930x_addresses = getelementptr inbounds %struct.state, ptr %3, i32 0, i32 11
  %23 = ptrtoint ptr %it930x_addresses to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %it930x_addresses, align 4
  %idxprom = zext i8 %24 to i32
  %tuner_if_port = getelementptr [2 x %struct.address_table], ptr @it930x_addresses_table, i32 0, i32 %idxprom, i32 2
  %25 = ptrtoint ptr %tuner_if_port to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %tuner_if_port, align 1
  %if_port = getelementptr inbounds %struct.si2157_config, ptr %si2157_config, i32 0, i32 3
  %27 = ptrtoint ptr %if_port to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %26, ptr %if_port, align 1
  %tuner_i2c_addr = getelementptr [2 x %struct.address_table], ptr @it930x_addresses_table, i32 0, i32 %idxprom, i32 1
  %28 = ptrtoint ptr %tuner_i2c_addr to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %tuner_i2c_addr, align 1
  %i2c_adapter_demod = getelementptr inbounds %struct.state, ptr %3, i32 0, i32 15
  %30 = ptrtoint ptr %i2c_adapter_demod to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %i2c_adapter_demod, align 4
  %call40 = call fastcc i32 @af9035_add_i2c_dev(ptr noundef %add.ptr, ptr noundef nonnull @.str.186, i8 noundef zeroext %29, ptr noundef nonnull %si2157_config, ptr noundef %31)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %if.end35.cleanup_crit_edge, label %do.body44

if.end35.cleanup_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body44:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @it930x_tuner_attach.__UNIQUE_ID_ddebug425, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@it930x_tuner_attach, %if.then56)) #9
          to label %cleanup [label %if.then56], !srcloc !384

if.then56:                                        ; preds = %do.body44
  call void @__sanitizer_cov_trace_pc() #11
  %dev57 = getelementptr inbounds %struct.usb_interface, ptr %5, i32 0, i32 7
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @it930x_tuner_attach.__UNIQUE_ID_ddebug425, ptr noundef %dev57, ptr noundef nonnull @.str.91, i32 noundef %call40) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then56, %do.body44, %if.end35.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %si2157_config) #9
  ret i32 %call40
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @it930x_tuner_detach(ptr nocapture noundef readonly %adap) #2 align 64 {
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
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @it930x_tuner_detach.__UNIQUE_ID_ddebug426, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@it930x_tuner_detach, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !384

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.usb_interface, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %id, align 4
  %conv12 = zext i8 %7 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @it930x_tuner_detach.__UNIQUE_ID_ddebug426, ptr noundef %dev, ptr noundef nonnull @.str.131, i32 noundef %conv12) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %8 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %id, align 4
  %10 = zext i8 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.208)
  switch i8 %9, label %do.end.if.end31_crit_edge [
    i8 1, label %if.then16
    i8 0, label %if.then24
  ]

do.end.if.end31_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end31

if.then16:                                        ; preds = %do.end
  %arrayidx = getelementptr %struct.state, ptr %3, i32 0, i32 14, i32 3
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx, align 4
  %tobool17.not = icmp eq ptr %12, null
  br i1 %tobool17.not, label %if.then16.if.end31_crit_edge, label %if.then16.if.end31.sink.split_crit_edge

if.then16.if.end31.sink.split_crit_edge:          ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end31.sink.split

if.then16.if.end31_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end31

if.then24:                                        ; preds = %do.end
  %arrayidx26 = getelementptr %struct.state, ptr %3, i32 0, i32 14, i32 1
  %13 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx26, align 4
  %tobool27.not = icmp eq ptr %14, null
  br i1 %tobool27.not, label %if.then24.if.end31_crit_edge, label %if.then24.if.end31.sink.split_crit_edge

if.then24.if.end31.sink.split_crit_edge:          ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end31.sink.split

if.then24.if.end31_crit_edge:                     ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end31

if.end31.sink.split:                              ; preds = %if.then24.if.end31.sink.split_crit_edge, %if.then16.if.end31.sink.split_crit_edge
  tail call fastcc void @af9035_del_i2c_dev(ptr noundef %add.ptr)
  br label %if.end31

if.end31:                                         ; preds = %if.end31.sink.split, %if.then24.if.end31_crit_edge, %if.then16.if.end31_crit_edge, %do.end.if.end31_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @it930x_init(ptr noundef %d) #2 align 64 {
entry:
  %tab = alloca [42 x %struct.reg_val_mask], align 4
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
  %udev = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 5
  %4 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %udev, align 4
  %speed = getelementptr inbounds %struct.usb_device, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %speed, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %cmp = icmp eq i32 %7, 2
  %conv8 = select i1 %cmp, i8 16, i8 -128
  call void @llvm.lifetime.start.p0(i64 336, ptr nonnull %tab) #9
  %8 = getelementptr inbounds i8, ptr %tab, i32 4
  %9 = call ptr @memset(ptr %8, i32 255, i32 332)
  %10 = ptrtoint ptr %tab to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 55834, ptr %tab, align 4
  %val = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 0, i32 1
  %11 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %val, align 4
  %mask = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 0, i32 2
  %12 = ptrtoint ptr %mask to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %mask, align 1
  %arrayinit.element = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 1
  %13 = ptrtoint ptr %arrayinit.element to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 62495, ptr %arrayinit.element, align 4
  %val10 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 1, i32 1
  %14 = ptrtoint ptr %val10 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 4, ptr %val10, align 4
  %mask11 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 1, i32 2
  %15 = ptrtoint ptr %mask11 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 4, ptr %mask11, align 1
  %arrayinit.element12 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 2
  %16 = ptrtoint ptr %arrayinit.element12 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 55824, ptr %arrayinit.element12, align 4
  %val14 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 2, i32 1
  %17 = ptrtoint ptr %val14 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %val14, align 4
  %mask15 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 2, i32 2
  %18 = ptrtoint ptr %mask15 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 1, ptr %mask15, align 1
  %arrayinit.element16 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 3
  %19 = ptrtoint ptr %arrayinit.element16 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 62490, ptr %arrayinit.element16, align 4
  %val18 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 3, i32 1
  %20 = ptrtoint ptr %val18 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 1, ptr %val18, align 4
  %mask19 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 3, i32 2
  %21 = ptrtoint ptr %mask19 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 1, ptr %mask19, align 1
  %arrayinit.element20 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 4
  %22 = ptrtoint ptr %arrayinit.element20 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 55837, ptr %arrayinit.element20, align 4
  %val22 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 4, i32 1
  %23 = ptrtoint ptr %val22 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 1, ptr %val22, align 4
  %mask23 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 4, i32 2
  %24 = ptrtoint ptr %mask23 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 1, ptr %mask23, align 1
  %arrayinit.element24 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 5
  %25 = ptrtoint ptr %arrayinit.element24 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 56593, ptr %arrayinit.element24, align 4
  %val26 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 5, i32 1
  %26 = ptrtoint ptr %val26 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %val26, align 4
  %mask27 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 5, i32 2
  %27 = ptrtoint ptr %mask27 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 32, ptr %mask27, align 1
  %arrayinit.element28 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 6
  %28 = ptrtoint ptr %arrayinit.element28 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 56595, ptr %arrayinit.element28, align 4
  %val30 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 6, i32 1
  %29 = ptrtoint ptr %val30 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 0, ptr %val30, align 4
  %mask31 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 6, i32 2
  %30 = ptrtoint ptr %mask31 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 32, ptr %mask31, align 1
  %arrayinit.element32 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 7
  %31 = ptrtoint ptr %arrayinit.element32 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 56593, ptr %arrayinit.element32, align 4
  %val34 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 7, i32 1
  %32 = ptrtoint ptr %val34 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 32, ptr %val34, align 4
  %mask35 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 7, i32 2
  %33 = ptrtoint ptr %mask35 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 32, ptr %mask35, align 1
  %arrayinit.element36 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 8
  %34 = ptrtoint ptr %arrayinit.element36 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 56593, ptr %arrayinit.element36, align 4
  %val38 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 8, i32 1
  %35 = ptrtoint ptr %val38 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 0, ptr %val38, align 4
  %mask39 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 8, i32 2
  %36 = ptrtoint ptr %mask39 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 64, ptr %mask39, align 1
  %arrayinit.element40 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 9
  %37 = ptrtoint ptr %arrayinit.element40 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 56595, ptr %arrayinit.element40, align 4
  %val42 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 9, i32 1
  %38 = ptrtoint ptr %val42 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 0, ptr %val42, align 4
  %mask43 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 9, i32 2
  %39 = ptrtoint ptr %mask43 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 64, ptr %mask43, align 1
  %arrayinit.element44 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 10
  %40 = ptrtoint ptr %arrayinit.element44 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 56593, ptr %arrayinit.element44, align 4
  %val46 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 10, i32 1
  %dual_mode = getelementptr inbounds %struct.state, ptr %1, i32 0, i32 9
  %41 = ptrtoint ptr %dual_mode to i32
  call void @__asan_load1_noabort(i32 %41)
  %bf.load = load i8, ptr %dual_mode, align 1
  %42 = lshr i8 %bf.load, 1
  %43 = and i8 %42, 64
  %44 = ptrtoint ptr %val46 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %43, ptr %val46, align 4
  %mask49 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 10, i32 2
  %45 = ptrtoint ptr %mask49 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 64, ptr %mask49, align 1
  %arrayinit.element50 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 11
  %46 = ptrtoint ptr %arrayinit.element50 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 56712, ptr %arrayinit.element50, align 4
  %val52 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 11, i32 1
  %conv53 = select i1 %cmp, i32 235, i32 38352
  %conv54 = trunc i32 %conv53 to i8
  %47 = ptrtoint ptr %val52 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %conv54, ptr %val52, align 4
  %arrayinit.element56 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 12
  %48 = ptrtoint ptr %arrayinit.element56 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 56713, ptr %arrayinit.element56, align 4
  %val58 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 12, i32 1
  %49 = lshr i32 %conv53, 8
  %conv62 = trunc i32 %49 to i8
  %50 = ptrtoint ptr %val58 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %conv62, ptr %val58, align 4
  %arrayinit.element64 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 13
  %51 = ptrtoint ptr %arrayinit.element64 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 56588, ptr %arrayinit.element64, align 4
  %val66 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 13, i32 1
  %52 = ptrtoint ptr %val66 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %conv8, ptr %val66, align 4
  %arrayinit.element68 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 14
  %53 = ptrtoint ptr %arrayinit.element68 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 56714, ptr %arrayinit.element68, align 4
  %val70 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 14, i32 1
  %54 = ptrtoint ptr %val70 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %conv54, ptr %val70, align 4
  %arrayinit.element76 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 15
  %55 = ptrtoint ptr %arrayinit.element76 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 56715, ptr %arrayinit.element76, align 4
  %val78 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 15, i32 1
  %56 = ptrtoint ptr %val78 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %conv62, ptr %val78, align 4
  %arrayinit.element84 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 16
  %57 = ptrtoint ptr %arrayinit.element84 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 56589, ptr %arrayinit.element84, align 4
  %val86 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 16, i32 1
  %58 = ptrtoint ptr %val86 to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %conv8, ptr %val86, align 4
  %arrayinit.element88 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 17
  %59 = ptrtoint ptr %arrayinit.element88 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 55837, ptr %arrayinit.element88, align 4
  %val90 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 17, i32 1
  %60 = ptrtoint ptr %val90 to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 0, ptr %val90, align 4
  %mask91 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 17, i32 2
  %61 = ptrtoint ptr %mask91 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 1, ptr %mask91, align 1
  %arrayinit.element92 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 18
  %62 = ptrtoint ptr %arrayinit.element92 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 55347, ptr %arrayinit.element92, align 4
  %val94 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 18, i32 1
  %63 = ptrtoint ptr %val94 to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 1, ptr %val94, align 4
  %arrayinit.element96 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 19
  %64 = ptrtoint ptr %arrayinit.element96 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 55344, ptr %arrayinit.element96, align 4
  %val98 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 19, i32 1
  %65 = ptrtoint ptr %val98 to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 0, ptr %val98, align 4
  %arrayinit.element100 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 20
  %66 = ptrtoint ptr %arrayinit.element100 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 55345, ptr %arrayinit.element100, align 4
  %val102 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 20, i32 1
  %67 = ptrtoint ptr %val102 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 1, ptr %val102, align 4
  %arrayinit.element104 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 21
  %68 = ptrtoint ptr %arrayinit.element104 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 55346, ptr %arrayinit.element104, align 4
  %val106 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 21, i32 1
  %69 = ptrtoint ptr %val106 to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 0, ptr %val106, align 4
  %arrayinit.element108 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 22
  %70 = ptrtoint ptr %arrayinit.element108 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 55472, ptr %arrayinit.element108, align 4
  %val110 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 22, i32 1
  %71 = ptrtoint ptr %val110 to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 1, ptr %val110, align 4
  %arrayinit.element112 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 23
  %72 = ptrtoint ptr %arrayinit.element112 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 55473, ptr %arrayinit.element112, align 4
  %val114 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 23, i32 1
  %73 = ptrtoint ptr %val114 to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 1, ptr %val114, align 4
  %arrayinit.element116 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 24
  %74 = ptrtoint ptr %arrayinit.element116 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 55471, ptr %arrayinit.element116, align 4
  %val118 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 24, i32 1
  %75 = ptrtoint ptr %val118 to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 0, ptr %val118, align 4
  %arrayinit.element120 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 25
  %76 = ptrtoint ptr %arrayinit.element120 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 55492, ptr %arrayinit.element120, align 4
  %val122 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 25, i32 1
  %77 = ptrtoint ptr %val122 to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 1, ptr %val122, align 4
  %arrayinit.element124 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 26
  %78 = ptrtoint ptr %arrayinit.element124 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 55493, ptr %arrayinit.element124, align 4
  %val126 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 26, i32 1
  %79 = ptrtoint ptr %val126 to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 1, ptr %val126, align 4
  %arrayinit.element128 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 27
  %80 = ptrtoint ptr %arrayinit.element128 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 55491, ptr %arrayinit.element128, align 4
  %val130 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 27, i32 1
  %81 = ptrtoint ptr %val130 to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 0, ptr %val130, align 4
  %arrayinit.element132 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 28
  %82 = ptrtoint ptr %arrayinit.element132 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 55516, ptr %arrayinit.element132, align 4
  %val134 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 28, i32 1
  %83 = ptrtoint ptr %val134 to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 1, ptr %val134, align 4
  %arrayinit.element136 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 29
  %84 = ptrtoint ptr %arrayinit.element136 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 55517, ptr %arrayinit.element136, align 4
  %val138 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 29, i32 1
  %85 = ptrtoint ptr %val138 to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 1, ptr %val138, align 4
  %mask139 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 29, i32 2
  %86 = ptrtoint ptr %mask139 to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 -1, ptr %mask139, align 1
  %arrayinit.element140 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 30
  %87 = ptrtoint ptr %arrayinit.element140 to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 55515, ptr %arrayinit.element140, align 4
  %val142 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 30, i32 1
  %88 = ptrtoint ptr %val142 to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 0, ptr %val142, align 4
  %mask143 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 30, i32 2
  %89 = ptrtoint ptr %mask143 to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 -1, ptr %mask143, align 1
  %arrayinit.element144 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 31
  %90 = ptrtoint ptr %arrayinit.element144 to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 55524, ptr %arrayinit.element144, align 4
  %val146 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 31, i32 1
  %91 = ptrtoint ptr %val146 to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 1, ptr %val146, align 4
  %mask147 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 31, i32 2
  %92 = ptrtoint ptr %mask147 to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 -1, ptr %mask147, align 1
  %arrayinit.element148 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 32
  %93 = ptrtoint ptr %arrayinit.element148 to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 55525, ptr %arrayinit.element148, align 4
  %val150 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 32, i32 1
  %94 = ptrtoint ptr %val150 to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 1, ptr %val150, align 4
  %mask151 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 32, i32 2
  %95 = ptrtoint ptr %mask151 to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 -1, ptr %mask151, align 1
  %arrayinit.element152 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 33
  %96 = ptrtoint ptr %arrayinit.element152 to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 55523, ptr %arrayinit.element152, align 4
  %val154 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 33, i32 1
  %97 = ptrtoint ptr %val154 to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 0, ptr %val154, align 4
  %mask155 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 33, i32 2
  %98 = ptrtoint ptr %mask155 to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 -1, ptr %mask155, align 1
  %arrayinit.element156 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 34
  %99 = ptrtoint ptr %arrayinit.element156 to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 55528, ptr %arrayinit.element156, align 4
  %val158 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 34, i32 1
  %100 = ptrtoint ptr %val158 to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 1, ptr %val158, align 4
  %mask159 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 34, i32 2
  %101 = ptrtoint ptr %mask159 to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 -1, ptr %mask159, align 1
  %arrayinit.element160 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 35
  %102 = ptrtoint ptr %arrayinit.element160 to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 55529, ptr %arrayinit.element160, align 4
  %val162 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 35, i32 1
  %103 = ptrtoint ptr %val162 to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 1, ptr %val162, align 4
  %mask163 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 35, i32 2
  %104 = ptrtoint ptr %mask163 to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 -1, ptr %mask163, align 1
  %arrayinit.element164 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 36
  %105 = ptrtoint ptr %arrayinit.element164 to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 55527, ptr %arrayinit.element164, align 4
  %val166 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 36, i32 1
  %106 = ptrtoint ptr %val166 to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 0, ptr %val166, align 4
  %mask167 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 36, i32 2
  %107 = ptrtoint ptr %mask167 to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 -1, ptr %mask167, align 1
  %arrayinit.element168 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 37
  %108 = ptrtoint ptr %arrayinit.element168 to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 55896, ptr %arrayinit.element168, align 4
  %val170 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 37, i32 1
  %109 = ptrtoint ptr %val170 to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 0, ptr %val170, align 4
  %mask171 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 37, i32 2
  %110 = ptrtoint ptr %mask171 to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 1, ptr %mask171, align 1
  %arrayinit.element172 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 38
  %111 = ptrtoint ptr %arrayinit.element172 to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 55923, ptr %arrayinit.element172, align 4
  %val174 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 38, i32 1
  %112 = ptrtoint ptr %val174 to i32
  call void @__asan_store1_noabort(i32 %112)
  store i8 1, ptr %val174, align 4
  %mask175 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 38, i32 2
  %113 = ptrtoint ptr %mask175 to i32
  call void @__asan_store1_noabort(i32 %113)
  store i8 -1, ptr %mask175, align 1
  %arrayinit.element176 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 39
  %114 = ptrtoint ptr %arrayinit.element176 to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 55928, ptr %arrayinit.element176, align 4
  %val178 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 39, i32 1
  %115 = ptrtoint ptr %val178 to i32
  call void @__asan_store1_noabort(i32 %115)
  store i8 71, ptr %val178, align 4
  %mask179 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 39, i32 2
  %116 = ptrtoint ptr %mask179 to i32
  call void @__asan_store1_noabort(i32 %116)
  store i8 -1, ptr %mask179, align 1
  %arrayinit.element180 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 40
  %117 = ptrtoint ptr %arrayinit.element180 to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 55884, ptr %arrayinit.element180, align 4
  %val182 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 40, i32 1
  %118 = ptrtoint ptr %val182 to i32
  call void @__asan_store1_noabort(i32 %118)
  store i8 1, ptr %val182, align 4
  %mask183 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 40, i32 2
  %119 = ptrtoint ptr %mask183 to i32
  call void @__asan_store1_noabort(i32 %119)
  store i8 -1, ptr %mask183, align 1
  %arrayinit.element184 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 41
  %120 = ptrtoint ptr %arrayinit.element184 to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 55898, ptr %arrayinit.element184, align 4
  %val186 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 41, i32 1
  %121 = ptrtoint ptr %val186 to i32
  call void @__asan_store1_noabort(i32 %121)
  store i8 31, ptr %val186, align 4
  %mask187 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 41, i32 2
  %122 = ptrtoint ptr %mask187 to i32
  call void @__asan_store1_noabort(i32 %122)
  store i8 -1, ptr %mask187, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @it930x_init.__UNIQUE_ID_ddebug430, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@it930x_init, %if.then)) #9
          to label %for.body [label %if.then], !srcloc !384

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.usb_interface, ptr %3, i32 0, i32 7
  %123 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %udev, align 4
  %speed191 = getelementptr inbounds %struct.usb_device, ptr %124, i32 0, i32 4
  %125 = ptrtoint ptr %speed191 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %speed191, align 4
  %conv193 = zext i8 %conv8 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @it930x_init.__UNIQUE_ID_ddebug430, ptr noundef %dev, ptr noundef nonnull @.str.175, i32 noundef %126, i32 noundef %conv53, i32 noundef %conv193) #9
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %i.0252, 1
  %exitcond.not = icmp eq i32 %inc, 42
  br i1 %exitcond.not, label %for.cond.cleanup_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %if.then, %entry
  %i.0252 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %entry ], [ 0, %if.then ]
  %arrayidx = getelementptr [42 x %struct.reg_val_mask], ptr %tab, i32 0, i32 %i.0252
  %127 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %arrayidx, align 4
  %val198 = getelementptr [42 x %struct.reg_val_mask], ptr %tab, i32 0, i32 %i.0252, i32 1
  %129 = ptrtoint ptr %val198 to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %val198, align 4
  %mask200 = getelementptr [42 x %struct.reg_val_mask], ptr %tab, i32 0, i32 %i.0252, i32 2
  %131 = ptrtoint ptr %mask200 to i32
  call void @__asan_load1_noabort(i32 %131)
  %132 = load i8, ptr %mask200, align 1
  %call201 = tail call fastcc i32 @af9035_wr_reg_mask(ptr noundef %d, i32 noundef %128, i8 noundef zeroext %130, i8 noundef zeroext %132)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call201)
  %cmp202 = icmp slt i32 %call201, 0
  br i1 %cmp202, label %do.body206, label %for.cond

do.body206:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @it930x_init.__UNIQUE_ID_ddebug431, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@it930x_init, %if.then218)) #9
          to label %cleanup [label %if.then218], !srcloc !384

if.then218:                                       ; preds = %do.body206
  call void @__sanitizer_cov_trace_pc() #11
  %dev219 = getelementptr inbounds %struct.usb_interface, ptr %3, i32 0, i32 7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @it930x_init.__UNIQUE_ID_ddebug431, ptr noundef %dev219, ptr noundef nonnull @.str.91, i32 noundef %call201) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then218, %do.body206, %for.cond.cleanup_crit_edge
  %retval.0 = phi i32 [ %call201, %if.then218 ], [ %call201, %do.body206 ], [ 0, %for.cond.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 336, ptr nonnull %tab) #9
  ret i32 %retval.0
}

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 198)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 198)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly nofree nounwind readonly willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nobuiltin }
attributes #13 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !7, !9, !11, !13, !14, !16, !18, !20, !22, !23, !24, !25, !26, !28, !30, !32, !33, !34, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !54, !56, !57, !59, !61, !63, !65, !67, !69, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !105, !106, !107, !108, !109, !111, !113, !115, !116, !118, !120, !122, !123, !125, !126, !128, !129, !131, !132, !133, !135, !136, !138, !139, !141, !142, !143, !144, !145, !147, !148, !149, !151, !152, !154, !155, !156, !158, !159, !160, !162, !163, !164, !166, !168, !169, !170, !171, !172, !174, !175, !176, !178, !179, !181, !182, !184, !185, !187, !189, !190, !191, !193, !195, !197, !198, !199, !201, !202, !204, !205, !206, !208, !209, !210, !212, !213, !214, !216, !217, !219, !220, !221, !223, !225, !227, !229, !230, !231, !233, !235, !237, !238, !239, !241, !242, !243, !245, !247, !248, !249, !251, !253, !254, !255, !257, !258, !260, !261, !262, !264, !266, !267, !269, !270, !272, !273, !275, !276, !278, !279, !281, !283, !284, !285, !286, !287, !289, !290, !291, !292, !293, !295, !296, !297, !298, !299, !301, !303, !305, !306, !307, !308, !309, !311, !313, !315, !317, !319, !321, !323, !325, !327, !328, !330, !331, !332, !334, !336, !337, !338, !340, !342, !343, !345, !347, !348, !349, !351, !353, !354, !356, !358, !360, !362, !363, !365, !367, !369, !370, !372, !373}
!llvm.module.flags = !{!375, !376, !377, !378, !379, !380, !381, !382}
!llvm.ident = !{!383}

!0 = !{ptr @__param_adapter_nr, !1, !"__param_adapter_nr", i1 false, i1 false}
!1 = !{!"../drivers/media/usb/dvb-usb-v2/af9035.c", i32 14, i32 1}
!2 = !{ptr @__UNIQUE_ID_adapter_nrtype388, !1, !"__UNIQUE_ID_adapter_nrtype388", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_adapter_nr389, !1, !"__UNIQUE_ID_adapter_nr389", i1 false, i1 false}
!4 = !{ptr @__initcall__kmod_dvb_usb_af9035__437_2175_af9035_usb_driver_init6, !5, !"__initcall__kmod_dvb_usb_af9035__437_2175_af9035_usb_driver_init6", i1 false, i1 false}
!5 = !{!"../drivers/media/usb/dvb-usb-v2/af9035.c", i32 2175, i32 1}
!6 = !{ptr @__exitcall_af9035_usb_driver_exit, !5, !"__exitcall_af9035_usb_driver_exit", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_author438, !8, !"__UNIQUE_ID_author438", i1 false, i1 false}
!8 = !{!"../drivers/media/usb/dvb-usb-v2/af9035.c", i32 2177, i32 1}
!9 = !{ptr @__UNIQUE_ID_description439, !10, !"__UNIQUE_ID_description439", i1 false, i1 false}
!10 = !{!"../drivers/media/usb/dvb-usb-v2/af9035.c", i32 2178, i32 1}
!11 = !{ptr @__UNIQUE_ID_file440, !12, !"__UNIQUE_ID_file440", i1 false, i1 false}
!12 = !{!"../drivers/media/usb/dvb-usb-v2/af9035.c", i32 2179, i32 1}
!13 = !{ptr @__UNIQUE_ID_license441, !12, !"__UNIQUE_ID_license441", i1 false, i1 false}
!14 = !{ptr @__UNIQUE_ID_firmware442, !15, !"__UNIQUE_ID_firmware442", i1 false, i1 false}
!15 = !{!"../drivers/media/usb/dvb-usb-v2/af9035.c", i32 2180, i32 1}
!16 = !{ptr @__UNIQUE_ID_firmware443, !17, !"__UNIQUE_ID_firmware443", i1 false, i1 false}
!17 = !{!"../drivers/media/usb/dvb-usb-v2/af9035.c", i32 2181, i32 1}
!18 = !{ptr @__UNIQUE_ID_firmware444, !19, !"__UNIQUE_ID_firmware444", i1 false, i1 false}
!19 = !{!"../drivers/media/usb/dvb-usb-v2/af9035.c", i32 2182, i32 1}
!20 = !{ptr @__UNIQUE_ID_firmware445, !21, !"__UNIQUE_ID_firmware445", i1 false, i1 false}
!21 = !{!"../drivers/media/usb/dvb-usb-v2/af9035.c", i32 2183, i32 1}
!22 = !{ptr @__param_str_adapter_nr, !1, !"__param_str_adapter_nr", i1 false, i1 false}
!23 = !{ptr @__param_arr_adapter_nr, !1, !"__param_arr_adapter_nr", i1 false, i1 false}
!24 = !{ptr @adapter_nr, !1, !"adapter_nr", i1 false, i1 false}
!25 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @af9035_usb_driver, !27, !"af9035_usb_driver", i1 false, i1 false}
!27 = !{!"../drivers/media/usb/dvb-usb-v2/af9035.c", i32 2163, i32 26}
!28 = !{ptr @.str.1, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/media/usb/dvb-usb-v2/af9035.c", i32 1987, i32 15}
!30 = !{ptr @.str.2, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/media/usb/dvb-usb-v2/af9035.c", i32 1988, i32 4}
!32 = !{ptr @.str.3, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.4, !31, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @af9035_probe.__UNIQUE_ID_ddebug436, !31, !"__UNIQUE_ID_ddebug436", i1 false, i1 false}
!35 = !{ptr @.str.5, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/media/usb/dvb-usb-v2/af9035.c", i32 2077, i32 4}
!37 = !{ptr @.str.10, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/media/usb/dvb-usb-v2/af9035.c", i32 2087, i32 4}
!39 = !{ptr @.str.12, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/media/usb/dvb-usb-v2/af9035.c", i32 2089, i32 4}
!41 = !{ptr @.str.15, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/media/usb/dvb-usb-v2/af9035.c", i32 2093, i32 4}
!43 = !{ptr @.str.18, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/media/usb/dvb-usb-v2/af9035.c", i32 2097, i32 4}
!45 = !{ptr @.str.20, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/media/usb/dvb-usb-v2/af9035.c", i32 2099, i32 4}
!47 = !{ptr @.str.22, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/media/usb/dvb-usb-v2/af9035.c", i32 2101, i32 4}
!49 = !{ptr @.str.25, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/media/usb/dvb-usb-v2/af9035.c", i32 2105, i32 10}
!51 = !{ptr @.str.27, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/media/usb/dvb-usb-v2/af9035.c", i32 2109, i32 4}
!53 = !{ptr @.str.28, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @.str.30, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/media/usb/dvb-usb-v2/af9035.c", i32 2111, i32 4}
!56 = !{ptr @.str.31, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @.str.33, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/media/usb/dvb-usb-v2/af9035.c", i32 2113, i32 4}
!59 = !{ptr @.str.35, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/media/usb/dvb-usb-v2/af9035.c", i32 2115, i32 4}
!61 = !{ptr @.str.37, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/media/usb/dvb-usb-v2/af9035.c", i32 2117, i32 4}
!63 = !{ptr @.str.39, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/media/usb/dvb-usb-v2/af9035.c", i32 2119, i32 4}
!65 = !{ptr @.str.41, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/media/usb/dvb-usb-v2/af9035.c", i32 2121, i32 4}
!67 = !{ptr @.str.43, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/media/usb/dvb-usb-v2/af9035.c", i32 2123, i32 4}
!69 = !{ptr @.str.44, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @.str.46, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/media/usb/dvb-usb-v2/af9035.c", i32 2125, i32 4}
!72 = !{ptr @.str.48, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/media/usb/dvb-usb-v2/af9035.c", i32 2127, i32 4}
!74 = !{ptr @.str.50, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/media/usb/dvb-usb-v2/af9035.c", i32 2129, i32 4}
!76 = !{ptr @.str.52, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/media/usb/dvb-usb-v2/af9035.c", i32 2132, i32 4}
!78 = !{ptr @.str.54, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/media/usb/dvb-usb-v2/af9035.c", i32 2135, i32 4}
!80 = !{ptr @.str.56, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/media/usb/dvb-usb-v2/af9035.c", i32 2138, i32 4}
!82 = !{ptr @.str.58, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/media/usb/dvb-usb-v2/af9035.c", i32 2141, i32 4}
!84 = !{ptr @.str.60, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/media/usb/dvb-usb-v2/af9035.c", i32 2143, i32 4}
!86 = !{ptr @.str.62, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/media/usb/dvb-usb-v2/af9035.c", i32 2145, i32 4}
!88 = !{ptr @.str.64, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/media/usb/dvb-usb-v2/af9035.c", i32 2147, i32 4}
!90 = !{ptr @.str.66, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/media/usb/dvb-usb-v2/af9035.c", i32 2151, i32 4}
!92 = !{ptr @.str.68, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/media/usb/dvb-usb-v2/af9035.c", i32 2153, i32 4}
!94 = !{ptr @.str.70, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/media/usb/dvb-usb-v2/af9035.c", i32 2155, i32 4}
!96 = !{ptr @.str.72, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/media/usb/dvb-usb-v2/af9035.c", i32 2157, i32 4}
!98 = !{ptr @af9035_id_table, !99, !"af9035_id_table", i1 false, i1 false}
!99 = !{!"../drivers/media/usb/dvb-usb-v2/af9035.c", i32 2075, i32 35}
!100 = !{ptr @af9035_props, !101, !"af9035_props", i1 false, i1 false}
!101 = !{!"../drivers/media/usb/dvb-usb-v2/af9035.c", i32 1998, i32 47}
!102 = !{ptr @.str.75, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/media/usb/dvb-usb-v2/af9035.c", i32 502, i32 2}
!104 = !{ptr @.str.76, !103, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @.str.77, !103, !"<string literal>", i1 false, i1 false}
!106 = !{ptr @.str.78, !103, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @af9035_identify_state._entry, !103, !"_entry", i1 false, i1 false}
!108 = !{ptr @af9035_identify_state._entry_ptr, !103, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @.str.79, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/media/usb/dvb-usb-v2/af9035.c", i32 507, i32 12}
!111 = !{ptr @.str.80, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/media/usb/dvb-usb-v2/af9035.c", i32 510, i32 12}
!113 = !{ptr @.str.81, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/media/usb/dvb-usb-v2/af9035.c", i32 520, i32 4}
!115 = !{ptr @af9035_identify_state.__UNIQUE_ID_ddebug395, !114, !"__UNIQUE_ID_ddebug395", i1 false, i1 false}
!116 = !{ptr @.str.82, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/media/usb/dvb-usb-v2/af9035.c", i32 527, i32 11}
!118 = !{ptr @.str.83, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/media/usb/dvb-usb-v2/af9035.c", i32 531, i32 11}
!120 = !{ptr @.str.84, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/media/usb/dvb-usb-v2/af9035.c", i32 542, i32 2}
!122 = !{ptr @af9035_identify_state.__UNIQUE_ID_ddebug396, !121, !"__UNIQUE_ID_ddebug396", i1 false, i1 false}
!123 = !{ptr @.str.85, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/media/usb/dvb-usb-v2/af9035.c", i32 544, i32 3}
!125 = !{ptr @af9035_identify_state.__UNIQUE_ID_ddebug397, !124, !"__UNIQUE_ID_ddebug397", i1 false, i1 false}
!126 = !{ptr @.str.86, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/media/usb/dvb-usb-v2/af9035.c", i32 566, i32 2}
!128 = !{ptr @af9035_identify_state.__UNIQUE_ID_ddebug398, !127, !"__UNIQUE_ID_ddebug398", i1 false, i1 false}
!129 = !{ptr @.str.88, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/media/usb/dvb-usb-v2/af9035.c", i32 569, i32 3}
!131 = !{ptr @af9035_identify_state._entry.87, !130, !"_entry", i1 false, i1 false}
!132 = !{ptr @af9035_identify_state._entry_ptr.89, !130, !"_entry_ptr", i1 false, i1 false}
!133 = !{ptr @.str.90, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/media/usb/dvb-usb-v2/af9035.c", i32 576, i32 2}
!135 = !{ptr @af9035_identify_state.__UNIQUE_ID_ddebug399, !134, !"__UNIQUE_ID_ddebug399", i1 false, i1 false}
!136 = !{ptr @.str.91, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/media/usb/dvb-usb-v2/af9035.c", i32 585, i32 2}
!138 = !{ptr @af9035_identify_state.__UNIQUE_ID_ddebug400, !137, !"__UNIQUE_ID_ddebug400", i1 false, i1 false}
!139 = !{ptr @.str.92, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/media/usb/dvb-usb-v2/af9035.c", i32 48, i32 3}
!141 = !{ptr @.str.93, !140, !"<string literal>", i1 false, i1 false}
!142 = !{ptr @.str.94, !140, !"<string literal>", i1 false, i1 false}
!143 = !{ptr @af9035_ctrl_msg._entry, !140, !"_entry", i1 false, i1 false}
!144 = !{ptr @af9035_ctrl_msg._entry_ptr, !140, !"_entry_ptr", i1 false, i1 false}
!145 = !{ptr @.str.96, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/media/usb/dvb-usb-v2/af9035.c", i32 85, i32 3}
!147 = !{ptr @af9035_ctrl_msg._entry.95, !146, !"_entry", i1 false, i1 false}
!148 = !{ptr @af9035_ctrl_msg._entry_ptr.97, !146, !"_entry_ptr", i1 false, i1 false}
!149 = !{ptr @.str.98, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/media/usb/dvb-usb-v2/af9035.c", i32 99, i32 3}
!151 = !{ptr @af9035_ctrl_msg.__UNIQUE_ID_ddebug390, !150, !"__UNIQUE_ID_ddebug390", i1 false, i1 false}
!152 = !{ptr @.str.99, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/media/usb/dvb-usb-v2/af9035.c", i32 732, i32 2}
!154 = !{ptr @.str.100, !153, !"<string literal>", i1 false, i1 false}
!155 = !{ptr @af9035_download_firmware.__UNIQUE_ID_ddebug407, !153, !"__UNIQUE_ID_ddebug407", i1 false, i1 false}
!156 = !{ptr @.str.101, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/media/usb/dvb-usb-v2/af9035.c", i32 804, i32 3}
!158 = !{ptr @af9035_download_firmware._entry, !157, !"_entry", i1 false, i1 false}
!159 = !{ptr @af9035_download_firmware._entry_ptr, !157, !"_entry_ptr", i1 false, i1 false}
!160 = !{ptr @.str.103, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/media/usb/dvb-usb-v2/af9035.c", i32 809, i32 2}
!162 = !{ptr @af9035_download_firmware._entry.102, !161, !"_entry", i1 false, i1 false}
!163 = !{ptr @af9035_download_firmware._entry_ptr.104, !161, !"_entry_ptr", i1 false, i1 false}
!164 = !{ptr @af9035_download_firmware.__UNIQUE_ID_ddebug408, !165, !"__UNIQUE_ID_ddebug408", i1 false, i1 false}
!165 = !{!"../drivers/media/usb/dvb-usb-v2/af9035.c", i32 815, i32 2}
!166 = !{ptr @.str.105, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/media/usb/dvb-usb-v2/af9035.c", i32 122, i32 3}
!168 = !{ptr @.str.106, !167, !"<string literal>", i1 false, i1 false}
!169 = !{ptr @.str.107, !167, !"<string literal>", i1 false, i1 false}
!170 = !{ptr @af9035_wr_regs._entry, !167, !"_entry", i1 false, i1 false}
!171 = !{ptr @af9035_wr_regs._entry_ptr, !167, !"_entry_ptr", i1 false, i1 false}
!172 = !{ptr @.str.108, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/media/usb/dvb-usb-v2/af9035.c", i32 624, i32 3}
!174 = !{ptr @.str.109, !173, !"<string literal>", i1 false, i1 false}
!175 = !{ptr @af9035_download_firmware_old.__UNIQUE_ID_ddebug401, !173, !"__UNIQUE_ID_ddebug401", i1 false, i1 false}
!176 = !{ptr @.str.110, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/media/usb/dvb-usb-v2/af9035.c", i32 629, i32 4}
!178 = !{ptr @af9035_download_firmware_old.__UNIQUE_ID_ddebug402, !177, !"__UNIQUE_ID_ddebug402", i1 false, i1 false}
!179 = !{ptr @.str.111, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/media/usb/dvb-usb-v2/af9035.c", i32 660, i32 3}
!181 = !{ptr @af9035_download_firmware_old.__UNIQUE_ID_ddebug403, !180, !"__UNIQUE_ID_ddebug403", i1 false, i1 false}
!182 = !{ptr @af9035_download_firmware_old._entry, !183, !"_entry", i1 false, i1 false}
!183 = !{!"../drivers/media/usb/dvb-usb-v2/af9035.c", i32 665, i32 3}
!184 = !{ptr @af9035_download_firmware_old._entry_ptr, !183, !"_entry_ptr", i1 false, i1 false}
!185 = !{ptr @af9035_download_firmware_old.__UNIQUE_ID_ddebug404, !186, !"__UNIQUE_ID_ddebug404", i1 false, i1 false}
!186 = !{!"../drivers/media/usb/dvb-usb-v2/af9035.c", i32 670, i32 2}
!187 = !{ptr @.str.112, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/media/usb/dvb-usb-v2/af9035.c", i32 708, i32 4}
!189 = !{ptr @.str.113, !188, !"<string literal>", i1 false, i1 false}
!190 = !{ptr @af9035_download_firmware_new.__UNIQUE_ID_ddebug405, !188, !"__UNIQUE_ID_ddebug405", i1 false, i1 false}
!191 = !{ptr @af9035_download_firmware_new.__UNIQUE_ID_ddebug406, !192, !"__UNIQUE_ID_ddebug406", i1 false, i1 false}
!192 = !{!"../drivers/media/usb/dvb-usb-v2/af9035.c", i32 715, i32 2}
!193 = !{ptr @af9035_i2c_algo, !194, !"af9035_i2c_algo", i1 false, i1 false}
!194 = !{!"../drivers/media/usb/dvb-usb-v2/af9035.c", i32 474, i32 29}
!195 = !{ptr @.str.116, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/media/usb/dvb-usb-v2/af9035.c", i32 879, i32 3}
!197 = !{ptr @.str.117, !196, !"<string literal>", i1 false, i1 false}
!198 = !{ptr @af9035_read_config.__UNIQUE_ID_ddebug409, !196, !"__UNIQUE_ID_ddebug409", i1 false, i1 false}
!199 = !{ptr @.str.118, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/media/usb/dvb-usb-v2/af9035.c", i32 888, i32 3}
!201 = !{ptr @af9035_read_config.__UNIQUE_ID_ddebug410, !200, !"__UNIQUE_ID_ddebug410", i1 false, i1 false}
!202 = !{ptr @.str.119, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/media/usb/dvb-usb-v2/af9035.c", i32 917, i32 4}
!204 = !{ptr @af9035_read_config._entry, !203, !"_entry", i1 false, i1 false}
!205 = !{ptr @af9035_read_config._entry_ptr, !203, !"_entry_ptr", i1 false, i1 false}
!206 = !{ptr @.str.121, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/media/usb/dvb-usb-v2/af9035.c", i32 938, i32 4}
!208 = !{ptr @af9035_read_config._entry.120, !207, !"_entry", i1 false, i1 false}
!209 = !{ptr @af9035_read_config._entry_ptr.122, !207, !"_entry_ptr", i1 false, i1 false}
!210 = !{ptr @.str.124, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/media/usb/dvb-usb-v2/af9035.c", i32 956, i32 5}
!212 = !{ptr @af9035_read_config._entry.123, !211, !"_entry", i1 false, i1 false}
!213 = !{ptr @af9035_read_config._entry_ptr.125, !211, !"_entry_ptr", i1 false, i1 false}
!214 = !{ptr @.str.126, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/media/usb/dvb-usb-v2/af9035.c", i32 964, i32 3}
!216 = !{ptr @af9035_read_config.__UNIQUE_ID_ddebug411, !215, !"__UNIQUE_ID_ddebug411", i1 false, i1 false}
!217 = !{ptr @.str.128, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/media/usb/dvb-usb-v2/af9035.c", i32 992, i32 4}
!219 = !{ptr @af9035_read_config._entry.127, !218, !"_entry", i1 false, i1 false}
!220 = !{ptr @af9035_read_config._entry_ptr.129, !218, !"_entry_ptr", i1 false, i1 false}
!221 = !{ptr @af9035_read_config.__UNIQUE_ID_ddebug412, !222, !"__UNIQUE_ID_ddebug412", i1 false, i1 false}
!222 = !{!"../drivers/media/usb/dvb-usb-v2/af9035.c", i32 1001, i32 2}
!223 = !{ptr @clock_lut_it9135, !224, !"clock_lut_it9135", i1 false, i1 false}
!224 = !{!"../drivers/media/usb/dvb-usb-v2/af9035.h", i32 94, i32 18}
!225 = !{ptr @clock_lut_af9035, !226, !"clock_lut_af9035", i1 false, i1 false}
!226 = !{!"../drivers/media/usb/dvb-usb-v2/af9035.h", i32 79, i32 18}
!227 = !{ptr @.str.130, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../drivers/media/usb/dvb-usb-v2/af9035.c", i32 1169, i32 2}
!229 = !{ptr @.str.131, !228, !"<string literal>", i1 false, i1 false}
!230 = !{ptr @af9035_frontend_attach.__UNIQUE_ID_ddebug417, !228, !"__UNIQUE_ID_ddebug417", i1 false, i1 false}
!231 = !{ptr @.str.132, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../drivers/media/usb/dvb-usb-v2/af9035.c", i32 1179, i32 30}
!233 = !{ptr @af9035_frontend_attach.__UNIQUE_ID_ddebug418, !234, !"__UNIQUE_ID_ddebug418", i1 false, i1 false}
!234 = !{!"../drivers/media/usb/dvb-usb-v2/af9035.c", i32 1196, i32 2}
!235 = !{ptr @.str.133, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../drivers/media/usb/dvb-usb-v2/af9035.c", i32 200, i32 2}
!237 = !{ptr @.str.134, !236, !"<string literal>", i1 false, i1 false}
!238 = !{ptr @af9035_add_i2c_dev.__UNIQUE_ID_ddebug391, !236, !"__UNIQUE_ID_ddebug391", i1 false, i1 false}
!239 = !{ptr @.str.135, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../drivers/media/usb/dvb-usb-v2/af9035.c", i32 203, i32 3}
!241 = !{ptr @af9035_add_i2c_dev._entry, !240, !"_entry", i1 false, i1 false}
!242 = !{ptr @af9035_add_i2c_dev._entry_ptr, !240, !"_entry_ptr", i1 false, i1 false}
!243 = !{ptr @.str.136, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../drivers/media/usb/dvb-usb-v2/af9035.c", i32 208, i32 2}
!245 = !{ptr @.str.138, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../drivers/media/usb/dvb-usb-v2/af9035.c", i32 213, i32 3}
!247 = !{ptr @af9035_add_i2c_dev._entry.137, !246, !"_entry", i1 false, i1 false}
!248 = !{ptr @af9035_add_i2c_dev._entry_ptr.139, !246, !"_entry_ptr", i1 false, i1 false}
!249 = !{ptr @af9035_add_i2c_dev.__UNIQUE_ID_ddebug392, !250, !"__UNIQUE_ID_ddebug392", i1 false, i1 false}
!250 = !{!"../drivers/media/usb/dvb-usb-v2/af9035.c", i32 228, i32 2}
!251 = !{ptr @.str.140, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../drivers/media/usb/dvb-usb-v2/af9035.c", i32 1142, i32 2}
!253 = !{ptr @.str.141, !252, !"<string literal>", i1 false, i1 false}
!254 = !{ptr @af9035_frontend_callback.__UNIQUE_ID_ddebug416, !252, !"__UNIQUE_ID_ddebug416", i1 false, i1 false}
!255 = !{ptr @.str.142, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../drivers/media/usb/dvb-usb-v2/af9035.c", i32 1114, i32 2}
!257 = !{ptr @af9035_fc0011_tuner_callback.__UNIQUE_ID_ddebug415, !256, !"__UNIQUE_ID_ddebug415", i1 false, i1 false}
!258 = !{ptr @.str.143, !259, !"<string literal>", i1 false, i1 false}
!259 = !{!"../drivers/media/usb/dvb-usb-v2/af9035.c", i32 1013, i32 2}
!260 = !{ptr @.str.144, !259, !"<string literal>", i1 false, i1 false}
!261 = !{ptr @af9035_tua9001_tuner_callback.__UNIQUE_ID_ddebug413, !259, !"__UNIQUE_ID_ddebug413", i1 false, i1 false}
!262 = !{ptr @af9035_tua9001_tuner_callback.__UNIQUE_ID_ddebug414, !263, !"__UNIQUE_ID_ddebug414", i1 false, i1 false}
!263 = !{!"../drivers/media/usb/dvb-usb-v2/af9035.c", i32 1047, i32 2}
!264 = !{ptr @.str.145, !265, !"<string literal>", i1 false, i1 false}
!265 = !{!"../drivers/media/usb/dvb-usb-v2/af9035.c", i32 1296, i32 2}
!266 = !{ptr @af9035_frontend_detach.__UNIQUE_ID_ddebug421, !265, !"__UNIQUE_ID_ddebug421", i1 false, i1 false}
!267 = !{ptr @.str.146, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../drivers/media/usb/dvb-usb-v2/af9035.c", i32 246, i32 2}
!269 = !{ptr @af9035_del_i2c_dev.__UNIQUE_ID_ddebug393, !268, !"__UNIQUE_ID_ddebug393", i1 false, i1 false}
!270 = !{ptr @af9035_del_i2c_dev._entry, !271, !"_entry", i1 false, i1 false}
!271 = !{!"../drivers/media/usb/dvb-usb-v2/af9035.c", i32 249, i32 3}
!272 = !{ptr @af9035_del_i2c_dev._entry_ptr, !271, !"_entry_ptr", i1 false, i1 false}
!273 = !{ptr @.str.147, !274, !"<string literal>", i1 false, i1 false}
!274 = !{!"../drivers/media/usb/dvb-usb-v2/af9035.c", i32 264, i32 2}
!275 = !{ptr @af9035_del_i2c_dev.__UNIQUE_ID_ddebug394, !274, !"__UNIQUE_ID_ddebug394", i1 false, i1 false}
!276 = !{ptr @.str.148, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../drivers/media/usb/dvb-usb-v2/af9035.c", i32 1360, i32 2}
!278 = !{ptr @af9035_tuner_attach.__UNIQUE_ID_ddebug422, !277, !"__UNIQUE_ID_ddebug422", i1 false, i1 false}
!279 = !{ptr @.str.149, !280, !"<string literal>", i1 false, i1 false}
!280 = !{!"../drivers/media/usb/dvb-usb-v2/af9035.c", i32 1396, i32 31}
!281 = !{ptr @.str.150, !282, !"<string literal>", i1 false, i1 false}
!282 = !{!"../drivers/media/usb/dvb-usb-v2/af9035.c", i32 1405, i32 8}
!283 = !{ptr @.str.151, !282, !"<string literal>", i1 false, i1 false}
!284 = !{ptr @.str.152, !282, !"<string literal>", i1 false, i1 false}
!285 = !{ptr @af9035_tuner_attach._entry, !282, !"_entry", i1 false, i1 false}
!286 = !{ptr @af9035_tuner_attach._entry_ptr, !282, !"_entry_ptr", i1 false, i1 false}
!287 = !{ptr @.str.153, !288, !"<string literal>", i1 false, i1 false}
!288 = !{!"../drivers/media/usb/dvb-usb-v2/af9035.c", i32 1460, i32 8}
!289 = !{ptr @.str.154, !288, !"<string literal>", i1 false, i1 false}
!290 = !{ptr @.str.156, !288, !"<string literal>", i1 false, i1 false}
!291 = !{ptr @af9035_tuner_attach._entry.155, !288, !"_entry", i1 false, i1 false}
!292 = !{ptr @af9035_tuner_attach._entry_ptr.157, !288, !"_entry_ptr", i1 false, i1 false}
!293 = !{ptr @.str.158, !294, !"<string literal>", i1 false, i1 false}
!294 = !{!"../drivers/media/usb/dvb-usb-v2/af9035.c", i32 1465, i32 8}
!295 = !{ptr @.str.159, !294, !"<string literal>", i1 false, i1 false}
!296 = !{ptr @.str.161, !294, !"<string literal>", i1 false, i1 false}
!297 = !{ptr @af9035_tuner_attach._entry.160, !294, !"_entry", i1 false, i1 false}
!298 = !{ptr @af9035_tuner_attach._entry_ptr.162, !294, !"_entry_ptr", i1 false, i1 false}
!299 = !{ptr @.str.163, !300, !"<string literal>", i1 false, i1 false}
!300 = !{!"../drivers/media/usb/dvb-usb-v2/af9035.c", i32 1488, i32 31}
!301 = !{ptr @.str.164, !302, !"<string literal>", i1 false, i1 false}
!302 = !{!"../drivers/media/usb/dvb-usb-v2/af9035.c", i32 1525, i32 17}
!303 = !{ptr @.str.165, !304, !"<string literal>", i1 false, i1 false}
!304 = !{!"../drivers/media/usb/dvb-usb-v2/af9035.c", i32 1533, i32 8}
!305 = !{ptr @.str.166, !304, !"<string literal>", i1 false, i1 false}
!306 = !{ptr @.str.168, !304, !"<string literal>", i1 false, i1 false}
!307 = !{ptr @af9035_tuner_attach._entry.167, !304, !"_entry", i1 false, i1 false}
!308 = !{ptr @af9035_tuner_attach._entry_ptr.169, !304, !"_entry_ptr", i1 false, i1 false}
!309 = !{ptr @.str.170, !310, !"<string literal>", i1 false, i1 false}
!310 = !{!"../drivers/media/usb/dvb-usb-v2/af9035.c", i32 1554, i32 11}
!311 = !{ptr @.str.171, !312, !"<string literal>", i1 false, i1 false}
!312 = !{!"../drivers/media/usb/dvb-usb-v2/af9035.c", i32 1559, i32 11}
!313 = !{ptr @.str.172, !314, !"<string literal>", i1 false, i1 false}
!314 = !{!"../drivers/media/usb/dvb-usb-v2/af9035.c", i32 1575, i32 3}
!315 = !{ptr @af9035_tuner_attach.__UNIQUE_ID_ddebug423, !316, !"__UNIQUE_ID_ddebug423", i1 false, i1 false}
!316 = !{!"../drivers/media/usb/dvb-usb-v2/af9035.c", i32 1606, i32 2}
!317 = !{ptr @af9035_fc0011_config, !318, !"af9035_fc0011_config", i1 false, i1 false}
!318 = !{!"../drivers/media/usb/dvb-usb-v2/af9035.c", i32 1309, i32 35}
!319 = !{ptr @af9035_mxl5007t_config, !320, !"af9035_mxl5007t_config", i1 false, i1 false}
!320 = !{!"../drivers/media/usb/dvb-usb-v2/af9035.c", i32 1313, i32 31}
!321 = !{ptr @af9035_tda18218_config, !322, !"af9035_tda18218_config", i1 false, i1 false}
!322 = !{!"../drivers/media/usb/dvb-usb-v2/af9035.c", i32 1331, i32 31}
!323 = !{ptr @af9035_fc0012_config, !324, !"af9035_fc0012_config", i1 false, i1 false}
!324 = !{!"../drivers/media/usb/dvb-usb-v2/af9035.c", i32 1336, i32 35}
!325 = !{ptr @.str.173, !326, !"<string literal>", i1 false, i1 false}
!326 = !{!"../drivers/media/usb/dvb-usb-v2/af9035.c", i32 1686, i32 2}
!327 = !{ptr @af9035_tuner_detach.__UNIQUE_ID_ddebug427, !326, !"__UNIQUE_ID_ddebug427", i1 false, i1 false}
!328 = !{ptr @.str.174, !329, !"<string literal>", i1 false, i1 false}
!329 = !{!"../drivers/media/usb/dvb-usb-v2/af9035.c", i32 1748, i32 2}
!330 = !{ptr @.str.175, !329, !"<string literal>", i1 false, i1 false}
!331 = !{ptr @af9035_init.__UNIQUE_ID_ddebug428, !329, !"__UNIQUE_ID_ddebug428", i1 false, i1 false}
!332 = !{ptr @af9035_init.__UNIQUE_ID_ddebug429, !333, !"__UNIQUE_ID_ddebug429", i1 false, i1 false}
!333 = !{!"../drivers/media/usb/dvb-usb-v2/af9035.c", i32 1762, i32 2}
!334 = !{ptr @.str.176, !335, !"<string literal>", i1 false, i1 false}
!335 = !{!"../drivers/media/usb/dvb-usb-v2/af9035.c", i32 1900, i32 2}
!336 = !{ptr @.str.177, !335, !"<string literal>", i1 false, i1 false}
!337 = !{ptr @af9035_get_rc_config.__UNIQUE_ID_ddebug434, !335, !"__UNIQUE_ID_ddebug434", i1 false, i1 false}
!338 = !{ptr @.str.178, !339, !"<string literal>", i1 false, i1 false}
!339 = !{!"../drivers/media/usb/dvb-usb-v2/af9035.c", i32 1921, i32 19}
!340 = !{ptr @.str.179, !341, !"<string literal>", i1 false, i1 false}
!341 = !{!"../drivers/media/usb/dvb-usb-v2/af9035.c", i32 1883, i32 2}
!342 = !{ptr @af9035_rc_query.__UNIQUE_ID_ddebug432, !341, !"__UNIQUE_ID_ddebug432", i1 false, i1 false}
!343 = !{ptr @af9035_rc_query.__UNIQUE_ID_ddebug433, !344, !"__UNIQUE_ID_ddebug433", i1 false, i1 false}
!344 = !{!"../drivers/media/usb/dvb-usb-v2/af9035.c", i32 1890, i32 2}
!345 = !{ptr @.str.180, !346, !"<string literal>", i1 false, i1 false}
!346 = !{!"../drivers/media/usb/dvb-usb-v2/af9035.c", i32 1936, i32 2}
!347 = !{ptr @.str.181, !346, !"<string literal>", i1 false, i1 false}
!348 = !{ptr @af9035_get_stream_config.__UNIQUE_ID_ddebug435, !346, !"__UNIQUE_ID_ddebug435", i1 false, i1 false}
!349 = !{ptr @it930x_props, !350, !"it930x_props", i1 false, i1 false}
!350 = !{!"../drivers/media/usb/dvb-usb-v2/af9035.c", i32 2044, i32 47}
!351 = !{ptr @.str.183, !352, !"<string literal>", i1 false, i1 false}
!352 = !{!"../drivers/media/usb/dvb-usb-v2/af9035.c", i32 1219, i32 2}
!353 = !{ptr @it930x_frontend_attach.__UNIQUE_ID_ddebug419, !352, !"__UNIQUE_ID_ddebug419", i1 false, i1 false}
!354 = !{ptr @.str.184, !355, !"<string literal>", i1 false, i1 false}
!355 = !{!"../drivers/media/usb/dvb-usb-v2/af9035.c", i32 1270, i32 30}
!356 = !{ptr @it930x_frontend_attach.__UNIQUE_ID_ddebug420, !357, !"__UNIQUE_ID_ddebug420", i1 false, i1 false}
!357 = !{!"../drivers/media/usb/dvb-usb-v2/af9035.c", i32 1285, i32 2}
!358 = !{ptr @it930x_addresses_table, !359, !"it930x_addresses_table", i1 false, i1 false}
!359 = !{!"../drivers/media/usb/dvb-usb-v2/af9035.h", i32 74, i32 35}
!360 = !{ptr @.str.185, !361, !"<string literal>", i1 false, i1 false}
!361 = !{!"../drivers/media/usb/dvb-usb-v2/af9035.c", i32 1619, i32 2}
!362 = !{ptr @it930x_tuner_attach.__UNIQUE_ID_ddebug424, !361, !"__UNIQUE_ID_ddebug424", i1 false, i1 false}
!363 = !{ptr @.str.186, !364, !"<string literal>", i1 false, i1 false}
!364 = !{!"../drivers/media/usb/dvb-usb-v2/af9035.c", i32 1645, i32 30}
!365 = !{ptr @it930x_tuner_attach.__UNIQUE_ID_ddebug425, !366, !"__UNIQUE_ID_ddebug425", i1 false, i1 false}
!366 = !{!"../drivers/media/usb/dvb-usb-v2/af9035.c", i32 1654, i32 2}
!367 = !{ptr @.str.187, !368, !"<string literal>", i1 false, i1 false}
!368 = !{!"../drivers/media/usb/dvb-usb-v2/af9035.c", i32 1666, i32 2}
!369 = !{ptr @it930x_tuner_detach.__UNIQUE_ID_ddebug426, !368, !"__UNIQUE_ID_ddebug426", i1 false, i1 false}
!370 = !{ptr @.str.188, !371, !"<string literal>", i1 false, i1 false}
!371 = !{!"../drivers/media/usb/dvb-usb-v2/af9035.c", i32 1830, i32 2}
!372 = !{ptr @it930x_init.__UNIQUE_ID_ddebug430, !371, !"__UNIQUE_ID_ddebug430", i1 false, i1 false}
!373 = !{ptr @it930x_init.__UNIQUE_ID_ddebug431, !374, !"__UNIQUE_ID_ddebug431", i1 false, i1 false}
!374 = !{!"../drivers/media/usb/dvb-usb-v2/af9035.c", i32 1844, i32 2}
!375 = !{i32 1, !"wchar_size", i32 2}
!376 = !{i32 1, !"min_enum_size", i32 4}
!377 = !{i32 8, !"branch-target-enforcement", i32 0}
!378 = !{i32 8, !"sign-return-address", i32 0}
!379 = !{i32 8, !"sign-return-address-all", i32 0}
!380 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!381 = !{i32 7, !"uwtable", i32 1}
!382 = !{i32 7, !"frame-pointer", i32 2}
!383 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!384 = !{i64 2148348723, i64 2148348728, i64 2148348741, i64 2148348785, i64 2148348819, i64 2148348840}
!385 = !{!"auto-init"}
!386 = !{i8 0, i8 2}
