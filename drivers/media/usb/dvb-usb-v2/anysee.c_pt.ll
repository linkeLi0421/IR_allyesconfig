; ModuleID = '/llk/IR_all_yes/drivers/media/usb/dvb-usb-v2/anysee.c_pt.bc'
source_filename = "../drivers/media/usb/dvb-usb-v2/anysee.c"
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
%struct.mt352_config = type { i8, i32, i32, i32, ptr }
%struct.zl10353_config = type { i8, i32, i32, i32, i32, i8, i8, i8 }
%struct.tda10023_config = type { i8, i8, i32, i8, i8, i8, i8, i16 }
%struct.cx24116_config = type { i8, ptr, ptr, i8, i16 }
%struct.stv0900_config = type { i8, i8, i32, i8, i8, i8, i8, ptr, i8, i8, i8, i8, i8, i8, ptr, ptr }
%struct.cxd2820r_config = type { i8, i8, i8, i8, i8 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.isl6423_config = type { i32, i32, i8, i8 }
%struct.tda18212_config = type { i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr }
%struct.stv6110_config = type { i8, i32, i8, i8 }
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
%struct.anysee_state = type { [64 x i8], i8, i8, [1 x ptr], i8, %struct.dvb_ca_en50221, i32 }
%struct.dvb_ca_en50221 = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_msg = type { i16, i16, i16, ptr }
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
%struct.dvb_usb_device_properties = type { ptr, ptr, ptr, i8, i32, i8, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, [2 x %struct.dvb_usb_adapter_properties], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_board_info = type { [20 x i8], i16, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32 }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }

@__param_str_adapter_nr = internal constant [26 x i8] c"dvb_usb_anysee.adapter_nr\00", align 1
@param_array_ops = external dso_local constant %struct.kernel_param_ops, align 4
@__param_arr_adapter_nr = internal constant %struct.kparam_array { i32 16, i32 2, ptr null, ptr @param_ops_short, ptr @adapter_nr }, align 4
@__param_adapter_nr = internal constant %struct.kernel_param { ptr @__param_str_adapter_nr, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.101 { ptr @__param_arr_adapter_nr } }, section "__param", align 4
@__UNIQUE_ID_adapter_nrtype386 = internal constant [50 x i8] c"dvb_usb_anysee.parmtype=adapter_nr:array of short\00", section ".modinfo", align 1
@__UNIQUE_ID_adapter_nr387 = internal constant [51 x i8] c"dvb_usb_anysee.parm=adapter_nr:DVB adapter numbers\00", section ".modinfo", align 1
@__initcall__kmod_dvb_usb_anysee__405_1410_anysee_usb_driver_init6 = internal global ptr @anysee_usb_driver_init, section ".initcall6.init", align 4
@anysee_usb_driver = internal global { %struct.usb_driver, [44 x i8] } { %struct.usb_driver { ptr @.str, ptr @dvb_usbv2_probe, ptr @dvb_usbv2_disconnect, ptr null, ptr @dvb_usbv2_suspend, ptr @dvb_usbv2_resume, ptr @dvb_usbv2_reset_resume, ptr null, ptr null, ptr @anysee_id_table, ptr null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 -112 }, [44 x i8] zeroinitializer }, align 32
@__exitcall_anysee_usb_driver_exit = internal global ptr @anysee_usb_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author406 = internal constant [53 x i8] c"dvb_usb_anysee.author=Antti Palosaari <crope@iki.fi>\00", section ".modinfo", align 1
@__UNIQUE_ID_description407 = internal constant [66 x i8] c"dvb_usb_anysee.description=Driver Anysee E30 DVB-C & DVB-T USB2.0\00", section ".modinfo", align 1
@__UNIQUE_ID_file408 = internal constant [64 x i8] c"dvb_usb_anysee.file=drivers/media/usb/dvb-usb-v2/dvb-usb-anysee\00", section ".modinfo", align 1
@__UNIQUE_ID_license409 = internal constant [27 x i8] c"dvb_usb_anysee.license=GPL\00", section ".modinfo", align 1
@param_ops_short = external dso_local constant %struct.kernel_param_ops, align 4
@adapter_nr = internal global { [16 x i16], [32 x i8] } { [16 x i16] [i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1], [32 x i8] zeroinitializer }, align 32
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"dvb_usb_anysee\00", [17 x i8] zeroinitializer }, align 32
@anysee_id_table = internal constant { [3 x %struct.usb_device_id], [56 x i8] } { [3 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 1204, i16 -31201, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral to i32) }, %struct.usb_device_id { i16 3, i16 7283, i16 -31201, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.3 to i32) }, %struct.usb_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Anysee\00", [25 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"rc-anysee\00", [22 x i8] zeroinitializer }, align 32
@.compoundliteral = internal constant { %struct.dvb_usb_driver_info, [20 x i8] } { %struct.dvb_usb_driver_info { ptr @.str.1, ptr @.str.2, ptr @anysee_props }, [20 x i8] zeroinitializer }, align 32
@.compoundliteral.3 = internal constant { %struct.dvb_usb_driver_info, [20 x i8] } { %struct.dvb_usb_driver_info { ptr @.str.1, ptr @.str.2, ptr @anysee_props }, [20 x i8] zeroinitializer }, align 32
@anysee_i2c_algo = internal global { %struct.i2c_algorithm, [36 x i8] } { %struct.i2c_algorithm { ptr @anysee_master_xfer, ptr null, ptr null, ptr null, ptr @anysee_i2c_func, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@anysee_props = internal global { { ptr, ptr, ptr, i8, i32, i8, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, <{ { i8, i8, ptr, ptr, { i8, i8, i8, { %struct.anon.126, [8 x i8] } } }, %struct.dvb_usb_adapter_properties }>, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }, [56 x i8] } { { ptr, ptr, ptr, i8, i32, i8, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, <{ { i8, i8, ptr, ptr, { i8, i8, i8, { %struct.anon.126, [8 x i8] } } }, %struct.dvb_usb_adapter_properties }>, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @.str, ptr null, ptr @adapter_nr, i8 0, i32 132, i8 1, i8 -127, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @anysee_i2c_algo, i32 1, ptr null, <{ { i8, i8, ptr, ptr, { i8, i8, i8, { %struct.anon.126, [8 x i8] } } }, %struct.dvb_usb_adapter_properties }> <{ { i8, i8, ptr, ptr, { i8, i8, i8, { %struct.anon.126, [8 x i8] } } } { i8 0, i8 0, ptr null, ptr null, { i8, i8, i8, { %struct.anon.126, [8 x i8] } } { i8 1, i8 8, i8 -126, { %struct.anon.126, [8 x i8] } { %struct.anon.126 { i32 8192 }, [8 x i8] undef } } }, %struct.dvb_usb_adapter_properties zeroinitializer }>, ptr null, ptr @anysee_read_config, ptr null, ptr @anysee_frontend_attach, ptr null, ptr @anysee_tuner_attach, ptr null, ptr @anysee_frontend_ctrl, ptr @anysee_streaming_ctrl, ptr @anysee_init, ptr @anysee_exit, ptr @anysee_get_rc_config, ptr null }, [56 x i8] zeroinitializer }, align 32
@anysee_ctrl_msg.__UNIQUE_ID_ddebug388 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.5, ptr @.str.6, ptr @.str.7, i8 0, i8 11, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"anysee_ctrl_msg\00", [16 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/media/usb/dvb-usb-v2/anysee.c\00", [58 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"%s: >>> %*ph\0A\00", [18 x i8] zeroinitializer }, align 32
@anysee_ctrl_msg.__UNIQUE_ID_ddebug389 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.5, ptr @.str.6, ptr @.str.8, i8 0, i8 19, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s: recv bulk message failed=%d\0A\00", [63 x i8] zeroinitializer }, align 32
@anysee_ctrl_msg.__UNIQUE_ID_ddebug390 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.5, ptr @.str.6, ptr @.str.9, i8 0, i8 19, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"%s: <<< %*ph\0A\00", [18 x i8] zeroinitializer }, align 32
@anysee_ctrl_msg.__UNIQUE_ID_ddebug391 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.5, ptr @.str.6, ptr @.str.10, i8 0, i8 20, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%s: cmd failed\0A\00", [16 x i8] zeroinitializer }, align 32
@anysee_ctrl_msg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.5, ptr @.str.6, i32 91, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@anysee_ctrl_msg._entry_ptr = internal global ptr @anysee_ctrl_msg._entry, section ".printk_index", align 4
@anysee_read_config._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.6, i32 511, ptr @.str.15, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%s: firmware version %d.%d hardware id %d\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"anysee_read_config\00", [45 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@anysee_read_config._entry_ptr = internal global ptr @anysee_read_config._entry, section ".printk_index", align 4
@.str.16 = internal constant { [2 x i8], [30 x i8] } zeroinitializer, align 32
@.str.17 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mt352_attach\00", [19 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"symbol:mt352_attach\00", [44 x i8] zeroinitializer }, align 32
@anysee_mt352_config = internal global { %struct.mt352_config, [44 x i8] } { %struct.mt352_config { i8 15, i32 0, i32 0, i32 0, ptr @anysee_mt352_demod_init }, [44 x i8] zeroinitializer }, align 32
@anysee_frontend_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.6, i32 732, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013DVB: Unable to find symbol mt352_attach()\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"anysee_frontend_attach\00", [41 x i8] zeroinitializer }, align 32
@anysee_frontend_attach._entry_ptr = internal global ptr @anysee_frontend_attach._entry, section ".printk_index", align 4
@.str.21 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"zl10353_attach\00", [17 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"symbol:zl10353_attach\00", [42 x i8] zeroinitializer }, align 32
@anysee_zl10353_config = internal global { %struct.zl10353_config, [40 x i8] } { %struct.zl10353_config { i8 15, i32 0, i32 0, i32 0, i32 1, i8 0, i8 0, i8 0 }, [40 x i8] zeroinitializer }, align 32
@anysee_frontend_attach._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.20, ptr @.str.6, i32 738, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013DVB: Unable to find symbol zl10353_attach()\0A\00", [49 x i8] zeroinitializer }, align 32
@anysee_frontend_attach._entry_ptr.25 = internal global ptr @anysee_frontend_attach._entry.23, section ".printk_index", align 4
@anysee_frontend_attach._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.20, ptr @.str.6, i32 756, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@anysee_frontend_attach._entry_ptr.27 = internal global ptr @anysee_frontend_attach._entry.26, section ".printk_index", align 4
@.str.28 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"tda10023_attach\00", [16 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"symbol:tda10023_attach\00", [41 x i8] zeroinitializer }, align 32
@anysee_tda10023_config = internal global { %struct.tda10023_config, [16 x i8] } { %struct.tda10023_config { i8 13, i8 0, i32 16000000, i8 11, i8 3, i8 1, i8 -96, i16 -277 }, [16 x i8] zeroinitializer }, align 32
@anysee_frontend_attach._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.20, ptr @.str.6, i32 769, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013DVB: Unable to find symbol tda10023_attach()\0A\00", [48 x i8] zeroinitializer }, align 32
@anysee_frontend_attach._entry_ptr.32 = internal global ptr @anysee_frontend_attach._entry.30, section ".printk_index", align 4
@.str.33 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"cx24116_attach\00", [17 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"symbol:cx24116_attach\00", [42 x i8] zeroinitializer }, align 32
@anysee_cx24116_config = internal global { %struct.cx24116_config, [16 x i8] } { %struct.cx24116_config { i8 85, ptr null, ptr null, i8 0, i16 48 }, [16 x i8] zeroinitializer }, align 32
@anysee_frontend_attach._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.20, ptr @.str.6, i32 782, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013DVB: Unable to find symbol cx24116_attach()\0A\00", [49 x i8] zeroinitializer }, align 32
@anysee_frontend_attach._entry_ptr.37 = internal global ptr @anysee_frontend_attach._entry.35, section ".printk_index", align 4
@anysee_frontend_attach.__UNIQUE_ID_ddebug402 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.20, ptr @.str.6, ptr @.str.38, i8 0, i8 -57, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s: TDA18212 found\0A\00", [44 x i8] zeroinitializer }, align 32
@anysee_tda10023_tda18212_config = internal global { %struct.tda10023_config, [16 x i8] } { %struct.tda10023_config { i8 13, i8 0, i32 16000000, i8 12, i8 3, i8 1, i8 -95, i16 -17918 }, [16 x i8] zeroinitializer }, align 32
@anysee_frontend_attach._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.20, ptr @.str.6, i32 825, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@anysee_frontend_attach._entry_ptr.40 = internal global ptr @anysee_frontend_attach._entry.39, section ".printk_index", align 4
@anysee_frontend_attach._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.20, ptr @.str.6, i32 835, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@anysee_frontend_attach._entry_ptr.42 = internal global ptr @anysee_frontend_attach._entry.41, section ".printk_index", align 4
@anysee_zl10353_tda18212_config2 = internal global { %struct.zl10353_config, [40 x i8] } { %struct.zl10353_config { i8 15, i32 0, i32 41500, i32 1, i32 1, i8 -128, i8 0, i8 0 }, [40 x i8] zeroinitializer }, align 32
@anysee_frontend_attach._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.20, ptr @.str.6, i32 857, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@anysee_frontend_attach._entry_ptr.44 = internal global ptr @anysee_frontend_attach._entry.43, section ".printk_index", align 4
@anysee_frontend_attach._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.20, ptr @.str.6, i32 867, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@anysee_frontend_attach._entry_ptr.46 = internal global ptr @anysee_frontend_attach._entry.45, section ".printk_index", align 4
@anysee_frontend_attach._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.20, ptr @.str.6, i32 889, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@anysee_frontend_attach._entry_ptr.48 = internal global ptr @anysee_frontend_attach._entry.47, section ".printk_index", align 4
@anysee_zl10353_tda18212_config = internal global { %struct.zl10353_config, [40 x i8] } { %struct.zl10353_config { i8 12, i32 0, i32 41500, i32 1, i32 1, i8 -128, i8 0, i8 0 }, [40 x i8] zeroinitializer }, align 32
@anysee_frontend_attach._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.20, ptr @.str.6, i32 912, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@anysee_frontend_attach._entry_ptr.50 = internal global ptr @anysee_frontend_attach._entry.49, section ".printk_index", align 4
@.str.51 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"stv0900_attach\00", [17 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"symbol:stv0900_attach\00", [42 x i8] zeroinitializer }, align 32
@anysee_stv0900_config = internal global { %struct.stv0900_config, [32 x i8] } { %struct.stv0900_config { i8 104, i8 0, i32 8000000, i8 3, i8 2, i8 3, i8 0, ptr null, i8 0, i8 0, i8 1, i8 0, i8 0, i8 0, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@anysee_frontend_attach._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.20, ptr @.str.6, i32 933, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013DVB: Unable to find symbol stv0900_attach()\0A\00", [49 x i8] zeroinitializer }, align 32
@anysee_frontend_attach._entry_ptr.55 = internal global ptr @anysee_frontend_attach._entry.53, section ".printk_index", align 4
@.str.56 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"cxd2820r_attach\00", [16 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"symbol:cxd2820r_attach\00", [41 x i8] zeroinitializer }, align 32
@anysee_cxd2820r_config = internal global { %struct.cxd2820r_config, [27 x i8] } { %struct.cxd2820r_config { i8 109, i8 56, i8 0, i8 0, i8 0 }, [27 x i8] zeroinitializer }, align 32
@anysee_frontend_attach._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.20, ptr @.str.6, i32 948, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013DVB: Unable to find symbol cxd2820r_attach()\0A\00", [48 x i8] zeroinitializer }, align 32
@anysee_frontend_attach._entry_ptr.60 = internal global ptr @anysee_frontend_attach._entry.58, section ".printk_index", align 4
@anysee_frontend_attach._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.20, ptr @.str.6, i32 960, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [81 x i8], [47 x i8] } { [81 x i8] c"%s: Unsupported Anysee version. Please report to <linux-media@vger.kernel.org>.\0A\00", [47 x i8] zeroinitializer }, align 32
@anysee_frontend_attach._entry_ptr.63 = internal global ptr @anysee_frontend_attach._entry.61, section ".printk_index", align 4
@anysee_mt352_demod_init.clock_config = internal global { [3 x i8], [29 x i8] } { [3 x i8] c"\898(", [29 x i8] zeroinitializer }, align 32
@anysee_mt352_demod_init.reset = internal global { [2 x i8], [30 x i8] } { [2 x i8] c"P\80", [30 x i8] zeroinitializer }, align 32
@anysee_mt352_demod_init.adc_ctl_1_cfg = internal global { [2 x i8], [30 x i8] } { [2 x i8] c"\8E@", [30 x i8] zeroinitializer }, align 32
@anysee_mt352_demod_init.agc_cfg = internal global { [3 x i8], [29 x i8] } { [3 x i8] c"g( ", [29 x i8] zeroinitializer }, align 32
@anysee_mt352_demod_init.gpp_ctl_cfg = internal global { [2 x i8], [30 x i8] } { [2 x i8] c"\8C3", [30 x i8] zeroinitializer }, align 32
@anysee_mt352_demod_init.capt_range_cfg = internal global { [2 x i8], [30 x i8] } { [2 x i8] c"u2", [30 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@anysee_read_reg.__UNIQUE_ID_ddebug392 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.64, ptr @.str.6, ptr @.str.65, i8 0, i8 27, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.64 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"anysee_read_reg\00", [16 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s: reg=%04x val=%02x\0A\00", [41 x i8] zeroinitializer }, align 32
@anysee_write_reg.__UNIQUE_ID_ddebug393 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.66, ptr @.str.6, ptr @.str.65, i8 0, i8 29, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.66 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"anysee_write_reg\00", [47 x i8] zeroinitializer }, align 32
@anysee_tuner_attach.__UNIQUE_ID_ddebug403 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.67, ptr @.str.6, ptr @.str.68, i8 0, i8 -13, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.67 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"anysee_tuner_attach\00", [44 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%s:\0A\00", [27 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"dvb_pll_attach\00", [17 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"symbol:dvb_pll_attach\00", [42 x i8] zeroinitializer }, align 32
@anysee_tuner_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.67, ptr @.str.6, i32 980, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013DVB: Unable to find symbol dvb_pll_attach()\0A\00", [49 x i8] zeroinitializer }, align 32
@anysee_tuner_attach._entry_ptr = internal global ptr @anysee_tuner_attach._entry, section ".printk_index", align 4
@anysee_tuner_attach._entry.72 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.67, ptr @.str.6, i32 988, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@anysee_tuner_attach._entry_ptr.73 = internal global ptr @anysee_tuner_attach._entry.72, section ".printk_index", align 4
@anysee_tuner_attach._entry.74 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.67, ptr @.str.6, i32 996, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@anysee_tuner_attach._entry_ptr.75 = internal global ptr @anysee_tuner_attach._entry.74, section ".printk_index", align 4
@.str.76 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"isl6423_attach\00", [17 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"symbol:isl6423_attach\00", [42 x i8] zeroinitializer }, align 32
@anysee_isl6423_config = internal global { %struct.isl6423_config, [20 x i8] } { %struct.isl6423_config { i32 3, i32 2, i8 8, i8 1 }, [20 x i8] zeroinitializer }, align 32
@anysee_tuner_attach._entry.78 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.67, ptr @.str.6, i32 1004, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013DVB: Unable to find symbol isl6423_attach()\0A\00", [49 x i8] zeroinitializer }, align 32
@anysee_tuner_attach._entry_ptr.80 = internal global ptr @anysee_tuner_attach._entry.78, section ".printk_index", align 4
@anysee_tda18212_config = internal constant { %struct.tda18212_config, [40 x i8] } { %struct.tda18212_config { i16 4150, i16 4150, i16 4150, i16 0, i16 0, i16 0, i16 0, i16 5000, i16 0, i16 0, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"tda18212\00", [23 x i8] zeroinitializer }, align 32
@anysee_tuner_attach._entry.82 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.67, ptr @.str.6, i32 1039, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@anysee_tuner_attach._entry_ptr.83 = internal global ptr @anysee_tuner_attach._entry.82, section ".printk_index", align 4
@anysee_tuner_attach._entry.84 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.67, ptr @.str.6, i32 1045, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@anysee_tuner_attach._entry_ptr.85 = internal global ptr @anysee_tuner_attach._entry.84, section ".printk_index", align 4
@.str.86 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"stv6110_attach\00", [17 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"symbol:stv6110_attach\00", [42 x i8] zeroinitializer }, align 32
@anysee_stv6110_config = internal global { %struct.stv6110_config, [20 x i8] } { %struct.stv6110_config { i8 96, i32 16000000, i8 0, i8 1 }, [20 x i8] zeroinitializer }, align 32
@anysee_tuner_attach._entry.88 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.89, ptr @.str.67, ptr @.str.6, i32 1079, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013DVB: Unable to find symbol stv6110_attach()\0A\00", [49 x i8] zeroinitializer }, align 32
@anysee_tuner_attach._entry_ptr.90 = internal global ptr @anysee_tuner_attach._entry.88, section ".printk_index", align 4
@anysee_tuner_attach._entry.91 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.67, ptr @.str.6, i32 1084, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@anysee_tuner_attach._entry_ptr.92 = internal global ptr @anysee_tuner_attach._entry.91, section ".printk_index", align 4
@anysee_tda18212_config2 = internal constant { %struct.tda18212_config, [40 x i8] } { %struct.tda18212_config { i16 3550, i16 3700, i16 4150, i16 0, i16 3250, i16 4000, i16 4000, i16 5000, i16 0, i16 0, ptr null }, [40 x i8] zeroinitializer }, align 32
@anysee_add_i2c_dev.__UNIQUE_ID_ddebug398 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.93, ptr @.str.6, ptr @.str.94, i8 0, i8 -96, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.93 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"anysee_add_i2c_dev\00", [45 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"%s: num=%d\0A\00", [20 x i8] zeroinitializer }, align 32
@anysee_add_i2c_dev._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.95, ptr @.str.93, ptr @.str.6, i32 644, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s: I2C client out of index\0A\00", [35 x i8] zeroinitializer }, align 32
@anysee_add_i2c_dev._entry_ptr = internal global ptr @anysee_add_i2c_dev._entry, section ".printk_index", align 4
@.str.96 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@anysee_add_i2c_dev.__UNIQUE_ID_ddebug399 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.93, ptr @.str.6, ptr @.str.97, i8 0, i8 -89, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.97 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"%s: failed=%d\0A\00", [17 x i8] zeroinitializer }, align 32
@anysee_frontend_ctrl.__UNIQUE_ID_ddebug397 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.98, ptr @.str.6, ptr @.str.99, i8 0, i8 -124, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.98 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"anysee_frontend_ctrl\00", [43 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s: fe=%d onoff=%d\0A\00", [44 x i8] zeroinitializer }, align 32
@anysee_streaming_ctrl.__UNIQUE_ID_ddebug394 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.100, ptr @.str.6, ptr @.str.101, i8 0, i8 43, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.100 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"anysee_streaming_ctrl\00", [42 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"%s: onoff=%d\0A\00", [18 x i8] zeroinitializer }, align 32
@anysee_led_ctrl.__UNIQUE_ID_ddebug395 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.102, ptr @.str.6, ptr @.str.103, i8 0, i8 45, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.102 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"anysee_led_ctrl\00", [16 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s: state=%d interval=%d\0A\00", [38 x i8] zeroinitializer }, align 32
@anysee_ir_ctrl.__UNIQUE_ID_ddebug396 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.104, ptr @.str.6, ptr @.str.101, i8 0, i8 47, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.104 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"anysee_ir_ctrl\00", [17 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@anysee_del_i2c_dev.__UNIQUE_ID_ddebug400 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.105, ptr @.str.6, ptr @.str.94, i8 0, i8 -85, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.105 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"anysee_del_i2c_dev\00", [45 x i8] zeroinitializer }, align 32
@anysee_del_i2c_dev._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.95, ptr @.str.105, ptr @.str.6, i32 689, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@anysee_del_i2c_dev._entry_ptr = internal global ptr @anysee_del_i2c_dev._entry, section ".printk_index", align 4
@anysee_del_i2c_dev.__UNIQUE_ID_ddebug401 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.105, ptr @.str.6, ptr @.str.106, i8 0, i8 -81, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.106 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"%s: failed\0A\00", [20 x i8] zeroinitializer }, align 32
@anysee_rc_query.__UNIQUE_ID_ddebug404 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.107, ptr @.str.6, ptr @.str.108, i8 1, i8 27, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.107 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"anysee_rc_query\00", [16 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s: key pressed %02x\0A\00", [42 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [12 x i64] [i64 10, i64 8, i64 2, i64 6, i64 10, i64 11, i64 15, i64 18, i64 19, i64 20, i64 21, i64 22]
@__sancov_gen_cov_switch_values.109 = internal global [12 x i64] [i64 10, i64 8, i64 2, i64 6, i64 10, i64 11, i64 15, i64 18, i64 19, i64 20, i64 21, i64 22]
@__sancov_gen_cov_switch_values.110 = internal global [5 x i64] [i64 3, i64 8, i64 15, i64 18, i64 21]
@___asan_gen_.111 = private unnamed_addr constant [18 x i8] c"anysee_usb_driver\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.462, i32 1398, i32 26 }
@___asan_gen_.114 = private unnamed_addr constant [11 x i8] c"adapter_nr\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.462, i32 34, i32 1 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.462, i32 1410, i32 1 }
@___asan_gen_.120 = private unnamed_addr constant [16 x i8] c"anysee_id_table\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.462, i32 1389, i32 35 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.462, i32 1390, i32 4 }
@___asan_gen_.129 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.130 = private unnamed_addr constant [19 x i8] c".compoundliteral.3\00", align 1
@___asan_gen_.131 = private unnamed_addr constant [16 x i8] c"anysee_i2c_algo\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.462, i32 247, i32 29 }
@___asan_gen_.134 = private unnamed_addr constant [13 x i8] c"anysee_props\00", align 1
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.462, i32 1362, i32 41 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.462, i32 47, i32 2 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.462, i32 74, i32 4 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.462, i32 78, i32 4 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.462, i32 82, i32 5 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.462, i32 90, i32 3 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.462, i32 510, i32 2 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.462, i32 717, i32 11 }
@___asan_gen_.185 = private unnamed_addr constant [20 x i8] c"anysee_mt352_config\00", align 1
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.462, i32 285, i32 28 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.462, i32 731, i32 17 }
@___asan_gen_.203 = private unnamed_addr constant [22 x i8] c"anysee_zl10353_config\00", align 1
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.462, i32 290, i32 30 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.462, i32 737, i32 17 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.462, i32 755, i32 17 }
@___asan_gen_.221 = private unnamed_addr constant [23 x i8] c"anysee_tda10023_config\00", align 1
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.462, i32 274, i32 31 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.462, i32 768, i32 17 }
@___asan_gen_.236 = private unnamed_addr constant [22 x i8] c"anysee_cx24116_config\00", align 1
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.462, i32 338, i32 30 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.462, i32 781, i32 17 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.462, i32 798, i32 4 }
@___asan_gen_.248 = private unnamed_addr constant [32 x i8] c"anysee_tda10023_tda18212_config\00", align 1
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.462, i32 311, i32 31 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.462, i32 823, i32 18 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.462, i32 833, i32 18 }
@___asan_gen_.257 = private unnamed_addr constant [32 x i8] c"anysee_zl10353_tda18212_config2\00", align 1
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.462, i32 295, i32 30 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.462, i32 855, i32 18 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.462, i32 865, i32 18 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.462, i32 887, i32 17 }
@___asan_gen_.269 = private unnamed_addr constant [31 x i8] c"anysee_zl10353_tda18212_config\00", align 1
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.462, i32 303, i32 30 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.462, i32 910, i32 17 }
@___asan_gen_.281 = private unnamed_addr constant [22 x i8] c"anysee_stv0900_config\00", align 1
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.462, i32 344, i32 30 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.462, i32 932, i32 17 }
@___asan_gen_.296 = private unnamed_addr constant [23 x i8] c"anysee_cxd2820r_config\00", align 1
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.462, i32 368, i32 31 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.462, i32 947, i32 17 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.462, i32 958, i32 3 }
@___asan_gen_.311 = private unnamed_addr constant [13 x i8] c"clock_config\00", align 1
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.462, i32 254, i32 12 }
@___asan_gen_.314 = private unnamed_addr constant [6 x i8] c"reset\00", align 1
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.462, i32 255, i32 12 }
@___asan_gen_.317 = private unnamed_addr constant [14 x i8] c"adc_ctl_1_cfg\00", align 1
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.462, i32 256, i32 12 }
@___asan_gen_.320 = private unnamed_addr constant [8 x i8] c"agc_cfg\00", align 1
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.462, i32 257, i32 12 }
@___asan_gen_.323 = private unnamed_addr constant [12 x i8] c"gpp_ctl_cfg\00", align 1
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.462, i32 258, i32 12 }
@___asan_gen_.326 = private unnamed_addr constant [15 x i8] c"capt_range_cfg\00", align 1
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.462, i32 259, i32 12 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.462, i32 109, i32 2 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.462, i32 116, i32 2 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.462, i32 972, i32 2 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.462, i32 979, i32 8 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.462, i32 987, i32 8 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.462, i32 995, i32 8 }
@___asan_gen_.368 = private unnamed_addr constant [22 x i8] c"anysee_isl6423_config\00", align 1
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.462, i32 361, i32 30 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.462, i32 1003, i32 8 }
@___asan_gen_.377 = private unnamed_addr constant [23 x i8] c"anysee_tda18212_config\00", align 1
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.462, i32 321, i32 37 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.462, i32 1020, i32 32 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.462, i32 1037, i32 9 }
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.462, i32 1043, i32 10 }
@___asan_gen_.395 = private unnamed_addr constant [22 x i8] c"anysee_stv6110_config\00", align 1
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.462, i32 355, i32 30 }
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.462, i32 1078, i32 8 }
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.462, i32 1083, i32 9 }
@___asan_gen_.407 = private unnamed_addr constant [24 x i8] c"anysee_tda18212_config2\00", align 1
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.462, i32 328, i32 37 }
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.462, i32 640, i32 2 }
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.462, i32 643, i32 3 }
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.462, i32 649, i32 2 }
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.462, i32 668, i32 2 }
@___asan_gen_.433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.462, i32 530, i32 2 }
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.462, i32 173, i32 2 }
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.462, i32 180, i32 2 }
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.462, i32 188, i32 2 }
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.462, i32 685, i32 2 }
@___asan_gen_.452 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.462, i32 688, i32 3 }
@___asan_gen_.457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.462, i32 703, i32 2 }
@___asan_gen_.461 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.462 = private constant [41 x i8] c"../drivers/media/usb/dvb-usb-v2/anysee.c\00", align 1
@___asan_gen_.463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.462, i32 1134, i32 3 }
@llvm.compiler.used = appending global [155 x ptr] [ptr @__UNIQUE_ID_adapter_nr387, ptr @__UNIQUE_ID_adapter_nrtype386, ptr @__UNIQUE_ID_author406, ptr @__UNIQUE_ID_description407, ptr @__UNIQUE_ID_file408, ptr @__UNIQUE_ID_license409, ptr @__exitcall_anysee_usb_driver_exit, ptr @__initcall__kmod_dvb_usb_anysee__405_1410_anysee_usb_driver_init6, ptr @__param_adapter_nr, ptr @anysee_add_i2c_dev._entry, ptr @anysee_add_i2c_dev._entry_ptr, ptr @anysee_ctrl_msg._entry, ptr @anysee_ctrl_msg._entry_ptr, ptr @anysee_del_i2c_dev._entry, ptr @anysee_del_i2c_dev._entry_ptr, ptr @anysee_frontend_attach._entry, ptr @anysee_frontend_attach._entry.23, ptr @anysee_frontend_attach._entry.26, ptr @anysee_frontend_attach._entry.30, ptr @anysee_frontend_attach._entry.35, ptr @anysee_frontend_attach._entry.39, ptr @anysee_frontend_attach._entry.41, ptr @anysee_frontend_attach._entry.43, ptr @anysee_frontend_attach._entry.45, ptr @anysee_frontend_attach._entry.47, ptr @anysee_frontend_attach._entry.49, ptr @anysee_frontend_attach._entry.53, ptr @anysee_frontend_attach._entry.58, ptr @anysee_frontend_attach._entry.61, ptr @anysee_frontend_attach._entry_ptr, ptr @anysee_frontend_attach._entry_ptr.25, ptr @anysee_frontend_attach._entry_ptr.27, ptr @anysee_frontend_attach._entry_ptr.32, ptr @anysee_frontend_attach._entry_ptr.37, ptr @anysee_frontend_attach._entry_ptr.40, ptr @anysee_frontend_attach._entry_ptr.42, ptr @anysee_frontend_attach._entry_ptr.44, ptr @anysee_frontend_attach._entry_ptr.46, ptr @anysee_frontend_attach._entry_ptr.48, ptr @anysee_frontend_attach._entry_ptr.50, ptr @anysee_frontend_attach._entry_ptr.55, ptr @anysee_frontend_attach._entry_ptr.60, ptr @anysee_frontend_attach._entry_ptr.63, ptr @anysee_read_config._entry, ptr @anysee_read_config._entry_ptr, ptr @anysee_tuner_attach._entry, ptr @anysee_tuner_attach._entry.72, ptr @anysee_tuner_attach._entry.74, ptr @anysee_tuner_attach._entry.78, ptr @anysee_tuner_attach._entry.82, ptr @anysee_tuner_attach._entry.84, ptr @anysee_tuner_attach._entry.88, ptr @anysee_tuner_attach._entry.91, ptr @anysee_tuner_attach._entry_ptr, ptr @anysee_tuner_attach._entry_ptr.73, ptr @anysee_tuner_attach._entry_ptr.75, ptr @anysee_tuner_attach._entry_ptr.80, ptr @anysee_tuner_attach._entry_ptr.83, ptr @anysee_tuner_attach._entry_ptr.85, ptr @anysee_tuner_attach._entry_ptr.90, ptr @anysee_tuner_attach._entry_ptr.92, ptr @anysee_usb_driver_exit, ptr @anysee_usb_driver, ptr @adapter_nr, ptr @.str, ptr @anysee_id_table, ptr @.str.1, ptr @.str.2, ptr @.compoundliteral, ptr @.compoundliteral.3, ptr @anysee_i2c_algo, ptr @anysee_props, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @anysee_mt352_config, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @anysee_zl10353_config, ptr @.str.24, ptr @.str.28, ptr @.str.29, ptr @anysee_tda10023_config, ptr @.str.31, ptr @.str.33, ptr @.str.34, ptr @anysee_cx24116_config, ptr @.str.36, ptr @.str.38, ptr @anysee_tda10023_tda18212_config, ptr @anysee_zl10353_tda18212_config2, ptr @anysee_zl10353_tda18212_config, ptr @.str.51, ptr @.str.52, ptr @anysee_stv0900_config, ptr @.str.54, ptr @.str.56, ptr @.str.57, ptr @anysee_cxd2820r_config, ptr @.str.59, ptr @.str.62, ptr @anysee_mt352_demod_init.clock_config, ptr @anysee_mt352_demod_init.reset, ptr @anysee_mt352_demod_init.adc_ctl_1_cfg, ptr @anysee_mt352_demod_init.agc_cfg, ptr @anysee_mt352_demod_init.gpp_ctl_cfg, ptr @anysee_mt352_demod_init.capt_range_cfg, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.76, ptr @.str.77, ptr @anysee_isl6423_config, ptr @.str.79, ptr @anysee_tda18212_config, ptr @.str.81, ptr @.str.86, ptr @.str.87, ptr @anysee_stv6110_config, ptr @.str.89, ptr @anysee_tda18212_config2, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108], section "llvm.metadata"
@0 = internal global [119 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @anysee_usb_driver to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adapter_nr to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @anysee_id_table to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.3 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @anysee_i2c_algo to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @anysee_props to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @anysee_ctrl_msg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @anysee_read_config._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @anysee_mt352_config to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @anysee_frontend_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @anysee_zl10353_config to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @anysee_frontend_attach._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @anysee_frontend_attach._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @anysee_tda10023_config to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @anysee_frontend_attach._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @anysee_cx24116_config to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @anysee_frontend_attach._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @anysee_tda10023_tda18212_config to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @anysee_frontend_attach._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @anysee_frontend_attach._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @anysee_zl10353_tda18212_config2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @anysee_frontend_attach._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @anysee_frontend_attach._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @anysee_frontend_attach._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @anysee_zl10353_tda18212_config to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @anysee_frontend_attach._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @anysee_stv0900_config to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @anysee_frontend_attach._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @anysee_cxd2820r_config to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @anysee_frontend_attach._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @anysee_frontend_attach._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 81, i32 128, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @anysee_mt352_demod_init.clock_config to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @anysee_mt352_demod_init.reset to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @anysee_mt352_demod_init.adc_ctl_1_cfg to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @anysee_mt352_demod_init.agc_cfg to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @anysee_mt352_demod_init.gpp_ctl_cfg to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @anysee_mt352_demod_init.capt_range_cfg to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @anysee_tuner_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @anysee_tuner_attach._entry.72 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @anysee_tuner_attach._entry.74 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @anysee_isl6423_config to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @anysee_tuner_attach._entry.78 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @anysee_tda18212_config to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @anysee_tuner_attach._entry.82 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @anysee_tuner_attach._entry.84 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @anysee_stv6110_config to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @anysee_tuner_attach._entry.88 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @anysee_tuner_attach._entry.91 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @anysee_tda18212_config2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @anysee_add_i2c_dev._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @anysee_del_i2c_dev._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @anysee_usb_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usb_register_driver(ptr noundef nonnull @anysee_usb_driver, ptr noundef null, ptr noundef nonnull @.str) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @anysee_usb_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @usb_deregister(ptr noundef nonnull @anysee_usb_driver) #7
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
define internal i32 @anysee_read_config(ptr noundef %d) #2 align 64 {
entry:
  %buf.i16 = alloca [1 x i8], align 1
  %buf.i = alloca [1 x i8], align 1
  %hw_info = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 15
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %hw_info) #7
  %2 = ptrtoint ptr %hw_info to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %hw_info, align 1, !annotation !255
  %3 = getelementptr inbounds [3 x i8], ptr %hw_info, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %3, align 1, !annotation !255
  %5 = getelementptr inbounds [3 x i8], ptr %hw_info, i32 0, i32 2
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -1, ptr %5, align 1, !annotation !255
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %buf.i) #7
  %7 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 25, ptr %buf.i, align 1
  %call.i = call fastcc i32 @anysee_ctrl_msg(ptr noundef %d, ptr noundef nonnull %buf.i, i8 noundef zeroext 1, ptr noundef nonnull %hw_info, i8 noundef zeroext 3) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %buf.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.error_crit_edge

entry.error_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %error

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %buf.i16) #7
  %8 = ptrtoint ptr %buf.i16 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 25, ptr %buf.i16, align 1
  %call.i17 = call fastcc i32 @anysee_ctrl_msg(ptr noundef %d, ptr noundef nonnull %buf.i16, i8 noundef zeroext 1, ptr noundef nonnull %hw_info, i8 noundef zeroext 3) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %buf.i16) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i17)
  %tobool3.not = icmp eq i32 %call.i17, 0
  br i1 %tobool3.not, label %do.end, label %if.end.error_crit_edge

if.end.error_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %error

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %udev = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 5
  %9 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %udev, align 4
  %dev = getelementptr inbounds %struct.usb_device, ptr %10, i32 0, i32 15
  %11 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %3, align 1
  %conv = zext i8 %12 to i32
  %13 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %5, align 1
  %conv7 = zext i8 %14 to i32
  %15 = ptrtoint ptr %hw_info to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %hw_info, align 1
  %conv9 = zext i8 %16 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str, i32 noundef %conv, i32 noundef %conv7, i32 noundef %conv9) #10
  %17 = ptrtoint ptr %hw_info to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %hw_info, align 1
  %hw = getelementptr inbounds %struct.anysee_state, ptr %1, i32 0, i32 2
  %19 = ptrtoint ptr %hw to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %18, ptr %hw, align 1
  br label %error

error:                                            ; preds = %do.end, %if.end.error_crit_edge, %entry.error_crit_edge
  %ret.0 = phi i32 [ %call.i, %entry.error_crit_edge ], [ %call.i17, %if.end.error_crit_edge ], [ 0, %do.end ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %hw_info) #7
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @anysee_frontend_attach(ptr noundef %adap) #2 align 64 {
entry:
  %tmp7 = alloca i8, align 1
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
  %priv = getelementptr inbounds %struct.dvb_usb_device, ptr %add.ptr, i32 0, i32 15
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp7) #7
  %4 = ptrtoint ptr %tmp7 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %tmp7, align 1, !annotation !255
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg) #7
  %5 = getelementptr inbounds i8, ptr %msg, i32 4
  %6 = call ptr @memset(ptr %5, i32 255, i32 16)
  %7 = ptrtoint ptr %msg to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 96, ptr %msg, align 4
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 1
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 0, ptr %flags, align 2
  %len = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 2
  %9 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 1, ptr %len, align 4
  %buf = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 3
  %10 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @.str.16, ptr %buf, align 4
  %arrayinit.element = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 1
  %11 = ptrtoint ptr %arrayinit.element to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 96, ptr %arrayinit.element, align 4
  %flags9 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 1, i32 1
  %12 = ptrtoint ptr %flags9 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 1, ptr %flags9, align 2
  %len10 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 1, i32 2
  %13 = ptrtoint ptr %len10 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 1, ptr %len10, align 4
  %buf11 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 1, i32 3
  %14 = ptrtoint ptr %buf11 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %tmp7, ptr %buf11, align 4
  %hw = getelementptr inbounds %struct.anysee_state, ptr %3, i32 0, i32 2
  %15 = ptrtoint ptr %hw to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %hw, align 1
  %17 = zext i8 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values)
  switch i8 %16, label %entry.sw.epilog_crit_edge [
    i8 2, label %sw.bb
    i8 6, label %sw.bb56
    i8 10, label %sw.bb93
    i8 11, label %sw.bb126
    i8 15, label %sw.bb159
    i8 18, label %entry.sw.bb349_crit_edge
    i8 21, label %entry.sw.bb349_crit_edge697
    i8 19, label %entry.sw.bb448_crit_edge
    i8 22, label %entry.sw.bb448_crit_edge698
    i8 20, label %sw.bb485
  ]

entry.sw.bb448_crit_edge698:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb448

entry.sw.bb448_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb448

entry.sw.bb349_crit_edge697:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb349

entry.sw.bb349_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb349

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %call = call ptr @__symbol_get(ptr noundef nonnull @.str.17) #7
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %cond.end, label %sw.bb.if.then_crit_edge

sw.bb.if.then_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

cond.end:                                         ; preds = %sw.bb
  %call13 = call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.18) #7
  %call14 = call ptr @__symbol_get(ptr noundef nonnull @.str.17) #7
  %tobool15.not = icmp eq ptr %call14, null
  br i1 %tobool15.not, label %do.end, label %cond.end.if.then_crit_edge

cond.end.if.then_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.then:                                          ; preds = %cond.end.if.then_crit_edge, %sw.bb.if.then_crit_edge
  %cond640 = phi ptr [ %call14, %cond.end.if.then_crit_edge ], [ %call, %sw.bb.if.then_crit_edge ]
  %i2c_adap = getelementptr inbounds %struct.dvb_usb_device, ptr %add.ptr, i32 0, i32 10
  %call16 = call ptr %cond640(ptr noundef nonnull @anysee_mt352_config, ptr noundef %i2c_adap) #7
  %cmp = icmp eq ptr %call16, null
  br i1 %cmp, label %if.then18, label %if.end21

if.then18:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  call void @__symbol_put(ptr noundef nonnull @.str.17) #7
  br label %if.end27

do.end:                                           ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #9
  %call20 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19) #10
  br label %if.end27

if.end21:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %fe = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 14
  %18 = ptrtoint ptr %fe to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call16, ptr %fe, align 8
  br label %sw.epilog

if.end27:                                         ; preds = %do.end, %if.then18
  %fe642 = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 14
  %19 = ptrtoint ptr %fe642 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %fe642, align 8
  %call30 = call ptr @__symbol_get(ptr noundef nonnull @.str.21) #7
  %tobool31.not = icmp eq ptr %call30, null
  br i1 %tobool31.not, label %cond.end36, label %if.end27.if.then39_crit_edge

if.end27.if.then39_crit_edge:                     ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then39

cond.end36:                                       ; preds = %if.end27
  %call34 = call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.22) #7
  %call35 = call ptr @__symbol_get(ptr noundef nonnull @.str.21) #7
  %tobool38.not = icmp eq ptr %call35, null
  br i1 %tobool38.not, label %do.end49, label %cond.end36.if.then39_crit_edge

cond.end36.if.then39_crit_edge:                   ; preds = %cond.end36
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then39

if.then39:                                        ; preds = %cond.end36.if.then39_crit_edge, %if.end27.if.then39_crit_edge
  %cond37647 = phi ptr [ %call35, %cond.end36.if.then39_crit_edge ], [ %call30, %if.end27.if.then39_crit_edge ]
  %i2c_adap40 = getelementptr inbounds %struct.dvb_usb_device, ptr %add.ptr, i32 0, i32 10
  %call41 = call ptr %cond37647(ptr noundef nonnull @anysee_zl10353_config, ptr noundef %i2c_adap40) #7
  %cmp42 = icmp eq ptr %call41, null
  br i1 %cmp42, label %if.then44, label %if.then39.if.end52_crit_edge

if.then39.if.end52_crit_edge:                     ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end52

if.then44:                                        ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #9
  call void @__symbol_put(ptr noundef nonnull @.str.21) #7
  br label %if.end52

do.end49:                                         ; preds = %cond.end36
  call void @__sanitizer_cov_trace_pc() #9
  %call51 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24) #10
  br label %if.end52

if.end52:                                         ; preds = %do.end49, %if.then44, %if.then39.if.end52_crit_edge
  %__r28.0 = phi ptr [ null, %if.then44 ], [ %call41, %if.then39.if.end52_crit_edge ], [ null, %do.end49 ]
  %20 = ptrtoint ptr %fe642 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %__r28.0, ptr %fe642, align 8
  br label %sw.epilog

sw.bb56:                                          ; preds = %entry
  %call57 = call fastcc i32 @anysee_wr_reg_mask(ptr noundef %add.ptr, i16 noundef zeroext 176, i8 noundef zeroext 1, i8 noundef zeroext 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %tobool58.not = icmp eq i32 %call57, 0
  br i1 %tobool58.not, label %if.end60, label %sw.bb56.error_crit_edge

sw.bb56.error_crit_edge:                          ; preds = %sw.bb56
  call void @__sanitizer_cov_trace_pc() #9
  br label %error

if.end60:                                         ; preds = %sw.bb56
  %call61 = call fastcc i32 @anysee_wr_reg_mask(ptr noundef %add.ptr, i16 noundef zeroext 128, i8 noundef zeroext 0, i8 noundef zeroext -128)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %if.end64, label %if.end60.error_crit_edge

if.end60.error_crit_edge:                         ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #9
  br label %error

if.end64:                                         ; preds = %if.end60
  %call67 = call ptr @__symbol_get(ptr noundef nonnull @.str.21) #7
  %tobool68.not = icmp eq ptr %call67, null
  br i1 %tobool68.not, label %cond.end73, label %if.end64.if.then76_crit_edge

if.end64.if.then76_crit_edge:                     ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then76

cond.end73:                                       ; preds = %if.end64
  %call71 = call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.22) #7
  %call72 = call ptr @__symbol_get(ptr noundef nonnull @.str.21) #7
  %tobool75.not = icmp eq ptr %call72, null
  br i1 %tobool75.not, label %do.end86, label %cond.end73.if.then76_crit_edge

cond.end73.if.then76_crit_edge:                   ; preds = %cond.end73
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then76

if.then76:                                        ; preds = %cond.end73.if.then76_crit_edge, %if.end64.if.then76_crit_edge
  %cond74650 = phi ptr [ %call72, %cond.end73.if.then76_crit_edge ], [ %call67, %if.end64.if.then76_crit_edge ]
  %i2c_adap77 = getelementptr inbounds %struct.dvb_usb_device, ptr %add.ptr, i32 0, i32 10
  %call78 = call ptr %cond74650(ptr noundef nonnull @anysee_zl10353_config, ptr noundef %i2c_adap77) #7
  %cmp79 = icmp eq ptr %call78, null
  br i1 %cmp79, label %if.then81, label %if.then76.if.end89_crit_edge

if.then76.if.end89_crit_edge:                     ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end89

if.then81:                                        ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #9
  call void @__symbol_put(ptr noundef nonnull @.str.21) #7
  br label %if.end89

do.end86:                                         ; preds = %cond.end73
  call void @__sanitizer_cov_trace_pc() #9
  %call88 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24) #10
  br label %if.end89

if.end89:                                         ; preds = %do.end86, %if.then81, %if.then76.if.end89_crit_edge
  %__r65.0 = phi ptr [ null, %if.then81 ], [ %call78, %if.then76.if.end89_crit_edge ], [ null, %do.end86 ]
  %fe91 = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 14
  %21 = ptrtoint ptr %fe91 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %__r65.0, ptr %fe91, align 8
  br label %sw.epilog

sw.bb93:                                          ; preds = %entry
  %call94 = call fastcc i32 @anysee_wr_reg_mask(ptr noundef %add.ptr, i16 noundef zeroext 176, i8 noundef zeroext 1, i8 noundef zeroext 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call94)
  %tobool95.not = icmp eq i32 %call94, 0
  br i1 %tobool95.not, label %if.end97, label %sw.bb93.error_crit_edge

sw.bb93.error_crit_edge:                          ; preds = %sw.bb93
  call void @__sanitizer_cov_trace_pc() #9
  br label %error

if.end97:                                         ; preds = %sw.bb93
  %call100 = call ptr @__symbol_get(ptr noundef nonnull @.str.28) #7
  %tobool101.not = icmp eq ptr %call100, null
  br i1 %tobool101.not, label %cond.end106, label %if.end97.if.then109_crit_edge

if.end97.if.then109_crit_edge:                    ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then109

cond.end106:                                      ; preds = %if.end97
  %call104 = call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.29) #7
  %call105 = call ptr @__symbol_get(ptr noundef nonnull @.str.28) #7
  %tobool108.not = icmp eq ptr %call105, null
  br i1 %tobool108.not, label %do.end119, label %cond.end106.if.then109_crit_edge

cond.end106.if.then109_crit_edge:                 ; preds = %cond.end106
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then109

if.then109:                                       ; preds = %cond.end106.if.then109_crit_edge, %if.end97.if.then109_crit_edge
  %cond107653 = phi ptr [ %call105, %cond.end106.if.then109_crit_edge ], [ %call100, %if.end97.if.then109_crit_edge ]
  %i2c_adap110 = getelementptr inbounds %struct.dvb_usb_device, ptr %add.ptr, i32 0, i32 10
  %call111 = call ptr %cond107653(ptr noundef nonnull @anysee_tda10023_config, ptr noundef %i2c_adap110, i8 noundef zeroext 72) #7
  %cmp112 = icmp eq ptr %call111, null
  br i1 %cmp112, label %if.then114, label %if.then109.if.end122_crit_edge

if.then109.if.end122_crit_edge:                   ; preds = %if.then109
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end122

if.then114:                                       ; preds = %if.then109
  call void @__sanitizer_cov_trace_pc() #9
  call void @__symbol_put(ptr noundef nonnull @.str.28) #7
  br label %if.end122

do.end119:                                        ; preds = %cond.end106
  call void @__sanitizer_cov_trace_pc() #9
  %call121 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31) #10
  br label %if.end122

if.end122:                                        ; preds = %do.end119, %if.then114, %if.then109.if.end122_crit_edge
  %__r98.0 = phi ptr [ null, %if.then114 ], [ %call111, %if.then109.if.end122_crit_edge ], [ null, %do.end119 ]
  %fe124 = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 14
  %22 = ptrtoint ptr %fe124 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %__r98.0, ptr %fe124, align 8
  br label %sw.epilog

sw.bb126:                                         ; preds = %entry
  %call127 = call fastcc i32 @anysee_wr_reg_mask(ptr noundef %add.ptr, i16 noundef zeroext 176, i8 noundef zeroext 1, i8 noundef zeroext 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call127)
  %tobool128.not = icmp eq i32 %call127, 0
  br i1 %tobool128.not, label %if.end130, label %sw.bb126.error_crit_edge

sw.bb126.error_crit_edge:                         ; preds = %sw.bb126
  call void @__sanitizer_cov_trace_pc() #9
  br label %error

if.end130:                                        ; preds = %sw.bb126
  %call133 = call ptr @__symbol_get(ptr noundef nonnull @.str.33) #7
  %tobool134.not = icmp eq ptr %call133, null
  br i1 %tobool134.not, label %cond.end139, label %if.end130.if.then142_crit_edge

if.end130.if.then142_crit_edge:                   ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then142

cond.end139:                                      ; preds = %if.end130
  %call137 = call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.34) #7
  %call138 = call ptr @__symbol_get(ptr noundef nonnull @.str.33) #7
  %tobool141.not = icmp eq ptr %call138, null
  br i1 %tobool141.not, label %do.end152, label %cond.end139.if.then142_crit_edge

cond.end139.if.then142_crit_edge:                 ; preds = %cond.end139
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then142

if.then142:                                       ; preds = %cond.end139.if.then142_crit_edge, %if.end130.if.then142_crit_edge
  %cond140656 = phi ptr [ %call138, %cond.end139.if.then142_crit_edge ], [ %call133, %if.end130.if.then142_crit_edge ]
  %i2c_adap143 = getelementptr inbounds %struct.dvb_usb_device, ptr %add.ptr, i32 0, i32 10
  %call144 = call ptr %cond140656(ptr noundef nonnull @anysee_cx24116_config, ptr noundef %i2c_adap143) #7
  %cmp145 = icmp eq ptr %call144, null
  br i1 %cmp145, label %if.then147, label %if.then142.if.end155_crit_edge

if.then142.if.end155_crit_edge:                   ; preds = %if.then142
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end155

if.then147:                                       ; preds = %if.then142
  call void @__sanitizer_cov_trace_pc() #9
  call void @__symbol_put(ptr noundef nonnull @.str.33) #7
  br label %if.end155

do.end152:                                        ; preds = %cond.end139
  call void @__sanitizer_cov_trace_pc() #9
  %call154 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36) #10
  br label %if.end155

if.end155:                                        ; preds = %do.end152, %if.then147, %if.then142.if.end155_crit_edge
  %__r131.0 = phi ptr [ null, %if.then147 ], [ %call144, %if.then142.if.end155_crit_edge ], [ null, %do.end152 ]
  %fe157 = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 14
  %23 = ptrtoint ptr %fe157 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %__r131.0, ptr %fe157, align 8
  br label %sw.epilog

sw.bb159:                                         ; preds = %entry
  %call160 = call fastcc i32 @anysee_wr_reg_mask(ptr noundef %add.ptr, i16 noundef zeroext 177, i8 noundef zeroext 16, i8 noundef zeroext 16)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call160)
  %tobool161.not = icmp eq i32 %call160, 0
  br i1 %tobool161.not, label %if.end163, label %sw.bb159.error_crit_edge

sw.bb159.error_crit_edge:                         ; preds = %sw.bb159
  call void @__sanitizer_cov_trace_pc() #9
  br label %error

if.end163:                                        ; preds = %sw.bb159
  %24 = ptrtoint ptr %tmp7 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %tmp7, align 1
  %i2c_adap164 = getelementptr inbounds %struct.dvb_usb_device, ptr %add.ptr, i32 0, i32 10
  %call165 = call i32 @i2c_transfer(ptr noundef %i2c_adap164, ptr noundef nonnull %msg, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call165)
  %cmp166 = icmp eq i32 %call165, 2
  br i1 %cmp166, label %land.lhs.true, label %if.end163.if.else182_crit_edge

if.end163.if.else182_crit_edge:                   ; preds = %if.end163
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else182

land.lhs.true:                                    ; preds = %if.end163
  %25 = ptrtoint ptr %tmp7 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %tmp7, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -57, i8 %26)
  %cmp169 = icmp eq i8 %26, -57
  br i1 %cmp169, label %do.body172, label %land.lhs.true.if.else182_crit_edge

land.lhs.true.if.else182_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else182

do.body172:                                       ; preds = %land.lhs.true
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @anysee_frontend_attach.__UNIQUE_ID_ddebug402, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@anysee_frontend_attach, %if.then178)) #7
          to label %do.end181 [label %if.then178], !srcloc !256

if.then178:                                       ; preds = %do.body172
  call void @__sanitizer_cov_trace_pc() #9
  %udev = getelementptr inbounds %struct.dvb_usb_device, ptr %add.ptr, i32 0, i32 5
  %27 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %udev, align 4
  %dev = getelementptr inbounds %struct.usb_device, ptr %28, i32 0, i32 15
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @anysee_frontend_attach.__UNIQUE_ID_ddebug402, ptr noundef %dev, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.20) #7
  br label %do.end181

do.end181:                                        ; preds = %if.then178, %do.body172
  %has_tda18212 = getelementptr inbounds %struct.anysee_state, ptr %3, i32 0, i32 4
  %29 = ptrtoint ptr %has_tda18212 to i32
  call void @__asan_load1_noabort(i32 %29)
  %bf.load = load i8, ptr %has_tda18212, align 4
  %bf.set = or i8 %bf.load, 32
  store i8 %bf.set, ptr %has_tda18212, align 4
  br label %if.end183

if.else182:                                       ; preds = %land.lhs.true.if.else182_crit_edge, %if.end163.if.else182_crit_edge
  %30 = ptrtoint ptr %tmp7 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 0, ptr %tmp7, align 1
  br label %if.end183

if.end183:                                        ; preds = %if.else182, %do.end181
  %call184 = call fastcc i32 @anysee_wr_reg_mask(ptr noundef %add.ptr, i16 noundef zeroext 177, i8 noundef zeroext 0, i8 noundef zeroext 16)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call184)
  %tobool185.not = icmp eq i32 %call184, 0
  br i1 %tobool185.not, label %if.end187, label %if.end183.error_crit_edge

if.end183.error_crit_edge:                        ; preds = %if.end183
  call void @__sanitizer_cov_trace_pc() #9
  br label %error

if.end187:                                        ; preds = %if.end183
  %call188 = call fastcc i32 @anysee_wr_reg_mask(ptr noundef %add.ptr, i16 noundef zeroext 176, i8 noundef zeroext 0, i8 noundef zeroext 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call188)
  %tobool189.not = icmp eq i32 %call188, 0
  br i1 %tobool189.not, label %if.end191, label %if.end187.error_crit_edge

if.end187.error_crit_edge:                        ; preds = %if.end187
  call void @__sanitizer_cov_trace_pc() #9
  br label %error

if.end191:                                        ; preds = %if.end187
  %call192 = call fastcc i32 @anysee_wr_reg_mask(ptr noundef %add.ptr, i16 noundef zeroext 176, i8 noundef zeroext 32, i8 noundef zeroext 32)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call192)
  %tobool193.not = icmp eq i32 %call192, 0
  br i1 %tobool193.not, label %if.end195, label %if.end191.error_crit_edge

if.end191.error_crit_edge:                        ; preds = %if.end191
  call void @__sanitizer_cov_trace_pc() #9
  br label %error

if.end195:                                        ; preds = %if.end191
  %31 = ptrtoint ptr %tmp7 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %tmp7, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -57, i8 %32)
  %cmp197 = icmp eq i8 %32, -57
  %call202 = call ptr @__symbol_get(ptr noundef nonnull @.str.28) #7
  %tobool203.not = icmp eq ptr %call202, null
  br i1 %cmp197, label %if.then199, label %if.else235

if.then199:                                       ; preds = %if.end195
  br i1 %tobool203.not, label %cond.end208, label %if.then199.if.then211_crit_edge

if.then199.if.then211_crit_edge:                  ; preds = %if.then199
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then211

cond.end208:                                      ; preds = %if.then199
  %call206 = call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.29) #7
  %call207 = call ptr @__symbol_get(ptr noundef nonnull @.str.28) #7
  %tobool210.not = icmp eq ptr %call207, null
  br i1 %tobool210.not, label %do.end221, label %cond.end208.if.then211_crit_edge

cond.end208.if.then211_crit_edge:                 ; preds = %cond.end208
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then211

if.then211:                                       ; preds = %cond.end208.if.then211_crit_edge, %if.then199.if.then211_crit_edge
  %cond209660 = phi ptr [ %call207, %cond.end208.if.then211_crit_edge ], [ %call202, %if.then199.if.then211_crit_edge ]
  %call213 = call ptr %cond209660(ptr noundef nonnull @anysee_tda10023_tda18212_config, ptr noundef %i2c_adap164, i8 noundef zeroext 72) #7
  %cmp214 = icmp eq ptr %call213, null
  br i1 %cmp214, label %if.then216, label %if.then231

if.then216:                                       ; preds = %if.then211
  call void @__sanitizer_cov_trace_pc() #9
  call void @__symbol_put(ptr noundef nonnull @.str.28) #7
  br label %if.end224.thread

do.end221:                                        ; preds = %cond.end208
  call void @__sanitizer_cov_trace_pc() #9
  %call223 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31) #10
  br label %if.end224.thread

if.end224.thread:                                 ; preds = %do.end221, %if.then216
  %fe226662 = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 14
  %33 = ptrtoint ptr %fe226662 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr null, ptr %fe226662, align 8
  br label %if.end264

if.then231:                                       ; preds = %if.then211
  call void @__sanitizer_cov_trace_pc() #9
  %fe226 = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 14
  %34 = ptrtoint ptr %fe226 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call213, ptr %fe226, align 8
  %i2c_gate_ctrl = getelementptr inbounds %struct.dvb_frontend, ptr %call213, i32 0, i32 1, i32 28
  %35 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @anysee_i2c_gate_ctrl, ptr %i2c_gate_ctrl, align 4
  br label %if.end264

if.else235:                                       ; preds = %if.end195
  br i1 %tobool203.not, label %cond.end244, label %if.else235.if.then247_crit_edge

if.else235.if.then247_crit_edge:                  ; preds = %if.else235
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then247

cond.end244:                                      ; preds = %if.else235
  %call242 = call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.29) #7
  %call243 = call ptr @__symbol_get(ptr noundef nonnull @.str.28) #7
  %tobool246.not = icmp eq ptr %call243, null
  br i1 %tobool246.not, label %do.end257, label %cond.end244.if.then247_crit_edge

cond.end244.if.then247_crit_edge:                 ; preds = %cond.end244
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then247

if.then247:                                       ; preds = %cond.end244.if.then247_crit_edge, %if.else235.if.then247_crit_edge
  %cond245666 = phi ptr [ %call243, %cond.end244.if.then247_crit_edge ], [ %call202, %if.else235.if.then247_crit_edge ]
  %call249 = call ptr %cond245666(ptr noundef nonnull @anysee_tda10023_config, ptr noundef %i2c_adap164, i8 noundef zeroext 72) #7
  %cmp250 = icmp eq ptr %call249, null
  br i1 %cmp250, label %if.then252, label %if.then247.if.end260_crit_edge

if.then247.if.end260_crit_edge:                   ; preds = %if.then247
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end260

if.then252:                                       ; preds = %if.then247
  call void @__sanitizer_cov_trace_pc() #9
  call void @__symbol_put(ptr noundef nonnull @.str.28) #7
  br label %if.end260

do.end257:                                        ; preds = %cond.end244
  call void @__sanitizer_cov_trace_pc() #9
  %call259 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31) #10
  br label %if.end260

if.end260:                                        ; preds = %do.end257, %if.then252, %if.then247.if.end260_crit_edge
  %__r236.0 = phi ptr [ null, %if.then252 ], [ %call249, %if.then247.if.end260_crit_edge ], [ null, %do.end257 ]
  %fe262 = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 14
  %36 = ptrtoint ptr %fe262 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %__r236.0, ptr %fe262, align 8
  br label %if.end264

if.end264:                                        ; preds = %if.end260, %if.then231, %if.end224.thread
  %fe265 = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 14
  %37 = ptrtoint ptr %fe265 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %fe265, align 8
  %tobool267.not = icmp eq ptr %38, null
  br i1 %tobool267.not, label %if.end264.sw.epilog_crit_edge, label %if.end269

if.end264.sw.epilog_crit_edge:                    ; preds = %if.end264
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end269:                                        ; preds = %if.end264
  %call270 = call fastcc i32 @anysee_wr_reg_mask(ptr noundef %add.ptr, i16 noundef zeroext 176, i8 noundef zeroext 0, i8 noundef zeroext 32)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call270)
  %tobool271.not = icmp eq i32 %call270, 0
  br i1 %tobool271.not, label %if.end273, label %if.end269.error_crit_edge

if.end269.error_crit_edge:                        ; preds = %if.end269
  call void @__sanitizer_cov_trace_pc() #9
  br label %error

if.end273:                                        ; preds = %if.end269
  %call274 = call fastcc i32 @anysee_wr_reg_mask(ptr noundef %add.ptr, i16 noundef zeroext 176, i8 noundef zeroext 1, i8 noundef zeroext 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call274)
  %tobool275.not = icmp eq i32 %call274, 0
  br i1 %tobool275.not, label %if.end277, label %if.end273.error_crit_edge

if.end273.error_crit_edge:                        ; preds = %if.end273
  call void @__sanitizer_cov_trace_pc() #9
  br label %error

if.end277:                                        ; preds = %if.end273
  %39 = ptrtoint ptr %tmp7 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %tmp7, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -57, i8 %40)
  %cmp279 = icmp eq i8 %40, -57
  %call284 = call ptr @__symbol_get(ptr noundef nonnull @.str.21) #7
  %tobool285.not = icmp eq ptr %call284, null
  br i1 %cmp279, label %if.then281, label %if.else319

if.then281:                                       ; preds = %if.end277
  br i1 %tobool285.not, label %cond.end290, label %if.then281.if.then293_crit_edge

if.then281.if.then293_crit_edge:                  ; preds = %if.then281
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then293

cond.end290:                                      ; preds = %if.then281
  %call288 = call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.22) #7
  %call289 = call ptr @__symbol_get(ptr noundef nonnull @.str.21) #7
  %tobool292.not = icmp eq ptr %call289, null
  br i1 %tobool292.not, label %do.end303, label %cond.end290.if.then293_crit_edge

cond.end290.if.then293_crit_edge:                 ; preds = %cond.end290
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then293

if.then293:                                       ; preds = %cond.end290.if.then293_crit_edge, %if.then281.if.then293_crit_edge
  %cond291669 = phi ptr [ %call289, %cond.end290.if.then293_crit_edge ], [ %call284, %if.then281.if.then293_crit_edge ]
  %call295 = call ptr %cond291669(ptr noundef nonnull @anysee_zl10353_tda18212_config2, ptr noundef %i2c_adap164) #7
  %cmp296 = icmp eq ptr %call295, null
  br i1 %cmp296, label %if.then298, label %if.then313

if.then298:                                       ; preds = %if.then293
  call void @__sanitizer_cov_trace_pc() #9
  call void @__symbol_put(ptr noundef nonnull @.str.21) #7
  br label %if.end306.thread

do.end303:                                        ; preds = %cond.end290
  call void @__sanitizer_cov_trace_pc() #9
  %call305 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24) #10
  br label %if.end306.thread

if.end306.thread:                                 ; preds = %do.end303, %if.then298
  %arrayidx309671 = getelementptr %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 14, i32 1
  %41 = ptrtoint ptr %arrayidx309671 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr null, ptr %arrayidx309671, align 4
  br label %sw.epilog

if.then313:                                       ; preds = %if.then293
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx309 = getelementptr %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 14, i32 1
  %42 = ptrtoint ptr %arrayidx309 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %call295, ptr %arrayidx309, align 4
  %i2c_gate_ctrl317 = getelementptr inbounds %struct.dvb_frontend, ptr %call295, i32 0, i32 1, i32 28
  %43 = ptrtoint ptr %i2c_gate_ctrl317 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr @anysee_i2c_gate_ctrl, ptr %i2c_gate_ctrl317, align 4
  br label %sw.epilog

if.else319:                                       ; preds = %if.end277
  br i1 %tobool285.not, label %cond.end328, label %if.else319.if.then331_crit_edge

if.else319.if.then331_crit_edge:                  ; preds = %if.else319
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then331

cond.end328:                                      ; preds = %if.else319
  %call326 = call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.22) #7
  %call327 = call ptr @__symbol_get(ptr noundef nonnull @.str.21) #7
  %tobool330.not = icmp eq ptr %call327, null
  br i1 %tobool330.not, label %do.end341, label %cond.end328.if.then331_crit_edge

cond.end328.if.then331_crit_edge:                 ; preds = %cond.end328
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then331

if.then331:                                       ; preds = %cond.end328.if.then331_crit_edge, %if.else319.if.then331_crit_edge
  %cond329675 = phi ptr [ %call327, %cond.end328.if.then331_crit_edge ], [ %call284, %if.else319.if.then331_crit_edge ]
  %call333 = call ptr %cond329675(ptr noundef nonnull @anysee_zl10353_config, ptr noundef %i2c_adap164) #7
  %cmp334 = icmp eq ptr %call333, null
  br i1 %cmp334, label %if.then336, label %if.then331.if.end344_crit_edge

if.then331.if.end344_crit_edge:                   ; preds = %if.then331
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end344

if.then336:                                       ; preds = %if.then331
  call void @__sanitizer_cov_trace_pc() #9
  call void @__symbol_put(ptr noundef nonnull @.str.21) #7
  br label %if.end344

do.end341:                                        ; preds = %cond.end328
  call void @__sanitizer_cov_trace_pc() #9
  %call343 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24) #10
  br label %if.end344

if.end344:                                        ; preds = %do.end341, %if.then336, %if.then331.if.end344_crit_edge
  %__r320.0 = phi ptr [ null, %if.then336 ], [ %call333, %if.then331.if.end344_crit_edge ], [ null, %do.end341 ]
  %arrayidx347 = getelementptr %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 14, i32 1
  %44 = ptrtoint ptr %arrayidx347 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %__r320.0, ptr %arrayidx347, align 4
  br label %sw.epilog

sw.bb349:                                         ; preds = %entry.sw.bb349_crit_edge, %entry.sw.bb349_crit_edge697
  %call350 = call fastcc i32 @anysee_wr_reg_mask(ptr noundef %add.ptr, i16 noundef zeroext 176, i8 noundef zeroext 0, i8 noundef zeroext 64)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call350)
  %tobool351.not = icmp eq i32 %call350, 0
  br i1 %tobool351.not, label %if.end353, label %sw.bb349.error_crit_edge

sw.bb349.error_crit_edge:                         ; preds = %sw.bb349
  call void @__sanitizer_cov_trace_pc() #9
  br label %error

if.end353:                                        ; preds = %sw.bb349
  %call354 = call fastcc i32 @anysee_wr_reg_mask(ptr noundef %add.ptr, i16 noundef zeroext 176, i8 noundef zeroext 32, i8 noundef zeroext 32)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call354)
  %tobool355.not = icmp eq i32 %call354, 0
  br i1 %tobool355.not, label %if.end357, label %if.end353.error_crit_edge

if.end353.error_crit_edge:                        ; preds = %if.end353
  call void @__sanitizer_cov_trace_pc() #9
  br label %error

if.end357:                                        ; preds = %if.end353
  %call360 = call ptr @__symbol_get(ptr noundef nonnull @.str.28) #7
  %tobool361.not = icmp eq ptr %call360, null
  br i1 %tobool361.not, label %cond.end366, label %if.end357.if.then369_crit_edge

if.end357.if.then369_crit_edge:                   ; preds = %if.end357
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then369

cond.end366:                                      ; preds = %if.end357
  %call364 = call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.29) #7
  %call365 = call ptr @__symbol_get(ptr noundef nonnull @.str.28) #7
  %tobool368.not = icmp eq ptr %call365, null
  br i1 %tobool368.not, label %do.end379, label %cond.end366.if.then369_crit_edge

cond.end366.if.then369_crit_edge:                 ; preds = %cond.end366
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then369

if.then369:                                       ; preds = %cond.end366.if.then369_crit_edge, %if.end357.if.then369_crit_edge
  %cond367678 = phi ptr [ %call365, %cond.end366.if.then369_crit_edge ], [ %call360, %if.end357.if.then369_crit_edge ]
  %i2c_adap370 = getelementptr inbounds %struct.dvb_usb_device, ptr %add.ptr, i32 0, i32 10
  %call371 = call ptr %cond367678(ptr noundef nonnull @anysee_tda10023_tda18212_config, ptr noundef %i2c_adap370, i8 noundef zeroext 72) #7
  %cmp372 = icmp eq ptr %call371, null
  br i1 %cmp372, label %if.then374, label %if.end394

if.then374:                                       ; preds = %if.then369
  call void @__sanitizer_cov_trace_pc() #9
  call void @__symbol_put(ptr noundef nonnull @.str.28) #7
  br label %if.end394.thread

do.end379:                                        ; preds = %cond.end366
  call void @__sanitizer_cov_trace_pc() #9
  %call381 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31) #10
  br label %if.end394.thread

if.end394.thread:                                 ; preds = %do.end379, %if.then374
  %fe384680 = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 14
  %45 = ptrtoint ptr %fe384680 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr null, ptr %fe384680, align 8
  br label %sw.epilog

if.end394:                                        ; preds = %if.then369
  %fe384 = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 14
  %46 = ptrtoint ptr %fe384 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %call371, ptr %fe384, align 8
  %i2c_gate_ctrl393 = getelementptr inbounds %struct.dvb_frontend, ptr %call371, i32 0, i32 1, i32 28
  %47 = ptrtoint ptr %i2c_gate_ctrl393 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr @anysee_i2c_gate_ctrl, ptr %i2c_gate_ctrl393, align 4
  %.pr = load ptr, ptr %fe384, align 8
  %tobool397.not = icmp eq ptr %.pr, null
  br i1 %tobool397.not, label %if.end394.sw.epilog_crit_edge, label %if.end399

if.end394.sw.epilog_crit_edge:                    ; preds = %if.end394
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end399:                                        ; preds = %if.end394
  %call400 = call fastcc i32 @anysee_wr_reg_mask(ptr noundef %add.ptr, i16 noundef zeroext 176, i8 noundef zeroext 0, i8 noundef zeroext 32)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call400)
  %tobool401.not = icmp eq i32 %call400, 0
  br i1 %tobool401.not, label %if.end403, label %if.end399.error_crit_edge

if.end399.error_crit_edge:                        ; preds = %if.end399
  call void @__sanitizer_cov_trace_pc() #9
  br label %error

if.end403:                                        ; preds = %if.end399
  %call404 = call fastcc i32 @anysee_wr_reg_mask(ptr noundef %add.ptr, i16 noundef zeroext 176, i8 noundef zeroext 64, i8 noundef zeroext 64)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call404)
  %tobool405.not = icmp eq i32 %call404, 0
  br i1 %tobool405.not, label %if.end407, label %if.end403.error_crit_edge

if.end403.error_crit_edge:                        ; preds = %if.end403
  call void @__sanitizer_cov_trace_pc() #9
  br label %error

if.end407:                                        ; preds = %if.end403
  %call410 = call ptr @__symbol_get(ptr noundef nonnull @.str.21) #7
  %tobool411.not = icmp eq ptr %call410, null
  br i1 %tobool411.not, label %cond.end416, label %if.end407.if.then419_crit_edge

if.end407.if.then419_crit_edge:                   ; preds = %if.end407
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then419

cond.end416:                                      ; preds = %if.end407
  %call414 = call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.22) #7
  %call415 = call ptr @__symbol_get(ptr noundef nonnull @.str.21) #7
  %tobool418.not = icmp eq ptr %call415, null
  br i1 %tobool418.not, label %do.end429, label %cond.end416.if.then419_crit_edge

cond.end416.if.then419_crit_edge:                 ; preds = %cond.end416
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then419

if.then419:                                       ; preds = %cond.end416.if.then419_crit_edge, %if.end407.if.then419_crit_edge
  %cond417687 = phi ptr [ %call415, %cond.end416.if.then419_crit_edge ], [ %call410, %if.end407.if.then419_crit_edge ]
  %call421 = call ptr %cond417687(ptr noundef nonnull @anysee_zl10353_tda18212_config, ptr noundef %i2c_adap370) #7
  %cmp422 = icmp eq ptr %call421, null
  br i1 %cmp422, label %if.then424, label %if.then439

if.then424:                                       ; preds = %if.then419
  call void @__sanitizer_cov_trace_pc() #9
  call void @__symbol_put(ptr noundef nonnull @.str.21) #7
  br label %if.end432.thread

do.end429:                                        ; preds = %cond.end416
  call void @__sanitizer_cov_trace_pc() #9
  %call431 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24) #10
  br label %if.end432.thread

if.end432.thread:                                 ; preds = %do.end429, %if.then424
  %arrayidx435689 = getelementptr %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 14, i32 1
  %48 = ptrtoint ptr %arrayidx435689 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr null, ptr %arrayidx435689, align 4
  br label %if.end444

if.then439:                                       ; preds = %if.then419
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx435 = getelementptr %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 14, i32 1
  %49 = ptrtoint ptr %arrayidx435 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %call421, ptr %arrayidx435, align 4
  %i2c_gate_ctrl443 = getelementptr inbounds %struct.dvb_frontend, ptr %call421, i32 0, i32 1, i32 28
  %50 = ptrtoint ptr %i2c_gate_ctrl443 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr @anysee_i2c_gate_ctrl, ptr %i2c_gate_ctrl443, align 4
  br label %if.end444

if.end444:                                        ; preds = %if.then439, %if.end432.thread
  %has_ci = getelementptr inbounds %struct.anysee_state, ptr %3, i32 0, i32 4
  %51 = ptrtoint ptr %has_ci to i32
  call void @__asan_load1_noabort(i32 %51)
  %bf.load445 = load i8, ptr %has_ci, align 4
  %bf.set447 = or i8 %bf.load445, 64
  store i8 %bf.set447, ptr %has_ci, align 4
  br label %sw.epilog

sw.bb448:                                         ; preds = %entry.sw.bb448_crit_edge, %entry.sw.bb448_crit_edge698
  %call449 = call fastcc i32 @anysee_wr_reg_mask(ptr noundef %add.ptr, i16 noundef zeroext 177, i8 noundef zeroext 32, i8 noundef zeroext 32)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call449)
  %tobool450.not = icmp eq i32 %call449, 0
  br i1 %tobool450.not, label %if.end452, label %sw.bb448.error_crit_edge

sw.bb448.error_crit_edge:                         ; preds = %sw.bb448
  call void @__sanitizer_cov_trace_pc() #9
  br label %error

if.end452:                                        ; preds = %sw.bb448
  %call455 = call ptr @__symbol_get(ptr noundef nonnull @.str.51) #7
  %tobool456.not = icmp eq ptr %call455, null
  br i1 %tobool456.not, label %cond.end461, label %if.end452.if.then464_crit_edge

if.end452.if.then464_crit_edge:                   ; preds = %if.end452
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then464

cond.end461:                                      ; preds = %if.end452
  %call459 = call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.52) #7
  %call460 = call ptr @__symbol_get(ptr noundef nonnull @.str.51) #7
  %tobool463.not = icmp eq ptr %call460, null
  br i1 %tobool463.not, label %do.end474, label %cond.end461.if.then464_crit_edge

cond.end461.if.then464_crit_edge:                 ; preds = %cond.end461
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then464

if.then464:                                       ; preds = %cond.end461.if.then464_crit_edge, %if.end452.if.then464_crit_edge
  %cond462693 = phi ptr [ %call460, %cond.end461.if.then464_crit_edge ], [ %call455, %if.end452.if.then464_crit_edge ]
  %i2c_adap465 = getelementptr inbounds %struct.dvb_usb_device, ptr %add.ptr, i32 0, i32 10
  %call466 = call ptr %cond462693(ptr noundef nonnull @anysee_stv0900_config, ptr noundef %i2c_adap465, i32 noundef 0) #7
  %cmp467 = icmp eq ptr %call466, null
  br i1 %cmp467, label %if.then469, label %if.then464.if.end477_crit_edge

if.then464.if.end477_crit_edge:                   ; preds = %if.then464
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end477

if.then469:                                       ; preds = %if.then464
  call void @__sanitizer_cov_trace_pc() #9
  call void @__symbol_put(ptr noundef nonnull @.str.51) #7
  br label %if.end477

do.end474:                                        ; preds = %cond.end461
  call void @__sanitizer_cov_trace_pc() #9
  %call476 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54) #10
  br label %if.end477

if.end477:                                        ; preds = %do.end474, %if.then469, %if.then464.if.end477_crit_edge
  %__r453.0 = phi ptr [ null, %if.then469 ], [ %call466, %if.then464.if.end477_crit_edge ], [ null, %do.end474 ]
  %fe479 = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 14
  %52 = ptrtoint ptr %fe479 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %__r453.0, ptr %fe479, align 8
  %has_ci481 = getelementptr inbounds %struct.anysee_state, ptr %3, i32 0, i32 4
  %53 = ptrtoint ptr %has_ci481 to i32
  call void @__asan_load1_noabort(i32 %53)
  %bf.load482 = load i8, ptr %has_ci481, align 4
  %bf.set484 = or i8 %bf.load482, 64
  store i8 %bf.set484, ptr %has_ci481, align 4
  br label %sw.epilog

sw.bb485:                                         ; preds = %entry
  %call486 = call fastcc i32 @anysee_wr_reg_mask(ptr noundef %add.ptr, i16 noundef zeroext 177, i8 noundef zeroext 32, i8 noundef zeroext 32)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call486)
  %tobool487.not = icmp eq i32 %call486, 0
  br i1 %tobool487.not, label %if.end489, label %sw.bb485.error_crit_edge

sw.bb485.error_crit_edge:                         ; preds = %sw.bb485
  call void @__sanitizer_cov_trace_pc() #9
  br label %error

if.end489:                                        ; preds = %sw.bb485
  %call492 = call ptr @__symbol_get(ptr noundef nonnull @.str.56) #7
  %tobool493.not = icmp eq ptr %call492, null
  br i1 %tobool493.not, label %cond.end498, label %if.end489.if.then501_crit_edge

if.end489.if.then501_crit_edge:                   ; preds = %if.end489
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then501

cond.end498:                                      ; preds = %if.end489
  %call496 = call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.57) #7
  %call497 = call ptr @__symbol_get(ptr noundef nonnull @.str.56) #7
  %tobool500.not = icmp eq ptr %call497, null
  br i1 %tobool500.not, label %do.end511, label %cond.end498.if.then501_crit_edge

cond.end498.if.then501_crit_edge:                 ; preds = %cond.end498
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then501

if.then501:                                       ; preds = %cond.end498.if.then501_crit_edge, %if.end489.if.then501_crit_edge
  %cond499696 = phi ptr [ %call497, %cond.end498.if.then501_crit_edge ], [ %call492, %if.end489.if.then501_crit_edge ]
  %i2c_adap502 = getelementptr inbounds %struct.dvb_usb_device, ptr %add.ptr, i32 0, i32 10
  %call503 = call ptr %cond499696(ptr noundef nonnull @anysee_cxd2820r_config, ptr noundef %i2c_adap502, ptr noundef null) #7
  %cmp504 = icmp eq ptr %call503, null
  br i1 %cmp504, label %if.then506, label %if.then501.if.end514_crit_edge

if.then501.if.end514_crit_edge:                   ; preds = %if.then501
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end514

if.then506:                                       ; preds = %if.then501
  call void @__sanitizer_cov_trace_pc() #9
  call void @__symbol_put(ptr noundef nonnull @.str.56) #7
  br label %if.end514

do.end511:                                        ; preds = %cond.end498
  call void @__sanitizer_cov_trace_pc() #9
  %call513 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.59) #10
  br label %if.end514

if.end514:                                        ; preds = %do.end511, %if.then506, %if.then501.if.end514_crit_edge
  %__r490.0 = phi ptr [ null, %if.then506 ], [ %call503, %if.then501.if.end514_crit_edge ], [ null, %do.end511 ]
  %fe516 = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 14
  %54 = ptrtoint ptr %fe516 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %__r490.0, ptr %fe516, align 8
  %has_ci518 = getelementptr inbounds %struct.anysee_state, ptr %3, i32 0, i32 4
  %55 = ptrtoint ptr %has_ci518 to i32
  call void @__asan_load1_noabort(i32 %55)
  %bf.load519 = load i8, ptr %has_ci518, align 4
  %bf.set521 = or i8 %bf.load519, 64
  store i8 %bf.set521, ptr %has_ci518, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end514, %if.end477, %if.end444, %if.end394.sw.epilog_crit_edge, %if.end394.thread, %if.end344, %if.then313, %if.end306.thread, %if.end264.sw.epilog_crit_edge, %if.end155, %if.end122, %if.end89, %if.end52, %if.end21, %entry.sw.epilog_crit_edge
  %fe522 = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 14
  %56 = ptrtoint ptr %fe522 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %fe522, align 8
  %tobool524.not = icmp eq ptr %57, null
  br i1 %tobool524.not, label %if.then525, label %sw.epilog.error_crit_edge

sw.epilog.error_crit_edge:                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %error

if.then525:                                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  %udev529 = getelementptr inbounds %struct.dvb_usb_device, ptr %add.ptr, i32 0, i32 5
  %58 = ptrtoint ptr %udev529 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %udev529, align 4
  %dev530 = getelementptr inbounds %struct.usb_device, ptr %59, i32 0, i32 15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev530, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str) #10
  br label %error

error:                                            ; preds = %if.then525, %sw.epilog.error_crit_edge, %sw.bb485.error_crit_edge, %sw.bb448.error_crit_edge, %if.end403.error_crit_edge, %if.end399.error_crit_edge, %if.end353.error_crit_edge, %sw.bb349.error_crit_edge, %if.end273.error_crit_edge, %if.end269.error_crit_edge, %if.end191.error_crit_edge, %if.end187.error_crit_edge, %if.end183.error_crit_edge, %sw.bb159.error_crit_edge, %sw.bb126.error_crit_edge, %sw.bb93.error_crit_edge, %if.end60.error_crit_edge, %sw.bb56.error_crit_edge
  %ret.1 = phi i32 [ 0, %sw.epilog.error_crit_edge ], [ -19, %if.then525 ], [ %call486, %sw.bb485.error_crit_edge ], [ %call449, %sw.bb448.error_crit_edge ], [ %call350, %sw.bb349.error_crit_edge ], [ %call354, %if.end353.error_crit_edge ], [ %call400, %if.end399.error_crit_edge ], [ %call404, %if.end403.error_crit_edge ], [ %call160, %sw.bb159.error_crit_edge ], [ %call184, %if.end183.error_crit_edge ], [ %call188, %if.end187.error_crit_edge ], [ %call192, %if.end191.error_crit_edge ], [ %call270, %if.end269.error_crit_edge ], [ %call274, %if.end273.error_crit_edge ], [ %call127, %sw.bb126.error_crit_edge ], [ %call94, %sw.bb93.error_crit_edge ], [ %call57, %sw.bb56.error_crit_edge ], [ %call61, %if.end60.error_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp7) #7
  ret i32 %ret.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @anysee_tuner_attach(ptr noundef %adap) #2 align 64 {
entry:
  %tda18212_config = alloca %struct.tda18212_config, align 4
  %tda18212_config206 = alloca %struct.tda18212_config, align 4
  %tda18212_config295 = alloca %struct.tda18212_config, align 4
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
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @anysee_tuner_attach.__UNIQUE_ID_ddebug403, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@anysee_tuner_attach, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !256

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %udev = getelementptr inbounds %struct.dvb_usb_device, ptr %add.ptr, i32 0, i32 5
  %4 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %udev, align 4
  %dev = getelementptr inbounds %struct.usb_device, ptr %5, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @anysee_tuner_attach.__UNIQUE_ID_ddebug403, ptr noundef %dev, ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.67) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %hw = getelementptr inbounds %struct.anysee_state, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %hw to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %hw, align 1
  %8 = zext i8 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.109)
  switch i8 %7, label %do.end.sw.epilog_crit_edge [
    i8 2, label %sw.bb
    i8 6, label %sw.bb29
    i8 10, label %sw.bb57
    i8 11, label %sw.bb86
    i8 15, label %sw.bb115
    i8 18, label %do.end.sw.bb205_crit_edge
    i8 21, label %do.end.sw.bb205_crit_edge410
    i8 19, label %do.end.sw.bb234_crit_edge
    i8 22, label %do.end.sw.bb234_crit_edge411
    i8 20, label %sw.bb294
  ]

do.end.sw.bb234_crit_edge411:                     ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb234

do.end.sw.bb234_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb234

do.end.sw.bb205_crit_edge410:                     ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb205

do.end.sw.bb205_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb205

do.end.sw.epilog_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %do.end
  %call11 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.69) #7
  %tobool12.not = icmp eq ptr %call11, null
  br i1 %tobool12.not, label %cond.end, label %sw.bb.if.then16_crit_edge

sw.bb.if.then16_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then16

cond.end:                                         ; preds = %sw.bb
  %call13 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.70) #7
  %call14 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.69) #7
  %tobool15.not = icmp eq ptr %call14, null
  br i1 %tobool15.not, label %do.end24, label %cond.end.if.then16_crit_edge

cond.end.if.then16_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then16

if.then16:                                        ; preds = %cond.end.if.then16_crit_edge, %sw.bb.if.then16_crit_edge
  %cond384 = phi ptr [ %call14, %cond.end.if.then16_crit_edge ], [ %call11, %sw.bb.if.then16_crit_edge ]
  %fe17 = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 14
  %9 = ptrtoint ptr %fe17 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %fe17, align 8
  %call18 = tail call ptr %cond384(ptr noundef %10, i32 noundef 97, ptr noundef null, i32 noundef 1) #7
  %cmp = icmp eq ptr %call18, null
  br i1 %cmp, label %if.then20, label %if.then16.sw.epilog_crit_edge

if.then16.sw.epilog_crit_edge:                    ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.then20:                                        ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__symbol_put(ptr noundef nonnull @.str.69) #7
  br label %sw.epilog

do.end24:                                         ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #9
  %call26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.71) #10
  br label %sw.epilog

sw.bb29:                                          ; preds = %do.end
  %call32 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.69) #7
  %tobool33.not = icmp eq ptr %call32, null
  br i1 %tobool33.not, label %cond.end38, label %sw.bb29.if.then41_crit_edge

sw.bb29.if.then41_crit_edge:                      ; preds = %sw.bb29
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then41

cond.end38:                                       ; preds = %sw.bb29
  %call36 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.70) #7
  %call37 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.69) #7
  %tobool40.not = icmp eq ptr %call37, null
  br i1 %tobool40.not, label %do.end52, label %cond.end38.if.then41_crit_edge

cond.end38.if.then41_crit_edge:                   ; preds = %cond.end38
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then41

if.then41:                                        ; preds = %cond.end38.if.then41_crit_edge, %sw.bb29.if.then41_crit_edge
  %cond39387 = phi ptr [ %call37, %cond.end38.if.then41_crit_edge ], [ %call32, %sw.bb29.if.then41_crit_edge ]
  %fe42 = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 14
  %11 = ptrtoint ptr %fe42 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %fe42, align 8
  %i2c_adap = getelementptr inbounds %struct.dvb_usb_device, ptr %add.ptr, i32 0, i32 10
  %call44 = tail call ptr %cond39387(ptr noundef %12, i32 noundef 97, ptr noundef %i2c_adap, i32 noundef 1) #7
  %cmp45 = icmp eq ptr %call44, null
  br i1 %cmp45, label %if.then47, label %if.then41.sw.epilog_crit_edge

if.then41.sw.epilog_crit_edge:                    ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.then47:                                        ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__symbol_put(ptr noundef nonnull @.str.69) #7
  br label %sw.epilog

do.end52:                                         ; preds = %cond.end38
  call void @__sanitizer_cov_trace_pc() #9
  %call54 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.71) #10
  br label %sw.epilog

sw.bb57:                                          ; preds = %do.end
  %call60 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.69) #7
  %tobool61.not = icmp eq ptr %call60, null
  br i1 %tobool61.not, label %cond.end66, label %sw.bb57.if.then69_crit_edge

sw.bb57.if.then69_crit_edge:                      ; preds = %sw.bb57
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then69

cond.end66:                                       ; preds = %sw.bb57
  %call64 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.70) #7
  %call65 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.69) #7
  %tobool68.not = icmp eq ptr %call65, null
  br i1 %tobool68.not, label %do.end81, label %cond.end66.if.then69_crit_edge

cond.end66.if.then69_crit_edge:                   ; preds = %cond.end66
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then69

if.then69:                                        ; preds = %cond.end66.if.then69_crit_edge, %sw.bb57.if.then69_crit_edge
  %cond67390 = phi ptr [ %call65, %cond.end66.if.then69_crit_edge ], [ %call60, %sw.bb57.if.then69_crit_edge ]
  %fe70 = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 14
  %13 = ptrtoint ptr %fe70 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %fe70, align 8
  %i2c_adap72 = getelementptr inbounds %struct.dvb_usb_device, ptr %add.ptr, i32 0, i32 10
  %call73 = tail call ptr %cond67390(ptr noundef %14, i32 noundef 96, ptr noundef %i2c_adap72, i32 noundef 14) #7
  %cmp74 = icmp eq ptr %call73, null
  br i1 %cmp74, label %if.then76, label %if.then69.sw.epilog_crit_edge

if.then69.sw.epilog_crit_edge:                    ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.then76:                                        ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__symbol_put(ptr noundef nonnull @.str.69) #7
  br label %sw.epilog

do.end81:                                         ; preds = %cond.end66
  call void @__sanitizer_cov_trace_pc() #9
  %call83 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.71) #10
  br label %sw.epilog

sw.bb86:                                          ; preds = %do.end
  %call89 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.76) #7
  %tobool90.not = icmp eq ptr %call89, null
  br i1 %tobool90.not, label %cond.end95, label %sw.bb86.if.then98_crit_edge

sw.bb86.if.then98_crit_edge:                      ; preds = %sw.bb86
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then98

cond.end95:                                       ; preds = %sw.bb86
  %call93 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.77) #7
  %call94 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.76) #7
  %tobool97.not = icmp eq ptr %call94, null
  br i1 %tobool97.not, label %do.end110, label %cond.end95.if.then98_crit_edge

cond.end95.if.then98_crit_edge:                   ; preds = %cond.end95
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then98

if.then98:                                        ; preds = %cond.end95.if.then98_crit_edge, %sw.bb86.if.then98_crit_edge
  %cond96393 = phi ptr [ %call94, %cond.end95.if.then98_crit_edge ], [ %call89, %sw.bb86.if.then98_crit_edge ]
  %fe99 = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 14
  %15 = ptrtoint ptr %fe99 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %fe99, align 8
  %i2c_adap101 = getelementptr inbounds %struct.dvb_usb_device, ptr %add.ptr, i32 0, i32 10
  %call102 = tail call ptr %cond96393(ptr noundef %16, ptr noundef %i2c_adap101, ptr noundef nonnull @anysee_isl6423_config) #7
  %cmp103 = icmp eq ptr %call102, null
  br i1 %cmp103, label %if.then105, label %if.then98.sw.epilog_crit_edge

if.then98.sw.epilog_crit_edge:                    ; preds = %if.then98
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.then105:                                       ; preds = %if.then98
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__symbol_put(ptr noundef nonnull @.str.76) #7
  br label %sw.epilog

do.end110:                                        ; preds = %cond.end95
  call void @__sanitizer_cov_trace_pc() #9
  %call112 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.79) #10
  br label %sw.epilog

sw.bb115:                                         ; preds = %do.end
  %has_tda18212 = getelementptr inbounds %struct.anysee_state, ptr %3, i32 0, i32 4
  %17 = ptrtoint ptr %has_tda18212 to i32
  call void @__asan_load1_noabort(i32 %17)
  %bf.load = load i8, ptr %has_tda18212, align 4
  %18 = and i8 %bf.load, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool116.not = icmp eq i8 %18, 0
  br i1 %tobool116.not, label %if.else141, label %if.then117

if.then117:                                       ; preds = %sw.bb115
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %tda18212_config) #7
  %19 = getelementptr inbounds %struct.tda18212_config, ptr %tda18212_config, i32 0, i32 10
  %20 = call ptr @memcpy(ptr %tda18212_config, ptr @anysee_tda18212_config, i32 20)
  %fe118 = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 14
  %21 = ptrtoint ptr %fe118 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %fe118, align 8
  %23 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %22, ptr %19, align 4
  %call121 = call fastcc i32 @anysee_add_i2c_dev(ptr noundef %add.ptr, ptr noundef nonnull %tda18212_config)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call121)
  %tobool122.not = icmp eq i32 %call121, 0
  br i1 %tobool122.not, label %if.end124, label %err.critedge

if.end124:                                        ; preds = %if.then117
  %arrayidx126 = getelementptr %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 14, i32 1
  %24 = ptrtoint ptr %arrayidx126 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx126, align 4
  %tobool127.not = icmp eq ptr %25, null
  br i1 %tobool127.not, label %cleanup310.critedge, label %if.then128

if.then128:                                       ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #9
  %26 = ptrtoint ptr %fe118 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %fe118, align 8
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %27, i32 0, i32 4
  %28 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %tuner_priv, align 4
  %tuner_priv133 = getelementptr inbounds %struct.dvb_frontend, ptr %25, i32 0, i32 4
  %30 = ptrtoint ptr %tuner_priv133 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %29, ptr %tuner_priv133, align 4
  %31 = ptrtoint ptr %arrayidx126 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx126, align 4
  %tuner_ops = getelementptr inbounds %struct.dvb_frontend, ptr %32, i32 0, i32 1, i32 32
  %33 = load ptr, ptr %fe118, align 8
  %tuner_ops139 = getelementptr inbounds %struct.dvb_frontend, ptr %33, i32 0, i32 1, i32 32
  %34 = call ptr @memcpy(ptr %tuner_ops, ptr %tuner_ops139, i32 220)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %tda18212_config) #7
  br label %cleanup310

if.else141:                                       ; preds = %sw.bb115
  %call144 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.69) #7
  %tobool145.not = icmp eq ptr %call144, null
  br i1 %tobool145.not, label %cond.end150, label %if.else141.if.then153_crit_edge

if.else141.if.then153_crit_edge:                  ; preds = %if.else141
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then153

cond.end150:                                      ; preds = %if.else141
  %call148 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.70) #7
  %call149 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.69) #7
  %tobool152.not = icmp eq ptr %call149, null
  br i1 %tobool152.not, label %do.end165, label %cond.end150.if.then153_crit_edge

cond.end150.if.then153_crit_edge:                 ; preds = %cond.end150
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then153

if.then153:                                       ; preds = %cond.end150.if.then153_crit_edge, %if.else141.if.then153_crit_edge
  %cond151396 = phi ptr [ %call149, %cond.end150.if.then153_crit_edge ], [ %call144, %if.else141.if.then153_crit_edge ]
  %fe154 = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 14
  %35 = ptrtoint ptr %fe154 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %fe154, align 8
  %i2c_adap156 = getelementptr inbounds %struct.dvb_usb_device, ptr %add.ptr, i32 0, i32 10
  %call157 = tail call ptr %cond151396(ptr noundef %36, i32 noundef 96, ptr noundef %i2c_adap156, i32 noundef 14) #7
  %cmp158 = icmp eq ptr %call157, null
  br i1 %cmp158, label %if.then160, label %land.lhs.true

if.then160:                                       ; preds = %if.then153
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__symbol_put(ptr noundef nonnull @.str.69) #7
  br label %sw.epilog

do.end165:                                        ; preds = %cond.end150
  call void @__sanitizer_cov_trace_pc() #9
  %call167 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.71) #10
  br label %sw.epilog

land.lhs.true:                                    ; preds = %if.then153
  %arrayidx172 = getelementptr %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 14, i32 1
  %37 = ptrtoint ptr %arrayidx172 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %arrayidx172, align 4
  %tobool173.not = icmp eq ptr %38, null
  br i1 %tobool173.not, label %land.lhs.true.sw.epilog_crit_edge, label %if.then174

land.lhs.true.sw.epilog_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.then174:                                       ; preds = %land.lhs.true
  %call177 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.69) #7
  %tobool178.not = icmp eq ptr %call177, null
  br i1 %tobool178.not, label %cond.end183, label %if.then174.if.then186_crit_edge

if.then174.if.then186_crit_edge:                  ; preds = %if.then174
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then186

cond.end183:                                      ; preds = %if.then174
  %call181 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.70) #7
  %call182 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.69) #7
  %tobool185.not = icmp eq ptr %call182, null
  br i1 %tobool185.not, label %do.end198, label %cond.end183.if.then186_crit_edge

cond.end183.if.then186_crit_edge:                 ; preds = %cond.end183
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then186

if.then186:                                       ; preds = %cond.end183.if.then186_crit_edge, %if.then174.if.then186_crit_edge
  %cond184401 = phi ptr [ %call182, %cond.end183.if.then186_crit_edge ], [ %call177, %if.then174.if.then186_crit_edge ]
  %39 = ptrtoint ptr %arrayidx172 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %arrayidx172, align 4
  %call190 = tail call ptr %cond184401(ptr noundef %40, i32 noundef 96, ptr noundef %i2c_adap156, i32 noundef 14) #7
  %cmp191 = icmp eq ptr %call190, null
  br i1 %cmp191, label %if.then193, label %if.then186.sw.epilog_crit_edge

if.then186.sw.epilog_crit_edge:                   ; preds = %if.then186
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.then193:                                       ; preds = %if.then186
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__symbol_put(ptr noundef nonnull @.str.69) #7
  br label %sw.epilog

do.end198:                                        ; preds = %cond.end183
  call void @__sanitizer_cov_trace_pc() #9
  %call200 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.71) #10
  br label %sw.epilog

sw.bb205:                                         ; preds = %do.end.sw.bb205_crit_edge, %do.end.sw.bb205_crit_edge410
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %tda18212_config206) #7
  %41 = getelementptr inbounds %struct.tda18212_config, ptr %tda18212_config206, i32 0, i32 10
  %42 = call ptr @memcpy(ptr %tda18212_config206, ptr @anysee_tda18212_config, i32 20)
  %fe207 = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 14
  %43 = ptrtoint ptr %fe207 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %fe207, align 8
  %45 = ptrtoint ptr %41 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %44, ptr %41, align 4
  %call210 = call fastcc i32 @anysee_add_i2c_dev(ptr noundef %add.ptr, ptr noundef nonnull %tda18212_config206)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call210)
  %tobool211.not = icmp eq i32 %call210, 0
  br i1 %tobool211.not, label %if.end213, label %err.critedge380

if.end213:                                        ; preds = %sw.bb205
  %arrayidx215 = getelementptr %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 14, i32 1
  %46 = ptrtoint ptr %arrayidx215 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %arrayidx215, align 4
  %tobool216.not = icmp eq ptr %47, null
  br i1 %tobool216.not, label %cleanup310.critedge378, label %if.then217

if.then217:                                       ; preds = %if.end213
  call void @__sanitizer_cov_trace_pc() #9
  %48 = ptrtoint ptr %fe207 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %fe207, align 8
  %tuner_priv220 = getelementptr inbounds %struct.dvb_frontend, ptr %49, i32 0, i32 4
  %50 = ptrtoint ptr %tuner_priv220 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %tuner_priv220, align 4
  %tuner_priv223 = getelementptr inbounds %struct.dvb_frontend, ptr %47, i32 0, i32 4
  %52 = ptrtoint ptr %tuner_priv223 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %51, ptr %tuner_priv223, align 4
  %53 = ptrtoint ptr %arrayidx215 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %arrayidx215, align 4
  %tuner_ops227 = getelementptr inbounds %struct.dvb_frontend, ptr %54, i32 0, i32 1, i32 32
  %55 = load ptr, ptr %fe207, align 8
  %tuner_ops231 = getelementptr inbounds %struct.dvb_frontend, ptr %55, i32 0, i32 1, i32 32
  %56 = call ptr @memcpy(ptr %tuner_ops227, ptr %tuner_ops231, i32 220)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %tda18212_config206) #7
  br label %cleanup310

sw.bb234:                                         ; preds = %do.end.sw.bb234_crit_edge, %do.end.sw.bb234_crit_edge411
  %call237 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.86) #7
  %tobool238.not = icmp eq ptr %call237, null
  br i1 %tobool238.not, label %cond.end243, label %sw.bb234.if.then246_crit_edge

sw.bb234.if.then246_crit_edge:                    ; preds = %sw.bb234
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then246

cond.end243:                                      ; preds = %sw.bb234
  %call241 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.87) #7
  %call242 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.86) #7
  %tobool245.not = icmp eq ptr %call242, null
  br i1 %tobool245.not, label %do.end258, label %cond.end243.if.then246_crit_edge

cond.end243.if.then246_crit_edge:                 ; preds = %cond.end243
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then246

if.then246:                                       ; preds = %cond.end243.if.then246_crit_edge, %sw.bb234.if.then246_crit_edge
  %cond244404 = phi ptr [ %call242, %cond.end243.if.then246_crit_edge ], [ %call237, %sw.bb234.if.then246_crit_edge ]
  %fe247 = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 14
  %57 = ptrtoint ptr %fe247 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %fe247, align 8
  %i2c_adap249 = getelementptr inbounds %struct.dvb_usb_device, ptr %add.ptr, i32 0, i32 10
  %call250 = tail call ptr %cond244404(ptr noundef %58, ptr noundef nonnull @anysee_stv6110_config, ptr noundef %i2c_adap249) #7
  %cmp251 = icmp eq ptr %call250, null
  br i1 %cmp251, label %if.then253, label %if.then264

if.then253:                                       ; preds = %if.then246
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__symbol_put(ptr noundef nonnull @.str.86) #7
  br label %sw.epilog

do.end258:                                        ; preds = %cond.end243
  call void @__sanitizer_cov_trace_pc() #9
  %call260 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.89) #10
  br label %sw.epilog

if.then264:                                       ; preds = %if.then246
  %call267 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.76) #7
  %tobool268.not = icmp eq ptr %call267, null
  br i1 %tobool268.not, label %cond.end273, label %if.then264.if.then276_crit_edge

if.then264.if.then276_crit_edge:                  ; preds = %if.then264
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then276

cond.end273:                                      ; preds = %if.then264
  %call271 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.77) #7
  %call272 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.76) #7
  %tobool275.not = icmp eq ptr %call272, null
  br i1 %tobool275.not, label %do.end288, label %cond.end273.if.then276_crit_edge

cond.end273.if.then276_crit_edge:                 ; preds = %cond.end273
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then276

if.then276:                                       ; preds = %cond.end273.if.then276_crit_edge, %if.then264.if.then276_crit_edge
  %cond274409 = phi ptr [ %call272, %cond.end273.if.then276_crit_edge ], [ %call267, %if.then264.if.then276_crit_edge ]
  %59 = ptrtoint ptr %fe247 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %fe247, align 8
  %call280 = tail call ptr %cond274409(ptr noundef %60, ptr noundef %i2c_adap249, ptr noundef nonnull @anysee_isl6423_config) #7
  %cmp281 = icmp eq ptr %call280, null
  br i1 %cmp281, label %if.then283, label %if.then276.sw.epilog_crit_edge

if.then276.sw.epilog_crit_edge:                   ; preds = %if.then276
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.then283:                                       ; preds = %if.then276
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__symbol_put(ptr noundef nonnull @.str.76) #7
  br label %sw.epilog

do.end288:                                        ; preds = %cond.end273
  call void @__sanitizer_cov_trace_pc() #9
  %call290 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.79) #10
  br label %sw.epilog

sw.bb294:                                         ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %tda18212_config295) #7
  %61 = getelementptr inbounds %struct.tda18212_config, ptr %tda18212_config295, i32 0, i32 10
  %62 = call ptr @memcpy(ptr %tda18212_config295, ptr @anysee_tda18212_config2, i32 20)
  %fe296 = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 14
  %63 = ptrtoint ptr %fe296 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %fe296, align 8
  %65 = ptrtoint ptr %61 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %64, ptr %61, align 4
  %call299 = call fastcc i32 @anysee_add_i2c_dev(ptr noundef %add.ptr, ptr noundef nonnull %tda18212_config295)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call299)
  %tobool300.not = icmp eq i32 %call299, 0
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %tda18212_config295) #7
  br i1 %tobool300.not, label %sw.bb294.cleanup310_crit_edge, label %sw.bb294.err_crit_edge

sw.bb294.err_crit_edge:                           ; preds = %sw.bb294
  call void @__sanitizer_cov_trace_pc() #9
  br label %err

sw.bb294.cleanup310_crit_edge:                    ; preds = %sw.bb294
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup310

sw.epilog:                                        ; preds = %do.end288, %if.then283, %if.then276.sw.epilog_crit_edge, %do.end258, %if.then253, %do.end198, %if.then193, %if.then186.sw.epilog_crit_edge, %land.lhs.true.sw.epilog_crit_edge, %do.end165, %if.then160, %do.end110, %if.then105, %if.then98.sw.epilog_crit_edge, %do.end81, %if.then76, %if.then69.sw.epilog_crit_edge, %do.end52, %if.then47, %if.then41.sw.epilog_crit_edge, %do.end24, %if.then20, %if.then16.sw.epilog_crit_edge, %do.end.sw.epilog_crit_edge
  %fe.0 = phi ptr [ %call157, %land.lhs.true.sw.epilog_crit_edge ], [ null, %if.then20 ], [ %call18, %if.then16.sw.epilog_crit_edge ], [ null, %do.end24 ], [ null, %if.then47 ], [ %call44, %if.then41.sw.epilog_crit_edge ], [ null, %do.end52 ], [ null, %if.then76 ], [ %call73, %if.then69.sw.epilog_crit_edge ], [ null, %do.end81 ], [ null, %if.then105 ], [ %call102, %if.then98.sw.epilog_crit_edge ], [ null, %do.end110 ], [ null, %if.then193 ], [ %call190, %if.then186.sw.epilog_crit_edge ], [ null, %do.end198 ], [ null, %if.then283 ], [ %call280, %if.then276.sw.epilog_crit_edge ], [ null, %do.end288 ], [ null, %do.end.sw.epilog_crit_edge ], [ null, %if.then160 ], [ null, %do.end165 ], [ null, %if.then253 ], [ null, %do.end258 ]
  %tobool304.not = icmp eq ptr %fe.0, null
  %. = select i1 %tobool304.not, i32 -19, i32 0
  br label %err

err.critedge:                                     ; preds = %if.then117
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %tda18212_config) #7
  br label %err

err.critedge380:                                  ; preds = %sw.bb205
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %tda18212_config206) #7
  br label %err

err:                                              ; preds = %err.critedge380, %err.critedge, %sw.epilog, %sw.bb294.err_crit_edge
  %ret.0 = phi i32 [ %call299, %sw.bb294.err_crit_edge ], [ %call121, %err.critedge ], [ %call210, %err.critedge380 ], [ %., %sw.epilog ]
  br label %cleanup310

cleanup310.critedge:                              ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %tda18212_config) #7
  br label %cleanup310

cleanup310.critedge378:                           ; preds = %if.end213
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %tda18212_config206) #7
  br label %cleanup310

cleanup310:                                       ; preds = %cleanup310.critedge378, %cleanup310.critedge, %err, %sw.bb294.cleanup310_crit_edge, %if.then217, %if.then128
  %retval.3 = phi i32 [ %ret.0, %err ], [ 0, %sw.bb294.cleanup310_crit_edge ], [ 0, %cleanup310.critedge ], [ 0, %if.then128 ], [ 0, %cleanup310.critedge378 ], [ 0, %if.then217 ]
  ret i32 %retval.3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @anysee_frontend_ctrl(ptr nocapture noundef readonly %fe, i32 noundef %onoff) #2 align 64 {
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
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @anysee_frontend_ctrl.__UNIQUE_ID_ddebug397, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@anysee_frontend_ctrl, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !256

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %udev = getelementptr inbounds %struct.dvb_usb_device, ptr %add.ptr, i32 0, i32 5
  %8 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %udev, align 4
  %dev = getelementptr inbounds %struct.usb_device, ptr %9, i32 0, i32 15
  %id17 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 10
  %10 = ptrtoint ptr %id17 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %id17, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @anysee_frontend_ctrl.__UNIQUE_ID_ddebug397, ptr noundef %dev, ptr noundef nonnull @.str.99, ptr noundef nonnull @.str.98, i32 noundef %11, i32 noundef %onoff) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %onoff)
  %cmp = icmp eq i32 %onoff, 0
  br i1 %cmp, label %do.end.cleanup_crit_edge, label %if.end20

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end20:                                         ; preds = %do.end
  %hw = getelementptr inbounds %struct.anysee_state, ptr %7, i32 0, i32 2
  %12 = ptrtoint ptr %hw to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %hw, align 1
  %14 = zext i8 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.110)
  switch i8 %13, label %if.end20.cleanup_crit_edge [
    i8 15, label %sw.bb
    i8 18, label %if.end20.sw.bb51_crit_edge
    i8 21, label %if.end20.sw.bb51_crit_edge112
  ]

if.end20.sw.bb51_crit_edge112:                    ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb51

if.end20.sw.bb51_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb51

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %if.end20
  %id22 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 10
  %15 = ptrtoint ptr %id22 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %id22, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp23 = icmp eq i32 %16, 0
  br i1 %cmp23, label %if.then25, label %if.else

if.then25:                                        ; preds = %sw.bb
  %call26 = tail call fastcc i32 @anysee_wr_reg_mask(ptr noundef %add.ptr, i16 noundef zeroext 176, i8 noundef zeroext 0, i8 noundef zeroext 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.end29, label %if.then25.cleanup_crit_edge

if.then25.cleanup_crit_edge:                      ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end29:                                         ; preds = %if.then25
  %call30 = tail call fastcc i32 @anysee_wr_reg_mask(ptr noundef %add.ptr, i16 noundef zeroext 176, i8 noundef zeroext 32, i8 noundef zeroext 32)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.end29.cleanup.sink.split_crit_edge, label %if.end29.cleanup_crit_edge

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end29.cleanup.sink.split_crit_edge:            ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.else:                                          ; preds = %sw.bb
  %call38 = tail call fastcc i32 @anysee_wr_reg_mask(ptr noundef %add.ptr, i16 noundef zeroext 176, i8 noundef zeroext 0, i8 noundef zeroext 32)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.end41, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end41:                                         ; preds = %if.else
  %call42 = tail call fastcc i32 @anysee_wr_reg_mask(ptr noundef %add.ptr, i16 noundef zeroext 176, i8 noundef zeroext 1, i8 noundef zeroext 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %if.end41.cleanup.sink.split_crit_edge, label %if.end41.cleanup_crit_edge

if.end41.cleanup_crit_edge:                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end41.cleanup.sink.split_crit_edge:            ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

sw.bb51:                                          ; preds = %if.end20.sw.bb51_crit_edge, %if.end20.sw.bb51_crit_edge112
  %id52 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 10
  %17 = ptrtoint ptr %id52 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %id52, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp53 = icmp eq i32 %18, 0
  br i1 %cmp53, label %if.then55, label %if.else68

if.then55:                                        ; preds = %sw.bb51
  %call56 = tail call fastcc i32 @anysee_wr_reg_mask(ptr noundef %add.ptr, i16 noundef zeroext 176, i8 noundef zeroext 0, i8 noundef zeroext 64)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %tobool57.not = icmp eq i32 %call56, 0
  br i1 %tobool57.not, label %if.end59, label %if.then55.cleanup_crit_edge

if.then55.cleanup_crit_edge:                      ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end59:                                         ; preds = %if.then55
  %call60 = tail call fastcc i32 @anysee_wr_reg_mask(ptr noundef %add.ptr, i16 noundef zeroext 176, i8 noundef zeroext 32, i8 noundef zeroext 32)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %if.end59.cleanup.sink.split_crit_edge, label %if.end59.cleanup_crit_edge

if.end59.cleanup_crit_edge:                       ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end59.cleanup.sink.split_crit_edge:            ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.else68:                                        ; preds = %sw.bb51
  %call69 = tail call fastcc i32 @anysee_wr_reg_mask(ptr noundef %add.ptr, i16 noundef zeroext 176, i8 noundef zeroext 0, i8 noundef zeroext 32)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69)
  %tobool70.not = icmp eq i32 %call69, 0
  br i1 %tobool70.not, label %if.end72, label %if.else68.cleanup_crit_edge

if.else68.cleanup_crit_edge:                      ; preds = %if.else68
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end72:                                         ; preds = %if.else68
  %call73 = tail call fastcc i32 @anysee_wr_reg_mask(ptr noundef %add.ptr, i16 noundef zeroext 176, i8 noundef zeroext 64, i8 noundef zeroext 64)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73)
  %tobool74.not = icmp eq i32 %call73, 0
  br i1 %tobool74.not, label %if.end72.cleanup.sink.split_crit_edge, label %if.end72.cleanup_crit_edge

if.end72.cleanup_crit_edge:                       ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end72.cleanup.sink.split_crit_edge:            ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end72.cleanup.sink.split_crit_edge, %if.end59.cleanup.sink.split_crit_edge, %if.end41.cleanup.sink.split_crit_edge, %if.end29.cleanup.sink.split_crit_edge
  %.sink = phi i8 [ 1, %if.end29.cleanup.sink.split_crit_edge ], [ 0, %if.end41.cleanup.sink.split_crit_edge ], [ 1, %if.end59.cleanup.sink.split_crit_edge ], [ 0, %if.end72.cleanup.sink.split_crit_edge ]
  %call34 = tail call fastcc i32 @anysee_wr_reg_mask(ptr noundef %add.ptr, i16 noundef zeroext 177, i8 noundef zeroext %.sink, i8 noundef zeroext 1)
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end72.cleanup_crit_edge, %if.else68.cleanup_crit_edge, %if.end59.cleanup_crit_edge, %if.then55.cleanup_crit_edge, %if.end41.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.end29.cleanup_crit_edge, %if.then25.cleanup_crit_edge, %if.end20.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end.cleanup_crit_edge ], [ %call56, %if.then55.cleanup_crit_edge ], [ %call60, %if.end59.cleanup_crit_edge ], [ %call69, %if.else68.cleanup_crit_edge ], [ %call73, %if.end72.cleanup_crit_edge ], [ %call26, %if.then25.cleanup_crit_edge ], [ %call30, %if.end29.cleanup_crit_edge ], [ %call38, %if.else.cleanup_crit_edge ], [ %call42, %if.end41.cleanup_crit_edge ], [ 0, %if.end20.cleanup_crit_edge ], [ %call34, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @anysee_streaming_ctrl(ptr nocapture noundef readonly %fe, i32 noundef %onoff) #2 align 64 {
entry:
  %buf = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf) #7
  %0 = getelementptr inbounds [3 x i8], ptr %buf, i32 0, i32 1
  %1 = getelementptr inbounds [3 x i8], ptr %buf, i32 0, i32 2
  %2 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 18, ptr %buf, align 1
  %conv = trunc i32 %onoff to i8
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %conv, ptr %0, align 1
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %1, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @anysee_streaming_ctrl.__UNIQUE_ID_ddebug394, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@anysee_streaming_ctrl, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !256

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dvb = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 2
  %5 = ptrtoint ptr %dvb to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dvb, align 4
  %priv = getelementptr inbounds %struct.dvb_adapter, ptr %6, i32 0, i32 5
  %7 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %priv, align 4
  %id = getelementptr inbounds %struct.dvb_usb_adapter, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %id, align 4
  %conv7 = zext i8 %10 to i32
  %.neg23 = mul nsw i32 %conv7, -2280
  %idx.neg = add nsw i32 %.neg23, -1616
  %add.ptr = getelementptr i8, ptr %8, i32 %idx.neg
  %udev = getelementptr inbounds %struct.dvb_usb_device, ptr %add.ptr, i32 0, i32 5
  %11 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %udev, align 4
  %dev = getelementptr inbounds %struct.usb_device, ptr %12, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @anysee_streaming_ctrl.__UNIQUE_ID_ddebug394, ptr noundef %dev, ptr noundef nonnull @.str.101, ptr noundef nonnull @.str.100, i32 noundef %onoff) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %dvb9 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 2
  %13 = ptrtoint ptr %dvb9 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dvb9, align 4
  %priv10 = getelementptr inbounds %struct.dvb_adapter, ptr %14, i32 0, i32 5
  %15 = ptrtoint ptr %priv10 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %priv10, align 4
  %id14 = getelementptr inbounds %struct.dvb_usb_adapter, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %id14 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %id14, align 4
  %conv15 = zext i8 %18 to i32
  %.neg = mul nsw i32 %conv15, -2280
  %idx.neg16 = add nsw i32 %.neg, -1616
  %add.ptr17 = getelementptr i8, ptr %16, i32 %idx.neg16
  %call18 = call fastcc i32 @anysee_ctrl_msg(ptr noundef %add.ptr17, ptr noundef nonnull %buf, i8 noundef zeroext 3, ptr noundef null, i8 noundef zeroext 0)
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf) #7
  ret i32 %call18
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @anysee_init(ptr noundef %d) #2 align 64 {
entry:
  %buf.i28 = alloca [3 x i8], align 1
  %buf.i = alloca [4 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 15
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %udev = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 5
  %2 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %udev, align 4
  %call = tail call i32 @usb_set_interface(ptr noundef %3, i32 noundef 0, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i) #7
  %4 = getelementptr inbounds [4 x i8], ptr %buf.i, i32 0, i32 1
  %5 = getelementptr inbounds [4 x i8], ptr %buf.i, i32 0, i32 2
  %6 = getelementptr inbounds [4 x i8], ptr %buf.i, i32 0, i32 3
  %7 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 22, ptr %buf.i, align 1
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %4, align 1
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %5, align 1
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 3, ptr %6, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @anysee_led_ctrl.__UNIQUE_ID_ddebug395, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@anysee_init, %if.then.i)) #7
          to label %anysee_led_ctrl.exit [label %if.then.i], !srcloc !256

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %udev, align 4
  %dev.i = getelementptr inbounds %struct.usb_device, ptr %12, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @anysee_led_ctrl.__UNIQUE_ID_ddebug395, ptr noundef %dev.i, ptr noundef nonnull @.str.103, ptr noundef nonnull @.str.102, i32 noundef 1, i32 noundef 3) #7
  br label %anysee_led_ctrl.exit

anysee_led_ctrl.exit:                             ; preds = %if.then.i, %if.end
  %call6.i = call fastcc i32 @anysee_ctrl_msg(ptr noundef %d, ptr noundef nonnull %buf.i, i8 noundef zeroext 4, ptr noundef null, i8 noundef zeroext 0) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool2.not = icmp eq i32 %call6.i, 0
  br i1 %tobool2.not, label %if.end4, label %anysee_led_ctrl.exit.cleanup_crit_edge

anysee_led_ctrl.exit.cleanup_crit_edge:           ; preds = %anysee_led_ctrl.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %anysee_led_ctrl.exit
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i28) #7
  %13 = getelementptr inbounds [3 x i8], ptr %buf.i28, i32 0, i32 1
  %14 = getelementptr inbounds [3 x i8], ptr %buf.i28, i32 0, i32 2
  %15 = ptrtoint ptr %buf.i28 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 22, ptr %buf.i28, align 1
  %16 = ptrtoint ptr %13 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 2, ptr %13, align 1
  %17 = ptrtoint ptr %14 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 1, ptr %14, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @anysee_ir_ctrl.__UNIQUE_ID_ddebug396, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@anysee_init, %if.then.i31)) #7
          to label %anysee_ir_ctrl.exit [label %if.then.i31], !srcloc !256

if.then.i31:                                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  %18 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %udev, align 4
  %dev.i30 = getelementptr inbounds %struct.usb_device, ptr %19, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @anysee_ir_ctrl.__UNIQUE_ID_ddebug396, ptr noundef %dev.i30, ptr noundef nonnull @.str.101, ptr noundef nonnull @.str.104, i32 noundef 1) #7
  br label %anysee_ir_ctrl.exit

anysee_ir_ctrl.exit:                              ; preds = %if.then.i31, %if.end4
  %call4.i = call fastcc i32 @anysee_ctrl_msg(ptr noundef %d, ptr noundef nonnull %buf.i28, i8 noundef zeroext 3, ptr noundef null, i8 noundef zeroext 0) #7
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i28) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool6.not = icmp eq i32 %call4.i, 0
  br i1 %tobool6.not, label %if.end8, label %anysee_ir_ctrl.exit.cleanup_crit_edge

anysee_ir_ctrl.exit.cleanup_crit_edge:            ; preds = %anysee_ir_ctrl.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end8:                                          ; preds = %anysee_ir_ctrl.exit
  %has_ci = getelementptr inbounds %struct.anysee_state, ptr %1, i32 0, i32 4
  %20 = ptrtoint ptr %has_ci to i32
  call void @__asan_load1_noabort(i32 %20)
  %bf.load = load i8, ptr %has_ci, align 4
  %21 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool9.not = icmp eq i8 %21, 0
  br i1 %tobool9.not, label %if.end8.cleanup_crit_edge, label %if.then10

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then10:                                        ; preds = %if.end8
  %22 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %priv, align 8
  %ci.i = getelementptr inbounds %struct.anysee_state, ptr %23, i32 0, i32 5
  %24 = ptrtoint ptr %ci.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %ci.i, align 4
  %read_attribute_mem.i = getelementptr inbounds %struct.anysee_state, ptr %23, i32 0, i32 5, i32 1
  %25 = ptrtoint ptr %read_attribute_mem.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @anysee_ci_read_attribute_mem, ptr %read_attribute_mem.i, align 4
  %write_attribute_mem.i = getelementptr inbounds %struct.anysee_state, ptr %23, i32 0, i32 5, i32 2
  %26 = ptrtoint ptr %write_attribute_mem.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @anysee_ci_write_attribute_mem, ptr %write_attribute_mem.i, align 4
  %read_cam_control.i = getelementptr inbounds %struct.anysee_state, ptr %23, i32 0, i32 5, i32 3
  %27 = ptrtoint ptr %read_cam_control.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @anysee_ci_read_cam_control, ptr %read_cam_control.i, align 4
  %write_cam_control.i = getelementptr inbounds %struct.anysee_state, ptr %23, i32 0, i32 5, i32 4
  %28 = ptrtoint ptr %write_cam_control.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @anysee_ci_write_cam_control, ptr %write_cam_control.i, align 4
  %slot_reset.i = getelementptr inbounds %struct.anysee_state, ptr %23, i32 0, i32 5, i32 7
  %29 = ptrtoint ptr %slot_reset.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @anysee_ci_slot_reset, ptr %slot_reset.i, align 4
  %slot_shutdown.i = getelementptr inbounds %struct.anysee_state, ptr %23, i32 0, i32 5, i32 8
  %30 = ptrtoint ptr %slot_shutdown.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @anysee_ci_slot_shutdown, ptr %slot_shutdown.i, align 4
  %slot_ts_enable.i = getelementptr inbounds %struct.anysee_state, ptr %23, i32 0, i32 5, i32 9
  %31 = ptrtoint ptr %slot_ts_enable.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @anysee_ci_slot_ts_enable, ptr %slot_ts_enable.i, align 4
  %poll_slot_status.i = getelementptr inbounds %struct.anysee_state, ptr %23, i32 0, i32 5, i32 10
  %32 = ptrtoint ptr %poll_slot_status.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @anysee_ci_poll_slot_status, ptr %poll_slot_status.i, align 4
  %data.i = getelementptr inbounds %struct.anysee_state, ptr %23, i32 0, i32 5, i32 11
  %33 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %d, ptr %data.i, align 4
  %call.i = tail call fastcc i32 @anysee_wr_reg_mask(ptr noundef %d, i16 noundef zeroext 128, i8 noundef zeroext -128, i8 noundef zeroext -128) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then10.cleanup_crit_edge

if.then10.cleanup_crit_edge:                      ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i:                                         ; preds = %if.then10
  %call10.i = tail call fastcc i32 @anysee_wr_reg_mask(ptr noundef %d, i16 noundef zeroext 176, i8 noundef zeroext 0, i8 noundef zeroext 7) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %tobool11.not.i = icmp eq i32 %call10.i, 0
  br i1 %tobool11.not.i, label %if.end13.i, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end13.i:                                       ; preds = %if.end.i
  %call14.i = tail call fastcc i32 @anysee_wr_reg_mask(ptr noundef %d, i16 noundef zeroext 176, i8 noundef zeroext 7, i8 noundef zeroext 7) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %tobool15.not.i = icmp eq i32 %call14.i, 0
  br i1 %tobool15.not.i, label %if.end17.i, label %if.end13.i.cleanup_crit_edge

if.end13.i.cleanup_crit_edge:                     ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end17.i:                                       ; preds = %if.end13.i
  %dvb_adap.i = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 11, i32 0, i32 10
  %call19.i = tail call i32 @dvb_ca_en50221_init(ptr noundef %dvb_adap.i, ptr noundef %ci.i, i32 noundef 0, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.i)
  %tobool20.not.i = icmp eq i32 %call19.i, 0
  br i1 %tobool20.not.i, label %anysee_ci_init.exit, label %if.end17.i.cleanup_crit_edge

if.end17.i.cleanup_crit_edge:                     ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

anysee_ci_init.exit:                              ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #9
  %ci_attached.i = getelementptr inbounds %struct.anysee_state, ptr %23, i32 0, i32 4
  %34 = ptrtoint ptr %ci_attached.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %bf.load.i = load i8, ptr %ci_attached.i, align 4
  %bf.set.i = or i8 %bf.load.i, 16
  store i8 %bf.set.i, ptr %ci_attached.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %anysee_ci_init.exit, %if.end17.i.cleanup_crit_edge, %if.end13.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %if.then10.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %anysee_ir_ctrl.exit.cleanup_crit_edge, %anysee_led_ctrl.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call6.i, %anysee_led_ctrl.exit.cleanup_crit_edge ], [ %call4.i, %anysee_ir_ctrl.exit.cleanup_crit_edge ], [ 0, %anysee_ci_init.exit ], [ 0, %if.end8.cleanup_crit_edge ], [ %call19.i, %if.end17.i.cleanup_crit_edge ], [ %call14.i, %if.end13.i.cleanup_crit_edge ], [ %call10.i, %if.end.i.cleanup_crit_edge ], [ %call.i, %if.then10.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @anysee_exit(ptr nocapture noundef readonly %d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 15
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %i2c_client = getelementptr inbounds %struct.anysee_state, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %i2c_client to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i2c_client, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @anysee_del_i2c_dev(ptr noundef %d)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %4 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv, align 8
  %ci_attached.i = getelementptr inbounds %struct.anysee_state, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %ci_attached.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load.i = load i8, ptr %ci_attached.i, align 4
  %7 = and i8 %bf.load.i, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i = icmp eq i8 %7, 0
  br i1 %tobool.not.i, label %if.end.anysee_ci_release.exit_crit_edge, label %if.then.i

if.end.anysee_ci_release.exit_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %anysee_ci_release.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %ci.i = getelementptr inbounds %struct.anysee_state, ptr %5, i32 0, i32 5
  tail call void @dvb_ca_en50221_release(ptr noundef %ci.i) #7
  br label %anysee_ci_release.exit

anysee_ci_release.exit:                           ; preds = %if.then.i, %if.end.anysee_ci_release.exit_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @anysee_get_rc_config(ptr nocapture noundef readnone %d, ptr nocapture noundef writeonly %rc) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %allowed_protos = getelementptr inbounds %struct.dvb_usb_rc, ptr %rc, i32 0, i32 1
  %0 = ptrtoint ptr %allowed_protos to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 512, ptr %allowed_protos, align 8
  %query = getelementptr inbounds %struct.dvb_usb_rc, ptr %rc, i32 0, i32 3
  %1 = ptrtoint ptr %query to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @anysee_rc_query, ptr %query, align 4
  %interval = getelementptr inbounds %struct.dvb_usb_rc, ptr %rc, i32 0, i32 4
  %2 = ptrtoint ptr %interval to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 250, ptr %interval, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @anysee_master_xfer(ptr nocapture noundef readonly %adap, ptr nocapture noundef readonly %msg, i32 noundef %num) #2 align 64 {
entry:
  %buf = alloca [52 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %adap, i32 0, i32 9, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 52, ptr nonnull %buf) #7
  %2 = call ptr @memset(ptr %buf, i32 255, i32 52)
  %i2c_mutex = getelementptr inbounds %struct.dvb_usb_device, ptr %1, i32 0, i32 9
  %call1 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %i2c_mutex, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %while.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

while.cond.preheader:                             ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num)
  %cmp2135 = icmp sgt i32 %num, 0
  br i1 %cmp2135, label %while.body.lr.ph, label %while.cond.preheader.cleanup.sink.split_crit_edge

while.cond.preheader.cleanup.sink.split_crit_edge: ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %arrayidx22 = getelementptr inbounds [52 x i8], ptr %buf, i32 0, i32 1
  %arrayidx26 = getelementptr inbounds [52 x i8], ptr %buf, i32 0, i32 2
  %arrayidx30 = getelementptr inbounds [52 x i8], ptr %buf, i32 0, i32 3
  %arrayidx35 = getelementptr inbounds [52 x i8], ptr %buf, i32 0, i32 4
  %arrayidx40 = getelementptr inbounds [52 x i8], ptr %buf, i32 0, i32 5
  br label %while.body

while.cond:                                       ; preds = %if.end81
  %add85 = add i32 %inc.0, %i.0136
  %cmp2 = icmp slt i32 %add85, %num
  br i1 %cmp2, label %while.cond.while.body_crit_edge, label %while.cond.cleanup.sink.split_crit_edge

while.cond.cleanup.sink.split_crit_edge:          ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

while.cond.while.body_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

while.body:                                       ; preds = %while.cond.while.body_crit_edge, %while.body.lr.ph
  %i.0136 = phi i32 [ 0, %while.body.lr.ph ], [ %add85, %while.cond.while.body_crit_edge ]
  %add = add nsw i32 %i.0136, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %num)
  %cmp3 = icmp slt i32 %add, %num
  br i1 %cmp3, label %land.lhs.true, label %while.body.if.else_crit_edge

while.body.if.else_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

land.lhs.true:                                    ; preds = %while.body
  %flags = getelementptr %struct.i2c_msg, ptr %msg, i32 %add, i32 1
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %flags, align 2
  %5 = and i16 %4, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool.not = icmp eq i16 %5, 0
  br i1 %tobool.not, label %land.lhs.true.if.else_crit_edge, label %if.then5

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

if.then5:                                         ; preds = %land.lhs.true
  %arrayidx6 = getelementptr %struct.i2c_msg, ptr %msg, i32 %i.0136
  %len = getelementptr %struct.i2c_msg, ptr %msg, i32 %i.0136, i32 2
  %6 = ptrtoint ptr %len to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %7)
  %cmp8 = icmp ugt i16 %7, 2
  br i1 %cmp8, label %if.then5.cleanup.sink.split_crit_edge, label %lor.lhs.false

if.then5.cleanup.sink.split_crit_edge:            ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

lor.lhs.false:                                    ; preds = %if.then5
  %len12 = getelementptr %struct.i2c_msg, ptr %msg, i32 %add, i32 2
  %8 = ptrtoint ptr %len12 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %len12, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 60, i16 %9)
  %cmp14 = icmp ugt i16 %9, 60
  br i1 %cmp14, label %lor.lhs.false.cleanup.sink.split_crit_edge, label %if.end17

lor.lhs.false.cleanup.sink.split_crit_edge:       ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end17:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 51, ptr %buf, align 1
  %11 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %arrayidx6, align 4
  %conv20 = trunc i16 %12 to i8
  %shl = shl i8 %conv20, 1
  %or = or i8 %shl, 1
  %13 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %or, ptr %arrayidx22, align 1
  %buf24 = getelementptr %struct.i2c_msg, ptr %msg, i32 %i.0136, i32 3
  %14 = ptrtoint ptr %buf24 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %buf24, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %15, align 1
  %18 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %17, ptr %arrayidx26, align 1
  %arrayidx29 = getelementptr i8, ptr %15, i32 1
  %19 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx29, align 1
  %21 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %20, ptr %arrayidx30, align 1
  %conv33 = trunc i16 %7 to i8
  %sub = add nsw i8 %conv33, -1
  %22 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %sub, ptr %arrayidx35, align 1
  %conv39 = trunc i16 %9 to i8
  %23 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %conv39, ptr %arrayidx40, align 1
  %buf43 = getelementptr %struct.i2c_msg, ptr %msg, i32 %add, i32 3
  %24 = ptrtoint ptr %buf43 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %buf43, align 4
  %call48 = call fastcc i32 @anysee_ctrl_msg(ptr noundef %1, ptr noundef nonnull %buf, i8 noundef zeroext 6, ptr noundef %25, i8 noundef zeroext %conv39)
  br label %if.end81

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %while.body.if.else_crit_edge
  %len50 = getelementptr %struct.i2c_msg, ptr %msg, i32 %i.0136, i32 2
  %26 = ptrtoint ptr %len50 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %len50, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 48, i16 %27)
  %cmp52 = icmp ugt i16 %27, 48
  br i1 %cmp52, label %if.else.cleanup.sink.split_crit_edge, label %if.end55

if.else.cleanup.sink.split_crit_edge:             ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end55:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx49 = getelementptr %struct.i2c_msg, ptr %msg, i32 %i.0136
  %28 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 49, ptr %buf, align 1
  %29 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %arrayidx49, align 4
  %conv59 = trunc i16 %30 to i8
  %shl60 = shl i8 %conv59, 1
  %31 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %shl60, ptr %arrayidx22, align 1
  %conv65 = trunc i16 %27 to i8
  %32 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %conv65, ptr %arrayidx26, align 1
  %33 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 1, ptr %arrayidx30, align 1
  %buf70 = getelementptr %struct.i2c_msg, ptr %msg, i32 %i.0136, i32 3
  %34 = ptrtoint ptr %buf70 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %buf70, align 4
  %conv73 = zext i16 %27 to i32
  %36 = call ptr @memcpy(ptr %arrayidx35, ptr %35, i32 %conv73)
  %add78 = add nuw nsw i8 %conv65, 4
  %call80 = call fastcc i32 @anysee_ctrl_msg(ptr noundef %1, ptr noundef nonnull %buf, i8 noundef zeroext %add78, ptr noundef null, i8 noundef zeroext 0)
  br label %if.end81

if.end81:                                         ; preds = %if.end55, %if.end17
  %ret.1 = phi i32 [ %call48, %if.end17 ], [ %call80, %if.end55 ]
  %inc.0 = phi i32 [ 2, %if.end17 ], [ 1, %if.end55 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1)
  %tobool82.not = icmp eq i32 %ret.1, 0
  br i1 %tobool82.not, label %while.cond, label %if.end81.cleanup.sink.split_crit_edge

if.end81.cleanup.sink.split_crit_edge:            ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end81.cleanup.sink.split_crit_edge, %if.else.cleanup.sink.split_crit_edge, %lor.lhs.false.cleanup.sink.split_crit_edge, %if.then5.cleanup.sink.split_crit_edge, %while.cond.cleanup.sink.split_crit_edge, %while.cond.preheader.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ 0, %while.cond.preheader.cleanup.sink.split_crit_edge ], [ -95, %if.else.cleanup.sink.split_crit_edge ], [ -95, %if.then5.cleanup.sink.split_crit_edge ], [ -95, %lor.lhs.false.cleanup.sink.split_crit_edge ], [ %ret.1, %if.end81.cleanup.sink.split_crit_edge ], [ %add85, %while.cond.cleanup.sink.split_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %i2c_mutex) #7
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -11, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 52, ptr nonnull %buf) #7
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @anysee_i2c_func(ptr nocapture noundef readnone %adapter) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @anysee_ctrl_msg(ptr noundef %d, ptr nocapture noundef readonly %sbuf, i8 noundef zeroext %slen, ptr noundef writeonly %rbuf, i8 noundef zeroext %rlen) unnamed_addr #2 align 64 {
entry:
  %act_len = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 15
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %act_len) #7
  %2 = ptrtoint ptr %act_len to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %act_len, align 4, !annotation !255
  %usb_mutex = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %usb_mutex, i32 noundef 0) #7
  %conv = zext i8 %slen to i32
  %3 = call ptr @memcpy(ptr %1, ptr %sbuf, i32 %conv)
  %seq = getelementptr inbounds %struct.anysee_state, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %seq to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %seq, align 4
  %inc = add i8 %5, 1
  store i8 %inc, ptr %seq, align 4
  %arrayidx2 = getelementptr [64 x i8], ptr %1, i32 0, i32 60
  %6 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %5, ptr %arrayidx2, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @anysee_ctrl_msg.__UNIQUE_ID_ddebug388, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@anysee_ctrl_msg, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !256

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %udev = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 5
  %7 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %udev, align 4
  %dev = getelementptr inbounds %struct.usb_device, ptr %8, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @anysee_ctrl_msg.__UNIQUE_ID_ddebug388, ptr noundef %dev, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.5, i32 noundef %conv, ptr noundef %1) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call11 = tail call i32 @dvb_usbv2_generic_rw_locked(ptr noundef %d, ptr noundef %1, i16 noundef zeroext 64, ptr noundef %1, i16 noundef zeroext 64) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %for.cond.preheader, label %do.end.error_unlock_crit_edge

do.end.error_unlock_crit_edge:                    ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %error_unlock

for.cond.preheader:                               ; preds = %do.end
  %udev16 = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 5
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader
  %i.0155 = phi i32 [ 0, %for.cond.preheader ], [ %inc91, %for.inc.for.body_crit_edge ]
  %9 = ptrtoint ptr %udev16 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %udev16, align 4
  %11 = ptrtoint ptr %d to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %d, align 8
  %generic_bulk_ctrl_endpoint = getelementptr inbounds %struct.dvb_usb_device_properties, ptr %12, i32 0, i32 5
  %13 = ptrtoint ptr %generic_bulk_ctrl_endpoint to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %generic_bulk_ctrl_endpoint, align 4
  %conv18 = zext i8 %14 to i32
  %15 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %10, align 8
  %shl.i = shl i32 %16, 8
  %shl1.i = shl nuw nsw i32 %conv18, 15
  %or.i = or i32 %shl1.i, %shl.i
  %or20 = or i32 %or.i, -1073741696
  %call23 = call i32 @usb_bulk_msg(ptr noundef %10, i32 noundef %or20, ptr noundef %1, i32 noundef 64, ptr noundef nonnull %act_len, i32 noundef 2000) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %do.body44, label %do.body26

do.body26:                                        ; preds = %for.body
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @anysee_ctrl_msg.__UNIQUE_ID_ddebug389, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@anysee_ctrl_msg, %if.then38)) #7
          to label %for.inc [label %if.then38], !srcloc !256

if.then38:                                        ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #9
  %17 = ptrtoint ptr %udev16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %udev16, align 4
  %dev40 = getelementptr inbounds %struct.usb_device, ptr %18, i32 0, i32 15
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @anysee_ctrl_msg.__UNIQUE_ID_ddebug389, ptr noundef %dev40, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.5, i32 noundef %call23) #7
  br label %for.inc

do.body44:                                        ; preds = %for.body
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @anysee_ctrl_msg.__UNIQUE_ID_ddebug390, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@anysee_ctrl_msg, %if.then56)) #7
          to label %do.end64 [label %if.then56], !srcloc !256

if.then56:                                        ; preds = %do.body44
  call void @__sanitizer_cov_trace_pc() #9
  %19 = ptrtoint ptr %udev16 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %udev16, align 4
  %dev58 = getelementptr inbounds %struct.usb_device, ptr %20, i32 0, i32 15
  %conv59 = zext i8 %rlen to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @anysee_ctrl_msg.__UNIQUE_ID_ddebug390, ptr noundef %dev58, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.5, i32 noundef %conv59, ptr noundef %1) #7
  br label %do.end64

do.end64:                                         ; preds = %if.then56, %do.body44
  %arrayidx66 = getelementptr [64 x i8], ptr %1, i32 0, i32 63
  %21 = ptrtoint ptr %arrayidx66 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx66, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 79, i8 %22)
  %cmp68.not = icmp eq i8 %22, 79
  br i1 %cmp68.not, label %do.end64.if.end99_crit_edge, label %do.body71

do.end64.if.end99_crit_edge:                      ; preds = %do.end64
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end99

do.body71:                                        ; preds = %do.end64
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @anysee_ctrl_msg.__UNIQUE_ID_ddebug391, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@anysee_ctrl_msg, %if.then83)) #7
          to label %if.end99 [label %if.then83], !srcloc !256

if.then83:                                        ; preds = %do.body71
  call void @__sanitizer_cov_trace_pc() #9
  %23 = ptrtoint ptr %udev16 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %udev16, align 4
  %dev85 = getelementptr inbounds %struct.usb_device, ptr %24, i32 0, i32 15
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @anysee_ctrl_msg.__UNIQUE_ID_ddebug391, ptr noundef %dev85, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.5) #7
  br label %if.end99

for.inc:                                          ; preds = %if.then38, %do.body26
  %inc91 = add nuw nsw i32 %i.0155, 1
  %exitcond.not = icmp eq i32 %inc91, 3
  br i1 %exitcond.not, label %do.end96, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

do.end96:                                         ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  %25 = ptrtoint ptr %udev16 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %udev16, align 4
  %dev98 = getelementptr inbounds %struct.usb_device, ptr %26, i32 0, i32 15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev98, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str, i32 noundef %call23) #10
  br label %error_unlock

if.end99:                                         ; preds = %if.then83, %do.body71, %do.end64.if.end99_crit_edge
  %tobool100.not = icmp eq ptr %rbuf, null
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %rlen)
  %tobool102.not = icmp eq i8 %rlen, 0
  %or.cond = or i1 %tobool100.not, %tobool102.not
  br i1 %or.cond, label %if.end99.error_unlock_crit_edge, label %if.then103

if.end99.error_unlock_crit_edge:                  ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #9
  br label %error_unlock

if.then103:                                       ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #9
  %conv101 = zext i8 %rlen to i32
  %27 = call ptr @memcpy(ptr %rbuf, ptr %1, i32 %conv101)
  br label %error_unlock

error_unlock:                                     ; preds = %if.then103, %if.end99.error_unlock_crit_edge, %do.end96, %do.end.error_unlock_crit_edge
  %ret.2 = phi i32 [ %call11, %do.end.error_unlock_crit_edge ], [ %call23, %do.end96 ], [ 0, %if.then103 ], [ 0, %if.end99.error_unlock_crit_edge ]
  call void @mutex_unlock(ptr noundef %usb_mutex) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %act_len) #7
  ret i32 %ret.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_usbv2_generic_rw_locked(ptr noundef, ptr noundef, i16 noundef zeroext, ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_bulk_msg(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__symbol_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__request_module(i1 noundef zeroext, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__symbol_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @anysee_wr_reg_mask(ptr noundef %d, i16 noundef zeroext %reg, i8 noundef zeroext %val, i8 noundef zeroext %mask) unnamed_addr #2 align 64 {
entry:
  %buf.i25 = alloca [5 x i8], align 1
  %buf.i = alloca [4 x i8], align 1
  %tmp = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp) #7
  %0 = ptrtoint ptr %tmp to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %tmp, align 1, !annotation !255
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i) #7
  %1 = getelementptr inbounds [4 x i8], ptr %buf.i, i32 0, i32 1
  %2 = getelementptr inbounds [4 x i8], ptr %buf.i, i32 0, i32 2
  %3 = getelementptr inbounds [4 x i8], ptr %buf.i, i32 0, i32 3
  %4 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -80, ptr %buf.i, align 1
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %1, align 1
  %conv4.i = trunc i16 %reg to i8
  %6 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv4.i, ptr %2, align 1
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %3, align 1
  %call.i = call fastcc i32 @anysee_ctrl_msg(ptr noundef %d, ptr noundef nonnull %buf.i, i8 noundef zeroext 4, ptr noundef nonnull %tmp, i8 noundef zeroext 1) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @anysee_read_reg.__UNIQUE_ID_ddebug392, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@anysee_wr_reg_mask, %if.then.i)) #7
          to label %anysee_read_reg.exit [label %if.then.i], !srcloc !256

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %conv.i = zext i16 %reg to i32
  %udev.i = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 5
  %8 = ptrtoint ptr %udev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %udev.i, align 4
  %dev.i = getelementptr inbounds %struct.usb_device, ptr %9, i32 0, i32 15
  %10 = ptrtoint ptr %tmp to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %tmp, align 1
  %conv10.i = zext i8 %11 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @anysee_read_reg.__UNIQUE_ID_ddebug392, ptr noundef %dev.i, ptr noundef nonnull @.str.65, ptr noundef nonnull @.str.64, i32 noundef %conv.i, i32 noundef %conv10.i) #7
  br label %anysee_read_reg.exit

anysee_read_reg.exit:                             ; preds = %if.then.i, %entry
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %anysee_read_reg.exit.cleanup_crit_edge

anysee_read_reg.exit.cleanup_crit_edge:           ; preds = %anysee_read_reg.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %anysee_read_reg.exit
  %neg = xor i8 %mask, -1
  %12 = ptrtoint ptr %tmp to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %tmp, align 1
  %and8 = and i8 %13, %neg
  store i8 %and8, ptr %tmp, align 1
  %and23 = and i8 %mask, %val
  %or24 = or i8 %and8, %and23
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %buf.i25) #7
  %14 = getelementptr inbounds [5 x i8], ptr %buf.i25, i32 0, i32 1
  %15 = getelementptr inbounds [5 x i8], ptr %buf.i25, i32 0, i32 2
  %16 = getelementptr inbounds [5 x i8], ptr %buf.i25, i32 0, i32 3
  %17 = getelementptr inbounds [5 x i8], ptr %buf.i25, i32 0, i32 4
  %18 = ptrtoint ptr %buf.i25 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 -79, ptr %buf.i25, align 1
  %19 = ptrtoint ptr %14 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %14, align 1
  %20 = ptrtoint ptr %15 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv4.i, ptr %15, align 1
  %21 = ptrtoint ptr %16 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 1, ptr %16, align 1
  %22 = ptrtoint ptr %17 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %or24, ptr %17, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @anysee_write_reg.__UNIQUE_ID_ddebug393, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@anysee_wr_reg_mask, %if.then.i31)) #7
          to label %anysee_write_reg.exit [label %if.then.i31], !srcloc !256

if.then.i31:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %conv.i27 = zext i16 %reg to i32
  %udev.i28 = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 5
  %23 = ptrtoint ptr %udev.i28 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %udev.i28, align 4
  %dev.i29 = getelementptr inbounds %struct.usb_device, ptr %24, i32 0, i32 15
  %conv10.i30 = zext i8 %or24 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @anysee_write_reg.__UNIQUE_ID_ddebug393, ptr noundef %dev.i29, ptr noundef nonnull @.str.65, ptr noundef nonnull @.str.66, i32 noundef %conv.i27, i32 noundef %conv10.i30) #7
  br label %anysee_write_reg.exit

anysee_write_reg.exit:                            ; preds = %if.then.i31, %if.end
  %call11.i = call fastcc i32 @anysee_ctrl_msg(ptr noundef %d, ptr noundef nonnull %buf.i25, i8 noundef zeroext 5, ptr noundef null, i8 noundef zeroext 0) #7
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %buf.i25) #7
  br label %cleanup

cleanup:                                          ; preds = %anysee_write_reg.exit, %anysee_read_reg.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %call11.i, %anysee_write_reg.exit ], [ %call.i, %anysee_read_reg.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @anysee_i2c_gate_ctrl(ptr nocapture noundef readonly %fe, i32 noundef %enable) #2 align 64 {
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
  %enable.tr = trunc i32 %enable to i8
  %conv3 = shl i8 %enable.tr, 4
  %call = tail call fastcc i32 @anysee_wr_reg_mask(ptr noundef %add.ptr, i16 noundef zeroext 177, i8 noundef zeroext %conv3, i8 noundef zeroext 16)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @anysee_mt352_demod_init(ptr noundef %fe) #2 align 64 {
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
  %call.i = tail call i32 %1(ptr noundef %fe, ptr noundef nonnull @anysee_mt352_demod_init.clock_config, i32 noundef 3) #7
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
  %call.i13 = tail call i32 %4(ptr noundef %fe, ptr noundef nonnull @anysee_mt352_demod_init.reset, i32 noundef 2) #7
  %5 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %.pr = load ptr, ptr %write.i, align 4
  %tobool.not.i17 = icmp eq ptr %.pr, null
  br i1 %tobool.not.i17, label %mt352_write.exit15.mt352_write.exit35_crit_edge, label %mt352_write.exit20

mt352_write.exit15.mt352_write.exit35_crit_edge:  ; preds = %mt352_write.exit15
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt352_write.exit35

mt352_write.exit20:                               ; preds = %mt352_write.exit15
  %call.i18 = tail call i32 %.pr(ptr noundef %fe, ptr noundef nonnull @anysee_mt352_demod_init.adc_ctl_1_cfg, i32 noundef 2) #7
  %6 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pr37 = load ptr, ptr %write.i, align 4
  %tobool.not.i22 = icmp eq ptr %.pr37, null
  br i1 %tobool.not.i22, label %mt352_write.exit20.mt352_write.exit35_crit_edge, label %mt352_write.exit25

mt352_write.exit20.mt352_write.exit35_crit_edge:  ; preds = %mt352_write.exit20
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt352_write.exit35

mt352_write.exit25:                               ; preds = %mt352_write.exit20
  %call.i23 = tail call i32 %.pr37(ptr noundef %fe, ptr noundef nonnull @anysee_mt352_demod_init.agc_cfg, i32 noundef 3) #7
  %7 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %.pr39.pr = load ptr, ptr %write.i, align 4
  %tobool.not.i27 = icmp eq ptr %.pr39.pr, null
  br i1 %tobool.not.i27, label %mt352_write.exit25.mt352_write.exit35_crit_edge, label %mt352_write.exit30

mt352_write.exit25.mt352_write.exit35_crit_edge:  ; preds = %mt352_write.exit25
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt352_write.exit35

mt352_write.exit30:                               ; preds = %mt352_write.exit25
  %call.i28 = tail call i32 %.pr39.pr(ptr noundef %fe, ptr noundef nonnull @anysee_mt352_demod_init.gpp_ctl_cfg, i32 noundef 2) #7
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
  %call.i33 = tail call i32 %.pr41(ptr noundef %fe, ptr noundef nonnull @anysee_mt352_demod_init.capt_range_cfg, i32 noundef 2) #7
  br label %mt352_write.exit35

mt352_write.exit35:                               ; preds = %if.then.i34, %mt352_write.exit30.mt352_write.exit35_crit_edge, %mt352_write.exit25.mt352_write.exit35_crit_edge, %mt352_write.exit20.mt352_write.exit35_crit_edge, %mt352_write.exit15.mt352_write.exit35_crit_edge, %mt352_write.exit.mt352_write.exit35_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @anysee_add_i2c_dev(ptr noundef %d, ptr noundef %platform_data) unnamed_addr #2 align 64 {
entry:
  %board_info = alloca %struct.i2c_board_info, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 15
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %i2c_adap = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 10
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %board_info) #7
  %2 = call ptr @memset(ptr %board_info, i32 0, i32 56)
  %addr2 = getelementptr inbounds %struct.i2c_board_info, ptr %board_info, i32 0, i32 2
  %3 = ptrtoint ptr %addr2 to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 96, ptr %addr2, align 2
  %platform_data3 = getelementptr inbounds %struct.i2c_board_info, ptr %board_info, i32 0, i32 4
  %4 = ptrtoint ptr %platform_data3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %platform_data, ptr %platform_data3, align 4
  %call = call i32 @strscpy(ptr noundef nonnull %board_info, ptr noundef nonnull @.str.81, i32 noundef 20) #7
  %i2c_client = getelementptr inbounds %struct.anysee_state, ptr %1, i32 0, i32 3
  %5 = ptrtoint ptr %i2c_client to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %i2c_client, align 4
  %cmp6 = icmp eq ptr %6, null
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @anysee_add_i2c_dev.__UNIQUE_ID_ddebug398, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@anysee_add_i2c_dev, %if.then11)) #7
          to label %do.end [label %if.then11], !srcloc !256

if.then11:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %not.cmp68 = xor i1 %cmp6, true
  %num.0.lcssa = zext i1 %not.cmp68 to i32
  %udev = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 5
  %7 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %udev, align 4
  %dev = getelementptr inbounds %struct.usb_device, ptr %8, i32 0, i32 15
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @anysee_add_i2c_dev.__UNIQUE_ID_ddebug398, ptr noundef %dev, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.93, i32 noundef %num.0.lcssa) #7
  br label %do.end

do.end:                                           ; preds = %if.then11, %entry
  br i1 %cmp6, label %if.end21, label %do.end18

do.end18:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %udev19 = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 5
  %9 = ptrtoint ptr %udev19 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %udev19, align 4
  %dev20 = getelementptr inbounds %struct.usb_device, ptr %10, i32 0, i32 15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev20, ptr noundef nonnull @.str.95, ptr noundef nonnull @.str) #10
  br label %do.body35

if.end21:                                         ; preds = %do.end
  %call24 = call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.96, ptr noundef nonnull %board_info) #7
  %call25 = call ptr @i2c_new_client_device(ptr noundef %i2c_adap, ptr noundef nonnull %board_info) #7
  %tobool.not.i.i = icmp eq ptr %call25, null
  %cmp.i.i = icmp ugt ptr %call25, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i = or i1 %tobool.not.i.i, %cmp.i.i
  br i1 %spec.select.i.i, label %if.end21.do.body35_crit_edge, label %i2c_client_has_driver.exit

if.end21.do.body35_crit_edge:                     ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body35

i2c_client_has_driver.exit:                       ; preds = %if.end21
  %driver.i = getelementptr inbounds %struct.i2c_client, ptr %call25, i32 0, i32 4, i32 6
  %11 = ptrtoint ptr %driver.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %driver.i, align 4
  %tobool.i.not = icmp eq ptr %12, null
  br i1 %tobool.i.not, label %i2c_client_has_driver.exit.do.body35_crit_edge, label %if.end28

i2c_client_has_driver.exit.do.body35_crit_edge:   ; preds = %i2c_client_has_driver.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body35

if.end28:                                         ; preds = %i2c_client_has_driver.exit
  %13 = ptrtoint ptr %driver.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %driver.i, align 4
  %owner = getelementptr inbounds %struct.device_driver, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %owner, align 4
  %call30 = call zeroext i1 @try_module_get(ptr noundef %16) #7
  br i1 %call30, label %if.end32, label %if.then31

if.then31:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  call void @i2c_unregister_device(ptr noundef nonnull %call25) #7
  br label %do.body35

if.end32:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  %17 = ptrtoint ptr %i2c_client to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call25, ptr %i2c_client, align 4
  br label %cleanup

do.body35:                                        ; preds = %if.then31, %i2c_client_has_driver.exit.do.body35_crit_edge, %if.end21.do.body35_crit_edge, %do.end18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @anysee_add_i2c_dev.__UNIQUE_ID_ddebug399, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@anysee_add_i2c_dev, %if.then47)) #7
          to label %cleanup [label %if.then47], !srcloc !256

if.then47:                                        ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #9
  %udev48 = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 5
  %18 = ptrtoint ptr %udev48 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %udev48, align 4
  %dev49 = getelementptr inbounds %struct.usb_device, ptr %19, i32 0, i32 15
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @anysee_add_i2c_dev.__UNIQUE_ID_ddebug399, ptr noundef %dev49, ptr noundef nonnull @.str.97, ptr noundef nonnull @.str.93, i32 noundef -19) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then47, %do.body35, %if.end32
  %retval.0 = phi i32 [ 0, %if.end32 ], [ -19, %if.then47 ], [ -19, %do.body35 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %board_info) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @i2c_new_client_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_set_interface(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @anysee_ci_read_attribute_mem(ptr nocapture noundef readonly %ci, i32 noundef %slot, i32 noundef %addr) #2 align 64 {
entry:
  %buf = alloca [6 x i8], align 1
  %val = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.dvb_ca_en50221, ptr %ci, i32 0, i32 11
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf) #7
  %2 = getelementptr inbounds [6 x i8], ptr %buf, i32 0, i32 1
  %3 = getelementptr inbounds [6 x i8], ptr %buf, i32 0, i32 2
  %4 = getelementptr inbounds [6 x i8], ptr %buf, i32 0, i32 3
  %5 = getelementptr inbounds [6 x i8], ptr %buf, i32 0, i32 4
  %6 = getelementptr inbounds [6 x i8], ptr %buf, i32 0, i32 5
  %7 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 55, ptr %buf, align 1
  %8 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 2, ptr %2, align 1
  %9 = lshr i32 %addr, 8
  %10 = trunc i32 %9 to i8
  %conv = or i8 %10, 64
  %11 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv, ptr %3, align 1
  %conv3 = trunc i32 %addr to i8
  %12 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv3, ptr %4, align 1
  %13 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %5, align 1
  %14 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %6, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val) #7
  %15 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 -1, ptr %val, align 1, !annotation !255
  %call = call fastcc i32 @anysee_ctrl_msg(ptr noundef %1, ptr noundef nonnull %buf, i8 noundef zeroext 6, ptr noundef nonnull %val, i8 noundef zeroext 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %16 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %val, align 1
  %conv6 = zext i8 %17 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %conv6, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val) #7
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @anysee_ci_write_attribute_mem(ptr nocapture noundef readonly %ci, i32 noundef %slot, i32 noundef %addr, i8 noundef zeroext %val) #2 align 64 {
entry:
  %buf = alloca [7 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.dvb_ca_en50221, ptr %ci, i32 0, i32 11
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %buf) #7
  %2 = getelementptr inbounds [7 x i8], ptr %buf, i32 0, i32 1
  %3 = getelementptr inbounds [7 x i8], ptr %buf, i32 0, i32 2
  %4 = getelementptr inbounds [7 x i8], ptr %buf, i32 0, i32 3
  %5 = getelementptr inbounds [7 x i8], ptr %buf, i32 0, i32 4
  %6 = getelementptr inbounds [7 x i8], ptr %buf, i32 0, i32 5
  %7 = getelementptr inbounds [7 x i8], ptr %buf, i32 0, i32 6
  %8 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 55, ptr %buf, align 1
  %9 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 3, ptr %2, align 1
  %10 = lshr i32 %addr, 8
  %11 = trunc i32 %10 to i8
  %conv = or i8 %11, 64
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv, ptr %3, align 1
  %conv3 = trunc i32 %addr to i8
  %13 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv3, ptr %4, align 1
  %14 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %5, align 1
  %15 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %6, align 1
  %16 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %val, ptr %7, align 1
  %call = call fastcc i32 @anysee_ctrl_msg(ptr noundef %1, ptr noundef nonnull %buf, i8 noundef zeroext 7, ptr noundef null, i8 noundef zeroext 0)
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %buf) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @anysee_ci_read_cam_control(ptr nocapture noundef readonly %ci, i32 noundef %slot, i8 noundef zeroext %addr) #2 align 64 {
entry:
  %buf = alloca [6 x i8], align 1
  %val = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.dvb_ca_en50221, ptr %ci, i32 0, i32 11
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf) #7
  %2 = getelementptr inbounds [6 x i8], ptr %buf, i32 0, i32 1
  %3 = getelementptr inbounds [6 x i8], ptr %buf, i32 0, i32 2
  %4 = getelementptr inbounds [6 x i8], ptr %buf, i32 0, i32 3
  %5 = getelementptr inbounds [6 x i8], ptr %buf, i32 0, i32 4
  %6 = getelementptr inbounds [6 x i8], ptr %buf, i32 0, i32 5
  %7 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 55, ptr %buf, align 1
  %8 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 4, ptr %2, align 1
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 64, ptr %3, align 1
  %10 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %addr, ptr %4, align 1
  %11 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %5, align 1
  %12 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %6, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val) #7
  %13 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 -1, ptr %val, align 1, !annotation !255
  %call = call fastcc i32 @anysee_ctrl_msg(ptr noundef %1, ptr noundef nonnull %buf, i8 noundef zeroext 6, ptr noundef nonnull %val, i8 noundef zeroext 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %14 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %val, align 1
  %conv = zext i8 %15 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %conv, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val) #7
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @anysee_ci_write_cam_control(ptr nocapture noundef readonly %ci, i32 noundef %slot, i8 noundef zeroext %addr, i8 noundef zeroext %val) #2 align 64 {
entry:
  %buf = alloca [7 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.dvb_ca_en50221, ptr %ci, i32 0, i32 11
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %buf) #7
  %2 = getelementptr inbounds [7 x i8], ptr %buf, i32 0, i32 1
  %3 = getelementptr inbounds [7 x i8], ptr %buf, i32 0, i32 2
  %4 = getelementptr inbounds [7 x i8], ptr %buf, i32 0, i32 3
  %5 = getelementptr inbounds [7 x i8], ptr %buf, i32 0, i32 4
  %6 = getelementptr inbounds [7 x i8], ptr %buf, i32 0, i32 5
  %7 = getelementptr inbounds [7 x i8], ptr %buf, i32 0, i32 6
  %8 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 55, ptr %buf, align 1
  %9 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 5, ptr %2, align 1
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 64, ptr %3, align 1
  %11 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %addr, ptr %4, align 1
  %12 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %5, align 1
  %13 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %6, align 1
  %14 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %val, ptr %7, align 1
  %call = call fastcc i32 @anysee_ctrl_msg(ptr noundef %1, ptr noundef nonnull %buf, i8 noundef zeroext 7, ptr noundef null, i8 noundef zeroext 0)
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %buf) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @anysee_ci_slot_reset(ptr nocapture noundef readonly %ci, i32 noundef %slot) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.dvb_ca_en50221, ptr %ci, i32 0, i32 11
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %priv = getelementptr inbounds %struct.dvb_usb_device, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %4 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %4, 100
  %ci_cam_ready = getelementptr inbounds %struct.anysee_state, ptr %3, i32 0, i32 6
  %5 = ptrtoint ptr %ci_cam_ready to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %add, ptr %ci_cam_ready, align 4
  %call1 = tail call fastcc i32 @anysee_wr_reg_mask(ptr noundef %1, i16 noundef zeroext 128, i8 noundef zeroext 0, i8 noundef zeroext -128)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @msleep(i32 noundef 300) #7
  %call2 = tail call fastcc i32 @anysee_wr_reg_mask(ptr noundef %1, i16 noundef zeroext 128, i8 noundef zeroext -128, i8 noundef zeroext -128)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %entry.cleanup_crit_edge ], [ %call2, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @anysee_ci_slot_shutdown(ptr nocapture noundef readonly %ci, i32 noundef %slot) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.dvb_ca_en50221, ptr %ci, i32 0, i32 11
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %call = tail call fastcc i32 @anysee_wr_reg_mask(ptr noundef %1, i16 noundef zeroext 128, i8 noundef zeroext 0, i8 noundef zeroext -128)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @msleep(i32 noundef 30) #7
  %call1 = tail call fastcc i32 @anysee_wr_reg_mask(ptr noundef %1, i16 noundef zeroext 128, i8 noundef zeroext -128, i8 noundef zeroext -128)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call1, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @anysee_ci_slot_ts_enable(ptr nocapture noundef readonly %ci, i32 noundef %slot) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.dvb_ca_en50221, ptr %ci, i32 0, i32 11
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %call = tail call fastcc i32 @anysee_wr_reg_mask(ptr noundef %1, i16 noundef zeroext 176, i8 noundef zeroext 0, i8 noundef zeroext 2)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @anysee_ci_poll_slot_status(ptr nocapture noundef readonly %ci, i32 noundef %slot, i32 noundef %open) #2 align 64 {
entry:
  %buf.i.i = alloca [4 x i8], align 1
  %tmp.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.dvb_ca_en50221, ptr %ci, i32 0, i32 11
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %priv = getelementptr inbounds %struct.dvb_usb_device, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i) #7
  %4 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %tmp.i, align 1, !annotation !255
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i) #7
  %5 = getelementptr inbounds [4 x i8], ptr %buf.i.i, i32 0, i32 1
  %6 = getelementptr inbounds [4 x i8], ptr %buf.i.i, i32 0, i32 2
  %7 = getelementptr inbounds [4 x i8], ptr %buf.i.i, i32 0, i32 3
  %8 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -80, ptr %buf.i.i, align 1
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %5, align 1
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 -96, ptr %6, align 1
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %7, align 1
  %call.i.i = call fastcc i32 @anysee_ctrl_msg(ptr noundef %1, ptr noundef nonnull %buf.i.i, i8 noundef zeroext 4, ptr noundef nonnull %tmp.i, i8 noundef zeroext 1) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @anysee_read_reg.__UNIQUE_ID_ddebug392, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@anysee_ci_poll_slot_status, %if.then.i.i)) #7
          to label %anysee_read_reg.exit.i [label %if.then.i.i], !srcloc !256

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %udev.i.i = getelementptr inbounds %struct.dvb_usb_device, ptr %1, i32 0, i32 5
  %12 = ptrtoint ptr %udev.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %udev.i.i, align 4
  %dev.i.i = getelementptr inbounds %struct.usb_device, ptr %13, i32 0, i32 15
  %14 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %tmp.i, align 1
  %conv10.i.i = zext i8 %15 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @anysee_read_reg.__UNIQUE_ID_ddebug392, ptr noundef %dev.i.i, ptr noundef nonnull @.str.65, ptr noundef nonnull @.str.64, i32 noundef 160, i32 noundef %conv10.i.i) #7
  br label %anysee_read_reg.exit.i

anysee_read_reg.exit.i:                           ; preds = %if.then.i.i, %entry
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end, label %anysee_rd_reg_mask.exit

anysee_rd_reg_mask.exit:                          ; preds = %anysee_read_reg.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i) #7
  br label %cleanup

if.end:                                           ; preds = %anysee_read_reg.exit.i
  %16 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %tmp.i, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i) #7
  %18 = and i8 %17, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %cmp = icmp eq i8 %18, 0
  br i1 %cmp, label %if.then2, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %ci_cam_ready = getelementptr inbounds %struct.anysee_state, ptr %3, i32 0, i32 6
  %19 = ptrtoint ptr %ci_cam_ready to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %ci_cam_ready, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %21 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %20, %21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp3 = icmp slt i32 %sub, 0
  %spec.select = select i1 %cmp3, i32 5, i32 1
  br label %cleanup

cleanup:                                          ; preds = %if.then2, %if.end.cleanup_crit_edge, %anysee_rd_reg_mask.exit
  %retval.0 = phi i32 [ %call.i.i, %anysee_rd_reg_mask.exit ], [ 0, %if.end.cleanup_crit_edge ], [ %spec.select, %if.then2 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_ca_en50221_init(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @anysee_del_i2c_dev(ptr nocapture noundef readonly %d) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 15
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %arrayidx = getelementptr %struct.anysee_state, ptr %1, i32 0, i32 3, i32 0
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %cmp.not = icmp eq ptr %3, null
  %spec.select = sext i1 %cmp.not to i32
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @anysee_del_i2c_dev.__UNIQUE_ID_ddebug400, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@anysee_del_i2c_dev, %if.then4)) #7
          to label %do.end [label %if.then4], !srcloc !256

if.then4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %udev = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 5
  %4 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %udev, align 4
  %dev = getelementptr inbounds %struct.usb_device, ptr %5, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @anysee_del_i2c_dev.__UNIQUE_ID_ddebug400, ptr noundef %dev, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.105, i32 noundef %spec.select) #7
  br label %do.end

do.end:                                           ; preds = %if.then4, %entry
  br i1 %cmp.not, label %do.end10, label %if.end13

do.end10:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %udev11 = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 5
  %6 = ptrtoint ptr %udev11 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %udev11, align 4
  %dev12 = getelementptr inbounds %struct.usb_device, ptr %7, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev12, ptr noundef nonnull @.str.95, ptr noundef nonnull @.str) #10
  br label %do.body19

if.end13:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx15 = getelementptr %struct.anysee_state, ptr %1, i32 0, i32 3, i32 %spec.select
  %8 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx15, align 4
  %driver = getelementptr inbounds %struct.i2c_client, ptr %9, i32 0, i32 4, i32 6
  %10 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %driver, align 4
  %owner = getelementptr inbounds %struct.device_driver, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %owner, align 4
  tail call void @module_put(ptr noundef %13) #7
  tail call void @i2c_unregister_device(ptr noundef %9) #7
  %14 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %arrayidx15, align 4
  br label %do.body19

do.body19:                                        ; preds = %if.end13, %do.end10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @anysee_del_i2c_dev.__UNIQUE_ID_ddebug401, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@anysee_del_i2c_dev, %if.then31)) #7
          to label %do.end36 [label %if.then31], !srcloc !256

if.then31:                                        ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #9
  %udev32 = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 5
  %15 = ptrtoint ptr %udev32 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %udev32, align 4
  %dev33 = getelementptr inbounds %struct.usb_device, ptr %16, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @anysee_del_i2c_dev.__UNIQUE_ID_ddebug401, ptr noundef %dev33, ptr noundef nonnull @.str.106, ptr noundef nonnull @.str.105) #7
  br label %do.end36

do.end36:                                         ; preds = %if.then31, %do.body19
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dvb_ca_en50221_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @anysee_rc_query(ptr noundef %d) #2 align 64 {
entry:
  %buf = alloca [1 x i8], align 1
  %ircode = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %buf) #7
  %0 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 65, ptr %buf, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %ircode) #7
  %1 = ptrtoint ptr %ircode to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %ircode, align 1, !annotation !255
  %2 = getelementptr inbounds [2 x i8], ptr %ircode, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -1, ptr %2, align 1, !annotation !255
  %call = call fastcc i32 @anysee_ctrl_msg(ptr noundef %d, ptr noundef nonnull %buf, i8 noundef zeroext 1, ptr noundef nonnull %ircode, i8 noundef zeroext 2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %ircode to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %ircode, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool2.not = icmp eq i8 %5, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %do.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body:                                          ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @anysee_rc_query.__UNIQUE_ID_ddebug404, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@anysee_rc_query, %if.then8)) #7
          to label %do.end [label %if.then8], !srcloc !256

if.then8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %udev = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 5
  %6 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %udev, align 4
  %dev = getelementptr inbounds %struct.usb_device, ptr %7, i32 0, i32 15
  %8 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %2, align 1
  %conv = zext i8 %9 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @anysee_rc_query.__UNIQUE_ID_ddebug404, ptr noundef %dev, ptr noundef nonnull @.str.108, ptr noundef nonnull @.str.107, i32 noundef %conv) #7
  br label %do.end

do.end:                                           ; preds = %if.then8, %do.body
  %rc_dev = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 12
  %10 = ptrtoint ptr %rc_dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rc_dev, align 8
  %12 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %2, align 1
  %conv12 = zext i8 %13 to i32
  %or = or i32 %conv12, 2048
  %conv13 = zext i32 %or to i64
  call void @rc_keydown(ptr noundef %11, i32 noundef 9, i64 noundef %conv13, i8 noundef zeroext 0) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %ircode) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %buf) #7
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rc_keydown(ptr noundef, i32 noundef, i64 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

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

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 119)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 119)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !7, !9, !11, !13, !14, !15, !16, !17, !18, !20, !22, !23, !25, !27, !29, !31, !32, !33, !34, !36, !37, !39, !40, !42, !43, !45, !46, !47, !48, !50, !51, !52, !53, !54, !56, !58, !59, !60, !61, !62, !63, !65, !66, !67, !68, !69, !71, !72, !74, !75, !76, !77, !78, !80, !81, !82, !83, !84, !86, !87, !89, !90, !92, !93, !95, !96, !98, !99, !101, !102, !104, !105, !107, !108, !109, !110, !111, !113, !114, !115, !116, !117, !119, !120, !121, !123, !125, !127, !129, !131, !133, !135, !137, !139, !140, !141, !143, !144, !146, !148, !150, !152, !154, !156, !158, !160, !161, !162, !164, !165, !166, !167, !168, !170, !171, !173, !174, !176, !177, !178, !179, !180, !182, !184, !185, !187, !188, !190, !191, !192, !193, !194, !196, !197, !199, !201, !203, !204, !205, !207, !208, !209, !211, !213, !214, !216, !218, !220, !221, !222, !224, !225, !226, !228, !229, !230, !232, !233, !235, !236, !238, !239, !241, !242, !244, !245}
!llvm.module.flags = !{!246, !247, !248, !249, !250, !251, !252, !253}
!llvm.ident = !{!254}

!0 = !{ptr @__param_adapter_nr, !1, !"__param_adapter_nr", i1 false, i1 false}
!1 = !{!"../drivers/media/usb/dvb-usb-v2/anysee.c", i32 34, i32 1}
!2 = !{ptr @__UNIQUE_ID_adapter_nrtype386, !1, !"__UNIQUE_ID_adapter_nrtype386", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_adapter_nr387, !1, !"__UNIQUE_ID_adapter_nr387", i1 false, i1 false}
!4 = !{ptr @__initcall__kmod_dvb_usb_anysee__405_1410_anysee_usb_driver_init6, !5, !"__initcall__kmod_dvb_usb_anysee__405_1410_anysee_usb_driver_init6", i1 false, i1 false}
!5 = !{!"../drivers/media/usb/dvb-usb-v2/anysee.c", i32 1410, i32 1}
!6 = !{ptr @__exitcall_anysee_usb_driver_exit, !5, !"__exitcall_anysee_usb_driver_exit", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_author406, !8, !"__UNIQUE_ID_author406", i1 false, i1 false}
!8 = !{!"../drivers/media/usb/dvb-usb-v2/anysee.c", i32 1412, i32 1}
!9 = !{ptr @__UNIQUE_ID_description407, !10, !"__UNIQUE_ID_description407", i1 false, i1 false}
!10 = !{!"../drivers/media/usb/dvb-usb-v2/anysee.c", i32 1413, i32 1}
!11 = !{ptr @__UNIQUE_ID_file408, !12, !"__UNIQUE_ID_file408", i1 false, i1 false}
!12 = !{!"../drivers/media/usb/dvb-usb-v2/anysee.c", i32 1414, i32 1}
!13 = !{ptr @__UNIQUE_ID_license409, !12, !"__UNIQUE_ID_license409", i1 false, i1 false}
!14 = !{ptr @__param_str_adapter_nr, !1, !"__param_str_adapter_nr", i1 false, i1 false}
!15 = !{ptr @__param_arr_adapter_nr, !1, !"__param_arr_adapter_nr", i1 false, i1 false}
!16 = !{ptr @adapter_nr, !1, !"adapter_nr", i1 false, i1 false}
!17 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @anysee_usb_driver, !19, !"anysee_usb_driver", i1 false, i1 false}
!19 = !{!"../drivers/media/usb/dvb-usb-v2/anysee.c", i32 1398, i32 26}
!20 = !{ptr @.str.1, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/media/usb/dvb-usb-v2/anysee.c", i32 1390, i32 4}
!22 = !{ptr @.str.2, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @anysee_id_table, !24, !"anysee_id_table", i1 false, i1 false}
!24 = !{!"../drivers/media/usb/dvb-usb-v2/anysee.c", i32 1389, i32 35}
!25 = !{ptr @anysee_props, !26, !"anysee_props", i1 false, i1 false}
!26 = !{!"../drivers/media/usb/dvb-usb-v2/anysee.c", i32 1362, i32 41}
!27 = !{ptr @anysee_i2c_algo, !28, !"anysee_i2c_algo", i1 false, i1 false}
!28 = !{!"../drivers/media/usb/dvb-usb-v2/anysee.c", i32 247, i32 29}
!29 = !{ptr @.str.5, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/media/usb/dvb-usb-v2/anysee.c", i32 47, i32 2}
!31 = !{ptr @.str.6, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.7, !30, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @anysee_ctrl_msg.__UNIQUE_ID_ddebug388, !30, !"__UNIQUE_ID_ddebug388", i1 false, i1 false}
!34 = !{ptr @.str.8, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/media/usb/dvb-usb-v2/anysee.c", i32 74, i32 4}
!36 = !{ptr @anysee_ctrl_msg.__UNIQUE_ID_ddebug389, !35, !"__UNIQUE_ID_ddebug389", i1 false, i1 false}
!37 = !{ptr @.str.9, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/media/usb/dvb-usb-v2/anysee.c", i32 78, i32 4}
!39 = !{ptr @anysee_ctrl_msg.__UNIQUE_ID_ddebug390, !38, !"__UNIQUE_ID_ddebug390", i1 false, i1 false}
!40 = !{ptr @.str.10, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/media/usb/dvb-usb-v2/anysee.c", i32 82, i32 5}
!42 = !{ptr @anysee_ctrl_msg.__UNIQUE_ID_ddebug391, !41, !"__UNIQUE_ID_ddebug391", i1 false, i1 false}
!43 = !{ptr @.str.11, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/media/usb/dvb-usb-v2/anysee.c", i32 90, i32 3}
!45 = !{ptr @.str.12, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @anysee_ctrl_msg._entry, !44, !"_entry", i1 false, i1 false}
!47 = !{ptr @anysee_ctrl_msg._entry_ptr, !44, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.13, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/media/usb/dvb-usb-v2/anysee.c", i32 510, i32 2}
!50 = !{ptr @.str.14, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @.str.15, !49, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @anysee_read_config._entry, !49, !"_entry", i1 false, i1 false}
!53 = !{ptr @anysee_read_config._entry_ptr, !49, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.16, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/media/usb/dvb-usb-v2/anysee.c", i32 717, i32 11}
!56 = !{ptr @.str.17, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/media/usb/dvb-usb-v2/anysee.c", i32 731, i32 17}
!58 = !{ptr @.str.18, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @.str.19, !57, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @.str.20, !57, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @anysee_frontend_attach._entry, !57, !"_entry", i1 false, i1 false}
!62 = !{ptr @anysee_frontend_attach._entry_ptr, !57, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.21, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/media/usb/dvb-usb-v2/anysee.c", i32 737, i32 17}
!65 = !{ptr @.str.22, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @.str.24, !64, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @anysee_frontend_attach._entry.23, !64, !"_entry", i1 false, i1 false}
!68 = !{ptr @anysee_frontend_attach._entry_ptr.25, !64, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @anysee_frontend_attach._entry.26, !70, !"_entry", i1 false, i1 false}
!70 = !{!"../drivers/media/usb/dvb-usb-v2/anysee.c", i32 755, i32 17}
!71 = !{ptr @anysee_frontend_attach._entry_ptr.27, !70, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.28, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/media/usb/dvb-usb-v2/anysee.c", i32 768, i32 17}
!74 = !{ptr @.str.29, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @.str.31, !73, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @anysee_frontend_attach._entry.30, !73, !"_entry", i1 false, i1 false}
!77 = !{ptr @anysee_frontend_attach._entry_ptr.32, !73, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.33, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/media/usb/dvb-usb-v2/anysee.c", i32 781, i32 17}
!80 = !{ptr @.str.34, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @.str.36, !79, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @anysee_frontend_attach._entry.35, !79, !"_entry", i1 false, i1 false}
!83 = !{ptr @anysee_frontend_attach._entry_ptr.37, !79, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.38, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/media/usb/dvb-usb-v2/anysee.c", i32 798, i32 4}
!86 = !{ptr @anysee_frontend_attach.__UNIQUE_ID_ddebug402, !85, !"__UNIQUE_ID_ddebug402", i1 false, i1 false}
!87 = !{ptr @anysee_frontend_attach._entry.39, !88, !"_entry", i1 false, i1 false}
!88 = !{!"../drivers/media/usb/dvb-usb-v2/anysee.c", i32 823, i32 18}
!89 = !{ptr @anysee_frontend_attach._entry_ptr.40, !88, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @anysee_frontend_attach._entry.41, !91, !"_entry", i1 false, i1 false}
!91 = !{!"../drivers/media/usb/dvb-usb-v2/anysee.c", i32 833, i32 18}
!92 = !{ptr @anysee_frontend_attach._entry_ptr.42, !91, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @anysee_frontend_attach._entry.43, !94, !"_entry", i1 false, i1 false}
!94 = !{!"../drivers/media/usb/dvb-usb-v2/anysee.c", i32 855, i32 18}
!95 = !{ptr @anysee_frontend_attach._entry_ptr.44, !94, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @anysee_frontend_attach._entry.45, !97, !"_entry", i1 false, i1 false}
!97 = !{!"../drivers/media/usb/dvb-usb-v2/anysee.c", i32 865, i32 18}
!98 = !{ptr @anysee_frontend_attach._entry_ptr.46, !97, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @anysee_frontend_attach._entry.47, !100, !"_entry", i1 false, i1 false}
!100 = !{!"../drivers/media/usb/dvb-usb-v2/anysee.c", i32 887, i32 17}
!101 = !{ptr @anysee_frontend_attach._entry_ptr.48, !100, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @anysee_frontend_attach._entry.49, !103, !"_entry", i1 false, i1 false}
!103 = !{!"../drivers/media/usb/dvb-usb-v2/anysee.c", i32 910, i32 17}
!104 = !{ptr @anysee_frontend_attach._entry_ptr.50, !103, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @.str.51, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/media/usb/dvb-usb-v2/anysee.c", i32 932, i32 17}
!107 = !{ptr @.str.52, !106, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @.str.54, !106, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @anysee_frontend_attach._entry.53, !106, !"_entry", i1 false, i1 false}
!110 = !{ptr @anysee_frontend_attach._entry_ptr.55, !106, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @.str.56, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/media/usb/dvb-usb-v2/anysee.c", i32 947, i32 17}
!113 = !{ptr @.str.57, !112, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @.str.59, !112, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @anysee_frontend_attach._entry.58, !112, !"_entry", i1 false, i1 false}
!116 = !{ptr @anysee_frontend_attach._entry_ptr.60, !112, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @.str.62, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/media/usb/dvb-usb-v2/anysee.c", i32 958, i32 3}
!119 = !{ptr @anysee_frontend_attach._entry.61, !118, !"_entry", i1 false, i1 false}
!120 = !{ptr @anysee_frontend_attach._entry_ptr.63, !118, !"_entry_ptr", i1 false, i1 false}
!121 = !{ptr @anysee_mt352_config, !122, !"anysee_mt352_config", i1 false, i1 false}
!122 = !{!"../drivers/media/usb/dvb-usb-v2/anysee.c", i32 285, i32 28}
!123 = !{ptr @anysee_mt352_demod_init.clock_config, !124, !"clock_config", i1 false, i1 false}
!124 = !{!"../drivers/media/usb/dvb-usb-v2/anysee.c", i32 254, i32 12}
!125 = !{ptr @anysee_mt352_demod_init.reset, !126, !"reset", i1 false, i1 false}
!126 = !{!"../drivers/media/usb/dvb-usb-v2/anysee.c", i32 255, i32 12}
!127 = !{ptr @anysee_mt352_demod_init.adc_ctl_1_cfg, !128, !"adc_ctl_1_cfg", i1 false, i1 false}
!128 = !{!"../drivers/media/usb/dvb-usb-v2/anysee.c", i32 256, i32 12}
!129 = !{ptr @anysee_mt352_demod_init.agc_cfg, !130, !"agc_cfg", i1 false, i1 false}
!130 = !{!"../drivers/media/usb/dvb-usb-v2/anysee.c", i32 257, i32 12}
!131 = !{ptr @anysee_mt352_demod_init.gpp_ctl_cfg, !132, !"gpp_ctl_cfg", i1 false, i1 false}
!132 = !{!"../drivers/media/usb/dvb-usb-v2/anysee.c", i32 258, i32 12}
!133 = !{ptr @anysee_mt352_demod_init.capt_range_cfg, !134, !"capt_range_cfg", i1 false, i1 false}
!134 = !{!"../drivers/media/usb/dvb-usb-v2/anysee.c", i32 259, i32 12}
!135 = !{ptr @anysee_zl10353_config, !136, !"anysee_zl10353_config", i1 false, i1 false}
!136 = !{!"../drivers/media/usb/dvb-usb-v2/anysee.c", i32 290, i32 30}
!137 = !{ptr @.str.64, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/media/usb/dvb-usb-v2/anysee.c", i32 109, i32 2}
!139 = !{ptr @.str.65, !138, !"<string literal>", i1 false, i1 false}
!140 = !{ptr @anysee_read_reg.__UNIQUE_ID_ddebug392, !138, !"__UNIQUE_ID_ddebug392", i1 false, i1 false}
!141 = !{ptr @.str.66, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/media/usb/dvb-usb-v2/anysee.c", i32 116, i32 2}
!143 = !{ptr @anysee_write_reg.__UNIQUE_ID_ddebug393, !142, !"__UNIQUE_ID_ddebug393", i1 false, i1 false}
!144 = !{ptr @anysee_tda10023_config, !145, !"anysee_tda10023_config", i1 false, i1 false}
!145 = !{!"../drivers/media/usb/dvb-usb-v2/anysee.c", i32 274, i32 31}
!146 = !{ptr @anysee_cx24116_config, !147, !"anysee_cx24116_config", i1 false, i1 false}
!147 = !{!"../drivers/media/usb/dvb-usb-v2/anysee.c", i32 338, i32 30}
!148 = !{ptr @anysee_tda10023_tda18212_config, !149, !"anysee_tda10023_tda18212_config", i1 false, i1 false}
!149 = !{!"../drivers/media/usb/dvb-usb-v2/anysee.c", i32 311, i32 31}
!150 = !{ptr @anysee_zl10353_tda18212_config2, !151, !"anysee_zl10353_tda18212_config2", i1 false, i1 false}
!151 = !{!"../drivers/media/usb/dvb-usb-v2/anysee.c", i32 295, i32 30}
!152 = !{ptr @anysee_zl10353_tda18212_config, !153, !"anysee_zl10353_tda18212_config", i1 false, i1 false}
!153 = !{!"../drivers/media/usb/dvb-usb-v2/anysee.c", i32 303, i32 30}
!154 = !{ptr @anysee_stv0900_config, !155, !"anysee_stv0900_config", i1 false, i1 false}
!155 = !{!"../drivers/media/usb/dvb-usb-v2/anysee.c", i32 344, i32 30}
!156 = !{ptr @anysee_cxd2820r_config, !157, !"anysee_cxd2820r_config", i1 false, i1 false}
!157 = !{!"../drivers/media/usb/dvb-usb-v2/anysee.c", i32 368, i32 31}
!158 = !{ptr @.str.67, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/media/usb/dvb-usb-v2/anysee.c", i32 972, i32 2}
!160 = !{ptr @.str.68, !159, !"<string literal>", i1 false, i1 false}
!161 = !{ptr @anysee_tuner_attach.__UNIQUE_ID_ddebug403, !159, !"__UNIQUE_ID_ddebug403", i1 false, i1 false}
!162 = !{ptr @.str.69, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/media/usb/dvb-usb-v2/anysee.c", i32 979, i32 8}
!164 = !{ptr @.str.70, !163, !"<string literal>", i1 false, i1 false}
!165 = !{ptr @.str.71, !163, !"<string literal>", i1 false, i1 false}
!166 = !{ptr @anysee_tuner_attach._entry, !163, !"_entry", i1 false, i1 false}
!167 = !{ptr @anysee_tuner_attach._entry_ptr, !163, !"_entry_ptr", i1 false, i1 false}
!168 = !{ptr @anysee_tuner_attach._entry.72, !169, !"_entry", i1 false, i1 false}
!169 = !{!"../drivers/media/usb/dvb-usb-v2/anysee.c", i32 987, i32 8}
!170 = !{ptr @anysee_tuner_attach._entry_ptr.73, !169, !"_entry_ptr", i1 false, i1 false}
!171 = !{ptr @anysee_tuner_attach._entry.74, !172, !"_entry", i1 false, i1 false}
!172 = !{!"../drivers/media/usb/dvb-usb-v2/anysee.c", i32 995, i32 8}
!173 = !{ptr @anysee_tuner_attach._entry_ptr.75, !172, !"_entry_ptr", i1 false, i1 false}
!174 = !{ptr @.str.76, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/media/usb/dvb-usb-v2/anysee.c", i32 1003, i32 8}
!176 = !{ptr @.str.77, !175, !"<string literal>", i1 false, i1 false}
!177 = !{ptr @.str.79, !175, !"<string literal>", i1 false, i1 false}
!178 = !{ptr @anysee_tuner_attach._entry.78, !175, !"_entry", i1 false, i1 false}
!179 = !{ptr @anysee_tuner_attach._entry_ptr.80, !175, !"_entry_ptr", i1 false, i1 false}
!180 = !{ptr @.str.81, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/media/usb/dvb-usb-v2/anysee.c", i32 1020, i32 32}
!182 = !{ptr @anysee_tuner_attach._entry.82, !183, !"_entry", i1 false, i1 false}
!183 = !{!"../drivers/media/usb/dvb-usb-v2/anysee.c", i32 1037, i32 9}
!184 = !{ptr @anysee_tuner_attach._entry_ptr.83, !183, !"_entry_ptr", i1 false, i1 false}
!185 = !{ptr @anysee_tuner_attach._entry.84, !186, !"_entry", i1 false, i1 false}
!186 = !{!"../drivers/media/usb/dvb-usb-v2/anysee.c", i32 1043, i32 10}
!187 = !{ptr @anysee_tuner_attach._entry_ptr.85, !186, !"_entry_ptr", i1 false, i1 false}
!188 = !{ptr @.str.86, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/media/usb/dvb-usb-v2/anysee.c", i32 1078, i32 8}
!190 = !{ptr @.str.87, !189, !"<string literal>", i1 false, i1 false}
!191 = !{ptr @.str.89, !189, !"<string literal>", i1 false, i1 false}
!192 = !{ptr @anysee_tuner_attach._entry.88, !189, !"_entry", i1 false, i1 false}
!193 = !{ptr @anysee_tuner_attach._entry_ptr.90, !189, !"_entry_ptr", i1 false, i1 false}
!194 = !{ptr @anysee_tuner_attach._entry.91, !195, !"_entry", i1 false, i1 false}
!195 = !{!"../drivers/media/usb/dvb-usb-v2/anysee.c", i32 1083, i32 9}
!196 = !{ptr @anysee_tuner_attach._entry_ptr.92, !195, !"_entry_ptr", i1 false, i1 false}
!197 = !{ptr @anysee_isl6423_config, !198, !"anysee_isl6423_config", i1 false, i1 false}
!198 = !{!"../drivers/media/usb/dvb-usb-v2/anysee.c", i32 361, i32 30}
!199 = !{ptr @anysee_tda18212_config, !200, !"anysee_tda18212_config", i1 false, i1 false}
!200 = !{!"../drivers/media/usb/dvb-usb-v2/anysee.c", i32 321, i32 37}
!201 = !{ptr @.str.93, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/media/usb/dvb-usb-v2/anysee.c", i32 640, i32 2}
!203 = !{ptr @.str.94, !202, !"<string literal>", i1 false, i1 false}
!204 = !{ptr @anysee_add_i2c_dev.__UNIQUE_ID_ddebug398, !202, !"__UNIQUE_ID_ddebug398", i1 false, i1 false}
!205 = !{ptr @.str.95, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/media/usb/dvb-usb-v2/anysee.c", i32 643, i32 3}
!207 = !{ptr @anysee_add_i2c_dev._entry, !206, !"_entry", i1 false, i1 false}
!208 = !{ptr @anysee_add_i2c_dev._entry_ptr, !206, !"_entry_ptr", i1 false, i1 false}
!209 = !{ptr @.str.96, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/media/usb/dvb-usb-v2/anysee.c", i32 649, i32 2}
!211 = !{ptr @.str.97, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../drivers/media/usb/dvb-usb-v2/anysee.c", i32 668, i32 2}
!213 = !{ptr @anysee_add_i2c_dev.__UNIQUE_ID_ddebug399, !212, !"__UNIQUE_ID_ddebug399", i1 false, i1 false}
!214 = !{ptr @anysee_stv6110_config, !215, !"anysee_stv6110_config", i1 false, i1 false}
!215 = !{!"../drivers/media/usb/dvb-usb-v2/anysee.c", i32 355, i32 30}
!216 = !{ptr @anysee_tda18212_config2, !217, !"anysee_tda18212_config2", i1 false, i1 false}
!217 = !{!"../drivers/media/usb/dvb-usb-v2/anysee.c", i32 328, i32 37}
!218 = !{ptr @.str.98, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../drivers/media/usb/dvb-usb-v2/anysee.c", i32 530, i32 2}
!220 = !{ptr @.str.99, !219, !"<string literal>", i1 false, i1 false}
!221 = !{ptr @anysee_frontend_ctrl.__UNIQUE_ID_ddebug397, !219, !"__UNIQUE_ID_ddebug397", i1 false, i1 false}
!222 = !{ptr @.str.100, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../drivers/media/usb/dvb-usb-v2/anysee.c", i32 173, i32 2}
!224 = !{ptr @.str.101, !223, !"<string literal>", i1 false, i1 false}
!225 = !{ptr @anysee_streaming_ctrl.__UNIQUE_ID_ddebug394, !223, !"__UNIQUE_ID_ddebug394", i1 false, i1 false}
!226 = !{ptr @.str.102, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../drivers/media/usb/dvb-usb-v2/anysee.c", i32 180, i32 2}
!228 = !{ptr @.str.103, !227, !"<string literal>", i1 false, i1 false}
!229 = !{ptr @anysee_led_ctrl.__UNIQUE_ID_ddebug395, !227, !"__UNIQUE_ID_ddebug395", i1 false, i1 false}
!230 = !{ptr @.str.104, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../drivers/media/usb/dvb-usb-v2/anysee.c", i32 188, i32 2}
!232 = !{ptr @anysee_ir_ctrl.__UNIQUE_ID_ddebug396, !231, !"__UNIQUE_ID_ddebug396", i1 false, i1 false}
!233 = !{ptr @.str.105, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../drivers/media/usb/dvb-usb-v2/anysee.c", i32 685, i32 2}
!235 = !{ptr @anysee_del_i2c_dev.__UNIQUE_ID_ddebug400, !234, !"__UNIQUE_ID_ddebug400", i1 false, i1 false}
!236 = !{ptr @anysee_del_i2c_dev._entry, !237, !"_entry", i1 false, i1 false}
!237 = !{!"../drivers/media/usb/dvb-usb-v2/anysee.c", i32 688, i32 3}
!238 = !{ptr @anysee_del_i2c_dev._entry_ptr, !237, !"_entry_ptr", i1 false, i1 false}
!239 = !{ptr @.str.106, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../drivers/media/usb/dvb-usb-v2/anysee.c", i32 703, i32 2}
!241 = !{ptr @anysee_del_i2c_dev.__UNIQUE_ID_ddebug401, !240, !"__UNIQUE_ID_ddebug401", i1 false, i1 false}
!242 = !{ptr @.str.107, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../drivers/media/usb/dvb-usb-v2/anysee.c", i32 1134, i32 3}
!244 = !{ptr @.str.108, !243, !"<string literal>", i1 false, i1 false}
!245 = !{ptr @anysee_rc_query.__UNIQUE_ID_ddebug404, !243, !"__UNIQUE_ID_ddebug404", i1 false, i1 false}
!246 = !{i32 1, !"wchar_size", i32 2}
!247 = !{i32 1, !"min_enum_size", i32 4}
!248 = !{i32 8, !"branch-target-enforcement", i32 0}
!249 = !{i32 8, !"sign-return-address", i32 0}
!250 = !{i32 8, !"sign-return-address-all", i32 0}
!251 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!252 = !{i32 7, !"uwtable", i32 1}
!253 = !{i32 7, !"frame-pointer", i32 2}
!254 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!255 = !{!"auto-init"}
!256 = !{i64 2148994541, i64 2148994546, i64 2148994559, i64 2148994603, i64 2148994637, i64 2148994658}
