; ModuleID = '/llk/IR_all_yes/drivers/media/usb/dvb-usb-v2/ce6230.c_pt.bc'
source_filename = "../drivers/media/usb/dvb-usb-v2/ce6230.c"
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
%struct.zl10353_config = type { i8, i32, i32, i32, i32, i8, i8, i8 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.mxl5005s_config = type { i8, i32, i32, i8, i8, i8, i8, i8, i8, i32, i32, i8, i8, i8, i8 }
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
%struct.usb_req = type { i8, i16, i16, i16, ptr }
%struct.i2c_msg = type { i16, i16, i16, ptr }

@__param_str_adapter_nr = internal constant [26 x i8] c"dvb_usb_ce6230.adapter_nr\00", align 1
@param_array_ops = external dso_local constant %struct.kernel_param_ops, align 4
@__param_arr_adapter_nr = internal constant %struct.kparam_array { i32 16, i32 2, ptr null, ptr @param_ops_short, ptr @adapter_nr }, align 4
@__param_adapter_nr = internal constant %struct.kernel_param { ptr @__param_str_adapter_nr, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.101 { ptr @__param_arr_adapter_nr } }, section "__param", align 4
@__UNIQUE_ID_adapter_nrtype386 = internal constant [50 x i8] c"dvb_usb_ce6230.parmtype=adapter_nr:array of short\00", section ".modinfo", align 1
@__UNIQUE_ID_adapter_nr387 = internal constant [51 x i8] c"dvb_usb_ce6230.parm=adapter_nr:DVB adapter numbers\00", section ".modinfo", align 1
@__initcall__kmod_dvb_usb_ce6230__392_274_ce6230_usb_driver_init6 = internal global ptr @ce6230_usb_driver_init, section ".initcall6.init", align 4
@ce6230_usb_driver = internal global { %struct.usb_driver, [44 x i8] } { %struct.usb_driver { ptr @.str, ptr @dvb_usbv2_probe, ptr @dvb_usbv2_disconnect, ptr null, ptr @dvb_usbv2_suspend, ptr @dvb_usbv2_resume, ptr @dvb_usbv2_reset_resume, ptr null, ptr null, ptr @ce6230_id_table, ptr null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 -112 }, [44 x i8] zeroinitializer }, align 32
@__exitcall_ce6230_usb_driver_exit = internal global ptr @ce6230_usb_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author393 = internal constant [53 x i8] c"dvb_usb_ce6230.author=Antti Palosaari <crope@iki.fi>\00", section ".modinfo", align 1
@__UNIQUE_ID_description394 = internal constant [47 x i8] c"dvb_usb_ce6230.description=Intel CE6230 driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file395 = internal constant [64 x i8] c"dvb_usb_ce6230.file=drivers/media/usb/dvb-usb-v2/dvb-usb-ce6230\00", section ".modinfo", align 1
@__UNIQUE_ID_license396 = internal constant [27 x i8] c"dvb_usb_ce6230.license=GPL\00", section ".modinfo", align 1
@param_ops_short = external dso_local constant %struct.kernel_param_ops, align 4
@adapter_nr = internal global { [16 x i16], [32 x i8] } { [16 x i16] [i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1], [32 x i8] zeroinitializer }, align 32
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"dvb_usb_ce6230\00", [17 x i8] zeroinitializer }, align 32
@ce6230_id_table = internal constant { [3 x %struct.usb_device_id], [56 x i8] } { [3 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 -32634, i16 -27392, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral to i32) }, %struct.usb_device_id { i16 3, i16 1994, i16 -23792, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.3 to i32) }, %struct.usb_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Intel CE9500 reference design\00", [34 x i8] zeroinitializer }, align 32
@.compoundliteral = internal constant { %struct.dvb_usb_driver_info, [20 x i8] } { %struct.dvb_usb_driver_info { ptr @.str.1, ptr null, ptr @ce6230_props }, [20 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"AVerMedia A310 USB 2.0 DVB-T tuner\00", [61 x i8] zeroinitializer }, align 32
@.compoundliteral.3 = internal constant { %struct.dvb_usb_driver_info, [20 x i8] } { %struct.dvb_usb_driver_info { ptr @.str.2, ptr null, ptr @ce6230_props }, [20 x i8] zeroinitializer }, align 32
@ce6230_i2c_algorithm = internal global { %struct.i2c_algorithm, [36 x i8] } { %struct.i2c_algorithm { ptr @ce6230_i2c_master_xfer, ptr null, ptr null, ptr null, ptr @ce6230_i2c_functionality, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@ce6230_props = internal global { { ptr, ptr, ptr, i8, i32, i8, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, <{ { i8, i8, ptr, ptr, { i8, i8, i8, { %struct.anon.126, [8 x i8] } } }, %struct.dvb_usb_adapter_properties }>, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }, [56 x i8] } { { ptr, ptr, ptr, i8, i32, i8, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, <{ { i8, i8, ptr, ptr, { i8, i8, i8, { %struct.anon.126, [8 x i8] } } }, %struct.dvb_usb_adapter_properties }>, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @.str, ptr null, ptr @adapter_nr, i8 1, i32 0, i8 0, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ce6230_i2c_algorithm, i32 1, ptr null, <{ { i8, i8, ptr, ptr, { i8, i8, i8, { %struct.anon.126, [8 x i8] } } }, %struct.dvb_usb_adapter_properties }> <{ { i8, i8, ptr, ptr, { i8, i8, i8, { %struct.anon.126, [8 x i8] } } } { i8 0, i8 0, ptr null, ptr null, { i8, i8, i8, { %struct.anon.126, [8 x i8] } } { i8 1, i8 6, i8 -126, { %struct.anon.126, [8 x i8] } { %struct.anon.126 { i32 8192 }, [8 x i8] undef } } }, %struct.dvb_usb_adapter_properties zeroinitializer }>, ptr @ce6230_power_ctrl, ptr null, ptr null, ptr @ce6230_zl10353_frontend_attach, ptr null, ptr @ce6230_mxl5003s_tuner_attach, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@ce6230_zl10353_config = internal global { %struct.zl10353_config, [40 x i8] } { %struct.zl10353_config { i8 30, i32 450000, i32 45700, i32 1, i32 1, i8 0, i8 52, i8 14 }, [40 x i8] zeroinitializer }, align 32
@ce6230_i2c_master_xfer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.7, i32 113, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s: I2C read not implemented\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ce6230_i2c_master_xfer\00", [41 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/media/usb/dvb-usb-v2/ce6230.c\00", [58 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ce6230_i2c_master_xfer._entry_ptr = internal global ptr @ce6230_i2c_master_xfer._entry, section ".printk_index", align 4
@ce6230_ctrl_msg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.7, i32 39, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s: unknown command=%02x\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ce6230_ctrl_msg\00", [16 x i8] zeroinitializer }, align 32
@ce6230_ctrl_msg._entry_ptr = internal global ptr @ce6230_ctrl_msg._entry, section ".printk_index", align 4
@.str.12 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c">>>\00", [28 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"<<<\00", [28 x i8] zeroinitializer }, align 32
@ce6230_ctrl_msg.__UNIQUE_ID_ddebug388 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.11, ptr @.str.7, ptr @.str.14, i8 0, i8 16, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"%s: %02x %02x %02x %02x %02x %02x %02x %02x %s %*ph\0A\00", [43 x i8] zeroinitializer }, align 32
@ce6230_ctrl_msg._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.11, ptr @.str.7, i32 69, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s: usb_control_msg() failed=%d\0A\00", [63 x i8] zeroinitializer }, align 32
@ce6230_ctrl_msg._entry_ptr.17 = internal global ptr @ce6230_ctrl_msg._entry.15, section ".printk_index", align 4
@ce6230_power_ctrl.__UNIQUE_ID_ddebug391 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.18, ptr @.str.7, ptr @.str.19, i8 0, i8 53, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ce6230_power_ctrl\00", [46 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"%s: onoff=%d\0A\00", [18 x i8] zeroinitializer }, align 32
@ce6230_power_ctrl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.18, ptr @.str.7, i32 219, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s: usb_set_interface() failed=%d\0A\00", [61 x i8] zeroinitializer }, align 32
@ce6230_power_ctrl._entry_ptr = internal global ptr @ce6230_power_ctrl._entry, section ".printk_index", align 4
@ce6230_zl10353_frontend_attach.__UNIQUE_ID_ddebug389 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.21, ptr @.str.7, ptr @.str.22, i8 0, i8 42, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"ce6230_zl10353_frontend_attach\00", [33 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%s:\0A\00", [27 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"zl10353_attach\00", [17 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"symbol:zl10353_attach\00", [42 x i8] zeroinitializer }, align 32
@ce6230_zl10353_frontend_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.21, ptr @.str.7, i32 172, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013DVB: Unable to find symbol zl10353_attach()\0A\00", [49 x i8] zeroinitializer }, align 32
@ce6230_zl10353_frontend_attach._entry_ptr = internal global ptr @ce6230_zl10353_frontend_attach._entry, section ".printk_index", align 4
@ce6230_mxl5003s_tuner_attach.__UNIQUE_ID_ddebug390 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.26, ptr @.str.7, ptr @.str.22, i8 0, i8 50, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"ce6230_mxl5003s_tuner_attach\00", [35 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"mxl5005s_attach\00", [16 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"symbol:mxl5005s_attach\00", [41 x i8] zeroinitializer }, align 32
@ce6230_mxl5003s_config = internal global { %struct.mxl5005s_config, [32 x i8] } { %struct.mxl5005s_config { i8 -58, i32 4570000, i32 16000000, i8 1, i8 0, i8 1, i8 1, i8 1, i8 0, i32 200, i32 252, i8 1, i8 0, i8 0, i8 0 }, [32 x i8] zeroinitializer }, align 32
@ce6230_mxl5003s_tuner_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.26, ptr @.str.7, i32 204, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013DVB: Unable to find symbol mxl5005s_attach()\0A\00", [48 x i8] zeroinitializer }, align 32
@ce6230_mxl5003s_tuner_attach._entry_ptr = internal global ptr @ce6230_mxl5003s_tuner_attach._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 8, i64 202, i64 204, i64 207, i64 217, i64 219, i64 222]
@___asan_gen_.30 = private unnamed_addr constant [18 x i8] c"ce6230_usb_driver\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 262, i32 26 }
@___asan_gen_.33 = private unnamed_addr constant [11 x i8] c"adapter_nr\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 10, i32 1 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 274, i32 1 }
@___asan_gen_.39 = private unnamed_addr constant [16 x i8] c"ce6230_id_table\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 253, i32 35 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 254, i32 4 }
@___asan_gen_.45 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 256, i32 4 }
@___asan_gen_.49 = private unnamed_addr constant [19 x i8] c".compoundliteral.3\00", align 1
@___asan_gen_.50 = private unnamed_addr constant [21 x i8] c"ce6230_i2c_algorithm\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 149, i32 29 }
@___asan_gen_.53 = private unnamed_addr constant [13 x i8] c"ce6230_props\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 225, i32 41 }
@___asan_gen_.56 = private unnamed_addr constant [22 x i8] c"ce6230_zl10353_config\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 155, i32 30 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 111, i32 5 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 38, i32 3 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 64, i32 2 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 68, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 212, i32 2 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 218, i32 3 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 169, i32 2 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 171, i32 16 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 201, i32 2 }
@___asan_gen_.140 = private unnamed_addr constant [23 x i8] c"ce6230_mxl5003s_config\00", align 1
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 179, i32 31 }
@___asan_gen_.143 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.146 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.147 = private constant [41 x i8] c"../drivers/media/usb/dvb-usb-v2/ce6230.c\00", align 1
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 203, i32 8 }
@llvm.compiler.used = appending global [57 x ptr] [ptr @__UNIQUE_ID_adapter_nr387, ptr @__UNIQUE_ID_adapter_nrtype386, ptr @__UNIQUE_ID_author393, ptr @__UNIQUE_ID_description394, ptr @__UNIQUE_ID_file395, ptr @__UNIQUE_ID_license396, ptr @__exitcall_ce6230_usb_driver_exit, ptr @__initcall__kmod_dvb_usb_ce6230__392_274_ce6230_usb_driver_init6, ptr @__param_adapter_nr, ptr @ce6230_ctrl_msg._entry, ptr @ce6230_ctrl_msg._entry.15, ptr @ce6230_ctrl_msg._entry_ptr, ptr @ce6230_ctrl_msg._entry_ptr.17, ptr @ce6230_i2c_master_xfer._entry, ptr @ce6230_i2c_master_xfer._entry_ptr, ptr @ce6230_mxl5003s_tuner_attach._entry, ptr @ce6230_mxl5003s_tuner_attach._entry_ptr, ptr @ce6230_power_ctrl._entry, ptr @ce6230_power_ctrl._entry_ptr, ptr @ce6230_usb_driver_exit, ptr @ce6230_zl10353_frontend_attach._entry, ptr @ce6230_zl10353_frontend_attach._entry_ptr, ptr @ce6230_usb_driver, ptr @adapter_nr, ptr @.str, ptr @ce6230_id_table, ptr @.str.1, ptr @.compoundliteral, ptr @.str.2, ptr @.compoundliteral.3, ptr @ce6230_i2c_algorithm, ptr @ce6230_props, ptr @ce6230_zl10353_config, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.16, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @ce6230_mxl5003s_config, ptr @.str.29], section "llvm.metadata"
@0 = internal global [41 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ce6230_usb_driver to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adapter_nr to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ce6230_id_table to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.3 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ce6230_i2c_algorithm to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ce6230_props to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ce6230_zl10353_config to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ce6230_i2c_master_xfer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ce6230_ctrl_msg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ce6230_ctrl_msg._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ce6230_power_ctrl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ce6230_zl10353_frontend_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ce6230_mxl5003s_config to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ce6230_mxl5003s_tuner_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ce6230_usb_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usb_register_driver(ptr noundef nonnull @ce6230_usb_driver, ptr noundef null, ptr noundef nonnull @.str) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ce6230_usb_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @usb_deregister(ptr noundef nonnull @ce6230_usb_driver) #7
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
define internal i32 @ce6230_power_ctrl(ptr nocapture noundef readonly %d, i32 noundef %onoff) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ce6230_power_ctrl.__UNIQUE_ID_ddebug391, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ce6230_power_ctrl, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !92

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %udev = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 5
  %0 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %udev, align 4
  %dev = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ce6230_power_ctrl.__UNIQUE_ID_ddebug391, ptr noundef %dev, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.18, i32 noundef %onoff) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %udev3 = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 5
  %2 = ptrtoint ptr %udev3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %udev3, align 4
  %call4 = tail call i32 @usb_set_interface(ptr noundef %3, i32 noundef 1, i32 noundef %onoff) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %do.end.if.end12_crit_edge, label %do.end9

do.end.if.end12_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

do.end9:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %udev3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %udev3, align 4
  %dev11 = getelementptr inbounds %struct.usb_device, ptr %5, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev11, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str, i32 noundef %call4) #10
  br label %if.end12

if.end12:                                         ; preds = %do.end9, %do.end.if.end12_crit_edge
  ret i32 %call4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ce6230_zl10353_frontend_attach(ptr noundef %adap) #2 align 64 {
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
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ce6230_zl10353_frontend_attach.__UNIQUE_ID_ddebug389, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ce6230_zl10353_frontend_attach, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !92

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %udev = getelementptr inbounds %struct.dvb_usb_device, ptr %add.ptr, i32 0, i32 5
  %2 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %udev, align 4
  %dev = getelementptr inbounds %struct.usb_device, ptr %3, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ce6230_zl10353_frontend_attach.__UNIQUE_ID_ddebug389, ptr noundef %dev, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.21) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call4 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.23) #7
  %tobool5.not = icmp eq ptr %call4, null
  br i1 %tobool5.not, label %cond.end, label %do.end.if.then9_crit_edge

do.end.if.then9_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then9

cond.end:                                         ; preds = %do.end
  %call6 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.24) #7
  %call7 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.23) #7
  %tobool8.not = icmp eq ptr %call7, null
  br i1 %tobool8.not, label %do.end16, label %cond.end.if.then9_crit_edge

cond.end.if.then9_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then9

if.then9:                                         ; preds = %cond.end.if.then9_crit_edge, %do.end.if.then9_crit_edge
  %cond36 = phi ptr [ %call7, %cond.end.if.then9_crit_edge ], [ %call4, %do.end.if.then9_crit_edge ]
  %i2c_adap = getelementptr inbounds %struct.dvb_usb_device, ptr %add.ptr, i32 0, i32 10
  %call10 = tail call ptr %cond36(ptr noundef nonnull @ce6230_zl10353_config, ptr noundef %i2c_adap) #7
  %cmp = icmp eq ptr %call10, null
  br i1 %cmp, label %if.then12, label %if.then9.if.end19_crit_edge

if.then9.if.end19_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19

if.then12:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__symbol_put(ptr noundef nonnull @.str.23) #7
  br label %if.end19

do.end16:                                         ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #9
  %call18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25) #10
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
define internal i32 @ce6230_mxl5003s_tuner_attach(ptr noundef %adap) #2 align 64 {
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
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ce6230_mxl5003s_tuner_attach.__UNIQUE_ID_ddebug390, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ce6230_mxl5003s_tuner_attach, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !92

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %udev = getelementptr inbounds %struct.dvb_usb_device, ptr %add.ptr, i32 0, i32 5
  %2 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %udev, align 4
  %dev = getelementptr inbounds %struct.usb_device, ptr %3, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ce6230_mxl5003s_tuner_attach.__UNIQUE_ID_ddebug390, ptr noundef %dev, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.26) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call4 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.27) #7
  %tobool5.not = icmp eq ptr %call4, null
  br i1 %tobool5.not, label %cond.end, label %do.end.if.then9_crit_edge

do.end.if.then9_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then9

cond.end:                                         ; preds = %do.end
  %call6 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.28) #7
  %call7 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.27) #7
  %tobool8.not = icmp eq ptr %call7, null
  br i1 %tobool8.not, label %do.end16, label %cond.end.if.then9_crit_edge

cond.end.if.then9_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then9

if.then9:                                         ; preds = %cond.end.if.then9_crit_edge, %do.end.if.then9_crit_edge
  %cond32 = phi ptr [ %call7, %cond.end.if.then9_crit_edge ], [ %call4, %do.end.if.then9_crit_edge ]
  %fe = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 14
  %4 = ptrtoint ptr %fe to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fe, align 8
  %i2c_adap = getelementptr inbounds %struct.dvb_usb_device, ptr %add.ptr, i32 0, i32 10
  %call10 = tail call ptr %cond32(ptr noundef %5, ptr noundef %i2c_adap, ptr noundef nonnull @ce6230_mxl5003s_config) #7
  %cmp = icmp eq ptr %call10, null
  br i1 %cmp, label %if.then12, label %if.then9.if.end19_crit_edge

if.then9.if.end19_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19

if.then12:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__symbol_put(ptr noundef nonnull @.str.27) #7
  br label %if.end19

do.end16:                                         ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #9
  %call18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29) #10
  br label %if.end19

if.end19:                                         ; preds = %do.end16, %if.then12, %if.then9.if.end19_crit_edge
  %__r.0 = phi ptr [ null, %if.then12 ], [ %call10, %if.then9.if.end19_crit_edge ], [ null, %do.end16 ]
  %cmp21 = icmp eq ptr %__r.0, null
  %cond23 = select i1 %cmp21, i32 -19, i32 0
  ret i32 %cond23
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ce6230_i2c_master_xfer(ptr nocapture noundef readonly %adap, ptr nocapture noundef readonly %msg, i32 noundef %num) #2 align 64 {
entry:
  %req = alloca %struct.usb_req, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %adap, i32 0, i32 9, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %req) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %num)
  %cmp = icmp sgt i32 %num, 2
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = call ptr @memset(ptr %req, i32 0, i32 12)
  %i2c_mutex = getelementptr inbounds %struct.dvb_usb_device, ptr %1, i32 0, i32 9
  %call1 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %i2c_mutex, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %if.end.cleanup_crit_edge, label %while.cond.preheader

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

while.cond.preheader:                             ; preds = %if.end
  %flags = getelementptr %struct.i2c_msg, ptr %msg, i32 1, i32 1
  %udev = getelementptr inbounds %struct.dvb_usb_device, ptr %1, i32 0, i32 5
  %value = getelementptr inbounds %struct.usb_req, ptr %req, i32 0, i32 1
  %index = getelementptr inbounds %struct.usb_req, ptr %req, i32 0, i32 2
  %len = getelementptr %struct.i2c_msg, ptr %msg, i32 1, i32 2
  %data_len = getelementptr inbounds %struct.usb_req, ptr %req, i32 0, i32 3
  %buf26 = getelementptr %struct.i2c_msg, ptr %msg, i32 1, i32 3
  %data = getelementptr inbounds %struct.usb_req, ptr %req, i32 0, i32 4
  br label %while.cond

while.cond:                                       ; preds = %if.end81.while.cond_crit_edge, %while.cond.preheader
  %i.0 = phi i32 [ %i.1, %if.end81.while.cond_crit_edge ], [ 0, %while.cond.preheader ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0, i32 %num)
  %cmp5 = icmp slt i32 %i.0, %num
  br i1 %cmp5, label %while.body, label %while.cond.cleanup.sink.split_crit_edge

while.cond.cleanup.sink.split_crit_edge:          ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

while.body:                                       ; preds = %while.cond
  %add = add nsw i32 %i.0, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %num)
  %cmp6 = icmp slt i32 %add, %num
  br i1 %cmp6, label %land.lhs.true, label %while.body.if.else31_crit_edge

while.body.if.else31_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else31

land.lhs.true:                                    ; preds = %while.body
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %flags, align 2
  %5 = and i16 %4, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool.not = icmp eq i16 %5, 0
  br i1 %tobool.not, label %land.lhs.true.if.else31_crit_edge, label %if.then8

land.lhs.true.if.else31_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else31

if.then8:                                         ; preds = %land.lhs.true
  %arrayidx9 = getelementptr %struct.i2c_msg, ptr %msg, i32 %i.0
  %6 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %arrayidx9, align 4
  %8 = load i8, ptr @ce6230_zl10353_config, align 4
  %9 = zext i8 %8 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %7, i16 %9)
  %cmp12 = icmp eq i16 %7, %9
  br i1 %cmp12, label %if.then14, label %do.end

if.then14:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %req to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 -37, ptr %req, align 4
  %11 = lshr i16 %7, 1
  %12 = ptrtoint ptr %value to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %11, ptr %value, align 2
  %buf = getelementptr %struct.i2c_msg, ptr %msg, i32 %i.0, i32 3
  %13 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %buf, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %14, align 1
  %conv21 = zext i8 %16 to i16
  %17 = ptrtoint ptr %index to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %conv21, ptr %index, align 4
  %18 = ptrtoint ptr %len to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %len, align 4
  %20 = ptrtoint ptr %data_len to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %19, ptr %data_len, align 2
  %21 = ptrtoint ptr %buf26 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %buf26, align 4
  %23 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %22, ptr %data, align 4
  %call28 = call fastcc i32 @ce6230_ctrl_msg(ptr noundef %1, ptr noundef nonnull %req)
  br label %if.end29

do.end:                                           ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #9
  %24 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %udev, align 4
  %dev = getelementptr inbounds %struct.usb_device, ptr %25, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str) #10
  br label %if.end29

if.end29:                                         ; preds = %do.end, %if.then14
  %ret.1 = phi i32 [ %call28, %if.then14 ], [ -95, %do.end ]
  %add30 = add nsw i32 %i.0, 2
  br label %if.end81

if.else31:                                        ; preds = %land.lhs.true.if.else31_crit_edge, %while.body.if.else31_crit_edge
  %arrayidx32 = getelementptr %struct.i2c_msg, ptr %msg, i32 %i.0
  %26 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %arrayidx32, align 4
  %28 = load i8, ptr @ce6230_zl10353_config, align 4
  %29 = zext i8 %28 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %27, i16 %29)
  %cmp36 = icmp eq i16 %27, %29
  br i1 %cmp36, label %if.then38, label %if.else61

if.then38:                                        ; preds = %if.else31
  call void @__sanitizer_cov_trace_pc() #9
  %30 = ptrtoint ptr %req to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 -52, ptr %req, align 4
  %31 = lshr i16 %27, 1
  %32 = ptrtoint ptr %value to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %31, ptr %value, align 2
  %buf47 = getelementptr %struct.i2c_msg, ptr %msg, i32 %i.0, i32 3
  %33 = ptrtoint ptr %buf47 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %buf47, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %34, align 1
  %conv49 = zext i8 %36 to i16
  %37 = ptrtoint ptr %index to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %conv49, ptr %index, align 4
  %len52 = getelementptr %struct.i2c_msg, ptr %msg, i32 %i.0, i32 2
  %38 = ptrtoint ptr %len52 to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %len52, align 4
  %sub = add i16 %39, -1
  %40 = ptrtoint ptr %data_len to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %sub, ptr %data_len, align 2
  %arrayidx58 = getelementptr i8, ptr %34, i32 1
  %41 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %arrayidx58, ptr %data, align 4
  %call60 = call fastcc i32 @ce6230_ctrl_msg(ptr noundef %1, ptr noundef nonnull %req)
  br label %if.end81

if.else61:                                        ; preds = %if.else31
  call void @__sanitizer_cov_trace_pc() #9
  %42 = ptrtoint ptr %req to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 -54, ptr %req, align 4
  %43 = lshr i16 %27, 1
  %narrow = add nuw i16 %43, 8192
  %44 = ptrtoint ptr %value to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 %narrow, ptr %value, align 2
  %45 = ptrtoint ptr %index to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 0, ptr %index, align 4
  %len72 = getelementptr %struct.i2c_msg, ptr %msg, i32 %i.0, i32 2
  %46 = ptrtoint ptr %len72 to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %len72, align 4
  %48 = ptrtoint ptr %data_len to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 %47, ptr %data_len, align 2
  %buf75 = getelementptr %struct.i2c_msg, ptr %msg, i32 %i.0, i32 3
  %49 = ptrtoint ptr %buf75 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %buf75, align 4
  %51 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %50, ptr %data, align 4
  %call78 = call fastcc i32 @ce6230_ctrl_msg(ptr noundef %1, ptr noundef nonnull %req)
  br label %if.end81

if.end81:                                         ; preds = %if.else61, %if.then38, %if.end29
  %ret.3 = phi i32 [ %ret.1, %if.end29 ], [ %call60, %if.then38 ], [ %call78, %if.else61 ]
  %i.1 = phi i32 [ %add30, %if.end29 ], [ %add, %if.then38 ], [ %add, %if.else61 ]
  %tobool82.not = icmp eq i32 %ret.3, 0
  br i1 %tobool82.not, label %if.end81.while.cond_crit_edge, label %if.end81.cleanup.sink.split_crit_edge

if.end81.cleanup.sink.split_crit_edge:            ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end81.while.cond_crit_edge:                    ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond

cleanup.sink.split:                               ; preds = %if.end81.cleanup.sink.split_crit_edge, %while.cond.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ %ret.3, %if.end81.cleanup.sink.split_crit_edge ], [ %i.0, %while.cond.cleanup.sink.split_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %i2c_mutex) #7
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %entry.cleanup_crit_edge ], [ -11, %if.end.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %req) #7
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ce6230_i2c_functionality(ptr nocapture noundef readnone %adapter) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ce6230_ctrl_msg(ptr nocapture noundef readonly %d, ptr nocapture noundef readonly %req) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %req to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %req, align 4
  %value1 = getelementptr inbounds %struct.usb_req, ptr %req, i32 0, i32 1
  %2 = ptrtoint ptr %value1 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %value1, align 2
  %index2 = getelementptr inbounds %struct.usb_req, ptr %req, i32 0, i32 2
  %4 = ptrtoint ptr %index2 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %index2, align 4
  %conv = zext i8 %1 to i32
  %6 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i8 %1, label %do.end [
    i8 -39, label %entry.sw.epilog_crit_edge
    i8 -37, label %entry.sw.epilog_crit_edge124
    i8 -34, label %entry.sw.epilog_crit_edge125
    i8 -54, label %entry.sw.bb4_crit_edge
    i8 -52, label %entry.sw.bb4_crit_edge126
    i8 -49, label %entry.sw.bb4_crit_edge127
  ]

entry.sw.bb4_crit_edge127:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb4

entry.sw.bb4_crit_edge126:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb4

entry.sw.bb4_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb4

entry.sw.epilog_crit_edge125:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

entry.sw.epilog_crit_edge124:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry.sw.bb4_crit_edge, %entry.sw.bb4_crit_edge126, %entry.sw.bb4_crit_edge127
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %udev = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 5
  %7 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %udev, align 4
  %dev = getelementptr inbounds %struct.usb_device, ptr %8, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str, i32 noundef %conv) #10
  br label %error

sw.epilog:                                        ; preds = %sw.bb4, %entry.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge124, %entry.sw.epilog_crit_edge125
  %cmp = phi i1 [ true, %sw.bb4 ], [ false, %entry.sw.epilog_crit_edge ], [ false, %entry.sw.epilog_crit_edge124 ], [ false, %entry.sw.epilog_crit_edge125 ]
  %requesttype.0 = phi i8 [ 64, %sw.bb4 ], [ -64, %entry.sw.epilog_crit_edge ], [ -64, %entry.sw.epilog_crit_edge124 ], [ -64, %entry.sw.epilog_crit_edge125 ]
  %data_len = getelementptr inbounds %struct.usb_req, ptr %req, i32 0, i32 3
  %9 = ptrtoint ptr %data_len to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %data_len, align 2
  %conv7 = zext i16 %10 to i32
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %conv7, i32 noundef 3264) #11
  %tobool.not = icmp eq ptr %call9.i, null
  br i1 %tobool.not, label %sw.epilog.error_crit_edge, label %if.end

sw.epilog.error_crit_edge:                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %error

if.end:                                           ; preds = %sw.epilog
  %conv8 = zext i8 %requesttype.0 to i32
  br i1 %cmp, label %if.then10, label %if.end.if.end19_crit_edge

if.end.if.end19_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %data = getelementptr inbounds %struct.usb_req, ptr %req, i32 0, i32 4
  %11 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %data, align 4
  %13 = ptrtoint ptr %data_len to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %data_len, align 2
  %conv12 = zext i16 %14 to i32
  %15 = call ptr @memcpy(ptr %call9.i, ptr %12, i32 %conv12)
  br label %if.end19

if.end19:                                         ; preds = %if.then10, %if.end.if.end19_crit_edge
  %.sink = phi i32 [ -2147483648, %if.then10 ], [ -2147483520, %if.end.if.end19_crit_edge ]
  %udev15 = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 5
  %16 = ptrtoint ptr %udev15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %udev15, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %17, align 8
  %shl.i110 = shl i32 %19, 8
  %or18 = or i32 %shl.i110, %.sink
  tail call void @msleep(i32 noundef 1) #7
  %udev20 = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 5
  %20 = ptrtoint ptr %udev20 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %udev20, align 4
  %22 = ptrtoint ptr %data_len to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %data_len, align 2
  %call22 = tail call i32 @usb_control_msg(ptr noundef %21, i32 noundef %or18, i8 noundef zeroext %1, i8 noundef zeroext %requesttype.0, i16 noundef zeroext %3, i16 noundef zeroext %5, ptr noundef nonnull %call9.i, i16 noundef zeroext %23, i32 noundef 1000) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ce6230_ctrl_msg.__UNIQUE_ID_ddebug388, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ce6230_ctrl_msg, %if.then34)) #7
          to label %do.end55 [label %if.then34], !srcloc !92

if.then34:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  %.str.12..str.13 = select i1 %cmp, ptr @.str.12, ptr @.str.13
  %24 = ptrtoint ptr %udev20 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %udev20, align 4
  %dev36 = getelementptr inbounds %struct.usb_device, ptr %25, i32 0, i32 15
  %conv39 = zext i16 %3 to i32
  %and = and i32 %conv39, 255
  %26 = lshr i32 %conv39, 8
  %conv41 = zext i16 %5 to i32
  %and42 = and i32 %conv41, 255
  %27 = lshr i32 %conv41, 8
  %28 = ptrtoint ptr %data_len to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %data_len, align 2
  %conv46 = zext i16 %29 to i32
  %and47 = and i32 %conv46, 255
  %30 = lshr i32 %conv46, 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ce6230_ctrl_msg.__UNIQUE_ID_ddebug388, ptr noundef %dev36, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.11, i32 noundef %conv8, i32 noundef %conv, i32 noundef %and, i32 noundef %26, i32 noundef %and42, i32 noundef %27, i32 noundef %and47, i32 noundef %30, ptr noundef nonnull %.str.12..str.13, i32 noundef %conv46, ptr noundef nonnull %call9.i) #7
  br label %do.end55

do.end55:                                         ; preds = %if.then34, %if.end19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %cmp56 = icmp slt i32 %call22, 0
  br i1 %cmp56, label %if.end65.thread, label %if.end65

if.end65.thread:                                  ; preds = %do.end55
  call void @__sanitizer_cov_trace_pc() #9
  %31 = ptrtoint ptr %udev20 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %udev20, align 4
  %dev63 = getelementptr inbounds %struct.usb_device, ptr %32, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev63, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str, i32 noundef %call22) #10
  br label %if.end74

if.end65:                                         ; preds = %do.end55
  br i1 %cmp, label %if.end65.if.end74_crit_edge, label %if.then70

if.end65.if.end74_crit_edge:                      ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end74

if.then70:                                        ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #9
  %data71 = getelementptr inbounds %struct.usb_req, ptr %req, i32 0, i32 4
  %33 = ptrtoint ptr %data71 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %data71, align 4
  %35 = ptrtoint ptr %data_len to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %data_len, align 2
  %conv73 = zext i16 %36 to i32
  %37 = call ptr @memcpy(ptr %34, ptr %call9.i, i32 %conv73)
  br label %if.end74

if.end74:                                         ; preds = %if.then70, %if.end65.if.end74_crit_edge, %if.end65.thread
  %ret.0121 = phi i32 [ 0, %if.end65.if.end74_crit_edge ], [ 0, %if.then70 ], [ %call22, %if.end65.thread ]
  tail call void @kfree(ptr noundef nonnull %call9.i) #7
  br label %error

error:                                            ; preds = %if.end74, %sw.epilog.error_crit_edge, %do.end
  %ret.1 = phi i32 [ -22, %do.end ], [ %ret.0121, %if.end74 ], [ -12, %sw.epilog.error_crit_edge ]
  ret i32 %ret.1
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_control_msg(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_set_interface(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__symbol_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__request_module(i1 noundef zeroext, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__symbol_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

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
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 41)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 41)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !7, !9, !11, !13, !14, !15, !16, !17, !18, !20, !22, !24, !26, !28, !30, !32, !33, !34, !35, !36, !37, !38, !40, !42, !43, !44, !45, !47, !48, !49, !50, !52, !53, !54, !56, !57, !58, !60, !61, !62, !64, !65, !66, !68, !69, !70, !71, !72, !74, !75, !77, !78, !79, !80, !81}
!llvm.module.flags = !{!83, !84, !85, !86, !87, !88, !89, !90}
!llvm.ident = !{!91}

!0 = !{ptr @__param_adapter_nr, !1, !"__param_adapter_nr", i1 false, i1 false}
!1 = !{!"../drivers/media/usb/dvb-usb-v2/ce6230.c", i32 10, i32 1}
!2 = !{ptr @__UNIQUE_ID_adapter_nrtype386, !1, !"__UNIQUE_ID_adapter_nrtype386", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_adapter_nr387, !1, !"__UNIQUE_ID_adapter_nr387", i1 false, i1 false}
!4 = !{ptr @__initcall__kmod_dvb_usb_ce6230__392_274_ce6230_usb_driver_init6, !5, !"__initcall__kmod_dvb_usb_ce6230__392_274_ce6230_usb_driver_init6", i1 false, i1 false}
!5 = !{!"../drivers/media/usb/dvb-usb-v2/ce6230.c", i32 274, i32 1}
!6 = !{ptr @__exitcall_ce6230_usb_driver_exit, !5, !"__exitcall_ce6230_usb_driver_exit", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_author393, !8, !"__UNIQUE_ID_author393", i1 false, i1 false}
!8 = !{!"../drivers/media/usb/dvb-usb-v2/ce6230.c", i32 276, i32 1}
!9 = !{ptr @__UNIQUE_ID_description394, !10, !"__UNIQUE_ID_description394", i1 false, i1 false}
!10 = !{!"../drivers/media/usb/dvb-usb-v2/ce6230.c", i32 277, i32 1}
!11 = !{ptr @__UNIQUE_ID_file395, !12, !"__UNIQUE_ID_file395", i1 false, i1 false}
!12 = !{!"../drivers/media/usb/dvb-usb-v2/ce6230.c", i32 278, i32 1}
!13 = !{ptr @__UNIQUE_ID_license396, !12, !"__UNIQUE_ID_license396", i1 false, i1 false}
!14 = !{ptr @__param_str_adapter_nr, !1, !"__param_str_adapter_nr", i1 false, i1 false}
!15 = !{ptr @__param_arr_adapter_nr, !1, !"__param_arr_adapter_nr", i1 false, i1 false}
!16 = !{ptr @adapter_nr, !1, !"adapter_nr", i1 false, i1 false}
!17 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @ce6230_usb_driver, !19, !"ce6230_usb_driver", i1 false, i1 false}
!19 = !{!"../drivers/media/usb/dvb-usb-v2/ce6230.c", i32 262, i32 26}
!20 = !{ptr @.str.1, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/media/usb/dvb-usb-v2/ce6230.c", i32 254, i32 4}
!22 = !{ptr @.str.2, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/media/usb/dvb-usb-v2/ce6230.c", i32 256, i32 4}
!24 = !{ptr @ce6230_id_table, !25, !"ce6230_id_table", i1 false, i1 false}
!25 = !{!"../drivers/media/usb/dvb-usb-v2/ce6230.c", i32 253, i32 35}
!26 = !{ptr @ce6230_props, !27, !"ce6230_props", i1 false, i1 false}
!27 = !{!"../drivers/media/usb/dvb-usb-v2/ce6230.c", i32 225, i32 41}
!28 = !{ptr @ce6230_i2c_algorithm, !29, !"ce6230_i2c_algorithm", i1 false, i1 false}
!29 = !{!"../drivers/media/usb/dvb-usb-v2/ce6230.c", i32 149, i32 29}
!30 = !{ptr @.str.5, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/media/usb/dvb-usb-v2/ce6230.c", i32 111, i32 5}
!32 = !{ptr @.str.6, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.7, !31, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.8, !31, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.9, !31, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @ce6230_i2c_master_xfer._entry, !31, !"_entry", i1 false, i1 false}
!37 = !{ptr @ce6230_i2c_master_xfer._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @ce6230_zl10353_config, !39, !"ce6230_zl10353_config", i1 false, i1 false}
!39 = !{!"../drivers/media/usb/dvb-usb-v2/ce6230.c", i32 155, i32 30}
!40 = !{ptr @.str.10, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/media/usb/dvb-usb-v2/ce6230.c", i32 38, i32 3}
!42 = !{ptr @.str.11, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @ce6230_ctrl_msg._entry, !41, !"_entry", i1 false, i1 false}
!44 = !{ptr @ce6230_ctrl_msg._entry_ptr, !41, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.12, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/media/usb/dvb-usb-v2/ce6230.c", i32 64, i32 2}
!47 = !{ptr @.str.13, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @.str.14, !46, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @ce6230_ctrl_msg.__UNIQUE_ID_ddebug388, !46, !"__UNIQUE_ID_ddebug388", i1 false, i1 false}
!50 = !{ptr @.str.16, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/media/usb/dvb-usb-v2/ce6230.c", i32 68, i32 3}
!52 = !{ptr @ce6230_ctrl_msg._entry.15, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @ce6230_ctrl_msg._entry_ptr.17, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.18, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/media/usb/dvb-usb-v2/ce6230.c", i32 212, i32 2}
!56 = !{ptr @.str.19, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @ce6230_power_ctrl.__UNIQUE_ID_ddebug391, !55, !"__UNIQUE_ID_ddebug391", i1 false, i1 false}
!58 = !{ptr @.str.20, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/media/usb/dvb-usb-v2/ce6230.c", i32 218, i32 3}
!60 = !{ptr @ce6230_power_ctrl._entry, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @ce6230_power_ctrl._entry_ptr, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.21, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/media/usb/dvb-usb-v2/ce6230.c", i32 169, i32 2}
!64 = !{ptr @.str.22, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @ce6230_zl10353_frontend_attach.__UNIQUE_ID_ddebug389, !63, !"__UNIQUE_ID_ddebug389", i1 false, i1 false}
!66 = !{ptr @.str.23, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/media/usb/dvb-usb-v2/ce6230.c", i32 171, i32 16}
!68 = !{ptr @.str.24, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @.str.25, !67, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @ce6230_zl10353_frontend_attach._entry, !67, !"_entry", i1 false, i1 false}
!71 = !{ptr @ce6230_zl10353_frontend_attach._entry_ptr, !67, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.26, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/media/usb/dvb-usb-v2/ce6230.c", i32 201, i32 2}
!74 = !{ptr @ce6230_mxl5003s_tuner_attach.__UNIQUE_ID_ddebug390, !73, !"__UNIQUE_ID_ddebug390", i1 false, i1 false}
!75 = !{ptr @.str.27, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/media/usb/dvb-usb-v2/ce6230.c", i32 203, i32 8}
!77 = !{ptr @.str.28, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @.str.29, !76, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @ce6230_mxl5003s_tuner_attach._entry, !76, !"_entry", i1 false, i1 false}
!80 = !{ptr @ce6230_mxl5003s_tuner_attach._entry_ptr, !76, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @ce6230_mxl5003s_config, !82, !"ce6230_mxl5003s_config", i1 false, i1 false}
!82 = !{!"../drivers/media/usb/dvb-usb-v2/ce6230.c", i32 179, i32 31}
!83 = !{i32 1, !"wchar_size", i32 2}
!84 = !{i32 1, !"min_enum_size", i32 4}
!85 = !{i32 8, !"branch-target-enforcement", i32 0}
!86 = !{i32 8, !"sign-return-address", i32 0}
!87 = !{i32 8, !"sign-return-address-all", i32 0}
!88 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!89 = !{i32 7, !"uwtable", i32 1}
!90 = !{i32 7, !"frame-pointer", i32 2}
!91 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!92 = !{i64 2148953054, i64 2148953059, i64 2148953072, i64 2148953116, i64 2148953150, i64 2148953171}
