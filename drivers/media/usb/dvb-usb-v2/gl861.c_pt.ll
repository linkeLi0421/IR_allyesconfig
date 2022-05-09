; ModuleID = '/llk/IR_all_yes/drivers/media/usb/dvb-usb-v2/gl861.c_pt.bc'
source_filename = "../drivers/media/usb/dvb-usb-v2/gl861.c"
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
%struct.module_version_attribute = type { %struct.module_attribute, ptr, ptr }
%struct.module_attribute = type { %struct.attribute, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.usb_device_id = type { i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i32 }
%struct.dvb_usb_driver_info = type { ptr, ptr, ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.126 = type { i32 }
%struct.dvb_usb_adapter_properties = type { i8, i8, ptr, ptr, %struct.usb_data_stream_properties }
%struct.usb_data_stream_properties = type { i8, i8, i8, %union.anon.125 }
%union.anon.125 = type { %struct.anon.127 }
%struct.anon.127 = type { i32, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.zl10353_config = type { i8, i32, i32, i32, i32, i8, i8, i8 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.qt1010_config = type { i8 }
%struct.friio_config = type { %struct.i2c_board_info, %struct.tc90522_config, %struct.i2c_board_info, %struct.dvb_pll_config }
%struct.tc90522_config = type { ptr, ptr, i8 }
%struct.i2c_board_info = type { [20 x i8], i16, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32 }
%struct.dvb_pll_config = type { ptr }
%struct.dvb_usb_adapter = type { ptr, %struct.usb_data_stream, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dvb_adapter, %struct.dmxdev, %struct.dvb_demux, %struct.dvb_net, [3 x ptr], [3 x ptr], [3 x ptr] }
%struct.usb_data_stream = type { ptr, %struct.usb_data_stream_properties, i8, ptr, [10 x ptr], i32, i32, [10 x ptr], [10 x i32], i32, i32, ptr }
%struct.dvb_adapter = type { i32, %struct.list_head, %struct.list_head, ptr, [6 x i8], ptr, ptr, ptr, i32, ptr, %struct.mutex, %struct.mutex, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dmxdev = type { ptr, ptr, ptr, ptr, i32, i32, i8, ptr, %struct.dvb_ringbuffer, %struct.dvb_vb2_ctx, %struct.mutex, %struct.spinlock }
%struct.dvb_ringbuffer = type { ptr, i32, i32, i32, i32, %struct.wait_queue_head, %struct.spinlock }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dvb_vb2_ctx = type { %struct.vb2_queue, %struct.mutex, %struct.spinlock, %struct.list_head, ptr, i32, i32, i32, i32, i32, i32, i32, i32, [21 x i8] }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.dvb_demux = type { %struct.dmx_demux, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, %struct.list_head, [20 x ptr], [20 x i16], %struct.list_head, [204 x i8], i32, %struct.mutex, %struct.spinlock, ptr, i64, i32, i32, i32 }
%struct.dmx_demux = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_net = type { ptr, [10 x ptr], [10 x i32], i8, ptr, %struct.mutex }
%struct.dvb_usb_device = type { ptr, ptr, ptr, i8, ptr, ptr, %struct.dvb_usb_rc, i32, %struct.mutex, %struct.mutex, %struct.i2c_adapter, [2 x %struct.dvb_usb_adapter], ptr, [64 x i8], %struct.delayed_work, ptr }
%struct.dvb_usb_rc = type { ptr, i64, ptr, ptr, i32, i32, i8, i32 }
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
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.usb_interface = type { ptr, ptr, i32, ptr, i32, i32, i8, %struct.device, ptr, %struct.work_struct }
%struct.gl861 = type { [16 x i8], ptr, ptr, ptr }
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

@__param_str_adapter_nr = internal constant [25 x i8] c"dvb_usb_gl861.adapter_nr\00", align 1
@param_array_ops = external dso_local constant %struct.kernel_param_ops, align 4
@__param_arr_adapter_nr = internal constant %struct.kparam_array { i32 16, i32 2, ptr null, ptr @param_ops_short, ptr @adapter_nr }, align 4
@__param_adapter_nr = internal constant %struct.kernel_param { ptr @__param_str_adapter_nr, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.101 { ptr @__param_arr_adapter_nr } }, section "__param", align 4
@__UNIQUE_ID_adapter_nrtype386 = internal constant [49 x i8] c"dvb_usb_gl861.parmtype=adapter_nr:array of short\00", section ".modinfo", align 1
@__UNIQUE_ID_adapter_nr387 = internal constant [50 x i8] c"dvb_usb_gl861.parm=adapter_nr:DVB adapter numbers\00", section ".modinfo", align 1
@__initcall__kmod_dvb_usb_gl861__392_573_gl861_usb_driver_init6 = internal global ptr @gl861_usb_driver_init, section ".initcall6.init", align 4
@gl861_usb_driver = internal global { %struct.usb_driver, [44 x i8] } { %struct.usb_driver { ptr @.str.1, ptr @dvb_usbv2_probe, ptr @dvb_usbv2_disconnect, ptr null, ptr @dvb_usbv2_suspend, ptr @dvb_usbv2_resume, ptr @dvb_usbv2_reset_resume, ptr null, ptr null, ptr @gl861_id_table, ptr null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 -112 }, [44 x i8] zeroinitializer }, align 32
@__exitcall_gl861_usb_driver_exit = internal global ptr @gl861_usb_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author393 = internal constant [56 x i8] c"dvb_usb_gl861.author=Carl Lundqvist <comabug@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description394 = internal constant [71 x i8] c"dvb_usb_gl861.description=Driver MSI Mega Sky 580 DVB-T USB2.0 / GL861\00", section ".modinfo", align 1
@__UNIQUE_ID_version395 = internal constant [26 x i8] c"dvb_usb_gl861.version=0.1\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"dvb_usb_gl861\00", [18 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"0.1\00", [28 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.2 }, section "__modver", align 4
@__UNIQUE_ID_file396 = internal constant [62 x i8] c"dvb_usb_gl861.file=drivers/media/usb/dvb-usb-v2/dvb-usb-gl861\00", section ".modinfo", align 1
@__UNIQUE_ID_license397 = internal constant [26 x i8] c"dvb_usb_gl861.license=GPL\00", section ".modinfo", align 1
@param_ops_short = external dso_local constant %struct.kernel_param_ops, align 4
@adapter_nr = internal global { [16 x i16], [32 x i8] } { [16 x i16] [i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1], [32 x i8] zeroinitializer }, align 32
@gl861_id_table = internal constant { [4 x %struct.usb_device_id], [32 x i8] } { [4 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 3504, i16 21889, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral to i32) }, %struct.usb_device_id { i16 3, i16 1507, i16 -3728, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.5 to i32) }, %struct.usb_device_id { i16 3, i16 31337, i16 1, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.7 to i32) }, %struct.usb_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"MSI Mega Sky 55801 DVB-T USB2.0\00", [32 x i8] zeroinitializer }, align 32
@.compoundliteral = internal constant { %struct.dvb_usb_driver_info, [20 x i8] } { %struct.dvb_usb_driver_info { ptr @.str.3, ptr null, ptr @gl861_props }, [20 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"A-LINK DTU DVB-T USB2.0\00", [40 x i8] zeroinitializer }, align 32
@.compoundliteral.5 = internal constant { %struct.dvb_usb_driver_info, [20 x i8] } { %struct.dvb_usb_driver_info { ptr @.str.4, ptr null, ptr @gl861_props }, [20 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"774 Friio White ISDB-T USB2.0\00", [34 x i8] zeroinitializer }, align 32
@.compoundliteral.7 = internal constant { %struct.dvb_usb_driver_info, [20 x i8] } { %struct.dvb_usb_driver_info { ptr @.str.6, ptr null, ptr @friio_props }, [20 x i8] zeroinitializer }, align 32
@gl861_i2c_algo = internal global { %struct.i2c_algorithm, [36 x i8] } { %struct.i2c_algorithm { ptr @gl861_i2c_master_xfer, ptr null, ptr null, ptr null, ptr @gl861_i2c_functionality, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@gl861_props = internal global { { ptr, ptr, ptr, i8, i32, i8, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, <{ { i8, i8, ptr, ptr, { i8, i8, i8, { %struct.anon.126, [8 x i8] } } }, %struct.dvb_usb_adapter_properties }>, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }, [56 x i8] } { { ptr, ptr, ptr, i8, i32, i8, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, <{ { i8, i8, ptr, ptr, { i8, i8, i8, { %struct.anon.126, [8 x i8] } } }, %struct.dvb_usb_adapter_properties }>, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @.str.1, ptr null, ptr @adapter_nr, i8 0, i32 28, i8 0, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @gl861_i2c_algo, i32 1, ptr null, <{ { i8, i8, ptr, ptr, { i8, i8, i8, { %struct.anon.126, [8 x i8] } } }, %struct.dvb_usb_adapter_properties }> <{ { i8, i8, ptr, ptr, { i8, i8, i8, { %struct.anon.126, [8 x i8] } } } { i8 0, i8 0, ptr null, ptr null, { i8, i8, i8, { %struct.anon.126, [8 x i8] } } { i8 1, i8 7, i8 -127, { %struct.anon.126, [8 x i8] } { %struct.anon.126 { i32 512 }, [8 x i8] undef } } }, %struct.dvb_usb_adapter_properties zeroinitializer }>, ptr null, ptr null, ptr null, ptr @gl861_frontend_attach, ptr null, ptr @gl861_tuner_attach, ptr null, ptr null, ptr null, ptr @gl861_init, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@gl861_i2c_master_xfer.__UNIQUE_ID_ddebug390 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.9, ptr @.str.10, ptr @.str.11, i8 0, i8 37, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"gl861_i2c_master_xfer\00", [42 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"drivers/media/usb/dvb-usb-v2/gl861.c\00", [59 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"unknown i2c msg, num %u\0A\00", [39 x i8] zeroinitializer }, align 32
@gl861_i2c_master_xfer.__UNIQUE_ID_ddebug391 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.9, ptr @.str.10, ptr @.str.12, i8 0, i8 39, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"failed %d\0A\00", [21 x i8] zeroinitializer }, align 32
@gl861_ctrl_msg.__UNIQUE_ID_ddebug388 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.13, ptr @.str.10, ptr @.str.14, i8 0, i8 15, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"gl861_ctrl_msg\00", [17 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%d | %02x %02x %*ph %*ph %*ph %s %*ph\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"<<<\00", [28 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c">>>\00", [28 x i8] zeroinitializer }, align 32
@gl861_ctrl_msg.__UNIQUE_ID_ddebug389 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.13, ptr @.str.10, ptr @.str.12, i8 0, i8 19, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"zl10353_attach\00", [17 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"symbol:zl10353_attach\00", [42 x i8] zeroinitializer }, align 32
@gl861_zl10353_config = internal global { %struct.zl10353_config, [40 x i8] } { %struct.zl10353_config { i8 15, i32 0, i32 0, i32 1, i32 1, i8 0, i8 0, i8 0 }, [40 x i8] zeroinitializer }, align 32
@gl861_frontend_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.10, i32 181, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013DVB: Unable to find symbol zl10353_attach()\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"gl861_frontend_attach\00", [42 x i8] zeroinitializer }, align 32
@gl861_frontend_attach._entry_ptr = internal global ptr @gl861_frontend_attach._entry, section ".printk_index", align 4
@.str.21 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"qt1010_attach\00", [18 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"symbol:qt1010_attach\00", [43 x i8] zeroinitializer }, align 32
@gl861_qt1010_config = internal global { %struct.qt1010_config, [31 x i8] } { %struct.qt1010_config { i8 98 }, [31 x i8] zeroinitializer }, align 32
@gl861_tuner_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.10, i32 196, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013DVB: Unable to find symbol qt1010_attach()\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"gl861_tuner_attach\00", [45 x i8] zeroinitializer }, align 32
@gl861_tuner_attach._entry_ptr = internal global ptr @gl861_tuner_attach._entry, section ".printk_index", align 4
@friio_props = internal global { { ptr, ptr, ptr, i8, i32, i8, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, <{ { i8, i8, ptr, ptr, { i8, i8, i8, { %struct.anon.126, [8 x i8] } } }, %struct.dvb_usb_adapter_properties }>, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }, [56 x i8] } { { ptr, ptr, ptr, i8, i32, i8, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, <{ { i8, i8, ptr, ptr, { i8, i8, i8, { %struct.anon.126, [8 x i8] } } }, %struct.dvb_usb_adapter_properties }>, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @.str.1, ptr null, ptr @adapter_nr, i8 0, i32 28, i8 0, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @gl861_i2c_algo, i32 1, ptr null, <{ { i8, i8, ptr, ptr, { i8, i8, i8, { %struct.anon.126, [8 x i8] } } }, %struct.dvb_usb_adapter_properties }> <{ { i8, i8, ptr, ptr, { i8, i8, i8, { %struct.anon.126, [8 x i8] } } } { i8 0, i8 0, ptr null, ptr null, { i8, i8, i8, { %struct.anon.126, [8 x i8] } } { i8 1, i8 8, i8 1, { %struct.anon.126, [8 x i8] } { %struct.anon.126 { i32 16384 }, [8 x i8] undef } } }, %struct.dvb_usb_adapter_properties zeroinitializer }>, ptr @friio_power_ctrl, ptr null, ptr null, ptr @friio_frontend_attach, ptr @friio_frontend_detach, ptr @friio_tuner_attach, ptr @friio_tuner_detach, ptr null, ptr @friio_streaming_ctrl, ptr @friio_init, ptr @friio_exit, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@friio_config = internal constant { %struct.friio_config, [32 x i8] } { %struct.friio_config { %struct.i2c_board_info { [20 x i8] c"tc90522ter\00\00\00\00\00\00\00\00\00\00", i16 0, i16 24, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0 }, %struct.tc90522_config { ptr null, ptr null, i8 1 }, %struct.i2c_board_info { [20 x i8] c"tua6034_friio\00\00\00\00\00\00\00", i16 0, i16 96, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0 }, %struct.dvb_pll_config zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"tc90522\00", [24 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"dvb_pll\00", [24 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@friio_init.demod_init = internal constant { [36 x [2 x i8]], [56 x i8] } { [36 x [2 x i8]] [[2 x i8] c"\01@", [2 x i8] c"\048", [2 x i8] c"\05@", [2 x i8] c"\07@", [2 x i8] c"\0FO", [2 x i8] c"\11!", [2 x i8] c"\12\0B", [2 x i8] c"\13/", [2 x i8] c"\141", [2 x i8] c"\16\02", [2 x i8] c"!\C4", [2 x i8] c"\22 ", [2 x i8] c",y", [2 x i8] c"-4", [2 x i8] c"/\00", [2 x i8] c"0(", [2 x i8] c"11", [2 x i8] c"2\DF", [2 x i8] c"8\01", [2 x i8] c"9x", [2 x i8] c";3", [2 x i8] c"<3", [2 x i8] c"H\90", [2 x i8] c"Qh", [2 x i8] c"^8", [2 x i8] c"q\00", [2 x i8] c"r\08", [2 x i8] c"w\00", [2 x i8] c"\C0!", [2 x i8] c"\C1\10", [2 x i8] c"\E4\1A", [2 x i8] c"\EA\1F", [2 x i8] c"w\00", [2 x i8] c"q\00", [2 x i8] c"q\00", [2 x i8] c"v\0C"], [56 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.28 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 3]
@___asan_gen_.29 = private unnamed_addr constant [17 x i8] c"gl861_usb_driver\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 561, i32 26 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 577, i32 1 }
@___asan_gen_.41 = private unnamed_addr constant [11 x i8] c"adapter_nr\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 15, i32 1 }
@___asan_gen_.44 = private unnamed_addr constant [15 x i8] c"gl861_id_table\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 550, i32 35 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 551, i32 4 }
@___asan_gen_.50 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 553, i32 4 }
@___asan_gen_.54 = private unnamed_addr constant [19 x i8] c".compoundliteral.5\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 555, i32 4 }
@___asan_gen_.58 = private unnamed_addr constant [19 x i8] c".compoundliteral.7\00", align 1
@___asan_gen_.59 = private unnamed_addr constant [15 x i8] c"gl861_i2c_algo\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 165, i32 29 }
@___asan_gen_.62 = private unnamed_addr constant [12 x i8] c"gl861_props\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 211, i32 41 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 148, i32 3 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 156, i32 2 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 60, i32 2 }
@___asan_gen_.95 = private unnamed_addr constant [21 x i8] c"gl861_zl10353_config\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 171, i32 30 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 180, i32 16 }
@___asan_gen_.113 = private unnamed_addr constant [20 x i8] c"gl861_qt1010_config\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 188, i32 29 }
@___asan_gen_.116 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 194, i32 9 }
@___asan_gen_.125 = private unnamed_addr constant [12 x i8] c"friio_props\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 525, i32 41 }
@___asan_gen_.128 = private unnamed_addr constant [13 x i8] c"friio_config\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 243, i32 34 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 424, i32 24 }
@___asan_gen_.134 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 457, i32 24 }
@___asan_gen_.137 = private unnamed_addr constant [11 x i8] c"demod_init\00", align 1
@___asan_gen_.138 = private constant [40 x i8] c"../drivers/media/usb/dvb-usb-v2/gl861.c\00", align 1
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 480, i32 18 }
@llvm.compiler.used = appending global [53 x ptr] [ptr @__UNIQUE_ID_adapter_nr387, ptr @__UNIQUE_ID_adapter_nrtype386, ptr @__UNIQUE_ID_author393, ptr @__UNIQUE_ID_description394, ptr @__UNIQUE_ID_file396, ptr @__UNIQUE_ID_license397, ptr @__UNIQUE_ID_version395, ptr @__exitcall_gl861_usb_driver_exit, ptr @__initcall__kmod_dvb_usb_gl861__392_573_gl861_usb_driver_init6, ptr @__modver_attr, ptr @__param_adapter_nr, ptr @gl861_frontend_attach._entry, ptr @gl861_frontend_attach._entry_ptr, ptr @gl861_tuner_attach._entry, ptr @gl861_tuner_attach._entry_ptr, ptr @gl861_usb_driver_exit, ptr @gl861_usb_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @adapter_nr, ptr @gl861_id_table, ptr @.str.3, ptr @.compoundliteral, ptr @.str.4, ptr @.compoundliteral.5, ptr @.str.6, ptr @.compoundliteral.7, ptr @gl861_i2c_algo, ptr @gl861_props, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @gl861_zl10353_config, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @gl861_qt1010_config, ptr @.str.23, ptr @.str.24, ptr @friio_props, ptr @friio_config, ptr @.str.26, ptr @.str.27, ptr @friio_init.demod_init], section "llvm.metadata"
@0 = internal global [39 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gl861_usb_driver to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adapter_nr to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gl861_id_table to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.5 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.7 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gl861_i2c_algo to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gl861_props to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gl861_zl10353_config to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gl861_frontend_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gl861_qt1010_config to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gl861_tuner_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @friio_props to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @friio_config to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @friio_init.demod_init to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @gl861_usb_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usb_register_driver(ptr noundef nonnull @gl861_usb_driver, ptr noundef null, ptr noundef nonnull @.str.1) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @gl861_usb_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @usb_deregister(ptr noundef nonnull @gl861_usb_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_deregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #1

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
define internal i32 @gl861_frontend_attach(ptr noundef %adap) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @__symbol_get(ptr noundef nonnull @.str.17) #8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %cond.end, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

cond.end:                                         ; preds = %entry
  %call1 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.18) #8
  %call2 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.17) #8
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %do.end, label %cond.end.if.then_crit_edge

cond.end.if.then_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.then:                                          ; preds = %cond.end.if.then_crit_edge, %entry.if.then_crit_edge
  %cond24 = phi ptr [ %call2, %cond.end.if.then_crit_edge ], [ %call, %entry.if.then_crit_edge ]
  %id = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 2
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %id, align 4
  %conv = zext i8 %1 to i32
  %.neg = mul nsw i32 %conv, -2280
  %idx.neg = add nsw i32 %.neg, -1616
  %add.ptr = getelementptr i8, ptr %adap, i32 %idx.neg
  %i2c_adap = getelementptr inbounds %struct.dvb_usb_device, ptr %add.ptr, i32 0, i32 10
  %call4 = tail call ptr %cond24(ptr noundef nonnull @gl861_zl10353_config, ptr noundef %i2c_adap) #8
  %cmp = icmp eq ptr %call4, null
  br i1 %cmp, label %if.then6, label %if.then.if.end9_crit_edge

if.then.if.end9_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

if.then6:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__symbol_put(ptr noundef nonnull @.str.17) #8
  br label %if.end9

do.end:                                           ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19) #11
  br label %if.end9

if.end9:                                          ; preds = %do.end, %if.then6, %if.then.if.end9_crit_edge
  %__r.0 = phi ptr [ null, %if.then6 ], [ %call4, %if.then.if.end9_crit_edge ], [ null, %do.end ]
  %fe = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 14
  %2 = ptrtoint ptr %fe to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %__r.0, ptr %fe, align 8
  %cmp13 = icmp eq ptr %__r.0, null
  %. = select i1 %cmp13, i32 -5, i32 0
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gl861_tuner_attach(ptr noundef %adap) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @__symbol_get(ptr noundef nonnull @.str.21) #8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %cond.end, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

cond.end:                                         ; preds = %entry
  %call1 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.22) #8
  %call2 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.21) #8
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %do.end, label %cond.end.if.then_crit_edge

cond.end.if.then_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.then:                                          ; preds = %cond.end.if.then_crit_edge, %entry.if.then_crit_edge
  %cond20 = phi ptr [ %call2, %cond.end.if.then_crit_edge ], [ %call, %entry.if.then_crit_edge ]
  %fe = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 14
  %0 = ptrtoint ptr %fe to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fe, align 8
  %id = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 2
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %id, align 4
  %conv = zext i8 %3 to i32
  %.neg = mul nsw i32 %conv, -2280
  %idx.neg = add nsw i32 %.neg, -1616
  %add.ptr = getelementptr i8, ptr %adap, i32 %idx.neg
  %i2c_adap = getelementptr inbounds %struct.dvb_usb_device, ptr %add.ptr, i32 0, i32 10
  %call4 = tail call ptr %cond20(ptr noundef %1, ptr noundef %i2c_adap, ptr noundef nonnull @gl861_qt1010_config) #8
  %cmp = icmp eq ptr %call4, null
  br i1 %cmp, label %if.then6, label %if.then.if.end9_crit_edge

if.then.if.end9_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

if.then6:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__symbol_put(ptr noundef nonnull @.str.21) #8
  br label %if.end9

do.end:                                           ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23) #11
  br label %if.end9

if.end9:                                          ; preds = %do.end, %if.then6, %if.then.if.end9_crit_edge
  %__r.0 = phi ptr [ null, %if.then6 ], [ %call4, %if.then.if.end9_crit_edge ], [ null, %do.end ]
  %cmp11 = icmp eq ptr %__r.0, null
  %cond13 = select i1 %cmp11, i32 -19, i32 0
  ret i32 %cond13
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gl861_init(ptr nocapture noundef readonly %d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %udev = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 5
  %0 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %udev, align 4
  %call = tail call i32 @usb_set_interface(ptr noundef %1, i32 noundef 0, i32 noundef 0) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gl861_i2c_master_xfer(ptr nocapture noundef readonly %adap, ptr nocapture noundef readonly %msg, i32 noundef %num) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %adap, i32 0, i32 9, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %intf1 = getelementptr inbounds %struct.dvb_usb_device, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %intf1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %intf1, align 8
  %4 = zext i32 %num to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %num, label %entry.do.body_crit_edge [
    i32 1, label %land.lhs.true
    i32 2, label %land.lhs.true43
  ]

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

land.lhs.true:                                    ; preds = %entry
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 1
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %flags, align 2
  %7 = and i16 %6, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool.not = icmp eq i16 %7, 0
  br i1 %tobool.not, label %if.then, label %land.lhs.true87

if.then:                                          ; preds = %land.lhs.true
  %len = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 2
  %8 = ptrtoint ptr %len to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %len, align 4
  %10 = add i16 %9, -17
  call void @__sanitizer_cov_trace_const_cmp2(i16 -15, i16 %10)
  %11 = icmp ult i16 %10, -15
  br i1 %11, label %if.then.do.body125_crit_edge, label %if.end

if.then.do.body125_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body125

if.end:                                           ; preds = %if.then
  %12 = ptrtoint ptr %msg to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %msg, align 4
  %shl = shl i16 %13, 9
  %buf = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 3
  %14 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %buf, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %15, align 1
  %conv18 = zext i8 %17 to i16
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %9)
  %cmp22 = icmp eq i16 %9, 2
  br i1 %cmp22, label %if.then24, label %if.else

if.then24:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx27 = getelementptr i8, ptr %15, i32 1
  %18 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx27, align 1
  %conv28 = zext i8 %19 to i16
  %or = or i16 %shl, %conv28
  br label %if.end38

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %sub = add nsw i16 %9, -1
  %arrayidx37 = getelementptr i8, ptr %15, i32 1
  br label %if.end38

if.end38:                                         ; preds = %if.else, %if.then24
  %request.0 = phi i8 [ 1, %if.then24 ], [ 3, %if.else ]
  %data.0 = phi ptr [ null, %if.then24 ], [ %arrayidx37, %if.else ]
  %value.0 = phi i16 [ %or, %if.then24 ], [ %shl, %if.else ]
  %size.0 = phi i16 [ 0, %if.then24 ], [ %sub, %if.else ]
  %call39 = tail call fastcc i32 @gl861_ctrl_msg(ptr noundef %1, i8 noundef zeroext %request.0, i16 noundef zeroext %value.0, i16 noundef zeroext %conv18, ptr noundef %data.0, i16 noundef zeroext %size.0)
  br label %if.end121

land.lhs.true43:                                  ; preds = %entry
  %flags45 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 1
  %20 = ptrtoint ptr %flags45 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %flags45, align 2
  %22 = and i16 %21, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %22)
  %tobool48.not = icmp eq i16 %22, 0
  br i1 %tobool48.not, label %land.lhs.true49, label %land.lhs.true43.do.body_crit_edge

land.lhs.true43.do.body_crit_edge:                ; preds = %land.lhs.true43
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

land.lhs.true49:                                  ; preds = %land.lhs.true43
  %flags51 = getelementptr %struct.i2c_msg, ptr %msg, i32 1, i32 1
  %23 = ptrtoint ptr %flags51 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %flags51, align 2
  %25 = and i16 %24, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %25)
  %tobool54.not = icmp eq i16 %25, 0
  br i1 %tobool54.not, label %land.lhs.true49.do.body_crit_edge, label %if.then55

land.lhs.true49.do.body_crit_edge:                ; preds = %land.lhs.true49
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

if.then55:                                        ; preds = %land.lhs.true49
  %len57 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 2
  %26 = ptrtoint ptr %len57 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %len57, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %27)
  %cmp59 = icmp ugt i16 %27, 1
  br i1 %cmp59, label %if.then55.do.body125_crit_edge, label %lor.lhs.false61

if.then55.do.body125_crit_edge:                   ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body125

lor.lhs.false61:                                  ; preds = %if.then55
  %len63 = getelementptr %struct.i2c_msg, ptr %msg, i32 1, i32 2
  %28 = ptrtoint ptr %len63 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %len63, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 16, i16 %29)
  %cmp65 = icmp ugt i16 %29, 16
  br i1 %cmp65, label %lor.lhs.false61.do.body125_crit_edge, label %if.end68

lor.lhs.false61.do.body125_crit_edge:             ; preds = %lor.lhs.false61
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body125

if.end68:                                         ; preds = %lor.lhs.false61
  call void @__sanitizer_cov_trace_pc() #10
  %30 = ptrtoint ptr %msg to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %msg, align 4
  %shl72 = shl i16 %31, 9
  %buf76 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 3
  %32 = ptrtoint ptr %buf76 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %buf76, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %33, align 1
  %conv78 = zext i8 %35 to i16
  %buf80 = getelementptr %struct.i2c_msg, ptr %msg, i32 1, i32 3
  %36 = ptrtoint ptr %buf80 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %buf80, align 4
  %call83 = tail call fastcc i32 @gl861_ctrl_msg(ptr noundef %1, i8 noundef zeroext 2, i16 noundef zeroext %shl72, i16 noundef zeroext %conv78, ptr noundef %37, i16 noundef zeroext %29)
  br label %if.end121

land.lhs.true87:                                  ; preds = %land.lhs.true
  %38 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %flags, align 2
  %40 = and i16 %39, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %40)
  %tobool92.not = icmp eq i16 %40, 0
  br i1 %tobool92.not, label %land.lhs.true87.do.body_crit_edge, label %if.then93

land.lhs.true87.do.body_crit_edge:                ; preds = %land.lhs.true87
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

if.then93:                                        ; preds = %land.lhs.true87
  %len95 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 2
  %41 = ptrtoint ptr %len95 to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %len95, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 16, i16 %42)
  %cmp97 = icmp ugt i16 %42, 16
  br i1 %cmp97, label %if.then93.do.body125_crit_edge, label %if.end100

if.then93.do.body125_crit_edge:                   ; preds = %if.then93
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body125

if.end100:                                        ; preds = %if.then93
  call void @__sanitizer_cov_trace_pc() #10
  %43 = ptrtoint ptr %msg to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %msg, align 4
  %shl104 = shl i16 %44, 9
  %buf108 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 3
  %45 = ptrtoint ptr %buf108 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %buf108, align 4
  %call111 = tail call fastcc i32 @gl861_ctrl_msg(ptr noundef %1, i8 noundef zeroext 2, i16 noundef zeroext %shl104, i16 noundef zeroext 256, ptr noundef %46, i16 noundef zeroext %42)
  br label %if.end121

do.body:                                          ; preds = %land.lhs.true87.do.body_crit_edge, %land.lhs.true49.do.body_crit_edge, %land.lhs.true43.do.body_crit_edge, %entry.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gl861_i2c_master_xfer.__UNIQUE_ID_ddebug390, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@gl861_i2c_master_xfer, %if.end121.thread)) #8
          to label %if.end121 [label %if.end121.thread], !srcloc !92

if.end121.thread:                                 ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.usb_interface, ptr %3, i32 0, i32 7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @gl861_i2c_master_xfer.__UNIQUE_ID_ddebug390, ptr noundef %dev, ptr noundef nonnull @.str.11, i32 noundef %num) #8
  br label %do.body125

if.end121:                                        ; preds = %do.body, %if.end100, %if.end68, %if.end38
  %ret.0 = phi i32 [ %call111, %if.end100 ], [ %call83, %if.end68 ], [ %call39, %if.end38 ], [ -95, %do.body ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool122.not = icmp eq i32 %ret.0, 0
  br i1 %tobool122.not, label %if.end121.cleanup_crit_edge, label %if.end121.do.body125_crit_edge

if.end121.do.body125_crit_edge:                   ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body125

if.end121.cleanup_crit_edge:                      ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body125:                                       ; preds = %if.end121.do.body125_crit_edge, %if.end121.thread, %if.then93.do.body125_crit_edge, %lor.lhs.false61.do.body125_crit_edge, %if.then55.do.body125_crit_edge, %if.then.do.body125_crit_edge
  %ret.1 = phi i32 [ %ret.0, %if.end121.do.body125_crit_edge ], [ -95, %if.then.do.body125_crit_edge ], [ -95, %lor.lhs.false61.do.body125_crit_edge ], [ -95, %if.then55.do.body125_crit_edge ], [ -95, %if.then93.do.body125_crit_edge ], [ -95, %if.end121.thread ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gl861_i2c_master_xfer.__UNIQUE_ID_ddebug391, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@gl861_i2c_master_xfer, %if.then137)) #8
          to label %cleanup [label %if.then137], !srcloc !92

if.then137:                                       ; preds = %do.body125
  call void @__sanitizer_cov_trace_pc() #10
  %dev138 = getelementptr inbounds %struct.usb_interface, ptr %3, i32 0, i32 7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @gl861_i2c_master_xfer.__UNIQUE_ID_ddebug391, ptr noundef %dev138, ptr noundef nonnull @.str.12, i32 noundef %ret.1) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then137, %do.body125, %if.end121.cleanup_crit_edge
  %retval.0 = phi i32 [ %num, %if.end121.cleanup_crit_edge ], [ %ret.1, %if.then137 ], [ %ret.1, %do.body125 ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @gl861_i2c_functionality(ptr nocapture noundef readnone %adapter) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @gl861_ctrl_msg(ptr noundef %d, i8 noundef zeroext %request, i16 noundef zeroext %value, i16 noundef zeroext %index, ptr nocapture noundef %data, i16 noundef zeroext %size) unnamed_addr #2 align 64 {
entry:
  %value.addr = alloca i16, align 2
  %index.addr = alloca i16, align 2
  %size.addr = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %value.addr to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 %value, ptr %value.addr, align 2
  %1 = ptrtoint ptr %index.addr to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 %index, ptr %index.addr, align 2
  %2 = ptrtoint ptr %size.addr to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 %size, ptr %size.addr, align 2
  %priv = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 15
  %3 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %priv, align 8
  %intf1 = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 4
  %5 = ptrtoint ptr %intf1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %intf1, align 8
  %usb_mutex = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %usb_mutex, i32 noundef 0) #8
  %conv = zext i8 %request to i32
  %7 = zext i8 %request to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.28)
  switch i8 %request, label %entry.err_mutex_unlock_crit_edge [
    i8 3, label %sw.bb
    i8 1, label %entry.sw.epilog_crit_edge
    i8 2, label %sw.bb4
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

entry.err_mutex_unlock_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_mutex_unlock

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %size.addr to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %size.addr, align 2
  %conv2 = zext i16 %9 to i32
  %10 = call ptr @memcpy(ptr %4, ptr %data, i32 %conv2)
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb4, %sw.bb, %entry.sw.epilog_crit_edge
  %.sink = phi i32 [ -2147483520, %sw.bb4 ], [ -2147483648, %entry.sw.epilog_crit_edge ], [ -2147483648, %sw.bb ]
  %requesttype.0 = phi i8 [ -64, %sw.bb4 ], [ 64, %entry.sw.epilog_crit_edge ], [ 64, %sw.bb ]
  %udev5 = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 5
  %11 = ptrtoint ptr %udev5 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %udev5, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %12, align 8
  %shl.i80 = shl i32 %14, 8
  %or8 = or i32 %shl.i80, %.sink
  %15 = ptrtoint ptr %value.addr to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %value.addr, align 2
  %17 = ptrtoint ptr %index.addr to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %index.addr, align 2
  %19 = ptrtoint ptr %size.addr to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %size.addr, align 2
  %call12 = tail call i32 @usb_control_msg(ptr noundef %12, i32 noundef %or8, i8 noundef zeroext %request, i8 noundef zeroext %requesttype.0, i16 noundef zeroext %16, i16 noundef zeroext %18, ptr noundef %4, i16 noundef zeroext %20, i32 noundef 200) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gl861_ctrl_msg.__UNIQUE_ID_ddebug388, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@gl861_ctrl_msg, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !92

if.then:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.usb_interface, ptr %6, i32 0, i32 7
  %conv16 = zext i8 %requesttype.0 to i32
  %and = and i32 %conv16, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool19.not = icmp eq i32 %and, 0
  %cond = select i1 %tobool19.not, ptr @.str.16, ptr @.str.15
  %21 = ptrtoint ptr %size.addr to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %size.addr, align 2
  %conv20 = zext i16 %22 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @gl861_ctrl_msg.__UNIQUE_ID_ddebug388, ptr noundef %dev, ptr noundef nonnull @.str.14, i32 noundef %call12, i32 noundef %conv16, i32 noundef %conv, i32 noundef 2, ptr noundef nonnull %value.addr, i32 noundef 2, ptr noundef nonnull %index.addr, i32 noundef 2, ptr noundef nonnull %size.addr, ptr noundef nonnull %cond, i32 noundef %conv20, ptr noundef %4) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %sw.epilog
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp = icmp slt i32 %call12, 0
  br i1 %cmp, label %do.end.err_mutex_unlock_crit_edge, label %if.end25

do.end.err_mutex_unlock_crit_edge:                ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_mutex_unlock

if.end25:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %request)
  %cmp27 = icmp eq i8 %request, 2
  br i1 %cmp27, label %if.then29, label %if.end25.if.end33_crit_edge

if.end25.if.end33_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end33

if.then29:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  %23 = ptrtoint ptr %size.addr to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %size.addr, align 2
  %conv32 = zext i16 %24 to i32
  %25 = call ptr @memcpy(ptr %data, ptr %4, i32 %conv32)
  br label %if.end33

if.end33:                                         ; preds = %if.then29, %if.end25.if.end33_crit_edge
  call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #8
  call void @mutex_unlock(ptr noundef %usb_mutex) #8
  br label %cleanup

err_mutex_unlock:                                 ; preds = %do.end.err_mutex_unlock_crit_edge, %entry.err_mutex_unlock_crit_edge
  %ret.0 = phi i32 [ %call12, %do.end.err_mutex_unlock_crit_edge ], [ -22, %entry.err_mutex_unlock_crit_edge ]
  call void @mutex_unlock(ptr noundef %usb_mutex) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gl861_ctrl_msg.__UNIQUE_ID_ddebug389, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@gl861_ctrl_msg, %if.then48)) #8
          to label %cleanup [label %if.then48], !srcloc !92

if.then48:                                        ; preds = %err_mutex_unlock
  call void @__sanitizer_cov_trace_pc() #10
  %dev49 = getelementptr inbounds %struct.usb_interface, ptr %6, i32 0, i32 7
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @gl861_ctrl_msg.__UNIQUE_ID_ddebug389, ptr noundef %dev49, ptr noundef nonnull @.str.12, i32 noundef %ret.0) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then48, %err_mutex_unlock, %if.end33
  %retval.0 = phi i32 [ 0, %if.end33 ], [ %ret.0, %if.then48 ], [ %ret.0, %err_mutex_unlock ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_control_msg(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__symbol_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__request_module(i1 noundef zeroext, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__symbol_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_set_interface(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @friio_power_ctrl(ptr noundef %d, i32 noundef %onoff) #2 align 64 {
entry:
  %wbuf.i = alloca [1 x i8], align 1
  %rbuf.i = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %onoff)
  %tobool.not = icmp eq i32 %onoff, 0
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %wbuf.i) #8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %rbuf.i) #8
  %0 = ptrtoint ptr %rbuf.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %rbuf.i, align 1, !annotation !93
  %1 = getelementptr inbounds [2 x i8], ptr %rbuf.i, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %1, align 1, !annotation !93
  %udev.i = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 5
  %3 = ptrtoint ptr %udev.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %udev.i, align 4
  %call.i = tail call i32 @usb_set_interface(ptr noundef %4, i32 noundef 0, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %cond.true.friio_reset.exit_crit_edge, label %if.end.i

cond.true.friio_reset.exit_crit_edge:             ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %friio_reset.exit

if.end.i:                                         ; preds = %cond.true
  %call.i.i = tail call fastcc i32 @gl861_ctrl_msg(ptr noundef %d, i8 noundef zeroext 1, i16 noundef zeroext 2, i16 noundef zeroext 17, ptr noundef null, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp2.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp2.i, label %if.end.i.friio_reset.exit_crit_edge, label %if.end4.i

if.end.i.friio_reset.exit_crit_edge:              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %friio_reset.exit

if.end4.i:                                        ; preds = %if.end.i
  tail call void @usleep_range_state(i32 noundef 2000, i32 noundef 3000, i32 noundef 2) #8
  %call.i114.i = tail call fastcc i32 @gl861_ctrl_msg(ptr noundef %d, i8 noundef zeroext 1, i16 noundef zeroext 0, i16 noundef zeroext 17, ptr noundef null, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i114.i)
  %cmp6.i = icmp slt i32 %call.i114.i, 0
  br i1 %cmp6.i, label %if.end4.i.friio_reset.exit_crit_edge, label %if.end8.i

if.end4.i.friio_reset.exit_crit_edge:             ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %friio_reset.exit

if.end8.i:                                        ; preds = %if.end4.i
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #8
  %5 = ptrtoint ptr %wbuf.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 -128, ptr %wbuf.i, align 1
  %call9.i = call fastcc i32 @gl861_ctrl_msg(ptr noundef %d, i8 noundef zeroext 3, i16 noundef zeroext 4608, i16 noundef zeroext 3, ptr noundef nonnull %wbuf.i, i16 noundef zeroext 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %cmp10.i = icmp slt i32 %call9.i, 0
  br i1 %cmp10.i, label %if.end8.i.friio_reset.exit_crit_edge, label %if.end12.i

if.end8.i.friio_reset.exit_crit_edge:             ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %friio_reset.exit

if.end12.i:                                       ; preds = %if.end8.i
  tail call void @usleep_range_state(i32 noundef 2000, i32 noundef 3000, i32 noundef 2) #8
  %call14.i = call fastcc i32 @gl861_ctrl_msg(ptr noundef %d, i8 noundef zeroext 2, i16 noundef zeroext 4608, i16 noundef zeroext 256, ptr noundef nonnull %rbuf.i, i16 noundef zeroext 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %cmp15.i = icmp slt i32 %call14.i, 0
  br i1 %cmp15.i, label %if.end12.i.friio_reset.exit_crit_edge, label %if.end17.i

if.end12.i.friio_reset.exit_crit_edge:            ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %friio_reset.exit

if.end17.i:                                       ; preds = %if.end12.i
  %6 = ptrtoint ptr %rbuf.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %rbuf.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %7)
  %cmp19.not.i = icmp eq i8 %7, -1
  br i1 %cmp19.not.i, label %lor.lhs.false.i, label %if.end17.i.friio_reset.exit_crit_edge

if.end17.i.friio_reset.exit_crit_edge:            ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %friio_reset.exit

lor.lhs.false.i:                                  ; preds = %if.end17.i
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %9)
  %cmp23.not.i = icmp eq i8 %9, -1
  br i1 %cmp23.not.i, label %if.end26.i, label %lor.lhs.false.i.friio_reset.exit_crit_edge

lor.lhs.false.i.friio_reset.exit_crit_edge:       ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %friio_reset.exit

if.end26.i:                                       ; preds = %lor.lhs.false.i
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #8
  %10 = ptrtoint ptr %wbuf.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 -128, ptr %wbuf.i, align 1
  %call29.i = call fastcc i32 @gl861_ctrl_msg(ptr noundef %d, i8 noundef zeroext 3, i16 noundef zeroext -28672, i16 noundef zeroext 3, ptr noundef nonnull %wbuf.i, i16 noundef zeroext 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29.i)
  %cmp30.i = icmp slt i32 %call29.i, 0
  br i1 %cmp30.i, label %if.end26.i.friio_reset.exit_crit_edge, label %if.end33.i

if.end26.i.friio_reset.exit_crit_edge:            ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %friio_reset.exit

if.end33.i:                                       ; preds = %if.end26.i
  tail call void @usleep_range_state(i32 noundef 2000, i32 noundef 3000, i32 noundef 2) #8
  %call35.i = call fastcc i32 @gl861_ctrl_msg(ptr noundef %d, i8 noundef zeroext 2, i16 noundef zeroext -28672, i16 noundef zeroext 256, ptr noundef nonnull %rbuf.i, i16 noundef zeroext 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35.i)
  %cmp36.i = icmp slt i32 %call35.i, 0
  br i1 %cmp36.i, label %if.end33.i.friio_reset.exit_crit_edge, label %if.end39.i

if.end33.i.friio_reset.exit_crit_edge:            ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %friio_reset.exit

if.end39.i:                                       ; preds = %if.end33.i
  %11 = ptrtoint ptr %rbuf.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %rbuf.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %12)
  %cmp42.not.i = icmp eq i8 %12, -1
  br i1 %cmp42.not.i, label %lor.lhs.false44.i, label %if.end39.i.friio_reset.exit_crit_edge

if.end39.i.friio_reset.exit_crit_edge:            ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %friio_reset.exit

lor.lhs.false44.i:                                ; preds = %if.end39.i
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %14)
  %cmp47.not.i = icmp eq i8 %14, -1
  br i1 %cmp47.not.i, label %if.end50.i, label %lor.lhs.false44.i.friio_reset.exit_crit_edge

lor.lhs.false44.i.friio_reset.exit_crit_edge:     ; preds = %lor.lhs.false44.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %friio_reset.exit

if.end50.i:                                       ; preds = %lor.lhs.false44.i
  %call.i115.i = tail call fastcc i32 @gl861_ctrl_msg(ptr noundef %d, i8 noundef zeroext 1, i16 noundef zeroext 4, i16 noundef zeroext 48, ptr noundef null, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i115.i)
  %cmp52.i = icmp slt i32 %call.i115.i, 0
  br i1 %cmp52.i, label %if.end50.i.friio_reset.exit_crit_edge, label %if.end55.i

if.end50.i.friio_reset.exit_crit_edge:            ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %friio_reset.exit

if.end55.i:                                       ; preds = %if.end50.i
  %call.i116.i = tail call fastcc i32 @gl861_ctrl_msg(ptr noundef %d, i8 noundef zeroext 1, i16 noundef zeroext 1, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i116.i)
  %cmp57.i = icmp slt i32 %call.i116.i, 0
  br i1 %cmp57.i, label %if.end55.i.friio_reset.exit_crit_edge, label %if.end60.i

if.end55.i.friio_reset.exit_crit_edge:            ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %friio_reset.exit

if.end60.i:                                       ; preds = %if.end55.i
  %call.i117.i = tail call fastcc i32 @gl861_ctrl_msg(ptr noundef %d, i8 noundef zeroext 1, i16 noundef zeroext 15, i16 noundef zeroext 6, ptr noundef null, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i117.i)
  %cmp62.i = icmp slt i32 %call.i117.i, 0
  br i1 %cmp62.i, label %if.end60.i.friio_reset.exit_crit_edge, label %for.body.preheader.i

if.end60.i.friio_reset.exit_crit_edge:            ; preds = %if.end60.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %friio_reset.exit

for.body.preheader.i:                             ; preds = %if.end60.i
  %call.i118.i = tail call fastcc i32 @gl861_ctrl_msg(ptr noundef %d, i8 noundef zeroext 1, i16 noundef zeroext 8, i16 noundef zeroext 51, ptr noundef null, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i118.i)
  %cmp73.i = icmp slt i32 %call.i118.i, 0
  br i1 %cmp73.i, label %for.body.preheader.i.friio_reset.exit_crit_edge, label %for.cond.i

for.body.preheader.i.friio_reset.exit_crit_edge:  ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %friio_reset.exit

for.cond.i:                                       ; preds = %for.body.preheader.i
  %call.i118.1.i = tail call fastcc i32 @gl861_ctrl_msg(ptr noundef %d, i8 noundef zeroext 1, i16 noundef zeroext 64, i16 noundef zeroext 55, ptr noundef null, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i118.1.i)
  %cmp73.1.i = icmp slt i32 %call.i118.1.i, 0
  br i1 %cmp73.1.i, label %for.cond.i.friio_reset.exit_crit_edge, label %for.cond.1.i

for.cond.i.friio_reset.exit_crit_edge:            ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %friio_reset.exit

for.cond.1.i:                                     ; preds = %for.cond.i
  %call.i118.2.i = tail call fastcc i32 @gl861_ctrl_msg(ptr noundef %d, i8 noundef zeroext 1, i16 noundef zeroext 31, i16 noundef zeroext 58, ptr noundef null, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i118.2.i)
  %cmp73.2.i = icmp slt i32 %call.i118.2.i, 0
  br i1 %cmp73.2.i, label %for.cond.1.i.friio_reset.exit_crit_edge, label %for.cond.2.i

for.cond.1.i.friio_reset.exit_crit_edge:          ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %friio_reset.exit

for.cond.2.i:                                     ; preds = %for.cond.1.i
  %call.i118.3.i = tail call fastcc i32 @gl861_ctrl_msg(ptr noundef %d, i8 noundef zeroext 1, i16 noundef zeroext 255, i16 noundef zeroext 59, ptr noundef null, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i118.3.i)
  %cmp73.3.i = icmp slt i32 %call.i118.3.i, 0
  br i1 %cmp73.3.i, label %for.cond.2.i.friio_reset.exit_crit_edge, label %for.cond.3.i

for.cond.2.i.friio_reset.exit_crit_edge:          ; preds = %for.cond.2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %friio_reset.exit

for.cond.3.i:                                     ; preds = %for.cond.2.i
  %call.i118.4.i = tail call fastcc i32 @gl861_ctrl_msg(ptr noundef %d, i8 noundef zeroext 1, i16 noundef zeroext 31, i16 noundef zeroext 60, ptr noundef null, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i118.4.i)
  %cmp73.4.i = icmp slt i32 %call.i118.4.i, 0
  br i1 %cmp73.4.i, label %for.cond.3.i.friio_reset.exit_crit_edge, label %for.cond.4.i

for.cond.3.i.friio_reset.exit_crit_edge:          ; preds = %for.cond.3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %friio_reset.exit

for.cond.4.i:                                     ; preds = %for.cond.3.i
  %call.i118.5.i = tail call fastcc i32 @gl861_ctrl_msg(ptr noundef %d, i8 noundef zeroext 1, i16 noundef zeroext 255, i16 noundef zeroext 61, ptr noundef null, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i118.5.i)
  %cmp73.5.i = icmp slt i32 %call.i118.5.i, 0
  br i1 %cmp73.5.i, label %for.cond.4.i.friio_reset.exit_crit_edge, label %for.cond.5.i

for.cond.4.i.friio_reset.exit_crit_edge:          ; preds = %for.cond.4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %friio_reset.exit

for.cond.5.i:                                     ; preds = %for.cond.4.i
  %call.i118.6.i = tail call fastcc i32 @gl861_ctrl_msg(ptr noundef %d, i8 noundef zeroext 1, i16 noundef zeroext 0, i16 noundef zeroext 56, ptr noundef null, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i118.6.i)
  %cmp73.6.i = icmp slt i32 %call.i118.6.i, 0
  br i1 %cmp73.6.i, label %for.cond.5.i.friio_reset.exit_crit_edge, label %for.cond.6.i

for.cond.5.i.friio_reset.exit_crit_edge:          ; preds = %for.cond.5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %friio_reset.exit

for.cond.6.i:                                     ; preds = %for.cond.5.i
  %call.i118.7.i = tail call fastcc i32 @gl861_ctrl_msg(ptr noundef %d, i8 noundef zeroext 1, i16 noundef zeroext 0, i16 noundef zeroext 53, ptr noundef null, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i118.7.i)
  %cmp73.7.i = icmp slt i32 %call.i118.7.i, 0
  br i1 %cmp73.7.i, label %for.cond.6.i.friio_reset.exit_crit_edge, label %for.cond.7.i

for.cond.6.i.friio_reset.exit_crit_edge:          ; preds = %for.cond.6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %friio_reset.exit

for.cond.7.i:                                     ; preds = %for.cond.6.i
  %call.i118.8.i = tail call fastcc i32 @gl861_ctrl_msg(ptr noundef %d, i8 noundef zeroext 1, i16 noundef zeroext 0, i16 noundef zeroext 57, ptr noundef null, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i118.8.i)
  %cmp73.8.i = icmp slt i32 %call.i118.8.i, 0
  br i1 %cmp73.8.i, label %for.cond.7.i.friio_reset.exit_crit_edge, label %for.cond.8.i

for.cond.7.i.friio_reset.exit_crit_edge:          ; preds = %for.cond.7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %friio_reset.exit

for.cond.8.i:                                     ; preds = %for.cond.7.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i118.9.i = tail call fastcc i32 @gl861_ctrl_msg(ptr noundef %d, i8 noundef zeroext 1, i16 noundef zeroext 0, i16 noundef zeroext 54, ptr noundef null, i16 noundef zeroext 0) #8
  %15 = tail call i32 @llvm.smin.i32(i32 %call.i118.9.i, i32 0) #8
  br label %friio_reset.exit

friio_reset.exit:                                 ; preds = %for.cond.8.i, %for.cond.7.i.friio_reset.exit_crit_edge, %for.cond.6.i.friio_reset.exit_crit_edge, %for.cond.5.i.friio_reset.exit_crit_edge, %for.cond.4.i.friio_reset.exit_crit_edge, %for.cond.3.i.friio_reset.exit_crit_edge, %for.cond.2.i.friio_reset.exit_crit_edge, %for.cond.1.i.friio_reset.exit_crit_edge, %for.cond.i.friio_reset.exit_crit_edge, %for.body.preheader.i.friio_reset.exit_crit_edge, %if.end60.i.friio_reset.exit_crit_edge, %if.end55.i.friio_reset.exit_crit_edge, %if.end50.i.friio_reset.exit_crit_edge, %lor.lhs.false44.i.friio_reset.exit_crit_edge, %if.end39.i.friio_reset.exit_crit_edge, %if.end33.i.friio_reset.exit_crit_edge, %if.end26.i.friio_reset.exit_crit_edge, %lor.lhs.false.i.friio_reset.exit_crit_edge, %if.end17.i.friio_reset.exit_crit_edge, %if.end12.i.friio_reset.exit_crit_edge, %if.end8.i.friio_reset.exit_crit_edge, %if.end4.i.friio_reset.exit_crit_edge, %if.end.i.friio_reset.exit_crit_edge, %cond.true.friio_reset.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i, %cond.true.friio_reset.exit_crit_edge ], [ %call.i.i, %if.end.i.friio_reset.exit_crit_edge ], [ %call.i114.i, %if.end4.i.friio_reset.exit_crit_edge ], [ %call9.i, %if.end8.i.friio_reset.exit_crit_edge ], [ %call14.i, %if.end12.i.friio_reset.exit_crit_edge ], [ -19, %lor.lhs.false.i.friio_reset.exit_crit_edge ], [ -19, %if.end17.i.friio_reset.exit_crit_edge ], [ %call29.i, %if.end26.i.friio_reset.exit_crit_edge ], [ %call35.i, %if.end33.i.friio_reset.exit_crit_edge ], [ -19, %lor.lhs.false44.i.friio_reset.exit_crit_edge ], [ -19, %if.end39.i.friio_reset.exit_crit_edge ], [ %call.i115.i, %if.end50.i.friio_reset.exit_crit_edge ], [ %call.i116.i, %if.end55.i.friio_reset.exit_crit_edge ], [ %call.i117.i, %if.end60.i.friio_reset.exit_crit_edge ], [ %call.i118.i, %for.body.preheader.i.friio_reset.exit_crit_edge ], [ %call.i118.1.i, %for.cond.i.friio_reset.exit_crit_edge ], [ %call.i118.2.i, %for.cond.1.i.friio_reset.exit_crit_edge ], [ %call.i118.3.i, %for.cond.2.i.friio_reset.exit_crit_edge ], [ %call.i118.4.i, %for.cond.3.i.friio_reset.exit_crit_edge ], [ %call.i118.5.i, %for.cond.4.i.friio_reset.exit_crit_edge ], [ %call.i118.6.i, %for.cond.5.i.friio_reset.exit_crit_edge ], [ %call.i118.7.i, %for.cond.6.i.friio_reset.exit_crit_edge ], [ %call.i118.8.i, %for.cond.7.i.friio_reset.exit_crit_edge ], [ %15, %for.cond.8.i ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %rbuf.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %wbuf.i) #8
  br label %cond.end

cond.end:                                         ; preds = %friio_reset.exit, %entry.cond.end_crit_edge
  %cond = phi i32 [ %retval.0.i, %friio_reset.exit ], [ 0, %entry.cond.end_crit_edge ]
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @friio_frontend_attach(ptr noundef %adap) #2 align 64 {
entry:
  %cfg = alloca %struct.tc90522_config, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %cfg) #8
  %0 = call ptr @memcpy(ptr %cfg, ptr getelementptr inbounds (%struct.friio_config, ptr @friio_config, i32 0, i32 1), i32 12)
  %id = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 2
  %1 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %id, align 4
  %conv = zext i8 %2 to i32
  %.neg = mul nsw i32 %conv, -2280
  %idx.neg = add nsw i32 %.neg, -1616
  %add.ptr = getelementptr i8, ptr %adap, i32 %idx.neg
  %i2c_adap = getelementptr inbounds %struct.dvb_usb_device, ptr %add.ptr, i32 0, i32 10
  %call = call ptr @dvb_module_probe(ptr noundef nonnull @.str.26, ptr noundef nonnull @friio_config, ptr noundef %i2c_adap, i8 noundef zeroext 24, ptr noundef nonnull %cfg) #8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %3 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %cfg, align 4
  %fe2 = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 14
  %5 = ptrtoint ptr %fe2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %fe2, align 8
  %6 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %id, align 4
  %conv6 = zext i8 %7 to i32
  %.neg21 = mul nsw i32 %conv6, -2280
  %idx.neg7 = add nsw i32 %.neg21, -1616
  %add.ptr8 = getelementptr i8, ptr %adap, i32 %idx.neg7
  %priv9 = getelementptr inbounds %struct.dvb_usb_device, ptr %add.ptr8, i32 0, i32 15
  %8 = ptrtoint ptr %priv9 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %priv9, align 8
  %i2c_client_demod = getelementptr inbounds %struct.gl861, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %i2c_client_demod to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call, ptr %i2c_client_demod, align 4
  %tuner_i2c = getelementptr inbounds %struct.tc90522_config, ptr %cfg, i32 0, i32 1
  %11 = ptrtoint ptr %tuner_i2c to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %tuner_i2c, align 4
  %demod_sub_i2c = getelementptr inbounds %struct.gl861, ptr %9, i32 0, i32 1
  %13 = ptrtoint ptr %demod_sub_i2c to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %12, ptr %demod_sub_i2c, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -19, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %cfg) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @friio_frontend_detach(ptr nocapture noundef readonly %adap) #2 align 64 {
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
  %priv1 = getelementptr inbounds %struct.dvb_usb_device, ptr %add.ptr, i32 0, i32 15
  %2 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv1, align 8
  %i2c_client_demod = getelementptr inbounds %struct.gl861, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %i2c_client_demod to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i2c_client_demod, align 4
  tail call void @dvb_module_release(ptr noundef %5) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @friio_tuner_attach(ptr nocapture noundef readonly %adap) #2 align 64 {
entry:
  %cfg = alloca %struct.dvb_pll_config, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cfg) #8
  %id = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 2
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %id, align 4
  %conv = zext i8 %1 to i32
  %.neg = mul nsw i32 %conv, -2280
  %idx.neg = add nsw i32 %.neg, -1616
  %add.ptr = getelementptr i8, ptr %adap, i32 %idx.neg
  %priv1 = getelementptr inbounds %struct.dvb_usb_device, ptr %add.ptr, i32 0, i32 15
  %2 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv1, align 8
  %fe = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 14
  %4 = ptrtoint ptr %fe to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fe, align 8
  %6 = ptrtoint ptr %cfg to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %cfg, align 4
  %demod_sub_i2c = getelementptr inbounds %struct.gl861, ptr %3, i32 0, i32 1
  %7 = ptrtoint ptr %demod_sub_i2c to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %demod_sub_i2c, align 4
  %call = call ptr @dvb_module_probe(ptr noundef nonnull @.str.27, ptr noundef getelementptr inbounds (%struct.friio_config, ptr @friio_config, i32 0, i32 2), ptr noundef %8, i8 noundef zeroext 96, ptr noundef nonnull %cfg) #8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %i2c_client_tuner = getelementptr inbounds %struct.gl861, ptr %3, i32 0, i32 3
  %9 = ptrtoint ptr %i2c_client_tuner to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call, ptr %i2c_client_tuner, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -19, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cfg) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @friio_tuner_detach(ptr nocapture noundef readonly %adap) #2 align 64 {
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
  %priv1 = getelementptr inbounds %struct.dvb_usb_device, ptr %add.ptr, i32 0, i32 15
  %2 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv1, align 8
  %i2c_client_tuner = getelementptr inbounds %struct.gl861, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %i2c_client_tuner to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i2c_client_tuner, align 4
  tail call void @dvb_module_release(ptr noundef %5) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @friio_streaming_ctrl(ptr nocapture noundef readonly %fe, i32 noundef %onoff) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %onoff)
  %tobool.not = icmp eq i32 %onoff, 0
  %cond = select i1 %tobool.not, i32 -1761672961, i32 1677786980
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
  %call = tail call fastcc i32 @friio_ext_ctl(ptr noundef %add.ptr, i32 noundef %cond, i32 noundef 1)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @friio_init(ptr noundef %d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @friio_ext_ctl(ptr noundef %d, i32 noundef -1761672961, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup8_crit_edge, label %if.end

entry.cleanup8_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup8

if.end:                                           ; preds = %entry
  tail call void @msleep(i32 noundef 20) #8
  %priv1 = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 15
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %i2c_client_demod = getelementptr inbounds %struct.gl861, ptr %1, i32 0, i32 2
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %i.016, 1
  %exitcond.not = icmp eq i32 %inc, 36
  br i1 %exitcond.not, label %for.end, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %if.end
  %i.016 = phi i32 [ 0, %if.end ], [ %inc, %for.cond.for.body_crit_edge ]
  %2 = ptrtoint ptr %i2c_client_demod to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i2c_client_demod, align 4
  %arrayidx = getelementptr [36 x [2 x i8]], ptr @friio_init.demod_init, i32 0, i32 %i.016
  %call.i = tail call i32 @i2c_transfer_buffer_flags(ptr noundef %3, ptr noundef %arrayidx, i32 noundef 2, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp5 = icmp slt i32 %call.i, 0
  br i1 %cmp5, label %for.body.cleanup8_crit_edge, label %for.cond

for.body.cleanup8_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup8

for.end:                                          ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @msleep(i32 noundef 100) #8
  br label %cleanup8

cleanup8:                                         ; preds = %for.end, %for.body.cleanup8_crit_edge, %entry.cleanup8_crit_edge
  %retval.2 = phi i32 [ 0, %for.end ], [ %call, %entry.cleanup8_crit_edge ], [ %call.i, %for.body.cleanup8_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @friio_exit(ptr noundef %d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @friio_ext_ctl(ptr noundef %d, i32 noundef -1761672961, i32 noundef 0)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dvb_module_probe(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dvb_module_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @friio_ext_ctl(ptr noundef %d, i32 noundef %sat_color, i32 noundef %power_on) unnamed_addr #2 align 64 {
entry:
  %msg = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg) #8
  %0 = getelementptr inbounds i8, ptr %msg, i32 4
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %power_on)
  %tobool.not = icmp ne i32 %power_on, 0
  %conv = zext i1 %tobool.not to i8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3264, i32 noundef 2) #12
  %tobool1.not = icmp eq ptr %call7.i, null
  br i1 %tobool1.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %msg to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 0, ptr %msg, align 4
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 1
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 0, ptr %flags, align 2
  %len = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 2
  %5 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 2, ptr %len, align 4
  %buf2 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 3
  %6 = ptrtoint ptr %buf2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call7.i, ptr %buf2, align 4
  %7 = ptrtoint ptr %call7.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %call7.i, align 8
  %conv5 = or i8 %conv, 10
  %arrayidx6 = getelementptr i8, ptr %call7.i, i32 1
  %8 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv5, ptr %arrayidx6, align 1
  %i2c_adap = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 10
  %call7 = call i32 @i2c_transfer(ptr noundef %i2c_adap, ptr noundef nonnull %msg, i32 noundef 1) #8
  %9 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx6, align 1
  %11 = or i8 %10, 4
  store i8 %11, ptr %arrayidx6, align 1
  %call13 = call i32 @i2c_transfer(ptr noundef %i2c_adap, ptr noundef nonnull %msg, i32 noundef 1) #8
  %add = add i32 %call13, %call7
  %or15 = or i8 %conv, 2
  %12 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %or15, ptr %arrayidx6, align 1
  %call19 = call i32 @i2c_transfer(ptr noundef %i2c_adap, ptr noundef nonnull %msg, i32 noundef 1) #8
  %add20 = add i32 %add, %call19
  %13 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx6, align 1
  %15 = or i8 %14, 4
  store i8 %15, ptr %arrayidx6, align 1
  %call26 = call i32 @i2c_transfer(ptr noundef %i2c_adap, ptr noundef nonnull %msg, i32 noundef 1) #8
  %add27 = add i32 %add20, %call26
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end
  %mask.0102 = phi i32 [ -2147483648, %if.end ], [ %shr, %for.body.for.body_crit_edge ]
  %ret.0101 = phi i32 [ %add27, %if.end ], [ %add49, %for.body.for.body_crit_edge ]
  %i.0100 = phi i32 [ 0, %if.end ], [ %inc, %for.body.for.body_crit_edge ]
  %and = and i32 %mask.0102, %sat_color
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool33.not = icmp eq i32 %and, 0
  %spec.select = select i1 %tobool33.not, i8 %or15, i8 %conv5
  %16 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %spec.select, ptr %arrayidx6, align 1
  %call41 = call i32 @i2c_transfer(ptr noundef %i2c_adap, ptr noundef nonnull %msg, i32 noundef 1) #8
  %add42 = add i32 %call41, %ret.0101
  %17 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx6, align 1
  %19 = or i8 %18, 4
  store i8 %19, ptr %arrayidx6, align 1
  %call48 = call i32 @i2c_transfer(ptr noundef %i2c_adap, ptr noundef nonnull %msg, i32 noundef 1) #8
  %add49 = add i32 %add42, %call48
  %shr = lshr i32 %mask.0102, 1
  %inc = add nuw nsw i32 %i.0100, 1
  %exitcond.not = icmp eq i32 %inc, 32
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %20 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv, ptr %arrayidx6, align 1
  %call52 = call i32 @i2c_transfer(ptr noundef %i2c_adap, ptr noundef nonnull %msg, i32 noundef 1) #8
  %add53 = add i32 %call52, %add49
  %21 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx6, align 1
  %23 = or i8 %22, 4
  store i8 %23, ptr %arrayidx6, align 1
  %call59 = call i32 @i2c_transfer(ptr noundef %i2c_adap, ptr noundef nonnull %msg, i32 noundef 1) #8
  %add60 = add i32 %add53, %call59
  call void @kfree(ptr noundef nonnull %call7.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 70, i32 %add60)
  %cmp61 = icmp eq i32 %add60, 70
  %cond63 = select i1 %cmp61, i32 0, i32 -121
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %cond63, %for.end ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer_buffer_flags(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

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

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 39)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 39)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !7, !9, !11, !13, !14, !15, !16, !17, !19, !20, !21, !22, !23, !25, !27, !29, !31, !33, !35, !37, !39, !40, !41, !42, !44, !45, !47, !48, !49, !50, !51, !53, !55, !56, !57, !58, !59, !60, !62, !64, !65, !66, !67, !68, !69, !71, !73, !75, !77, !79, !81}
!llvm.module.flags = !{!83, !84, !85, !86, !87, !88, !89, !90}
!llvm.ident = !{!91}

!0 = !{ptr @__param_adapter_nr, !1, !"__param_adapter_nr", i1 false, i1 false}
!1 = !{!"../drivers/media/usb/dvb-usb-v2/gl861.c", i32 15, i32 1}
!2 = !{ptr @__UNIQUE_ID_adapter_nrtype386, !1, !"__UNIQUE_ID_adapter_nrtype386", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_adapter_nr387, !1, !"__UNIQUE_ID_adapter_nr387", i1 false, i1 false}
!4 = !{ptr @__initcall__kmod_dvb_usb_gl861__392_573_gl861_usb_driver_init6, !5, !"__initcall__kmod_dvb_usb_gl861__392_573_gl861_usb_driver_init6", i1 false, i1 false}
!5 = !{!"../drivers/media/usb/dvb-usb-v2/gl861.c", i32 573, i32 1}
!6 = !{ptr @__exitcall_gl861_usb_driver_exit, !5, !"__exitcall_gl861_usb_driver_exit", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_author393, !8, !"__UNIQUE_ID_author393", i1 false, i1 false}
!8 = !{!"../drivers/media/usb/dvb-usb-v2/gl861.c", i32 575, i32 1}
!9 = !{ptr @__UNIQUE_ID_description394, !10, !"__UNIQUE_ID_description394", i1 false, i1 false}
!10 = !{!"../drivers/media/usb/dvb-usb-v2/gl861.c", i32 576, i32 1}
!11 = !{ptr @__UNIQUE_ID_version395, !12, !"__UNIQUE_ID_version395", i1 false, i1 false}
!12 = !{!"../drivers/media/usb/dvb-usb-v2/gl861.c", i32 577, i32 1}
!13 = !{ptr @.str, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.2, !12, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @__modver_attr, !12, !"__modver_attr", i1 false, i1 false}
!17 = !{ptr @__UNIQUE_ID_file396, !18, !"__UNIQUE_ID_file396", i1 false, i1 false}
!18 = !{!"../drivers/media/usb/dvb-usb-v2/gl861.c", i32 578, i32 1}
!19 = !{ptr @__UNIQUE_ID_license397, !18, !"__UNIQUE_ID_license397", i1 false, i1 false}
!20 = !{ptr @__param_str_adapter_nr, !1, !"__param_str_adapter_nr", i1 false, i1 false}
!21 = !{ptr @__param_arr_adapter_nr, !1, !"__param_arr_adapter_nr", i1 false, i1 false}
!22 = !{ptr @adapter_nr, !1, !"adapter_nr", i1 false, i1 false}
!23 = !{ptr @gl861_usb_driver, !24, !"gl861_usb_driver", i1 false, i1 false}
!24 = !{!"../drivers/media/usb/dvb-usb-v2/gl861.c", i32 561, i32 26}
!25 = !{ptr @.str.3, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/media/usb/dvb-usb-v2/gl861.c", i32 551, i32 4}
!27 = !{ptr @.str.4, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/media/usb/dvb-usb-v2/gl861.c", i32 553, i32 4}
!29 = !{ptr @.str.6, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/media/usb/dvb-usb-v2/gl861.c", i32 555, i32 4}
!31 = !{ptr @gl861_id_table, !32, !"gl861_id_table", i1 false, i1 false}
!32 = !{!"../drivers/media/usb/dvb-usb-v2/gl861.c", i32 550, i32 35}
!33 = !{ptr @gl861_props, !34, !"gl861_props", i1 false, i1 false}
!34 = !{!"../drivers/media/usb/dvb-usb-v2/gl861.c", i32 211, i32 41}
!35 = !{ptr @gl861_i2c_algo, !36, !"gl861_i2c_algo", i1 false, i1 false}
!36 = !{!"../drivers/media/usb/dvb-usb-v2/gl861.c", i32 165, i32 29}
!37 = !{ptr @.str.9, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/media/usb/dvb-usb-v2/gl861.c", i32 148, i32 3}
!39 = !{ptr @.str.10, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.11, !38, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @gl861_i2c_master_xfer.__UNIQUE_ID_ddebug390, !38, !"__UNIQUE_ID_ddebug390", i1 false, i1 false}
!42 = !{ptr @.str.12, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/media/usb/dvb-usb-v2/gl861.c", i32 156, i32 2}
!44 = !{ptr @gl861_i2c_master_xfer.__UNIQUE_ID_ddebug391, !43, !"__UNIQUE_ID_ddebug391", i1 false, i1 false}
!45 = !{ptr @.str.13, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/media/usb/dvb-usb-v2/gl861.c", i32 60, i32 2}
!47 = !{ptr @.str.14, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @gl861_ctrl_msg.__UNIQUE_ID_ddebug388, !46, !"__UNIQUE_ID_ddebug388", i1 false, i1 false}
!49 = !{ptr @.str.15, !46, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @.str.16, !46, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @gl861_ctrl_msg.__UNIQUE_ID_ddebug389, !52, !"__UNIQUE_ID_ddebug389", i1 false, i1 false}
!52 = !{!"../drivers/media/usb/dvb-usb-v2/gl861.c", i32 77, i32 2}
!53 = !{ptr @.str.17, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/media/usb/dvb-usb-v2/gl861.c", i32 180, i32 16}
!55 = !{ptr @.str.18, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @.str.19, !54, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @.str.20, !54, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @gl861_frontend_attach._entry, !54, !"_entry", i1 false, i1 false}
!59 = !{ptr @gl861_frontend_attach._entry_ptr, !54, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @gl861_zl10353_config, !61, !"gl861_zl10353_config", i1 false, i1 false}
!61 = !{!"../drivers/media/usb/dvb-usb-v2/gl861.c", i32 171, i32 30}
!62 = !{ptr @.str.21, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/media/usb/dvb-usb-v2/gl861.c", i32 194, i32 9}
!64 = !{ptr @.str.22, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @.str.23, !63, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @.str.24, !63, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @gl861_tuner_attach._entry, !63, !"_entry", i1 false, i1 false}
!68 = !{ptr @gl861_tuner_attach._entry_ptr, !63, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @gl861_qt1010_config, !70, !"gl861_qt1010_config", i1 false, i1 false}
!70 = !{!"../drivers/media/usb/dvb-usb-v2/gl861.c", i32 188, i32 29}
!71 = !{ptr @friio_props, !72, !"friio_props", i1 false, i1 false}
!72 = !{!"../drivers/media/usb/dvb-usb-v2/gl861.c", i32 525, i32 41}
!73 = distinct !{null, !74, !"friio_init_cmds", i1 false, i1 false}
!74 = !{!"../drivers/media/usb/dvb-usb-v2/gl861.c", i32 332, i32 18}
!75 = !{ptr @.str.26, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/media/usb/dvb-usb-v2/gl861.c", i32 424, i32 24}
!77 = !{ptr @friio_config, !78, !"friio_config", i1 false, i1 false}
!78 = !{!"../drivers/media/usb/dvb-usb-v2/gl861.c", i32 243, i32 34}
!79 = !{ptr @.str.27, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/media/usb/dvb-usb-v2/gl861.c", i32 457, i32 24}
!81 = !{ptr @friio_init.demod_init, !82, !"demod_init", i1 false, i1 false}
!82 = !{!"../drivers/media/usb/dvb-usb-v2/gl861.c", i32 480, i32 18}
!83 = !{i32 1, !"wchar_size", i32 2}
!84 = !{i32 1, !"min_enum_size", i32 4}
!85 = !{i32 8, !"branch-target-enforcement", i32 0}
!86 = !{i32 8, !"sign-return-address", i32 0}
!87 = !{i32 8, !"sign-return-address-all", i32 0}
!88 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!89 = !{i32 7, !"uwtable", i32 1}
!90 = !{i32 7, !"frame-pointer", i32 2}
!91 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!92 = !{i64 2148959652, i64 2148959657, i64 2148959670, i64 2148959714, i64 2148959748, i64 2148959769}
!93 = !{!"auto-init"}
