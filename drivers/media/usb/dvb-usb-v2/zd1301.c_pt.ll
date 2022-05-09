; ModuleID = '/llk/IR_all_yes/drivers/media/usb/dvb-usb-v2/zd1301.c_pt.bc'
source_filename = "../drivers/media/usb/dvb-usb-v2/zd1301.c"
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
%struct.anon.126 = type { i32 }
%struct.dvb_usb_adapter_properties = type { i8, i8, ptr, ptr, %struct.usb_data_stream_properties }
%struct.usb_data_stream_properties = type { i8, i8, i8, %union.anon.125 }
%union.anon.125 = type { %struct.anon.127 }
%struct.anon.127 = type { i32, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.platform_device_info = type { ptr, ptr, i8, ptr, i32, ptr, i32, ptr, i32, i64, ptr }
%struct.i2c_board_info = type { [20 x i8], i16, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32 }
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
%struct.hlist_node = type { ptr, ptr }
%struct.usb_interface = type { ptr, ptr, i32, ptr, i32, i32, i8, %struct.device, ptr, %struct.work_struct }
%struct.zd1301_dev = type { [8 x i8], %struct.zd1301_demod_platform_data, %struct.mt2060_platform_data, ptr, ptr }
%struct.zd1301_demod_platform_data = type { ptr, ptr, ptr }
%struct.mt2060_platform_data = type { i8, i16, i8, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
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

@__param_str_adapter_nr = internal constant [18 x i8] c"zd1301.adapter_nr\00", align 1
@param_array_ops = external dso_local constant %struct.kernel_param_ops, align 4
@__param_arr_adapter_nr = internal constant %struct.kparam_array { i32 16, i32 2, ptr null, ptr @param_ops_short, ptr @adapter_nr }, align 4
@__param_adapter_nr = internal constant %struct.kernel_param { ptr @__param_str_adapter_nr, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.101 { ptr @__param_arr_adapter_nr } }, section "__param", align 4
@__UNIQUE_ID_adapter_nrtype386 = internal constant [42 x i8] c"zd1301.parmtype=adapter_nr:array of short\00", section ".modinfo", align 1
@__UNIQUE_ID_adapter_nr387 = internal constant [43 x i8] c"zd1301.parm=adapter_nr:DVB adapter numbers\00", section ".modinfo", align 1
@__initcall__kmod_zd1301__399_285_zd1301_usb_driver_init6 = internal global ptr @zd1301_usb_driver_init, section ".initcall6.init", align 4
@zd1301_usb_driver = internal global { %struct.usb_driver, [44 x i8] } { %struct.usb_driver { ptr @.str, ptr @dvb_usbv2_probe, ptr @dvb_usbv2_disconnect, ptr null, ptr @dvb_usbv2_suspend, ptr @dvb_usbv2_resume, ptr @dvb_usbv2_reset_resume, ptr null, ptr null, ptr @zd1301_id_table, ptr null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 -112 }, [44 x i8] zeroinitializer }, align 32
@__exitcall_zd1301_usb_driver_exit = internal global ptr @zd1301_usb_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author400 = internal constant [45 x i8] c"zd1301.author=Antti Palosaari <crope@iki.fi>\00", section ".modinfo", align 1
@__UNIQUE_ID_description401 = internal constant [39 x i8] c"zd1301.description=ZyDAS ZD1301 driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file402 = internal constant [48 x i8] c"zd1301.file=drivers/media/usb/dvb-usb-v2/zd1301\00", section ".modinfo", align 1
@__UNIQUE_ID_license403 = internal constant [19 x i8] c"zd1301.license=GPL\00", section ".modinfo", align 1
@param_ops_short = external dso_local constant %struct.kernel_param_ops, align 4
@adapter_nr = internal global { [16 x i16], [32 x i8] } { [16 x i16] [i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1], [32 x i8] zeroinitializer }, align 32
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"zd1301\00", [25 x i8] zeroinitializer }, align 32
@zd1301_id_table = internal constant { [2 x %struct.usb_device_id], [48 x i8] } { [2 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 2766, i16 5025, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral to i32) }, %struct.usb_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"ZyDAS ZD1301 reference design\00", [34 x i8] zeroinitializer }, align 32
@.compoundliteral = internal constant { %struct.dvb_usb_driver_info, [20 x i8] } { %struct.dvb_usb_driver_info { ptr @.str.1, ptr null, ptr @zd1301_props }, [20 x i8] zeroinitializer }, align 32
@zd1301_props = internal constant { { ptr, ptr, ptr, i8, i32, i8, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, <{ { i8, i8, ptr, ptr, { i8, i8, i8, { %struct.anon.126, [8 x i8] } } }, %struct.dvb_usb_adapter_properties }>, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }, [56 x i8] } { { ptr, ptr, ptr, i8, i32, i8, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, <{ { i8, i8, ptr, ptr, { i8, i8, i8, { %struct.anon.126, [8 x i8] } } }, %struct.dvb_usb_adapter_properties }>, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @.str, ptr null, ptr @adapter_nr, i8 0, i32 40, i8 0, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 1, ptr null, <{ { i8, i8, ptr, ptr, { i8, i8, i8, { %struct.anon.126, [8 x i8] } } }, %struct.dvb_usb_adapter_properties }> <{ { i8, i8, ptr, ptr, { i8, i8, i8, { %struct.anon.126, [8 x i8] } } } { i8 0, i8 0, ptr null, ptr null, { i8, i8, i8, { %struct.anon.126, [8 x i8] } } { i8 1, i8 6, i8 -127, { %struct.anon.126, [8 x i8] } { %struct.anon.126 { i32 3948 }, [8 x i8] undef } } }, %struct.dvb_usb_adapter_properties zeroinitializer }>, ptr null, ptr null, ptr null, ptr @zd1301_frontend_attach, ptr @zd1301_frontend_detach, ptr null, ptr null, ptr null, ptr @zd1301_streaming_ctrl, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@zd1301_frontend_attach.__UNIQUE_ID_ddebug394 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.3, ptr @.str.4, ptr @.str.5, i8 0, i8 33, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.3 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"zd1301_frontend_attach\00", [41 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/media/usb/dvb-usb-v2/zd1301.c\00", [58 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"zd1301_demod\00", [19 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"mt2060\00", [25 x i8] zeroinitializer }, align 32
@zd1301_frontend_attach.__UNIQUE_ID_ddebug395 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.3, ptr @.str.4, ptr @.str.9, i8 0, i8 49, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"failed=%d\0A\00", [21 x i8] zeroinitializer }, align 32
@zd1301_demod_rreg.__UNIQUE_ID_ddebug393 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.10, ptr @.str.4, ptr @.str.9, i8 0, i8 29, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"zd1301_demod_rreg\00", [46 x i8] zeroinitializer }, align 32
@zd1301_ctrl_msg.__UNIQUE_ID_ddebug388 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.11, ptr @.str.4, ptr @.str.12, i8 0, i8 9, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"zd1301_ctrl_msg\00", [16 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c">>> %*ph\0A\00", [22 x i8] zeroinitializer }, align 32
@zd1301_ctrl_msg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.11, ptr @.str.4, i32 41, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"1st usb_bulk_msg() failed %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@zd1301_ctrl_msg._entry_ptr = internal global ptr @zd1301_ctrl_msg._entry, section ".printk_index", align 4
@zd1301_ctrl_msg._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.11, ptr @.str.4, i32 50, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"2nd usb_bulk_msg() failed %d\0A\00", [34 x i8] zeroinitializer }, align 32
@zd1301_ctrl_msg._entry_ptr.18 = internal global ptr @zd1301_ctrl_msg._entry.16, section ".printk_index", align 4
@zd1301_ctrl_msg.__UNIQUE_ID_ddebug389 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.11, ptr @.str.4, ptr @.str.19, i8 0, i8 13, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"<<< %*ph\0A\00", [22 x i8] zeroinitializer }, align 32
@zd1301_ctrl_msg.__UNIQUE_ID_ddebug390 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.11, ptr @.str.4, ptr @.str.20, i8 0, i8 15, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"repeating reply message\0A\00", [39 x i8] zeroinitializer }, align 32
@zd1301_ctrl_msg._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.11, ptr @.str.4, i32 69, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"3rd usb_bulk_msg() failed %d\0A\00", [34 x i8] zeroinitializer }, align 32
@zd1301_ctrl_msg._entry_ptr.23 = internal global ptr @zd1301_ctrl_msg._entry.21, section ".printk_index", align 4
@zd1301_ctrl_msg.__UNIQUE_ID_ddebug391 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.11, ptr @.str.4, ptr @.str.19, i8 0, i8 18, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@zd1301_demod_wreg.__UNIQUE_ID_ddebug392 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.24, ptr @.str.4, ptr @.str.9, i8 0, i8 24, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"zd1301_demod_wreg\00", [46 x i8] zeroinitializer }, align 32
@zd1301_frontend_detach.__UNIQUE_ID_ddebug396 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.25, ptr @.str.4, ptr @.str.5, i8 0, i8 52, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"zd1301_frontend_detach\00", [41 x i8] zeroinitializer }, align 32
@zd1301_streaming_ctrl.__UNIQUE_ID_ddebug397 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.26, ptr @.str.4, ptr @.str.27, i8 0, i8 59, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"zd1301_streaming_ctrl\00", [42 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"onoff=%d\0A\00", [22 x i8] zeroinitializer }, align 32
@zd1301_streaming_ctrl.__UNIQUE_ID_ddebug398 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.26, ptr @.str.4, ptr @.str.9, i8 0, i8 61, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@___asan_gen_.28 = private unnamed_addr constant [18 x i8] c"zd1301_usb_driver\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 274, i32 26 }
@___asan_gen_.31 = private unnamed_addr constant [11 x i8] c"adapter_nr\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 14, i32 1 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 285, i32 1 }
@___asan_gen_.37 = private unnamed_addr constant [16 x i8] c"zd1301_id_table\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 266, i32 35 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 267, i32 3 }
@___asan_gen_.43 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.44 = private unnamed_addr constant [13 x i8] c"zd1301_props\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 248, i32 47 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 135, i32 2 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 141, i32 2 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 171, i32 27 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 197, i32 2 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 119, i32 2 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 36, i32 2 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 41, i32 3 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 49, i32 4 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 54, i32 3 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 61, i32 4 }
@___asan_gen_.101 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 68, i32 5 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 99, i32 2 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 209, i32 2 }
@___asan_gen_.116 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.117 = private constant [41 x i8] c"../drivers/media/usb/dvb-usb-v2/zd1301.c\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 236, i32 2 }
@llvm.compiler.used = appending global [44 x ptr] [ptr @__UNIQUE_ID_adapter_nr387, ptr @__UNIQUE_ID_adapter_nrtype386, ptr @__UNIQUE_ID_author400, ptr @__UNIQUE_ID_description401, ptr @__UNIQUE_ID_file402, ptr @__UNIQUE_ID_license403, ptr @__exitcall_zd1301_usb_driver_exit, ptr @__initcall__kmod_zd1301__399_285_zd1301_usb_driver_init6, ptr @__param_adapter_nr, ptr @zd1301_ctrl_msg._entry, ptr @zd1301_ctrl_msg._entry.16, ptr @zd1301_ctrl_msg._entry.21, ptr @zd1301_ctrl_msg._entry_ptr, ptr @zd1301_ctrl_msg._entry_ptr.18, ptr @zd1301_ctrl_msg._entry_ptr.23, ptr @zd1301_usb_driver_exit, ptr @zd1301_usb_driver, ptr @adapter_nr, ptr @.str, ptr @zd1301_id_table, ptr @.str.1, ptr @.compoundliteral, ptr @zd1301_props, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @.str.19, ptr @.str.20, ptr @.str.22, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27], section "llvm.metadata"
@0 = internal global [31 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zd1301_usb_driver to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adapter_nr to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zd1301_id_table to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zd1301_props to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zd1301_ctrl_msg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zd1301_ctrl_msg._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zd1301_ctrl_msg._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @zd1301_usb_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usb_register_driver(ptr noundef nonnull @zd1301_usb_driver, ptr noundef null, ptr noundef nonnull @.str) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @zd1301_usb_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @usb_deregister(ptr noundef nonnull @zd1301_usb_driver) #5
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
define internal i32 @zd1301_frontend_attach(ptr noundef %adap) #2 align 64 {
entry:
  %pdevinfo.i.i = alloca %struct.platform_device_info, align 8
  %board_info = alloca %struct.i2c_board_info, align 4
  call void @__sanitizer_cov_trace_pc() #7
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
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %board_info) #5
  %6 = call ptr @memset(ptr %board_info, i32 255, i32 56)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @zd1301_frontend_attach.__UNIQUE_ID_ddebug394, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@zd1301_frontend_attach, %if.then)) #5
          to label %do.end [label %if.then], !srcloc !89

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev11 = getelementptr inbounds %struct.usb_interface, ptr %5, i32 0, i32 7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @zd1301_frontend_attach.__UNIQUE_ID_ddebug394, ptr noundef %dev11, ptr noundef nonnull @.str.5) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %demod_pdata = getelementptr inbounds %struct.zd1301_dev, ptr %3, i32 0, i32 1
  %7 = ptrtoint ptr %demod_pdata to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %add.ptr, ptr %demod_pdata, align 4
  %reg_read = getelementptr inbounds %struct.zd1301_dev, ptr %3, i32 0, i32 1, i32 1
  %8 = ptrtoint ptr %reg_read to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @zd1301_demod_rreg, ptr %reg_read, align 4
  %reg_write = getelementptr inbounds %struct.zd1301_dev, ptr %3, i32 0, i32 1, i32 2
  %9 = ptrtoint ptr %reg_write to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @zd1301_demod_wreg, ptr %reg_write, align 4
  %call14 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7) #5
  %dev15 = getelementptr inbounds %struct.usb_interface, ptr %5, i32 0, i32 7
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %pdevinfo.i.i) #5
  %10 = getelementptr inbounds i8, ptr %pdevinfo.i.i, i32 8
  %11 = call ptr @memset(ptr %10, i32 255, i32 48)
  %12 = ptrtoint ptr %pdevinfo.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %dev15, ptr %pdevinfo.i.i, align 8
  %fwnode.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 1
  %13 = ptrtoint ptr %fwnode.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %fwnode.i.i, align 4
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %10, align 8
  %name2.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 3
  %15 = ptrtoint ptr %name2.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @.str.7, ptr %name2.i.i, align 4
  %id3.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 4
  %16 = ptrtoint ptr %id3.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -2, ptr %id3.i.i, align 8
  %res4.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 5
  %17 = ptrtoint ptr %res4.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %res4.i.i, align 4
  %num_res.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 6
  %18 = ptrtoint ptr %num_res.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %num_res.i.i, align 8
  %data5.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 7
  %19 = ptrtoint ptr %data5.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %demod_pdata, ptr %data5.i.i, align 4
  %size_data.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 8
  %20 = ptrtoint ptr %size_data.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 12, ptr %size_data.i.i, align 8
  %dma_mask.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 9
  %21 = ptrtoint ptr %dma_mask.i.i to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 0, ptr %dma_mask.i.i, align 8
  %properties.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 10
  %22 = ptrtoint ptr %properties.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %properties.i.i, align 8
  %call.i.i = call ptr @platform_device_register_full(ptr noundef nonnull %pdevinfo.i.i) #5
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %pdevinfo.i.i) #5
  %cmp.i = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then19, label %if.end21

if.then19:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  %23 = ptrtoint ptr %call.i.i to i32
  br label %do.body54

if.end21:                                         ; preds = %do.end
  %driver = getelementptr inbounds %struct.platform_device, ptr %call.i.i, i32 0, i32 3, i32 6
  %24 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %driver, align 4
  %tobool23.not = icmp eq ptr %25, null
  br i1 %tobool23.not, label %if.end21.err_platform_device_unregister_crit_edge, label %if.end25

if.end21.err_platform_device_unregister_crit_edge: ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_platform_device_unregister

if.end25:                                         ; preds = %if.end21
  %owner = getelementptr inbounds %struct.device_driver, ptr %25, i32 0, i32 2
  %26 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %owner, align 4
  %call28 = call zeroext i1 @try_module_get(ptr noundef %27) #5
  br i1 %call28, label %if.end30, label %if.end25.err_platform_device_unregister_crit_edge

if.end25.err_platform_device_unregister_crit_edge: ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_platform_device_unregister

if.end30:                                         ; preds = %if.end25
  %call31 = call ptr @zd1301_demod_get_i2c_adapter(ptr noundef %call.i.i) #5
  %call32 = call ptr @zd1301_demod_get_dvb_frontend(ptr noundef %call.i.i) #5
  %tobool33.not = icmp eq ptr %call31, null
  %tobool34.not = icmp eq ptr %call32, null
  %or.cond = select i1 %tobool33.not, i1 true, i1 %tobool34.not
  br i1 %or.cond, label %if.end30.err_module_put_demod_crit_edge, label %if.end36

if.end30.err_module_put_demod_crit_edge:          ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_module_put_demod

if.end36:                                         ; preds = %if.end30
  %mt2060_pdata = getelementptr inbounds %struct.zd1301_dev, ptr %3, i32 0, i32 2
  %i2c_write_max = getelementptr inbounds %struct.zd1301_dev, ptr %3, i32 0, i32 2, i32 2
  %28 = ptrtoint ptr %i2c_write_max to i32
  call void @__asan_load1_noabort(i32 %28)
  %bf.load = load i8, ptr %i2c_write_max, align 4
  %bf.clear = and i8 %bf.load, 7
  %bf.set = or i8 %bf.clear, 72
  store i8 %bf.set, ptr %i2c_write_max, align 4
  %dvb_frontend = getelementptr inbounds %struct.zd1301_dev, ptr %3, i32 0, i32 2, i32 3
  %29 = ptrtoint ptr %dvb_frontend to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call32, ptr %dvb_frontend, align 4
  %30 = call ptr @memset(ptr %board_info, i32 0, i32 56)
  %call38 = call i32 @strscpy(ptr noundef nonnull %board_info, ptr noundef nonnull @.str.8, i32 noundef 20) #5
  %addr = getelementptr inbounds %struct.i2c_board_info, ptr %board_info, i32 0, i32 2
  %31 = ptrtoint ptr %addr to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 96, ptr %addr, align 2
  %platform_data = getelementptr inbounds %struct.i2c_board_info, ptr %board_info, i32 0, i32 4
  %32 = ptrtoint ptr %platform_data to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %mt2060_pdata, ptr %platform_data, align 4
  %call40 = call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.8) #5
  %call41 = call ptr @i2c_new_client_device(ptr noundef nonnull %call31, ptr noundef nonnull %board_info) #5
  %tobool.not.i.i = icmp eq ptr %call41, null
  %cmp.i.i = icmp ugt ptr %call41, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i = or i1 %tobool.not.i.i, %cmp.i.i
  br i1 %spec.select.i.i, label %if.end36.err_module_put_demod_crit_edge, label %i2c_client_has_driver.exit

if.end36.err_module_put_demod_crit_edge:          ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_module_put_demod

i2c_client_has_driver.exit:                       ; preds = %if.end36
  %driver.i = getelementptr inbounds %struct.i2c_client, ptr %call41, i32 0, i32 4, i32 6
  %33 = ptrtoint ptr %driver.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %driver.i, align 4
  %tobool.i.not = icmp eq ptr %34, null
  br i1 %tobool.i.not, label %i2c_client_has_driver.exit.err_module_put_demod_crit_edge, label %if.end44

i2c_client_has_driver.exit.err_module_put_demod_crit_edge: ; preds = %i2c_client_has_driver.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_module_put_demod

if.end44:                                         ; preds = %i2c_client_has_driver.exit
  %35 = ptrtoint ptr %driver.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %driver.i, align 4
  %owner47 = getelementptr inbounds %struct.device_driver, ptr %36, i32 0, i32 2
  %37 = ptrtoint ptr %owner47 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %owner47, align 4
  %call48 = call zeroext i1 @try_module_get(ptr noundef %38) #5
  br i1 %call48, label %if.end50, label %if.then49

if.then49:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #7
  call void @i2c_unregister_device(ptr noundef nonnull %call41) #5
  br label %err_module_put_demod

if.end50:                                         ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #7
  %platform_device_demod = getelementptr inbounds %struct.zd1301_dev, ptr %3, i32 0, i32 3
  %39 = ptrtoint ptr %platform_device_demod to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call.i.i, ptr %platform_device_demod, align 4
  %i2c_client_tuner = getelementptr inbounds %struct.zd1301_dev, ptr %3, i32 0, i32 4
  %40 = ptrtoint ptr %i2c_client_tuner to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %call41, ptr %i2c_client_tuner, align 4
  %fe = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 14
  %41 = ptrtoint ptr %fe to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %call32, ptr %fe, align 8
  br label %cleanup

err_module_put_demod:                             ; preds = %if.then49, %i2c_client_has_driver.exit.err_module_put_demod_crit_edge, %if.end36.err_module_put_demod_crit_edge, %if.end30.err_module_put_demod_crit_edge
  %42 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %driver, align 4
  %owner53 = getelementptr inbounds %struct.device_driver, ptr %43, i32 0, i32 2
  %44 = ptrtoint ptr %owner53 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %owner53, align 4
  call void @module_put(ptr noundef %45) #5
  br label %err_platform_device_unregister

err_platform_device_unregister:                   ; preds = %err_module_put_demod, %if.end25.err_platform_device_unregister_crit_edge, %if.end21.err_platform_device_unregister_crit_edge
  call void @platform_device_unregister(ptr noundef %call.i.i) #5
  br label %do.body54

do.body54:                                        ; preds = %err_platform_device_unregister, %if.then19
  %ret.2 = phi i32 [ %23, %if.then19 ], [ -19, %err_platform_device_unregister ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @zd1301_frontend_attach.__UNIQUE_ID_ddebug395, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@zd1301_frontend_attach, %if.then66)) #5
          to label %cleanup [label %if.then66], !srcloc !89

if.then66:                                        ; preds = %do.body54
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @zd1301_frontend_attach.__UNIQUE_ID_ddebug395, ptr noundef %dev15, ptr noundef nonnull @.str.9, i32 noundef %ret.2) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then66, %do.body54, %if.end50
  %retval.0 = phi i32 [ 0, %if.end50 ], [ %ret.2, %if.then66 ], [ %ret.2, %do.body54 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %board_info) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zd1301_frontend_detach(ptr nocapture noundef readonly %adap) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
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
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @zd1301_frontend_detach.__UNIQUE_ID_ddebug396, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@zd1301_frontend_detach, %if.then)) #5
          to label %do.end [label %if.then], !srcloc !89

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev5 = getelementptr inbounds %struct.usb_interface, ptr %5, i32 0, i32 7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @zd1301_frontend_detach.__UNIQUE_ID_ddebug396, ptr noundef %dev5, ptr noundef nonnull @.str.5) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %i2c_client_tuner = getelementptr inbounds %struct.zd1301_dev, ptr %3, i32 0, i32 4
  %6 = ptrtoint ptr %i2c_client_tuner to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %i2c_client_tuner, align 4
  %platform_device_demod = getelementptr inbounds %struct.zd1301_dev, ptr %3, i32 0, i32 3
  %8 = ptrtoint ptr %platform_device_demod to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %platform_device_demod, align 4
  %tobool6.not = icmp eq ptr %7, null
  br i1 %tobool6.not, label %do.end.if.end9_crit_edge, label %if.then7

do.end.if.end9_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9

if.then7:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  %driver = getelementptr inbounds %struct.i2c_client, ptr %7, i32 0, i32 4, i32 6
  %10 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %driver, align 4
  %owner = getelementptr inbounds %struct.device_driver, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %owner, align 4
  tail call void @module_put(ptr noundef %13) #5
  tail call void @i2c_unregister_device(ptr noundef nonnull %7) #5
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %do.end.if.end9_crit_edge
  %tobool10.not = icmp eq ptr %9, null
  br i1 %tobool10.not, label %if.end9.if.end15_crit_edge, label %if.then11

if.end9.if.end15_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15

if.then11:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  %driver13 = getelementptr inbounds %struct.platform_device, ptr %9, i32 0, i32 3, i32 6
  %14 = ptrtoint ptr %driver13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %driver13, align 4
  %owner14 = getelementptr inbounds %struct.device_driver, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %owner14 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %owner14, align 4
  tail call void @module_put(ptr noundef %17) #5
  tail call void @platform_device_unregister(ptr noundef nonnull %9) #5
  br label %if.end15

if.end15:                                         ; preds = %if.then11, %if.end9.if.end15_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zd1301_streaming_ctrl(ptr nocapture noundef readonly %fe, i32 noundef %onoff) #2 align 64 {
entry:
  %buf = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
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
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf) #5
  %8 = getelementptr inbounds [3 x i8], ptr %buf, i32 0, i32 1
  %9 = getelementptr inbounds [3 x i8], ptr %buf, i32 0, i32 2
  %10 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 3, ptr %buf, align 1
  %11 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %8, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %onoff)
  %tobool.not = icmp eq i32 %onoff, 0
  %conv5 = select i1 %tobool.not, i8 8, i8 7
  %12 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv5, ptr %9, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @zd1301_streaming_ctrl.__UNIQUE_ID_ddebug397, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@zd1301_streaming_ctrl, %if.then)) #5
          to label %do.end [label %if.then], !srcloc !89

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.usb_interface, ptr %7, i32 0, i32 7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @zd1301_streaming_ctrl.__UNIQUE_ID_ddebug397, ptr noundef %dev, ptr noundef nonnull @.str.27, i32 noundef %onoff) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call10 = call fastcc i32 @zd1301_ctrl_msg(ptr noundef %add.ptr, ptr noundef nonnull %buf, i32 noundef 3, ptr noundef null, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %do.end.cleanup_crit_edge, label %do.body14

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body14:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @zd1301_streaming_ctrl.__UNIQUE_ID_ddebug398, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@zd1301_streaming_ctrl, %if.then26)) #5
          to label %cleanup [label %if.then26], !srcloc !89

if.then26:                                        ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #7
  %dev27 = getelementptr inbounds %struct.usb_interface, ptr %7, i32 0, i32 7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @zd1301_streaming_ctrl.__UNIQUE_ID_ddebug398, ptr noundef %dev27, ptr noundef nonnull @.str.9, i32 noundef %call10) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then26, %do.body14, %do.end.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf) #5
  ret i32 %call10
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zd1301_demod_rreg(ptr noundef %reg_priv, i16 noundef zeroext %reg, ptr nocapture noundef writeonly %val) #2 align 64 {
entry:
  %buf = alloca [7 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %intf1 = getelementptr inbounds %struct.dvb_usb_device, ptr %reg_priv, i32 0, i32 4
  %0 = ptrtoint ptr %intf1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %intf1, align 8
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %buf) #5
  %2 = getelementptr inbounds [7 x i8], ptr %buf, i32 0, i32 1
  %3 = getelementptr inbounds [7 x i8], ptr %buf, i32 0, i32 2
  %4 = getelementptr inbounds [7 x i8], ptr %buf, i32 0, i32 3
  %5 = getelementptr inbounds [7 x i8], ptr %buf, i32 0, i32 4
  %6 = getelementptr inbounds [7 x i8], ptr %buf, i32 0, i32 5
  %7 = getelementptr inbounds [7 x i8], ptr %buf, i32 0, i32 6
  %8 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 7, ptr %buf, align 1
  %9 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %2, align 1
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 4, ptr %3, align 1
  %11 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %4, align 1
  %conv5 = trunc i16 %reg to i8
  %12 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv5, ptr %5, align 1
  %13 = lshr i16 %reg, 8
  %conv10 = trunc i16 %13 to i8
  %14 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv10, ptr %6, align 1
  %15 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %7, align 1
  %call = call fastcc i32 @zd1301_ctrl_msg(ptr noundef %reg_priv, ptr noundef nonnull %buf, i32 noundef 7, ptr noundef nonnull %buf, i32 noundef 7)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.body

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %16 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %7, align 1
  %18 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %17, ptr %val, align 1
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @zd1301_demod_rreg.__UNIQUE_ID_ddebug393, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@zd1301_demod_rreg, %if.then17)) #5
          to label %cleanup [label %if.then17], !srcloc !89

if.then17:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.usb_interface, ptr %1, i32 0, i32 7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @zd1301_demod_rreg.__UNIQUE_ID_ddebug393, ptr noundef %dev, ptr noundef nonnull @.str.9, i32 noundef %call) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then17, %do.body, %if.end
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %buf) #5
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zd1301_demod_wreg(ptr noundef %reg_priv, i16 noundef zeroext %reg, i8 noundef zeroext %val) #2 align 64 {
entry:
  %buf = alloca [7 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %intf1 = getelementptr inbounds %struct.dvb_usb_device, ptr %reg_priv, i32 0, i32 4
  %0 = ptrtoint ptr %intf1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %intf1, align 8
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %buf) #5
  %2 = getelementptr inbounds [7 x i8], ptr %buf, i32 0, i32 1
  %3 = getelementptr inbounds [7 x i8], ptr %buf, i32 0, i32 2
  %4 = getelementptr inbounds [7 x i8], ptr %buf, i32 0, i32 3
  %5 = getelementptr inbounds [7 x i8], ptr %buf, i32 0, i32 4
  %6 = getelementptr inbounds [7 x i8], ptr %buf, i32 0, i32 5
  %7 = getelementptr inbounds [7 x i8], ptr %buf, i32 0, i32 6
  %8 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 7, ptr %buf, align 1
  %9 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %2, align 1
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 3, ptr %3, align 1
  %11 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %4, align 1
  %conv5 = trunc i16 %reg to i8
  %12 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv5, ptr %5, align 1
  %13 = lshr i16 %reg, 8
  %conv10 = trunc i16 %13 to i8
  %14 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv10, ptr %6, align 1
  %15 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %val, ptr %7, align 1
  %call = call fastcc i32 @zd1301_ctrl_msg(ptr noundef %reg_priv, ptr noundef nonnull %buf, i32 noundef 7, ptr noundef null, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @zd1301_demod_wreg.__UNIQUE_ID_ddebug392, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@zd1301_demod_wreg, %if.then16)) #5
          to label %cleanup [label %if.then16], !srcloc !89

if.then16:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.usb_interface, ptr %1, i32 0, i32 7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @zd1301_demod_wreg.__UNIQUE_ID_ddebug392, ptr noundef %dev, ptr noundef nonnull @.str.9, i32 noundef %call) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then16, %do.body, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %buf) #5
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__request_module(i1 noundef zeroext, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @zd1301_demod_get_i2c_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @zd1301_demod_get_dvb_frontend(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @i2c_new_client_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @zd1301_ctrl_msg(ptr noundef %d, ptr nocapture noundef readonly %wbuf, i32 noundef %wlen, ptr nocapture noundef writeonly %rbuf, i32 noundef %rlen) unnamed_addr #2 align 64 {
entry:
  %actual_length = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 15
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %intf1 = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 4
  %2 = ptrtoint ptr %intf1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %intf1, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %actual_length) #5
  %4 = ptrtoint ptr %actual_length to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %actual_length, align 4, !annotation !90
  %usb_mutex = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %usb_mutex, i32 noundef 0) #5
  %5 = call ptr @memcpy(ptr %1, ptr %wbuf, i32 %wlen)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @zd1301_ctrl_msg.__UNIQUE_ID_ddebug388, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@zd1301_ctrl_msg, %if.then)) #5
          to label %do.end [label %if.then], !srcloc !89

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev4 = getelementptr inbounds %struct.usb_interface, ptr %3, i32 0, i32 7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @zd1301_ctrl_msg.__UNIQUE_ID_ddebug388, ptr noundef %dev4, ptr noundef nonnull @.str.12, i32 noundef %wlen, ptr noundef %1) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %udev = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 5
  %6 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %udev, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 8
  %shl.i = shl i32 %9, 8
  %or = or i32 %shl.i, -1073610752
  %call10 = call i32 @usb_bulk_msg(ptr noundef %7, i32 noundef %or, ptr noundef %1, i32 noundef %wlen, ptr noundef nonnull %actual_length, i32 noundef 1000) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end17, label %do.end15

do.end15:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  %dev16 = getelementptr inbounds %struct.usb_interface, ptr %3, i32 0, i32 7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev16, ptr noundef nonnull @.str.13, i32 noundef %call10) #8
  br label %err_mutex_unlock

if.end17:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rlen)
  %tobool18.not = icmp eq i32 %rlen, 0
  br i1 %tobool18.not, label %if.end17.err_mutex_unlock_crit_edge, label %if.then19

if.end17.err_mutex_unlock_crit_edge:              ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_mutex_unlock

if.then19:                                        ; preds = %if.end17
  %10 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %udev, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 8
  %shl.i154 = shl i32 %13, 8
  %or24 = or i32 %shl.i154, -1069449088
  %call27 = call i32 @usb_bulk_msg(ptr noundef %11, i32 noundef %or24, ptr noundef %1, i32 noundef %rlen, ptr noundef nonnull %actual_length, i32 noundef 1000) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %do.body35, label %do.end32

do.end32:                                         ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #7
  %dev33 = getelementptr inbounds %struct.usb_interface, ptr %3, i32 0, i32 7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev33, ptr noundef nonnull @.str.17, i32 noundef %call27) #8
  br label %err_mutex_unlock

do.body35:                                        ; preds = %if.then19
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @zd1301_ctrl_msg.__UNIQUE_ID_ddebug389, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@zd1301_ctrl_msg, %if.then47)) #5
          to label %do.end53 [label %if.then47], !srcloc !89

if.then47:                                        ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #7
  %dev48 = getelementptr inbounds %struct.usb_interface, ptr %3, i32 0, i32 7
  %14 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %actual_length, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @zd1301_ctrl_msg.__UNIQUE_ID_ddebug389, ptr noundef %dev48, ptr noundef nonnull @.str.19, i32 noundef %15, ptr noundef %1) #5
  br label %do.end53

do.end53:                                         ; preds = %if.then47, %do.body35
  %16 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %actual_length, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %rlen)
  %cmp.not = icmp eq i32 %17, %rlen
  br i1 %cmp.not, label %do.end53.if.end106_crit_edge, label %do.body55

do.end53.if.end106_crit_edge:                     ; preds = %do.end53
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end106

do.body55:                                        ; preds = %do.end53
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @zd1301_ctrl_msg.__UNIQUE_ID_ddebug390, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@zd1301_ctrl_msg, %if.then67)) #5
          to label %do.end71 [label %if.then67], !srcloc !89

if.then67:                                        ; preds = %do.body55
  call void @__sanitizer_cov_trace_pc() #7
  %dev68 = getelementptr inbounds %struct.usb_interface, ptr %3, i32 0, i32 7
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @zd1301_ctrl_msg.__UNIQUE_ID_ddebug390, ptr noundef %dev68, ptr noundef nonnull @.str.20) #5
  br label %do.end71

do.end71:                                         ; preds = %if.then67, %do.body55
  %18 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %udev, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %19, align 8
  %shl.i156 = shl i32 %21, 8
  %or76 = or i32 %shl.i156, -1069449088
  %call79 = call i32 @usb_bulk_msg(ptr noundef %19, i32 noundef %or76, ptr noundef %1, i32 noundef %rlen, ptr noundef nonnull %actual_length, i32 noundef 1000) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call79)
  %tobool80.not = icmp eq i32 %call79, 0
  br i1 %tobool80.not, label %do.body87, label %do.end84

do.end84:                                         ; preds = %do.end71
  call void @__sanitizer_cov_trace_pc() #7
  %dev85 = getelementptr inbounds %struct.usb_interface, ptr %3, i32 0, i32 7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev85, ptr noundef nonnull @.str.22, i32 noundef %call79) #8
  br label %err_mutex_unlock

do.body87:                                        ; preds = %do.end71
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @zd1301_ctrl_msg.__UNIQUE_ID_ddebug391, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@zd1301_ctrl_msg, %if.then99)) #5
          to label %if.end106 [label %if.then99], !srcloc !89

if.then99:                                        ; preds = %do.body87
  call void @__sanitizer_cov_trace_pc() #7
  %dev100 = getelementptr inbounds %struct.usb_interface, ptr %3, i32 0, i32 7
  %22 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %actual_length, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @zd1301_ctrl_msg.__UNIQUE_ID_ddebug391, ptr noundef %dev100, ptr noundef nonnull @.str.19, i32 noundef %23, ptr noundef %1) #5
  br label %if.end106

if.end106:                                        ; preds = %if.then99, %do.body87, %do.end53.if.end106_crit_edge
  %24 = call ptr @memcpy(ptr %rbuf, ptr %1, i32 %rlen)
  br label %err_mutex_unlock

err_mutex_unlock:                                 ; preds = %if.end106, %do.end84, %do.end32, %if.end17.err_mutex_unlock_crit_edge, %do.end15
  %ret.1 = phi i32 [ %call10, %do.end15 ], [ %call27, %do.end32 ], [ %call79, %do.end84 ], [ 0, %if.end106 ], [ 0, %if.end17.err_mutex_unlock_crit_edge ]
  call void @mutex_unlock(ptr noundef %usb_mutex) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %actual_length) #5
  ret i32 %ret.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_bulk_msg(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_device_register_full(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

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
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !7, !9, !11, !13, !14, !15, !16, !17, !18, !20, !22, !24, !26, !28, !29, !30, !31, !33, !34, !36, !38, !39, !41, !42, !44, !45, !46, !48, !49, !50, !51, !52, !54, !55, !56, !58, !59, !61, !62, !64, !65, !66, !68, !70, !71, !73, !74, !76, !77, !78}
!llvm.module.flags = !{!80, !81, !82, !83, !84, !85, !86, !87}
!llvm.ident = !{!88}

!0 = !{ptr @__param_adapter_nr, !1, !"__param_adapter_nr", i1 false, i1 false}
!1 = !{!"../drivers/media/usb/dvb-usb-v2/zd1301.c", i32 14, i32 1}
!2 = !{ptr @__UNIQUE_ID_adapter_nrtype386, !1, !"__UNIQUE_ID_adapter_nrtype386", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_adapter_nr387, !1, !"__UNIQUE_ID_adapter_nr387", i1 false, i1 false}
!4 = !{ptr @__initcall__kmod_zd1301__399_285_zd1301_usb_driver_init6, !5, !"__initcall__kmod_zd1301__399_285_zd1301_usb_driver_init6", i1 false, i1 false}
!5 = !{!"../drivers/media/usb/dvb-usb-v2/zd1301.c", i32 285, i32 1}
!6 = !{ptr @__exitcall_zd1301_usb_driver_exit, !5, !"__exitcall_zd1301_usb_driver_exit", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_author400, !8, !"__UNIQUE_ID_author400", i1 false, i1 false}
!8 = !{!"../drivers/media/usb/dvb-usb-v2/zd1301.c", i32 287, i32 1}
!9 = !{ptr @__UNIQUE_ID_description401, !10, !"__UNIQUE_ID_description401", i1 false, i1 false}
!10 = !{!"../drivers/media/usb/dvb-usb-v2/zd1301.c", i32 288, i32 1}
!11 = !{ptr @__UNIQUE_ID_file402, !12, !"__UNIQUE_ID_file402", i1 false, i1 false}
!12 = !{!"../drivers/media/usb/dvb-usb-v2/zd1301.c", i32 289, i32 1}
!13 = !{ptr @__UNIQUE_ID_license403, !12, !"__UNIQUE_ID_license403", i1 false, i1 false}
!14 = !{ptr @__param_str_adapter_nr, !1, !"__param_str_adapter_nr", i1 false, i1 false}
!15 = !{ptr @__param_arr_adapter_nr, !1, !"__param_arr_adapter_nr", i1 false, i1 false}
!16 = !{ptr @adapter_nr, !1, !"adapter_nr", i1 false, i1 false}
!17 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @zd1301_usb_driver, !19, !"zd1301_usb_driver", i1 false, i1 false}
!19 = !{!"../drivers/media/usb/dvb-usb-v2/zd1301.c", i32 274, i32 26}
!20 = !{ptr @.str.1, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/media/usb/dvb-usb-v2/zd1301.c", i32 267, i32 3}
!22 = !{ptr @zd1301_id_table, !23, !"zd1301_id_table", i1 false, i1 false}
!23 = !{!"../drivers/media/usb/dvb-usb-v2/zd1301.c", i32 266, i32 35}
!24 = !{ptr @zd1301_props, !25, !"zd1301_props", i1 false, i1 false}
!25 = !{!"../drivers/media/usb/dvb-usb-v2/zd1301.c", i32 248, i32 47}
!26 = !{ptr @.str.3, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/media/usb/dvb-usb-v2/zd1301.c", i32 135, i32 2}
!28 = !{ptr @.str.4, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.5, !27, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @zd1301_frontend_attach.__UNIQUE_ID_ddebug394, !27, !"__UNIQUE_ID_ddebug394", i1 false, i1 false}
!31 = !{ptr @.str.6, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/media/usb/dvb-usb-v2/zd1301.c", i32 141, i32 2}
!33 = !{ptr @.str.7, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.8, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/media/usb/dvb-usb-v2/zd1301.c", i32 171, i32 27}
!36 = !{ptr @.str.9, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/media/usb/dvb-usb-v2/zd1301.c", i32 197, i32 2}
!38 = !{ptr @zd1301_frontend_attach.__UNIQUE_ID_ddebug395, !37, !"__UNIQUE_ID_ddebug395", i1 false, i1 false}
!39 = !{ptr @.str.10, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/media/usb/dvb-usb-v2/zd1301.c", i32 119, i32 2}
!41 = !{ptr @zd1301_demod_rreg.__UNIQUE_ID_ddebug393, !40, !"__UNIQUE_ID_ddebug393", i1 false, i1 false}
!42 = !{ptr @.str.11, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/media/usb/dvb-usb-v2/zd1301.c", i32 36, i32 2}
!44 = !{ptr @.str.12, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @zd1301_ctrl_msg.__UNIQUE_ID_ddebug388, !43, !"__UNIQUE_ID_ddebug388", i1 false, i1 false}
!46 = !{ptr @.str.13, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/media/usb/dvb-usb-v2/zd1301.c", i32 41, i32 3}
!48 = !{ptr @.str.14, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @.str.15, !47, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @zd1301_ctrl_msg._entry, !47, !"_entry", i1 false, i1 false}
!51 = !{ptr @zd1301_ctrl_msg._entry_ptr, !47, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.17, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/media/usb/dvb-usb-v2/zd1301.c", i32 49, i32 4}
!54 = !{ptr @zd1301_ctrl_msg._entry.16, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @zd1301_ctrl_msg._entry_ptr.18, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.19, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/media/usb/dvb-usb-v2/zd1301.c", i32 54, i32 3}
!58 = !{ptr @zd1301_ctrl_msg.__UNIQUE_ID_ddebug389, !57, !"__UNIQUE_ID_ddebug389", i1 false, i1 false}
!59 = !{ptr @.str.20, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/media/usb/dvb-usb-v2/zd1301.c", i32 61, i32 4}
!61 = !{ptr @zd1301_ctrl_msg.__UNIQUE_ID_ddebug390, !60, !"__UNIQUE_ID_ddebug390", i1 false, i1 false}
!62 = !{ptr @.str.22, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/media/usb/dvb-usb-v2/zd1301.c", i32 68, i32 5}
!64 = !{ptr @zd1301_ctrl_msg._entry.21, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @zd1301_ctrl_msg._entry_ptr.23, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @zd1301_ctrl_msg.__UNIQUE_ID_ddebug391, !67, !"__UNIQUE_ID_ddebug391", i1 false, i1 false}
!67 = !{!"../drivers/media/usb/dvb-usb-v2/zd1301.c", i32 73, i32 4}
!68 = !{ptr @.str.24, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/media/usb/dvb-usb-v2/zd1301.c", i32 99, i32 2}
!70 = !{ptr @zd1301_demod_wreg.__UNIQUE_ID_ddebug392, !69, !"__UNIQUE_ID_ddebug392", i1 false, i1 false}
!71 = !{ptr @.str.25, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/media/usb/dvb-usb-v2/zd1301.c", i32 209, i32 2}
!73 = !{ptr @zd1301_frontend_detach.__UNIQUE_ID_ddebug396, !72, !"__UNIQUE_ID_ddebug396", i1 false, i1 false}
!74 = !{ptr @.str.26, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/media/usb/dvb-usb-v2/zd1301.c", i32 236, i32 2}
!76 = !{ptr @.str.27, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @zd1301_streaming_ctrl.__UNIQUE_ID_ddebug397, !75, !"__UNIQUE_ID_ddebug397", i1 false, i1 false}
!78 = !{ptr @zd1301_streaming_ctrl.__UNIQUE_ID_ddebug398, !79, !"__UNIQUE_ID_ddebug398", i1 false, i1 false}
!79 = !{!"../drivers/media/usb/dvb-usb-v2/zd1301.c", i32 244, i32 2}
!80 = !{i32 1, !"wchar_size", i32 2}
!81 = !{i32 1, !"min_enum_size", i32 4}
!82 = !{i32 8, !"branch-target-enforcement", i32 0}
!83 = !{i32 8, !"sign-return-address", i32 0}
!84 = !{i32 8, !"sign-return-address-all", i32 0}
!85 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!86 = !{i32 7, !"uwtable", i32 1}
!87 = !{i32 7, !"frame-pointer", i32 2}
!88 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!89 = !{i64 2148952763, i64 2148952768, i64 2148952781, i64 2148952825, i64 2148952859, i64 2148952880}
!90 = !{!"auto-init"}
